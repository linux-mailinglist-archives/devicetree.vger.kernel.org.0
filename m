Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4DC83145F6
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 03:01:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230046AbhBIB7y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 20:59:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229975AbhBIB7y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 20:59:54 -0500
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23753C06178A
        for <devicetree@vger.kernel.org>; Mon,  8 Feb 2021 17:59:14 -0800 (PST)
Received: by mail-ot1-x32f.google.com with SMTP id r21so7622837otk.13
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 17:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CM5ltyHoHHbZYLOgDq3mYmPpHArKleBbSZcdJnFQ1co=;
        b=VNzBW35mfUL4JLrBGXZzO0LzVGcu60Sal3lpJpzpJsHT7NQTt3QyeaZL3JYuO8G4JX
         qUB+Xj2siMlhDDdYUZpxlvM817ahGUV5+gnijzPPclWDlP2+IuSKig7nDa/U//Qpdxqc
         VtgAw/WlsIqWEl/mQ7KYCu8MVWUxAkos+L18fAkOM7pLrFgMcDgg9z5Jkd87p2un+w21
         +qfurkDbb2DgmyeJoQexxQED0XscuerxPvHCck+55ZIKXm6T+W1XNr/xH8StqL7mcd1Q
         U0Utr3SBo1edyzU8SLrnMwkmRooiqV+lfCN+N1u1ihrc56DjtaCqI+Jwc/2b0EoGN8OE
         6usw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CM5ltyHoHHbZYLOgDq3mYmPpHArKleBbSZcdJnFQ1co=;
        b=iZgAenqIM9rlcZ3N2+Fj6ud1jxomT01gHDqUNTaoaEq6bN705RqHNaJ0+NmnbxdKcS
         p6RDoNSGaJezqygW9oo5naDjlZQ/XjaWuptdVxC0Az8L8VOzaRs/3AIJNWPBpMVtDlDl
         IikxbsfIRjAqWCafIQRM5hpaV6qcOUZbeV4+BaKXapbj4SNKmK/++LTGTezGNtX5ikHG
         vyRorEZSOquboqlfFf17p1NjWumN8Nuxoyjf4YZ5qOZ0YBtf2o6Yz82OLGv+zVu2B5SX
         ZYVeoplN2Bxw0o6Y8u1uKOepVKMpaR9OCvb67EvRzoPsuiT6AKYNEp3PwaSFCsrlwKzK
         EvFQ==
X-Gm-Message-State: AOAM532UASdjIlp0E3HWnYTb6nqcqmuhTG75QHXXEXQ4t+D1c0vlauLH
        xTbnvyMAKfvefmNeKv2LxPwEOum4worTw7oKRnoEow==
X-Google-Smtp-Source: ABdhPJy/fpshIH2JrEeihE3hResbnsn94vscsrPR1dHimzAhVPvv0cTpwI0VbfgKSuJE19snvxCF2QO6NsSZr7j82X8=
X-Received: by 2002:a9d:5f0b:: with SMTP id f11mr13838524oti.263.1612835953572;
 Mon, 08 Feb 2021 17:59:13 -0800 (PST)
MIME-Version: 1.0
References: <20210203113914.1072380-1-bryan.odonoghue@linaro.org>
 <20210203113914.1072380-2-bryan.odonoghue@linaro.org> <20210204233905.GA1334487@robh.at.kernel.org>
 <CAL_JsqLE91CqOOjqmvDs-xbtbjp_T1ux7Gd375gHF8pJapUyCQ@mail.gmail.com>
In-Reply-To: <CAL_JsqLE91CqOOjqmvDs-xbtbjp_T1ux7Gd375gHF8pJapUyCQ@mail.gmail.com>
From:   "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Date:   Tue, 9 Feb 2021 01:59:02 +0000
Message-ID: <CABDeQ7EhkS=E-QmdJsv40to=qvvMEOeYbQMNmZA8FcsxkWN3Vw@mail.gmail.com>
Subject: Re: [PATCH 1/1] dt-bindings: media: venus: Add sm8250 dt schema
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Vikash Garodia <vgarodia@qti.qualcomm.com>,
        "Gross, Andy" <agross@kernel.org>,
        Dikshita Agarwal <dikshita@qti.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        devicetree@vger.kernel.org,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Jonathan Marek <jonathan@marek.ca>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 9 Feb 2021 at 01:39, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Thu, Feb 4, 2021 at 5:39 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Wed, 03 Feb 2021 11:39:14 +0000, Bryan O'Donoghue wrote:
> > > Add a schema description for the venus video encoder/decoder on the sm8250.
> > >
> > > Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > > ---
> > >  .../bindings/media/qcom,sm8250-venus.yaml     | 153 ++++++++++++++++++
> > >  1 file changed, 153 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
> > >
> >
> > Applied, thanks!
>
> And now dropped. The example has lots of errors and I got tired of
> fixing them and didn't know if the undocumented properties should be
> removed or documented. Here's what I fixed so far:
>
> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
> b/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
> index 1d4b1ab63297..fe66de5d91ea 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
> @@ -116,10 +116,13 @@ examples:
>    - |
>          #include <dt-bindings/interrupt-controller/arm-gic.h>
>          #include <dt-bindings/clock/qcom,videocc-sm8250.h>
> +        #include <dt-bindings/clock/qcom,gcc-sm8250.h>
> +        #include <dt-bindings/power/qcom-rpmpd.h>
> +        #include <dt-bindings/interconnect/qcom,sm8250.h>
>
>          venus: video-codec@aa00000 {
>              compatible = "qcom,sm8250-venus";
> -            reg = <0 0x0aa00000 0 0xff000>;
> +            reg = <0x0aa00000 0xff000>;
>              interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
>              power-domains = <&videocc MVS0C_GDSC>,
>                              <&videocc MVS0_GDSC>,
> @@ -129,12 +132,12 @@ examples:
>
>              clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
>                       <&videocc VIDEO_CC_MVS0C_CLK>,
> -                     <&videocc VIDEO_CC_MVS0_CLK>;
> +                     <&videocc VIDEO_CC_MVS0_CLK_SRC>;
>              clock-names = "iface", "core", "vcodec0_core";
>
>              interconnects = <&gem_noc MASTER_AMPSS_M0 &config_noc
> SLAVE_VENUS_CFG>,
>                              <&mmss_noc MASTER_VIDEO_P0 &mc_virt SLAVE_EBI_CH0>;
> -            interconnect-names = "cpu-cfg", "video-mem";
> +            interconnect-names = "video-mem", "cpu-cfg";
>
>              iommus = <&apps_smmu 0x2100 0x0400>;
>              memory-region = <&video_mem>;
> diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
> b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
> index 05ae893d1b2e..312c076379e1 100644
> --- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
> +++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
> @@ -36,6 +36,7 @@ cpu0: cpu@0 {
>                         compatible = "arm,armv8";
>                         reg = <0x0 0x0>;
>                         next-level-cache = <&L2_0>;
> +                       next-level-cache {};
>                 };
>                 cpu1: cpu@1 {
>                         device_type = "cpu";

Sorry about that Rob, I thought my build script ran the dt checker
