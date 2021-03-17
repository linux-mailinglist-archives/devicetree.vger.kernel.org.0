Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0701233EA6A
	for <lists+devicetree@lfdr.de>; Wed, 17 Mar 2021 08:19:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbhCQHS0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Mar 2021 03:18:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbhCQHSE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Mar 2021 03:18:04 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D38D0C06174A
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 00:18:03 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id x4so1420308lfu.7
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 00:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ZRt/k8vmfLRdMrrwIvkE6G0FuHEzF5hBaf5TWwGa3kQ=;
        b=ETaPmpVMlntXDC9a4Q5keVsysmSardlQzOMMifm6C7ilEdK+WZ7E6Ww47H7a1LviFS
         Hg23j7aWbHWQDaWe0BNoU8kX2ncsIVuQqvWBrW/lb40r4AbFnpawhsRrHzfgE5KwwrlE
         XtAjbfZwo8xZaSe1vFyEHr2bhGE19OMTrixTh0CtAWyXvEgbVOD/Ot9t1iFp5Xqbtm/8
         WzV9z/0du2JYBfmJjvbrDJplCJy7IuRxcNhAhcmv5++xwOtNUzPX15wnxAC3W/4x91gI
         eEb6jAr5QuDJ9YU2uTVjqXTj5Rj76K7OZ41Y92sAqnkryQIGlWckt+zgdPdwRDM8i76B
         zXAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ZRt/k8vmfLRdMrrwIvkE6G0FuHEzF5hBaf5TWwGa3kQ=;
        b=UJQ+qd362WFgi1g7RXOoFWOMUDNtqH15KWiXT4ruTzshX6zWn3NyPfn9e8zUgX17oV
         S8bPOVuAkE3xBjNcjDZsdJV7XI04cLQWfmp5PvjAlKCQ5b1h1OpGEGMgUZee0Dlq4gS6
         quoWV5bA7mvjkSgjPe0favhgNUmCoGAYUmGsTUjgBWAyn5X6PR/VABFXNTL+EJzQhkg0
         ViiWLTbsPP8ljO/Wjsl1OEusHlhPDLHBlnoArSQuiD3bIZy29TBzDmW6pXVEoAAdxrIH
         OF5u/RtxfzLc9vjoLr4AvYctGEn4JcvRpk0AU/haFhFoN2iSTk3LosO5TABc/NDIvo/m
         9C7g==
X-Gm-Message-State: AOAM532s7u1RD77zzuDBPdlStz3jysMNp8ICACLY3nilzdg0FB99uG7U
        KMVGFukm1FQE95bjtqyk8724Tg==
X-Google-Smtp-Source: ABdhPJzhuMLhH1RUi2buT8sAp3egL/AC9zsBL5JGoWYpWZ2FABiXst6n0Dj6v3K3fFG6ID4Qyrrj2g==
X-Received: by 2002:ac2:5f1b:: with SMTP id 27mr1529435lfq.425.1615965482275;
        Wed, 17 Mar 2021 00:18:02 -0700 (PDT)
