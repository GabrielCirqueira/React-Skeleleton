import * as React from "react"
import { cn } from "@shadcn/lib/utils"

export interface TitleProps extends React.HTMLAttributes<HTMLHeadingElement> {
  as?: 'h1'|'h2'|'h3'|'h4'|'h5'|'h6'
  size?: 'xl'|'lg'|'md'|'sm'
}

const SIZE_MAP: Record<NonNullable<TitleProps['size']>, string> = {
  xl: 'text-4xl font-bold',
  lg: 'text-3xl font-semibold',
  md: 'text-2xl font-semibold',
  sm: 'text-xl font-medium',
}

export const Title = React.forwardRef<HTMLElement, TitleProps>(({ as = 'h1', size = 'xl', className, ...props }, ref) => {
  const Tag = as as any
  return <Tag ref={ref as any} className={cn(SIZE_MAP[size], className)} {...props} />
})

Title.displayName = 'Title'

export default Title
