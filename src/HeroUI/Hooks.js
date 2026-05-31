import {
  useOverlayState,
  useTheme,
  useMediaQuery,
  useIsHydrated,
  useIsMounted,
} from "@heroui/react";

export const useOverlayStateImpl = (props) => useOverlayState(props);
export const useThemeImpl = () => useTheme();
export const useMediaQueryImpl = (query) => useMediaQuery(query);
export const useIsHydratedImpl = () => useIsHydrated();
export const useIsMountedImpl = () => useIsMounted();
