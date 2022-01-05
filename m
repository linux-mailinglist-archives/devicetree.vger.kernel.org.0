Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB89A485A69
	for <lists+devicetree@lfdr.de>; Wed,  5 Jan 2022 22:07:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244340AbiAEVHn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jan 2022 16:07:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244334AbiAEVHn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jan 2022 16:07:43 -0500
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18A2DC061245
        for <devicetree@vger.kernel.org>; Wed,  5 Jan 2022 13:07:43 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id r131so844160oig.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jan 2022 13:07:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=PpDjDQ0Z79SEzn7VTSB0P0l9isRbUhXOzNth2TsOPjg=;
        b=CvSYazyKDMOUtrjmU/TOamyLERCVnlRPhk2UWeaLQEFMYqL6IvRmMkycP//LeP21tn
         YQfAS3dhwjNdbgCt/FoJJq0q6ocKxF93oE3uR09AfoFnvgszwqd2Cfox+NyWpKll3b6f
         9PVCsGtBSvz9Y7D+pLluCQuvpiSFy6z2P0PlI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=PpDjDQ0Z79SEzn7VTSB0P0l9isRbUhXOzNth2TsOPjg=;
        b=v9wF9a15ni4lyxPzeKLxpdEMgKvO1nc9JTnZBHVagf0SNJ3LfQ09ilqcw8I0WcFqGj
         es4CThQyd79xktB+BlyrVu8nutZxf+sBAenOVDA2EpLgWMxLzbXCZ2X+61dcR6KbndlI
         rvnGHO4u+lXG6N0hcAFP5NVUv21iCJmfPWGWJnnx3UBPPxp9CPYMA6EDjfZdVTfeJ6JV
         OTKfDefs2TvmrgizNyUGK49DdsZFIFXIo7KpZbbCAMSt4pYKfepg2hSbvJrqyq1uBgp9
         bweUtXiZAiyzWHb7josnmNGPBOrVZO4GXGifyU833+fXqr/lS29lIzhXZ32qqmdzpOsS
         cV8A==
X-Gm-Message-State: AOAM5309Szg/h1K22nr5s5ZBuKYpuge1gdaDoRa+8eerT+QSt/XKzbH/
        XPnk9JdJsoBlB0mGMiRfA/oofeurEWuvo45nEr92uw==
X-Google-Smtp-Source: ABdhPJwq7ROdWEu2C2UDt68Bywy/sRKVp6YDj3fImBJxbCHcoDnsJd0SyOIaso9Uiwev9rxexyDz4KI5zo4Z7/NdAhE=
X-Received: by 2002:aca:4382:: with SMTP id q124mr3952010oia.64.1641416862460;
 Wed, 05 Jan 2022 13:07:42 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 5 Jan 2022 13:07:41 -0800
MIME-Version: 1.0
In-Reply-To: <1641208380-15510-3-git-send-email-quic_srivasam@quicinc.com>
References: <1641208380-15510-1-git-send-email-quic_srivasam@quicinc.com> <1641208380-15510-3-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 5 Jan 2022 13:07:41 -0800
Message-ID: <CAE-0n51QAJFBALV7eEKLDunQaCNqPyTmdHRRUt7Khvkt8st=_g@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sc7280: Add lpass cpu node
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bjorn.andersson@linaro.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        judyhsiao@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org
Cc:     Venkata Prasad Potturu <quic_potturu@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-01-03 03:12:59)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index c0d9de3..68c7755 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -17,6 +17,7 @@
>  #include <dt-bindings/reset/qcom,sdm845-aoss.h>
>  #include <dt-bindings/reset/qcom,sdm845-pdc.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/sound/qcom,lpass.h>
>  #include <dt-bindings/thermal/thermal.h>
>
>  / {
> @@ -1840,6 +1841,62 @@
>                         #size-cells = <0>;
>                 };
>
> +               lpass_cpu: qcom,lpass@3260000 {

audio-subsystem@3260000?

> +                       compatible = "qcom,sc7280-lpass-cpu";
> +                       reg = <0 0x3260000 0 0xC000>,
> +                               <0 0x3280000 0 0x29000>,
> +                               <0 0x3340000 0 0x29000>,
> +                               <0 0x336C000 0 0x3000>,
> +                               <0 0x3987000 0 0x68000>,
> +                               <0 0x3B00000 0 0x29000>;
> +                       reg-names = "lpass-rxtx-cdc-dma-lpm",
> +                                       "lpass-rxtx-lpaif",
> +                                       "lpass-va-lpaif",
> +                                       "lpass-va-cdc-dma-lpm",
> +                                       "lpass-hdmiif",
> +                                       "lpass-lpaif";
> +
> +                       iommus = <&apps_smmu 0x1820 0>,
> +                               <&apps_smmu 0x1821 0>,
> +                               <&apps_smmu 0x1832 0>;
> +                       status = "disabled";
> +
> +                       power-domains = <&rpmhpd SC7280_LCX>;
> +                       power-domain-names = "lcx";
> +                       required-opps = <&rpmhpd_opp_nom>;
> +
> +                       clocks = <&lpass_aon LPASS_AON_CC_AUDIO_HM_H_CLK>,
> +                                       <&lpasscc LPASS_CORE_CC_SYSNOC_MPORT_CORE_CLK>,
> +                                       <&lpass_audiocc LPASS_AUDIO_CC_CODEC_MEM0_CLK>,
> +                                       <&lpass_audiocc LPASS_AUDIO_CC_CODEC_MEM1_CLK>,
> +                                       <&lpass_audiocc LPASS_AUDIO_CC_CODEC_MEM2_CLK>,
> +                                       <&lpasscc LPASS_CORE_CC_EXT_IF0_IBIT_CLK>,
> +                                       <&lpasscc LPASS_CORE_CC_EXT_IF1_IBIT_CLK>,
> +                                       <&lpass_aon LPASS_AON_CC_VA_MEM0_CLK>;
> +                       clock-names = "aon_cc_audio_hm_h",
> +                                       "core_cc_sysnoc_mport_core",
> +                                       "audio_cc_codec_mem0",
> +                                       "audio_cc_codec_mem1",
> +                                       "audio_cc_codec_mem2",
> +                                       "core_cc_ext_if0_ibit",
> +                                       "core_cc_ext_if1_ibit",
> +                                       "aon_cc_va_mem0";

Please align these things on " and <.

> +
> +                       #sound-dai-cells = <1>;
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +
> +                       interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
> +                                               <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>,
> +                                               <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>,
> +                                               <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
> +
> +                       interrupt-names = "lpass-irq-lpaif",
> +                                       "lpass-irq-vaif",
> +                                       "lpass-irq-rxtxif",
> +                                       "lpass-irq-hdmi";

Same.

> +               };
> +
>                 vamacro: codec@3370000 {
>                         compatible = "qcom,sc7280-lpass-va-macro";
>                         pinctrl-0 = <&dmic01_active>;
> --
> 2.7.4
>
