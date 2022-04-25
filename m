Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 957A550EC9E
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 01:32:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231223AbiDYXfC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 19:35:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237834AbiDYXfB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 19:35:01 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC6466AA69
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 16:31:54 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id v65so14195820oig.10
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 16:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=NMTL6L2VrzguuHoJj+eS47MoD+AdGFAgjBbMQT1LAfk=;
        b=DsJPHn9qlvhjepUxbe1mS4y4tphW5Ixi0wICkYVkrvZjBzOlp4U0QpwZBvCZCJOCcH
         X64tx2ZQl4sSrhMxuDciBCTq6RvjAPoN9ox7lUQRRD6OAMf1uzRhxRSdgfUpmEKJVo8P
         NjDbGwEZ9WFD0E/8UJwM+lP1EbEJBD0JJiKas=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=NMTL6L2VrzguuHoJj+eS47MoD+AdGFAgjBbMQT1LAfk=;
        b=rEvGyta0mHgMGQOfSqgXdAvXt1ai7bw1dN7NiQo8NGzR8qrmY+dI+fh+RaWwrqViLX
         ppIaaqxAaW/PUf9td3HYwHLdrck0xCbxU1rVV22UxbHzeWpOIgGDbFxZpZPXGpBnycIS
         MJ+HNlNXhq7qMQ9xKTTElvTkSiouliOmJPfd+CwUZH6NqRW3zrzZ7HF3um2Tzs0bgF0/
         98LJWfTwbFm2cn/ui+De44C0KbsAP3Dxr7RR7+FtH+xdUUKbDzV++85lLeZWGqP+ljK9
         MUXq6CI8NWAv45G+PuPRsNqzqd0ZTYBi/ekMg3dRBHM+C1F+QIPH8DGPb1PZT8K9Mdfs
         jEOA==
X-Gm-Message-State: AOAM5323wkmo67+hP8Cv1U+UxDTMuheDmKWNPgjmK4bWGH2Deg3+QpUm
        08WELFEGsZA3uIn8NYvxtxGuFZRpYIUBCqmj9IGiiA==
X-Google-Smtp-Source: ABdhPJyAqAt/Vs4U0AzeuQNzAdOSMhGGm8q3VNwihxuNmza3IIrOZ8hMP07I64/ydEqXYcAhOUYiz1eKsHnwvkf4mSQ=
X-Received: by 2002:a05:6808:1296:b0:325:8fb:68f3 with SMTP id
 a22-20020a056808129600b0032508fb68f3mr5568052oiw.193.1650929514075; Mon, 25
 Apr 2022 16:31:54 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 25 Apr 2022 16:31:53 -0700
MIME-Version: 1.0
In-Reply-To: <20220425153650.1.Iedd71976a78d53c301ce0134832de95a989c9195@changeid>
References: <20220425153650.1.Iedd71976a78d53c301ce0134832de95a989c9195@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 25 Apr 2022 16:31:53 -0700
Message-ID: <CAE-0n52OdZLLRKot+eu4YN9Tu3p4Lau0NR0vTbwfGiHhBCmZQw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: eDP for herobrine boards
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Cc:     Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@chromium.org>, quic_kalyant@quicinc.com,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2022-04-25 15:36:55)
> This change adds in eDP for herobrine boards, splitting up amongst the

Imperative mood please.

 $ git grep "This patch" -- Documentation/process/

Add eDP support to herobrine boards, splitting up ..

> different files as makes sense. Rationale for the current split of
> things:
> * The eDP connector itself is on qcard. However, not all devices with
>   a qcard will use an eDP panel. Some might use MIPI and, presumably,
>   someone could build a device with qcard that had no display at all.
> * The qcard provides a PWM for backlight that goes to the eDP
>   connector. This PWM is also is provided to the board and it's

s/also is/also/

>   expected that it would be used as the backlight PWM even for
>   herobrine devices with MIPI displays.
[...]
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> index d58045dd7334..769d440d1917 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> @@ -367,6 +367,14 @@ &vreg_l2c_1p8 {
>
>  /* ADDITIONS TO NODES DEFINED IN PARENT DEVICE TREE FILES */
>
> +&edp_panel {
> +       /*
> +        * Now that we've defined which power supply we give to qcard for
> +        * eDP we can hook it up in the panel node.

I don't understand this comment. "Now" triggers my brain to think that
something happened when this line was written. But maybe it means
something was done earlier in the file? When is "now"? I don't really
know. Maybe this is clearer:

	/* Our board provides power to the qcard for the eDP panel. */

> +        */
> +       power-supply = <&vreg_edp_3p3>;
> +};
> +
>  ap_sar_sensor_i2c: &i2c1 {
>         clock-frequency = <400000>;
>         status = "disabled";
> @@ -429,6 +445,20 @@ &pcie1 {
>         vddpe-3v3-supply = <&pp3300_ssd>;
>  };
>
> +&pm8350c_pwm {
> +       status = "okay";
> +};
> +
> +&pm8350c_pwm_backlight {
> +       status = "okay";
> +
> +       /*
> +        * Now that we've defined which power supply we give to qcard for
> +        * backlight we can hook it up in the panel node.

Same comment.

> +        */
> +       power-supply = <&vreg_edp_bl>;
> +};
> +
