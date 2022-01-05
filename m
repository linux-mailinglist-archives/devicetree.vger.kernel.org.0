Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A80CF485A6F
	for <lists+devicetree@lfdr.de>; Wed,  5 Jan 2022 22:10:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238869AbiAEVKE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jan 2022 16:10:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244333AbiAEVKB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jan 2022 16:10:01 -0500
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58DF3C061245
        for <devicetree@vger.kernel.org>; Wed,  5 Jan 2022 13:10:01 -0800 (PST)
Received: by mail-ot1-x333.google.com with SMTP id n17-20020a9d64d1000000b00579cf677301so787832otl.8
        for <devicetree@vger.kernel.org>; Wed, 05 Jan 2022 13:10:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=GNdXeJAgUyRmDGiwYrY80oM6MegVT5rNLhczJIKJgLs=;
        b=fphekuQIeDoMeRgFsdNPxKE88i9NZ70/onKEZ1FNwyHkn3eDW66TlLOY0zGHMZnMSK
         0CfvPvWJrULbwegUqeK/HiQwEzNxlmLSN/4/8k4FseQLHxDVg/o5YJOjUdfTyCO1OEYP
         kb7zWDhP0Gz2XpaHjVzhHFDNmK6Gp90oOghOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=GNdXeJAgUyRmDGiwYrY80oM6MegVT5rNLhczJIKJgLs=;
        b=oRllei1KOshbURo14HmCAAoex1yxEMoALuw+bo/2rZ1dIF1T94IXgCVCBtK8UBRxSZ
         A+f6DKbrUPEirxt/6PtgFi6IVJek8C+pYrWqKBl0ggj3al1LN58h4zaq1Ai+h+ednhpK
         r7AKP+8YVhaCXwa+7KZ+5sIQ0BaMfP01SCmOm2FIUZVKaYm1Zpfoictki6achUeVm0wL
         ifRA/oKadRAdFQCsInsSEAkbJX3CgY87zwZhSF+oJWsx9H9tTjLQp+7Xhj8MOPSJEIMg
         xLgzQU25oLdSJMxhTwqdq5/s/xVS0UGHFgYAensNxCowEiOstftJvTm/R50hH8uDdtXs
         VHTg==
X-Gm-Message-State: AOAM53322CJVA0DSvyK1lKkDOAA91uIAB+Fh/W62PZfmUSmpIXGroRx/
        R8COgBeE03bHZRPLXBJxWwGn/3Q+zU8eYM5awyMxpg==
X-Google-Smtp-Source: ABdhPJy+Pnm2rxcxWxPMuwbgavxWUvf/qfRlFc0pILUt8sXiujUxMGq01EZplZFi70PuN14XUcluAz+pJnZrBAHarxY=
X-Received: by 2002:a9d:2243:: with SMTP id o61mr39525756ota.126.1641417000709;
 Wed, 05 Jan 2022 13:10:00 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 5 Jan 2022 13:10:00 -0800
MIME-Version: 1.0
In-Reply-To: <1641208380-15510-4-git-send-email-quic_srivasam@quicinc.com>
References: <1641208380-15510-1-git-send-email-quic_srivasam@quicinc.com> <1641208380-15510-4-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 5 Jan 2022 13:10:00 -0800
Message-ID: <CAE-0n5069ehb97ybJV7Z0FXnODvRBuy-w6r1KJSfZnHece7k1A@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sc7280: add sound card support
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

