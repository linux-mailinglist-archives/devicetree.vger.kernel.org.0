Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1B1C487994
	for <lists+devicetree@lfdr.de>; Fri,  7 Jan 2022 16:15:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348015AbiAGPPz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jan 2022 10:15:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232338AbiAGPPz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jan 2022 10:15:55 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8162C06173E
        for <devicetree@vger.kernel.org>; Fri,  7 Jan 2022 07:15:54 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id v6so11607996wra.8
        for <devicetree@vger.kernel.org>; Fri, 07 Jan 2022 07:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0cmoYgKtE+YBAY6KDd8sEUlop4YySzZovKwg+F7dkes=;
        b=CT8dj5XtR7ovi44CmerrL6MpKlliSorZFAnD5U3CK5nrdP+3WbRTmtMi8CMfYQWZcB
         rTJPcIQ+fhG5QMVDaAbQxWxypyxMvXVRrdDDnoC262h/3M6h76dPygriRsip/fVJKA7+
         gGrgB1Iej6NW7VfAHsGI2b/5mcZ80LcJSt7tFbSk2mWfm6Yao+Zlx+uS9fni0kWXZErW
         HW0nKh0/s5316rde4J03v1c1SV046sIMyzxcNQPqO3HcYgC/wXS6EThogL52a8g4dvtd
         tMlj4NAvH6Q34HYaiyCWE+VbZnx8C9Dv3upxy3ABP926FaJ33FjFFhY1YWBZ3aswb1xf
         BXSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0cmoYgKtE+YBAY6KDd8sEUlop4YySzZovKwg+F7dkes=;
        b=EvIcdyWQ3tQc1oAfNE6eAmvPV3RCEyu7RchfH3xhp/vmApbCDxXW8WZ5ruIl5GUPNe
         QH6Ms0iWLRjTRFsW7hQcRFO8QeiNHn+XcfPgckVntuUK0vTTqqxFsqNpDHkSwMIlQ8Bc
         HwyOXyaWl3eL8pWiBIDbGcng7Vr/k44pzZBIAJrr2a7+d+ndMPEWSt7sWHu3Ez64RCxX
         hhUfi/9h8dWo+H3W0b4ozZnN8i+pnJ/N/BZ4CBtLIpvmztwvvy6B6sh5M669LBg5Qy2H
         EOe2R/do4wec27SG2Rnp3+bYJJOfgpn6WVAOQzeM+VP+Q2AMNpcublJaf3W1uJY7lovT
         w4Fg==
X-Gm-Message-State: AOAM533hDhvwyTZ8bK/0KGUAff9Bki2yYTWyuCLJGE4vr3gmh02NGO05
        b3G5JB7FdvC251oiHRJ2OqAoJ2Vl7KaMTXAC6u9H6A==
X-Google-Smtp-Source: ABdhPJxrnCu6CO9ZEnilpczrre+DeG48ZM6oiCoRGeNZjtyaNxOU2TeVb+wPQRQ1EoqM/QmPv1mBaM/dXraP7T8Llgw=
X-Received: by 2002:a5d:56c2:: with SMTP id m2mr55238211wrw.313.1641568553229;
 Fri, 07 Jan 2022 07:15:53 -0800 (PST)
MIME-Version: 1.0
References: <20211228223057.2772727-1-atishp@rivosinc.com> <20211228223057.2772727-6-atishp@rivosinc.com>
In-Reply-To: <20211228223057.2772727-6-atishp@rivosinc.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Fri, 7 Jan 2022 20:45:41 +0530
Message-ID: <CAAhSdy0AN0TjN8-owm-2g9OgG-8QKcXRk6JFMTv3mQytoCvxkA@mail.gmail.com>
Subject: Re: [PATCH v2 5/6] RISC-V: Move spinwait booting method to its own config
To:     Atish Patra <atishp@atishpatra.org>
Cc:     "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Atish Patra <atishp@rivosinc.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        DTML <devicetree@vger.kernel.org>,
        Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 29, 2021 at 4:01 AM Atish Patra <atishp@atishpatra.org> wrote:
