Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0408152F49E
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 22:44:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238581AbiETUoO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 16:44:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231217AbiETUoO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 16:44:14 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8859193238
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 13:44:11 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id i27so17636729ejd.9
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 13:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=68piDRPYyGX+8Kyo8j5dYWvQ7UCAfg+Z9z+ncUpXzkQ=;
        b=WqueUB0FZvMjwwyFM8/byn7J6ZpW/YsB9QLgdQ7hEeyQqYVVrkG9Nm6JD6fsroOa2M
         LuqnL+H8DYouLJz2gZ2DsRfXHkguHA8ELhHPw6uFPpaH0Y60qvs/+LInAQB55axMZoNi
         pAdXfEb6HPMFU/NEVNunlCyMLcdmHFWl6m/E0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=68piDRPYyGX+8Kyo8j5dYWvQ7UCAfg+Z9z+ncUpXzkQ=;
        b=t+fbro3WYxyxOIkHB3Clxp7F9GyY6pp/+vZLye8u0rKnjbIkQLuicFK2+AkI5+jwTR
         Z7ahpJtZXSxicFyOwj10pAqtDf1YiRIbb1Jotm4jrfFracoArzFQVpm3EUGXevaOWM7g
         Zp3NvEnkImGzVX1apWDSdf33LhWoRZ7wyXjQlkYmMZ02WIA//7uGYIqv0Q83fnSTFxOL
         v44Btz2eJ5G0tjz9wxOmajszurp9veOJ59uimmvvQp7E1M1vn+cG8RUO+TbrJ9+ss7Rb
         PLChQSm3qaAcG0qG98Op+S7ymVDsIJ9FVFXnFrN9F0FnAvJTLWkqAtURbGZtGsHNa9Wh
         HxEw==
X-Gm-Message-State: AOAM533sTrPen6jovhkwaESjZbkLzS8RZ9xbWZyC2d+NTqyM5vEZqqZg
        haHtIBM61s24hNh+5scC1dQkWbt+y2Z58BGSKFA=
X-Google-Smtp-Source: ABdhPJyNxAkBX/iYHVmesHjl9SedqgY1DBWge8gSjgZZlSmvc7kC4vBe/GeZr4exso3RZxsKj4LfIA==
X-Received: by 2002:a17:906:99c1:b0:6fe:b01d:134 with SMTP id s1-20020a17090699c100b006feb01d0134mr3843300ejn.598.1653079450323;
        Fri, 20 May 2022 13:44:10 -0700 (PDT)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com. [209.85.221.54])
        by smtp.gmail.com with ESMTPSA id f3-20020a1709063f4300b006f3ef214e6esm3502291ejj.212.2022.05.20.13.44.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 13:44:10 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id w4so12928760wrg.12
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 13:44:08 -0700 (PDT)
X-Received: by 2002:a05:6000:2c1:b0:20c:5e37:3ed1 with SMTP id
 o1-20020a05600002c100b0020c5e373ed1mr9682745wry.342.1653079447381; Fri, 20
 May 2022 13:44:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220520161004.1141554-1-judyhsiao@chromium.org> <20220520161004.1141554-2-judyhsiao@chromium.org>
In-Reply-To: <20220520161004.1141554-2-judyhsiao@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 20 May 2022 13:43:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WnXrvO4ip0uHQ-5KAVQKgb_GgVH=vdmH6rCbZXEuhAYw@mail.gmail.com>
Message-ID: <CAD=FV=WnXrvO4ip0uHQ-5KAVQKgb_GgVH=vdmH6rCbZXEuhAYw@mail.gmail.com>
Subject: Re: [v2 1/3] arm64: dts: qcom: sc7280: herobrine: Add pinconf
 settings for mi2s1
To:     Judy Hsiao <judyhsiao@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Judy Hsiao <judyhsiao@google.com>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, May 20, 2022 at 9:10 AM Judy Hsiao <judyhsiao@chromium.org> wrote:
>
> 1. Add drive strength property for mi2s1 on sc7280 based platforms.
> 2. Disbale the pull-up mi2s1_data0, mi2s1_sclk.
>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> index 9cb1bc8ed6b5..6d8744e130b0 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> @@ -612,6 +612,20 @@ &dp_hot_plug_det {
>         bias-disable;
>  };
>
> +&mi2s1_data0 {
> +       drive-strength = <6>;
> +       bias-disable;
> +};
> +
> +&mi2s1_sclk {
> +       drive-strength = <6>;
> +       bias-disable;
> +};
> +
> +&mi2s1_ws {
> +       drive-strength = <6>;
> +};

I'm actually curious why this line has a drive-strength but _no_ bias
setting. I guess I should figure out what the heck "ws" is. Ah, I
guess it is word select.

Since this is an output I'd expect to see "bias-disable" here too.

-Doug