Received: from jade (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
        by smtp.gmail.com with ESMTPSA id x23sm3271121lfg.309.2021.03.17.00.18.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Mar 2021 00:18:01 -0700 (PDT)
Date:   Wed, 17 Mar 2021 08:17:59 +0100
From:   Jens Wiklander <jens.wiklander@linaro.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Subject: Re: [PATCH v4 2/7] arm64: smccc: Add support for SMCCCv1.2
 input/output registers
Message-ID: <20210317071759.GA3005811@jade>
References: <20210212154614.38604-1-sudeep.holla@arm.com>
 <20210212154614.38604-3-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210212154614.38604-3-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 12, 2021 at 03:46:09PM +0000, Sudeep Holla wrote:
> SMCCC v1.2 allows x8-x17 to be used as parameter registers and x4—x17
> to be used as result registers in SMC64/HVC64. Arm Firmware Framework
> for Armv8-A specification makes use of x0-x7 as parameter and result
> registers.
> 
> Current SMCCC interface in the kernel just use x0-x7 as parameter and
> x0-x3 as result registers. Let us add new interface to support x0-x7
> as parameter and result registers. This can be extended to include
> x8-x17 when there are users for the same.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  arch/arm64/kernel/asm-offsets.c |  4 +++
>  arch/arm64/kernel/smccc-call.S  | 22 +++++++++++++++
>  include/linux/arm-smccc.h       | 50 +++++++++++++++++++++++++++++++++
>  3 files changed, 76 insertions(+)
> 
> diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
> index 301784463587..89b444591575 100644
> --- a/arch/arm64/kernel/asm-offsets.c
> +++ b/arch/arm64/kernel/asm-offsets.c
> @@ -129,6 +129,10 @@ int main(void)
>    DEFINE(ARM_SMCCC_RES_X2_OFFS,		offsetof(struct arm_smccc_res, a2));
>    DEFINE(ARM_SMCCC_QUIRK_ID_OFFS,	offsetof(struct arm_smccc_quirk, id));
>    DEFINE(ARM_SMCCC_QUIRK_STATE_OFFS,	offsetof(struct arm_smccc_quirk, state));
> +  DEFINE(ARM_SMCCC_V1_2_RES_X0_OFFS,	offsetof(struct arm_smccc_v1_2_res, a0));
> +  DEFINE(ARM_SMCCC_V1_2_RES_X2_OFFS,	offsetof(struct arm_smccc_v1_2_res, a2));
> +  DEFINE(ARM_SMCCC_V1_2_RES_X4_OFFS,	offsetof(struct arm_smccc_v1_2_res, a4));
> +  DEFINE(ARM_SMCCC_V1_2_RES_X6_OFFS,	offsetof(struct arm_smccc_v1_2_res, a6));
>    BLANK();
>    DEFINE(HIBERN_PBE_ORIG,	offsetof(struct pbe, orig_address));
>    DEFINE(HIBERN_PBE_ADDR,	offsetof(struct pbe, address));
> diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-call.S
> index d62447964ed9..0ea15c1742f3 100644
> --- a/arch/arm64/kernel/smccc-call.S
> +++ b/arch/arm64/kernel/smccc-call.S
> @@ -43,3 +43,25 @@ SYM_FUNC_START(__arm_smccc_hvc)
>  	SMCCC	hvc
>  SYM_FUNC_END(__arm_smccc_hvc)
>  EXPORT_SYMBOL(__arm_smccc_hvc)
> +
> +	.macro SMCCC_v1_2 instr
> +	.cfi_startproc
> +	\instr #0
> +	ldr x8, [sp]
> +	stp x0, x1, [x8, #ARM_SMCCC_V1_2_RES_X0_OFFS]
> +	stp x2, x3, [x8, #ARM_SMCCC_V1_2_RES_X2_OFFS]
> +	stp x4, x5, [x8, #ARM_SMCCC_V1_2_RES_X4_OFFS]
> +	stp x6, x7, [x8, #ARM_SMCCC_V1_2_RES_X6_OFFS]
> +	ret
> +	.cfi_endproc
> +.endm
> +
> +SYM_FUNC_START(arm_smccc_v1_2_hvc)
> +	SMCCC_v1_2 hvc
> +SYM_FUNC_END(arm_smccc_v1_2_hvc)
> +EXPORT_SYMBOL(arm_smccc_v1_2_hvc)
> +
> +SYM_FUNC_START(arm_smccc_v1_2_smc)
> +	SMCCC_v1_2 smc
> +SYM_FUNC_END(arm_smccc_v1_2_smc)
> +EXPORT_SYMBOL(arm_smccc_v1_2_smc)
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index f860645f6512..66fd3d582c7f 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -155,6 +155,56 @@ struct arm_smccc_res {
>  	unsigned long a3;
>  };
>  
> +#ifdef CONFIG_ARM64
> +/* TODO Need to implement for ARM too */

It would be nice to have this TODO resolved.

Thanks,
Jens