>
> The spinwait booting method should only be used for platforms with older
> firmware without SBI HSM extension or M-mode firmware because spinwait
> method can't support cpu hotplug, kexec or sparse hartid. It is better
> to move the entire spinwait implementation to its own config which can
> be disabled if required. It is enabled by default to maintain backward
> compatibility and M-mode Linux.
>
> Signed-off-by: Atish Patra <atishp@rivosinc.com>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  arch/riscv/Kconfig          | 14 ++++++++++++++
>  arch/riscv/kernel/Makefile  |  3 ++-
>  arch/riscv/kernel/cpu_ops.c |  8 ++++++++
>  arch/riscv/kernel/head.S    |  8 ++++----
>  arch/riscv/kernel/head.h    |  2 ++
>  5 files changed, 30 insertions(+), 5 deletions(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 821252b65f89..50c986a446df 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -403,6 +403,20 @@ config RISCV_SBI_V01
>           This config allows kernel to use SBI v0.1 APIs. This will be
>           deprecated in future once legacy M-mode software are no longer in use.
>
> +config RISCV_BOOT_SPINWAIT
> +       bool "Spinwait booting method"
> +       depends on SMP
> +       default y
> +       help
> +         This enables support for booting Linux via spinwait method. In the
> +         spinwait method, all cores randomly jump to Linux. One of the cores
> +         gets chosen via lottery and all other keep spinning on a percpu
> +         variable. This method cannot support CPU hotplug and sparse hartid
> +         scheme. It should be only enabled for M-mode Linux or platforms relying
> +         on older firmware without SBI HSM extension. All other platforms should
> +         rely on ordered booting via SBI HSM extension which gets chosen
> +         dynamically at runtime if the firmware supports it.
> +
>  config KEXEC
>         bool "Kexec system call"
>         select KEXEC_CORE
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index 3397ddac1a30..612556faa527 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -43,7 +43,8 @@ obj-$(CONFIG_FPU)             += fpu.o
>  obj-$(CONFIG_SMP)              += smpboot.o
>  obj-$(CONFIG_SMP)              += smp.o
>  obj-$(CONFIG_SMP)              += cpu_ops.o
> -obj-$(CONFIG_SMP)              += cpu_ops_spinwait.o
> +
> +obj-$(CONFIG_RISCV_BOOT_SPINWAIT) += cpu_ops_spinwait.o
>  obj-$(CONFIG_MODULES)          += module.o
>  obj-$(CONFIG_MODULE_SECTIONS)  += module-sections.o
>
> diff --git a/arch/riscv/kernel/cpu_ops.c b/arch/riscv/kernel/cpu_ops.c
> index c1e30f403c3b..170d07e57721 100644
> --- a/arch/riscv/kernel/cpu_ops.c
> +++ b/arch/riscv/kernel/cpu_ops.c
> @@ -15,7 +15,15 @@
>  const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
>
>  extern const struct cpu_operations cpu_ops_sbi;
> +#ifdef CONFIG_RISCV_BOOT_SPINWAIT
>  extern const struct cpu_operations cpu_ops_spinwait;
> +#else
> +const struct cpu_operations cpu_ops_spinwait = {
> +       .name           = "",
> +       .cpu_prepare    = NULL,
> +       .cpu_start      = NULL,
> +};
> +#endif
>
>  void __init cpu_set_ops(int cpuid)
>  {
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 9f16bfe9307e..db062279d9ed 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -259,7 +259,7 @@ pmp_done:
>         li t0, SR_FS
>         csrc CSR_STATUS, t0
>
> -#ifdef CONFIG_SMP
> +#ifdef CONFIG_RISCV_BOOT_SPINWAIT
>         li t0, CONFIG_NR_CPUS
>         blt a0, t0, .Lgood_cores
>         tail .Lsecondary_park
> @@ -285,7 +285,7 @@ pmp_done:
>         beq t0, t1, .Lsecondary_start
>
>  #endif /* CONFIG_XIP */
> -#endif /* CONFIG_SMP */
> +#endif /* CONFIG_RISCV_BOOT_SPINWAIT */
>
>  #ifdef CONFIG_XIP_KERNEL
>         la sp, _end + THREAD_SIZE
> @@ -344,7 +344,7 @@ clear_bss_done:
>         call soc_early_init
>         tail start_kernel
>
> -#ifdef CONFIG_SMP
> +#if CONFIG_RISCV_BOOT_SPINWAIT
>  .Lsecondary_start:
>         /* Set trap vector to spin forever to help debug */
>         la a3, .Lsecondary_park
> @@ -371,7 +371,7 @@ clear_bss_done:
>         fence
>
>         tail secondary_start_common
> -#endif
> +#endif /* CONFIG_RISCV_BOOT_SPINWAIT */
>
>  END(_start_kernel)
>
> diff --git a/arch/riscv/kernel/head.h b/arch/riscv/kernel/head.h
> index 5393cca77790..726731ada534 100644
> --- a/arch/riscv/kernel/head.h
> +++ b/arch/riscv/kernel/head.h
> @@ -16,7 +16,9 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa);
>  asmlinkage void __init __copy_data(void);
>  #endif
>
> +#ifdef CONFIG_RISCV_BOOT_SPINWAIT
>  extern void *__cpu_spinwait_stack_pointer[];
>  extern void *__cpu_spinwait_task_pointer[];
> +#endif
>
>  #endif /* __ASM_HEAD_H */
> --
> 2.33.1
>
