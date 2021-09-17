Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A3FF40EE84
	for <lists+devicetree@lfdr.de>; Fri, 17 Sep 2021 02:55:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242020AbhIQA40 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 20:56:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242007AbhIQA40 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 20:56:26 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 404EFC061574
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 17:55:05 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id s20so11650688oiw.3
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 17:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=2yH0Zt0O7gBl56UZTi2Aqh4YymYqkgwf1TTMl7F/bXo=;
        b=H0lHLP20LFpppz68jylyF0kBm32s2ENHdXDuWHo/9BSJo6Ho2Vtfxl1ggpn/h7bH+k
         vSPnQipeBqdE5Hh+ZYlRSgoQ8m+RpFXy//acsVdWCX+fdhrjSIhU3IWPPTccx/AWdHI8
         iKniZ6s07bSukhxBoUXbQPXUAFa+KHqd/MIGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=2yH0Zt0O7gBl56UZTi2Aqh4YymYqkgwf1TTMl7F/bXo=;
        b=pfK1nJ/iYs4/m0pmQ59+zIX1wd8htM15y/za0P+Q+W9tMFP0H1LHD184R2X+mWUfuX
         Cw/bO+Nmnigfo3IJF+4Fs464BbYSYvDyEk56t2M8mvhAcr1qq7QG+VKjhwCDZDFbWrt5
         Y/h7hhs0oUPspeXZcx4WbV66/O/w3yHZJyvD7ozr5uhnw95+cuxDyKzktFg1fpEtzckR
         OIkGwUh0xf9ze7SxNPaz5k6i6zWQxIxl/SCClkaWlg9Vdmd0Jyh4a93hmPLkyZYjpb3d
         XVzk9M0D4HPJNnD9IENYPMmSr+sWAKz9N9/qlX1mANW6OOwq4s3d3m1UGPsIntQdxr/N
         RRuw==
X-Gm-Message-State: AOAM531HRTFffyUnXQcXhnr6/kLowIARqvPa44WaUSGQdORiLrsHPDlg
        BUVt/NxRcw40HBhHXxdD9xjJ1kim25P7FB7FScN9Gg==
X-Google-Smtp-Source: ABdhPJyILhYG1yeMRXTOEinJ2nWQ5k/Wdk5oKtI6BocyrPxqkMfj6StMQ/RoL3uGpsxH8+vdgbsJTpfVXCkhobcsh24=
X-Received: by 2002:aca:2310:: with SMTP id e16mr2036358oie.64.1631840104499;
 Thu, 16 Sep 2021 17:55:04 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 16 Sep 2021 17:55:04 -0700
MIME-Version: 1.0
In-Reply-To: <1631811121-32662-1-git-send-email-pillair@codeaurora.org>
References: <1631811121-32662-1-git-send-email-pillair@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 16 Sep 2021 17:55:04 -0700
Message-ID: <CAE-0n50Qmnxa8dz9pQbP408Y_vOu_8j1qeYFGo61W47WQkGunA@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: qcom: sc7280: Add WPSS remoteproc node
To:     Rakesh Pillai <pillair@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibis@codeaurora.org,
        mpubbise@codeaurora.org, kuabhs@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rakesh Pillai (2021-09-16 09:52:01)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dts b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> index 64fc22a..2b8bbcd 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> @@ -1423,6 +1433,59 @@
>                         #power-domain-cells = <1>;
>                 };
>
> +               remoteproc_wpss: remoteproc@8a00000 {
> +                       compatible = "qcom,sc7280-wpss-pil";
> +                       reg = <0 0x08a00000 0 0x10000>;
> +
> +                       interrupts-extended = <&intc GIC_SPI 587 IRQ_TYPE_EDGE_RISING>,
> +                                             <&wpss_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
> +                                             <&wpss_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
> +                                             <&wpss_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
> +                                             <&wpss_smp2p_in 3 IRQ_TYPE_EDGE_RISING>,
> +                                             <&wpss_smp2p_in 7 IRQ_TYPE_EDGE_RISING>;
> +                       interrupt-names = "wdog", "fatal", "ready", "handover",
> +                                         "stop-ack", "shutdown-ack";
> +
> +                       clocks = <&gcc GCC_WPSS_AHB_BDG_MST_CLK>,
> +                                <&gcc GCC_WPSS_AHB_CLK>,
> +                                <&gcc GCC_WPSS_RSCP_CLK>,
> +                                <&rpmhcc RPMH_CXO_CLK>;
> +                       clock-names = "gcc_wpss_ahb_bdg_mst_clk",
> +                                     "gcc_wpss_ahb_clk",
> +                                     "gcc_wpss_rscp_clk",
> +                                     "xo";
> +
> +                       power-domains = <&rpmhpd SC7280_CX>,
> +                                       <&rpmhpd SC7280_MX>;
> +                       power-domain-names = "cx", "mx";
> +
> +                       memory-region = <&wpss_mem>;
> +
> +                       qcom,qmp = <&aoss_qmp>;
> +
> +                       qcom,smem-states = <&wpss_smp2p_out 0>;
> +                       qcom,smem-state-names = "stop";
> +
> +                       resets = <&aoss_reset AOSS_CC_WCSS_RESTART>,
> +                                <&pdc_reset PDC_WPSS_SYNC_RESET>;
> +                       reset-names = "restart", "pdc_sync";
> +
> +                       qcom,halt-regs = <&tcsr_mutex_regs 0x37000>;

Where is this node defined? I don't see it on the mailing list for
sc7280. Can you indicate what patches this depends on, and use git
format-patch --base= so we can try to find them ourselves.
