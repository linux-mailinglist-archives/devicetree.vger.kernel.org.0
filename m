Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17AD352E72A
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 10:20:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245742AbiETIUS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 04:20:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238394AbiETIUS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 04:20:18 -0400
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com [IPv6:2607:f8b0:4864:20::e2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C85F013C4CB
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 01:20:16 -0700 (PDT)
Received: by mail-vs1-xe2c.google.com with SMTP id w10so5215053vsa.4
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 01:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Pv/fKsgz9HPI18IdLThROlTXnti2XP7bO6uUS4/cBbk=;
        b=AmJ24kkYrYie9iChmgi42NOfOg6nvWlTD0edH5lPaYYb69mnSM7UawniWYWeTVAFON
         pVEbFYjPXitTV00v/wrhzVEvrHMRTrmoTcz1dSUf+ZrA9VxB1FXSt47mlj/t6N+hKbHt
         covKTaINHqrEQAAIB9whygBDTSXCKcX0Kwfpk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Pv/fKsgz9HPI18IdLThROlTXnti2XP7bO6uUS4/cBbk=;
        b=49RXTw8T8Q/vuQzMBCtCcfdC8aVDrSshQ7CBGIAPAvPZ7Ir/rSokGKxID9c9dg5lg5
         suKnCKLgNJ8NkvJskADprKtVo9l5BFdd2gka4LzCWuoTrI2yyWx9ppqT68t4mVGjfXVc
         aPutL94M8hRveoimIhvpMCJ/OCrsb0t6gd/Ze/VUlZI/z8ImoDzWI9cd7nGXpHP+d7pZ
         g0s7gQ4Mg+jAw+txPy1pZ/3lnwiAds38Fr4Y6imKSpXjFRNo4hPmu8rH1zyVaIfJ1kKi
         tM52JGof1Wyr7xYTU2c74SuWGV122aMXSP4KURzwEMLQvZ0mOuhwyDI/HK19VNv9Pr3j
         NYjg==
X-Gm-Message-State: AOAM533EIqOHmo1XgvoWxd2kYYHWk0i2ODAyqddnLZGeMXZbBOE1/QdG
        Lp5ydaAM+ZhEcn0sREtnOJ4RoGnB0WHnhJicDgpQ7A==
X-Google-Smtp-Source: ABdhPJw7jmVO4XgWNSa8qKgVeeQg1b61haWzpxXWWy+teLKQM2728KAprr+EMNGK3y1C1hHG4nO9MDtwkd8lsKpP4l4=
X-Received: by 2002:a67:d999:0:b0:335:7e5c:63d5 with SMTP id
 u25-20020a67d999000000b003357e5c63d5mr3906889vsj.69.1653034815916; Fri, 20
 May 2022 01:20:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220519072649.1493706-1-treapking@chromium.org>
In-Reply-To: <20220519072649.1493706-1-treapking@chromium.org>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Fri, 20 May 2022 16:19:49 +0800
Message-ID: <CAJMQK-ipc73LUcK9qt8XtadFCiPTF6f_2Nrh_kdkt0UXgNx7ew@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8173: Fix elm panel DT node
To:     Pin-Yen Lin <treapking@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 19, 2022 at 3:27 PM Pin-Yen Lin <treapking@chromium.org> wrote:
>
> Move the panel DT node under `aux-bus` node so it won't use the buggy
> `ps8640_bridge_get_edid` to get display modes. Also change the
> compatible string to "edp-panel" because the predefined
> `lg_lp129qe_mode` is not working.
>
> Signed-off-by: Pin-Yen Lin <treapking@chromium.org>
> Fixes: 689b937bedde ("arm64: dts: mediatek: add mt8173 elm and hana board")

Acked-by: Hsin-Yi Wang <hsinyi@chromium.org>

> ---
>
>  arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 26 +++++++++++---------
>  1 file changed, 14 insertions(+), 12 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> index 9c75fbb31f98..1e0802a6f6d2 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> @@ -90,18 +90,6 @@ volume_up {
>                 };
>         };
>
> -       panel: panel {
> -               compatible = "lg,lp120up1";
> -               power-supply = <&panel_fixed_3v3>;
> -               backlight = <&backlight>;
> -
> -               port {
> -                       panel_in: endpoint {
> -                               remote-endpoint = <&ps8640_out>;
> -                       };
> -               };
> -       };
> -
>         panel_fixed_3v3: regulator1 {
>                 compatible = "regulator-fixed";
>                 regulator-name = "PANEL_3V3";
> @@ -282,6 +270,20 @@ ps8640_out: endpoint {
>                                 };
>                         };
>                 };
> +
> +               aux-bus {
> +                       panel {
> +                               compatible = "edp-panel";
> +                               power-supply = <&panel_fixed_3v3>;
> +                               backlight = <&backlight>;
> +
> +                               port {
> +                                       panel_in: endpoint {
> +                                               remote-endpoint = <&ps8640_out>;
> +                                       };
> +                               };
> +                       };
> +               };
>         };
>  };
>
> --
> 2.36.1.124.g0e6072fb45-goog
>
