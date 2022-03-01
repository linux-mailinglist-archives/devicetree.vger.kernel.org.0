Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 664CB4C8023
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 02:10:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231650AbiCABLI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 20:11:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231449AbiCABLH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 20:11:07 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABB9B2DEB
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 17:10:27 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id a8so28343491ejc.8
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 17:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BbqDwcjXsXCL6kTMj0YCp6PGwzr/251RPmtgzCoFEyg=;
        b=Ik+NVh3CPD8GsoJYQqmUUGgp15DF5ACPGNAA3aEa+OtKST1rLe5gBLLmayjH3liIyT
         zYsDmk39c7rHmGbFKJ4PImoNKy5RX5cy1kfe2mXgGT1zSW4ymL3cmNbnY7EaK9CpzaUe
         bj+bd/arywMdD8u8U+Xuwf26B5pjNxrE1+n/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BbqDwcjXsXCL6kTMj0YCp6PGwzr/251RPmtgzCoFEyg=;
        b=v3HM6yx9wdWgOM3ghBZrZE6FNrFyCATUg+EU2tvLJoVZCV3hlKAidoXBTh3GFXBF70
         k0Oc3425LTdRQDqJjerJnczpqlRVkWedRDmSNb3Nt17YtMkcPub/U+Ipu6/K0Vwd45s/
         mXekKRnUo4CxEEcQxisNfxjyC0HG36wKD7bMfKNBEQmFiWsvChotVJeLyLlYV6bAna6h
         VWbc9zEc4woBW2lVND0Jt3qxY65nRaUBwoDXEm87gDzKjsIdBU+97eVEVm/Ik7MWGbik
         yoz+gSRf4w6T6NeVwx5JBMkb2YGue0JaQb9CkMIK9G/vSPMAVytpryHO2V5XuwWzElYE
         Zemg==
X-Gm-Message-State: AOAM5303bsz2Ky9V2EmaJHM8Dx9KXflVDA0WSUXqkYpJPnXKi7EdOZlT
        Bl/TI1p1FWq9XWw0SQFzJ58f31H/ZSdnR8Q4
X-Google-Smtp-Source: ABdhPJwCigkqt9qNCOF36g4qVWwxQK/lNXi88ZMtsn1WvKCJM/tgtkVnZiC2T10npWzcfd985VwERA==
X-Received: by 2002:a17:907:9196:b0:69f:2625:3f2e with SMTP id bp22-20020a170907919600b0069f26253f2emr17140099ejb.575.1646097025891;
        Mon, 28 Feb 2022 17:10:25 -0800 (PST)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id f15-20020a50e08f000000b004134a121ed2sm6766837edl.82.2022.02.28.17.10.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Feb 2022 17:10:25 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id r10so18064012wrp.3
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 17:10:24 -0800 (PST)
X-Received: by 2002:a5d:62cb:0:b0:1ef:5d3f:7b56 with SMTP id
 o11-20020a5d62cb000000b001ef5d3f7b56mr14343243wrv.513.1646097024460; Mon, 28
 Feb 2022 17:10:24 -0800 (PST)
MIME-Version: 1.0
References: <1644591438-6514-1-git-send-email-quic_srivasam@quicinc.com> <1644591438-6514-3-git-send-email-quic_srivasam@quicinc.com>
In-Reply-To: <1644591438-6514-3-git-send-email-quic_srivasam@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 28 Feb 2022 17:10:12 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Xm7UVXX9NQfKs+BymsZpG+aoYqvXXRL5WhJjEZRqi7ug@mail.gmail.com>
Message-ID: <CAD=FV=Xm7UVXX9NQfKs+BymsZpG+aoYqvXXRL5WhJjEZRqi7ug@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: sc7280: Add lpass cpu node
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Venkata Prasad Potturu <quic_potturu@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Feb 11, 2022 at 6:57 AM Srinivasa Rao Mandadapu
<quic_srivasam@quicinc.com> wrote:
>
> @@ -1750,6 +1751,64 @@
>                         #clock-cells = <1>;
>                 };
>
> +               lpass_cpu: audio-subsystem@3260000 {
> +                       compatible = "qcom,sc7280-lpass-cpu";
> +                       reg = <0 0x3260000 0 0xC000>,
> +                             <0 0x3280000 0 0x29000>,
> +                             <0 0x3340000 0 0x29000>,
> +                             <0 0x336C000 0 0x3000>,
> +                             <0 0x3987000 0 0x68000>,
> +                             <0 0x3B00000 0 0x29000>;

Lower case hex, please. ...and pad the address to 8 digits here (just
don't do it in the unit address in the node name).


> +                       reg-names = "lpass-rxtx-cdc-dma-lpm",
> +                                   "lpass-rxtx-lpaif",
> +                                   "lpass-va-lpaif",
> +                                   "lpass-va-cdc-dma-lpm",
> +                                   "lpass-hdmiif",
> +                                   "lpass-lpaif";

The order of "reg" and "reg-names" needs to match the bindings
exactly. It's almost certainly easier to change your device tree since
the bindings have already landed.

That means that "lpass-hdmiif" will be first. ...and it will also
change your node name since the first "reg" listed will now be
3987000.


> +                       iommus = <&apps_smmu 0x1820 0>,
> +                                <&apps_smmu 0x1821 0>,
> +                                <&apps_smmu 0x1832 0>;
> +                       status = "disabled";
> +
> +                       power-domains = <&rpmhpd SC7280_LCX>;
> +                       power-domain-names = "lcx";

power-domain-names is not in the bindings.


> +                       required-opps = <&rpmhpd_opp_nom>;
> +
> +                       clocks = <&lpass_aon LPASS_AON_CC_AUDIO_HM_H_CLK>,
> +                                <&lpasscore LPASS_CORE_CC_SYSNOC_MPORT_CORE_CLK>,
> +                                <&lpass_audiocc LPASS_AUDIO_CC_CODEC_MEM_CLK>,
> +                                <&lpass_audiocc LPASS_AUDIO_CC_CODEC_MEM0_CLK>,
> +                                <&lpass_audiocc LPASS_AUDIO_CC_CODEC_MEM1_CLK>,
> +                                <&lpass_audiocc LPASS_AUDIO_CC_CODEC_MEM2_CLK>,
> +                                <&lpasscore LPASS_CORE_CC_EXT_IF0_IBIT_CLK>,
> +                                <&lpasscore LPASS_CORE_CC_EXT_IF1_IBIT_CLK>,
> +                                <&lpass_aon LPASS_AON_CC_VA_MEM0_CLK>;
> +                       clock-names = "aon_cc_audio_hm_h",
> +                                     "core_cc_sysnoc_mport_core",
> +                                     "audio_cc_codec_mem",
> +                                     "audio_cc_codec_mem0",
> +                                     "audio_cc_codec_mem1",
> +                                     "audio_cc_codec_mem2",
> +                                     "core_cc_ext_if0_ibit",
> +                                     "core_cc_ext_if1_ibit",
> +                                     "aon_cc_va_mem0";

Clocks do not match bindings.


> +                       #sound-dai-cells = <1>;
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +
> +                       interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
> +
> +                       interrupt-names = "lpass-irq-lpaif",
> +                                         "lpass-irq-vaif",
> +                                         "lpass-irq-rxtxif",
> +                                         "lpass-irq-hdmi";

interrupt-names ordering does not match bindings.


-Doug