Quoting Srinivasa Rao Mandadapu (2022-01-03 03:13:00)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index 3449d56..63b1184 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -637,6 +637,99 @@
>         };
>  };
>
> +&sound {
> +       compatible = "google,sc7280-herobrine";
> +       model = "sc7280-wcd938x-max98360a-1mic";
> +       status = "okay";
> +       audio-routing =
> +               "IN1_HPHL", "HPHL_OUT",
> +               "IN2_HPHR", "HPHR_OUT",
> +               "AMIC1", "MIC BIAS1",
> +               "AMIC2", "MIC BIAS2",
> +               "VA DMIC0", "MIC BIAS3",
> +               "VA DMIC1", "MIC BIAS3",
> +               "VA DMIC2", "MIC BIAS1",
> +               "VA DMIC3", "MIC BIAS1",
> +               "TX SWR_ADC0", "ADC1_OUTPUT",
> +               "TX SWR_ADC1", "ADC2_OUTPUT",
> +               "TX SWR_ADC2", "ADC3_OUTPUT",
> +               "TX SWR_DMIC0", "DMIC1_OUTPUT",
> +               "TX SWR_DMIC1", "DMIC2_OUTPUT",
> +               "TX SWR_DMIC2", "DMIC3_OUTPUT",
> +               "TX SWR_DMIC3", "DMIC4_OUTPUT",
> +               "TX SWR_DMIC4", "DMIC5_OUTPUT",
> +               "TX SWR_DMIC5", "DMIC6_OUTPUT",
> +               "TX SWR_DMIC6", "DMIC7_OUTPUT",
> +               "TX SWR_DMIC7", "DMIC8_OUTPUT";
> +
> +               qcom,msm-mbhc-hphl-swh = <1>;
> +               qcom,msm-mbhc-gnd-swh = <1>;

Why are these last extra tabbed?

> +
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +       #sound-dai-cells = <0>;
> +
> +       dai-link@6 {
> +               link-name = "WCD Playback";
> +               reg = <LPASS_CDC_DMA_RX0>;
> +               cpu {
> +                       sound-dai = <&lpass_cpu LPASS_CDC_DMA_RX0>;
> +               };
> +
> +               codec {
> +                       sound-dai = <&wcd938x 0>, <&swr0 0>, <&rxmacro 0>;
> +               };
> +       };
> +
> +       dai-link@19 {
> +               link-name = "WCD Capture";
> +               reg = <LPASS_CDC_DMA_TX3>;
> +               cpu {
> +                       sound-dai = <&lpass_cpu LPASS_CDC_DMA_TX3>;
> +               };
> +
> +               codec {
> +                       sound-dai = <&wcd938x 1>, <&swr1 0>, <&txmacro 0>;
> +               };
> +       };
> +
> +       dai-link@1 {
> +               link-name = "Secondary MI2S Playback";
> +               reg = <MI2S_SECONDARY>;
> +               cpu {
> +                       sound-dai = <&lpass_cpu MI2S_SECONDARY>;
> +               };
> +
> +               codec {
> +                       sound-dai = <&max98360a>;
> +               };
> +       };
> +
> +       dai-link@5 {
> +               link-name = "DP Playback";
> +               reg = <LPASS_DP_RX>;
> +               cpu {
> +                       sound-dai = <&lpass_cpu LPASS_DP_RX>;
> +               };
> +
> +               codec {
> +                               sound-dai = <&msm_dp>;

Why double tabbed?

> +               };
> +       };
> +
> +       dai-link@25 {
> +               link-name = "DMIC Capture";
> +               reg = <LPASS_CDC_DMA_VA_TX0>;
> +               cpu {
> +                       sound-dai = <&lpass_cpu LPASS_CDC_DMA_VA_TX0>;
> +               };
> +
> +               codec {
> +                       sound-dai = <&vamacro 0>;
> +               };
> +       };

The order of the nodes seems arbitrary. Is there any sort order that can
be used to avoid conflicts in the future? Maybe the reg property because
that's how we sort the SoC node.

> +};
> +
>  &swr0 {
>         wcd_rx: wcd938x-rx{
>                 compatible = "sdw20217010d00";
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 68c7755..57bc5ef 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -2786,6 +2786,9 @@
>
>                 };
>
> +               sound: sound {

Is this really necessary? Certainly it shouldn't be in the SoC node as
it doesn't have a reg property.

> +               };
> +
>                 usb_1_hsphy: phy@88e3000 {
>                         compatible = "qcom,sc7280-usb-hs-phy",
>                                      "qcom,usb-snps-hs-7nm-phy";
> --
> 2.7.4
>
