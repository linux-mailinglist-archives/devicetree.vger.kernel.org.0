Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0431207266
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2020 13:44:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390599AbgFXLoW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jun 2020 07:44:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390670AbgFXLoU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jun 2020 07:44:20 -0400
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com [IPv6:2607:f8b0:4864:20::e43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4F30C061795
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2020 04:44:19 -0700 (PDT)
Received: by mail-vs1-xe43.google.com with SMTP id s18so1199810vsi.6
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2020 04:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=16YY60PN6u62CsdqXTLtpXufTnOGYMQ6hrz0Z45FFTE=;
        b=qrkILIM/s15IymScgPDkRT1VNzSP3DtSXREEISXmBPELBhZGmSqntU6JBRWu3sHJV2
         fToYdChv2KKFGXEnrMeL89QCU6jJEtDxA0Gt7gZi/EnUZqjzEbnmxkZ0oZ0HbB0+JeHw
         WJ2FxT3ToAFsUdr0vBXqLoRihW0XMuGwLOO9Fc11lM6dL6BJJ+xeNRfpJsMokDdu990b
         0y0QtWK+mkLZIvYZ26xJhJlObd2NgjTOto02VWkKgel4YI6f87qhR5nSu7avR5ihmNN/
         73YFZspRgx0gdTYKjYwYIiC6wRRzPt0UDPy0+r2HrxjgM2OThCIvg8sWNqxr645btU2+
         0z0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=16YY60PN6u62CsdqXTLtpXufTnOGYMQ6hrz0Z45FFTE=;
        b=VzcbEBBY1UkyJQ/aiyGSaQsJ6l4sKF1zoglFNEDenScF2oIEdZ4BGebV+SNj//UIF9
         jwfqdR+kWU4pOppQbmgEnr3vtkfVKDZqwQdNTD/aUXOt2sKRD+LotWNAY+WEuOg6Vfe/
         URsIaS0fRAyuQEdJ0PCc47OyoCAActYOpyEDzujguaBWevirqm5to58k/5f18EJ1Fyqt
         pANwbx7IsPsVsKnWPbvFqFirL7N7kFduCDOItn+sTIMZd4Ta4kPRtdvSK3bEWHF3oiHN
         /nGlkRu861UEAg7Tvp06DEg6m7pp4ndcdLSSXJKeNYQ50mUYBz+fkRdGnxZRY2dNbUf8
         wXMQ==
X-Gm-Message-State: AOAM531VulDwm1CV/X+r6ukuAzXOM5dTfgxyIcR96TxQMzmnkgQbdryV
        jdrGUWH+BfqnLao9Sao9P/g8IIYpEZ6OpKBBgZSDkw==
X-Google-Smtp-Source: ABdhPJwSbBWkN2a607O0g2Tqflb4gBZwf9N00qj0wn7y+Nwy7jnGNQy5diTDA2kS6Fwm7lkEuJZI9MmVwAUK3tCIlRo=
X-Received: by 2002:a67:885:: with SMTP id 127mr23594427vsi.182.1592999058930;
 Wed, 24 Jun 2020 04:44:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200623180832.254163-1-konradybcio@gmail.com> <20200623180832.254163-4-konradybcio@gmail.com>
In-Reply-To: <20200623180832.254163-4-konradybcio@gmail.com>
From:   Amit Kucheria <amit.kucheria@linaro.org>
Date:   Wed, 24 Jun 2020 17:14:08 +0530
Message-ID: <CAHLCerOAM5j+gZWP9MUuGZ+TQfBg4Z=GoEdUfxBTwtEs5TqUuw@mail.gmail.com>
Subject: Re: [PATCH 3/8] arm64: dts: qcom: sdm630: Add tsens node
To:     Konrad Dybcio <konradybcio@gmail.com>
Cc:     skrzynka@konradybcio.pl, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Linux PM list <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 23, 2020 at 11:39 PM Konrad Dybcio <konradybcio@gmail.com> wrote:
>
> Enable tsens on this SoC using tsens-v2 driver.
>
> Signed-off-by: Konrad Dybcio <konradybcio@gmail.com>
> ---
>  .../devicetree/bindings/thermal/qcom-tsens.yaml       |  1 +
>  arch/arm64/boot/dts/qcom/sdm630.dtsi                  | 11 +++++++++++
>  2 files changed, 12 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> index d7be931b42d2..d89d5acd6e2a 100644
> --- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> +++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> @@ -39,6 +39,7 @@ properties:
>                - qcom,msm8996-tsens
>                - qcom,msm8998-tsens
>                - qcom,sc7180-tsens
> +              - qcom,sdm630-tsens
>                - qcom,sdm845-tsens
>            - const: qcom,tsens-v2
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> index ea85f28032d2..92bf4ae6a590 100644
> --- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> @@ -566,6 +566,17 @@ anoc2_smmu: iommu@16c0000 {
>                                 <GIC_SPI 474 IRQ_TYPE_LEVEL_HIGH>;
>                 };
>
> +               tsens: thermal-sensor@10ae000 {
> +                       compatible = "qcom,sdm630-tsens", "qcom,tsens-v2";
> +                       reg = <0x010ae000 0x1000>, /* TM */
> +                                 <0x010ad000 0x1000>; /* SROT */
> +                       #qcom,sensors = <12>;
> +                       interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>,
> +                                        <GIC_SPI 430 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "uplow", "critical";
> +                       #thermal-sensor-cells = <1>;
> +               };
> +

There should be 2 tsens controllers on this platform, the first at
0x010AA000, the other at 0x010AD000.

>                 tcsr_mutex_regs: syscon@1f40000 {
>                         compatible = "syscon";
>                         reg = <0x01f40000 0x20000>;
> --
> 2.27.0
>
