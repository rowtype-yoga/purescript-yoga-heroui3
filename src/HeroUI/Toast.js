import { toast } from "@heroui/react";

export const toastSuccessImpl = (message) => toast.success(message);
export const toastDangerImpl = (message) => toast.danger(message);
export const toastInfoImpl = (message) => toast.info(message);
export const toastWarningImpl = (message) => toast.warning(message);
export const closeToastImpl = (key) => toast.close(key);
export const closeAllToastsImpl = () => toast.clear();
export const pauseAllToastsImpl = () => toast.pauseAll();
export const resumeAllToastsImpl = () => toast.resumeAll();
