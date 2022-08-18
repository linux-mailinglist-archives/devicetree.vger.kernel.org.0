Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67815598AA2
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 19:44:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243511AbiHRRn7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 13:43:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242260AbiHRRn6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 13:43:58 -0400
Received: from mail-ua1-x92f.google.com (mail-ua1-x92f.google.com [IPv6:2607:f8b0:4864:20::92f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBE1361D50
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 10:43:56 -0700 (PDT)
Received: by mail-ua1-x92f.google.com with SMTP id by8so916044uab.12
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 10:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=1b9aTxIIz9/74/jYE0z5xvzqLFfDp/MoiZcviUgQWJ8=;
        b=Du+adRQQBzyfPvEtwcg6Q6ErkgIm3DL4MsEH4J9V/VihvaXqlIpoazABA4ake/s+QY
         SdIjmTgU4xgML/xDG3oW1BVlUEHH50QwzUHSU8HexnO1MQjTKXqD0ZxuQToamtoYJ55g
         LJF93G4W48p1Eqd9GdnglIwVnNmxi7s6oGhC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=1b9aTxIIz9/74/jYE0z5xvzqLFfDp/MoiZcviUgQWJ8=;
        b=aahO66aIjdTxxYckq3f5UUB45gs2f85puVauJTVGsg2MwILEXgyJUzvhZm79JqN+Yy
         11R6GNjrC+Zcd9V0zolZOuwAAfn07RTXxjvzkoSmEjWozFd8HgDP3nvttljxQ5p6vdR+
         0o6ayBlLw7GOfVVQ3Sc2AdR5falkIn/NYhm/+JhAD1EsHuv8U5lILkOMkX8vsaldr5wb
         zWEkrRujX2YX/KCsHWR5bHMPEZW4O2S8trOq4N+tZS+OGo39OMuhdbKY+8GUFfLffHJb
         VuQ66koA6iDMblpDduvCpmNqnNUYMkCdBub4fZkZHbWogK1F0rq0QZxeK688e6+e7GyP
         cJxA==
X-Gm-Message-State: ACgBeo1tBN4MAbGMAwkIXl05dSoSa+XB8j+jKw4jURa9W0xkH0k9UxW2
        cBfYhqi5Nd5pPOiWX3Pb4tH7iaZxpmvPcw==
X-Google-Smtp-Source: AA6agR6S9v8dNs6jSR6w4q3cVi7PkWhRfLfknAnCvMWbuzotGFaPJE0hDr29XpfqSiltNSG2xrmROA==
X-Received: by 2002:a9f:2f0c:0:b0:38c:6559:3c5d with SMTP id x12-20020a9f2f0c000000b0038c65593c5dmr1637738uaj.121.1660844635787;
        Thu, 18 Aug 2022 10:43:55 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id p13-20020a1fa60d000000b003791113188csm1168488vke.55.2022.08.18.10.43.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 10:43:54 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id l7so1955478vsc.0
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 10:43:54 -0700 (PDT)
X-Received: by 2002:a67:a20d:0:b0:388:5ed2:7c7b with SMTP id
 l13-20020a67a20d000000b003885ed27c7bmr1621593vse.5.1660844633605; Thu, 18 Aug
 2022 10:43:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220818084216.1.I5c2b6fea19c4c0dec67fd4931f03df8e5ccaca95@changeid>
In-Reply-To: <20220818084216.1.I5c2b6fea19c4c0dec67fd4931f03df8e5ccaca95@changeid>
From:   Alexandru M Stan <amstan@chromium.org>
Date:   Thu, 18 Aug 2022 10:43:17 -0700
X-Gmail-Original-Message-ID: <CAHNYxRzRgqXPq0s3Pop_t0K+yAyO4MX1D1jY0buqw7s8kv0F=A@mail.gmail.com>
Message-ID: <CAHNYxRzRgqXPq0s3Pop_t0K+yAyO4MX1D1jY0buqw7s8kv0F=A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Add sleep state for alc5682 codec
To:     "Joseph S. Barrera III" <joebar@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 18, 2022 at 8:42 AM Joseph S. Barrera III
<joebar@chromium.org> wrote:
>
> Add sleep state to acl5682. In default, gpio28 (HP_IRQ) is bias-pull-up.
> To save power, in the new sleep state, gpio28 is bias-disable.
>
> sleeping, /sys/kernel/debug/gpio shows gpio28 as "no pull". When codec
> is awake (microphone plugged in and in use), it shows gpio28 as "pull up".
>
> Signed-off-by: Joseph S. Barrera III <joebar@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> index b5f534db135a..94dd6c34d997 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> @@ -755,8 +755,9 @@ hp_i2c: &i2c9 {
>         alc5682: codec@1a {
>                 compatible = "realtek,rt5682i";
>                 reg = <0x1a>;
> -               pinctrl-names = "default";
> +               pinctrl-names = "default", "sleep";
>                 pinctrl-0 = <&hp_irq>;
> +               pinctrl-1 = <&hp_sleep>;
>
>                 #sound-dai-cells = <1>;
>
> @@ -1336,6 +1337,18 @@ pinconf {
>                 };
>         };
>
> +       hp_sleep: hp-sleep {
> +               pinmux {
> +                       pins = "gpio28";
> +                       function = "gpio";
> +               };
> +
> +               pinconf {
> +                       pins = "gpio28";
> +                       bias-disable;
> +               };
> +       };
> +
>         pen_irq_l: pen-irq-l {
>                 pinmux {
>                         pins = "gpio21";
> --
> 2.31.0
>

Thanks, this should save us a current leak.

Reviewed-by: Alexandru Stan <amstan@chromium.org>
