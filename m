Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31CEE55E818
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 18:34:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347396AbiF1Ow4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 10:52:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347385AbiF1Owu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 10:52:50 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D738D32067
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 07:52:48 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id z19so17910756edb.11
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 07:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zLp244HRKuXK443MblJOFX9TiLKY+sMNN7lfWRmJzw4=;
        b=Lk7xi3t/LB2zXUPx3APLw1OdwcapOiHYlZJA4tOn/NbuDoTBbMcIduKURJqTEBrkoj
         YYZ4czzT6ihRD/blwTjeq6YA9LXg+DB/+iymb+sPgeQRaIxaptCod570AG3D80pBU9e4
         5+8iG89M5uxSJJ+dv/Ns8XdtFg+q/u0L7J170=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zLp244HRKuXK443MblJOFX9TiLKY+sMNN7lfWRmJzw4=;
        b=B6X0pynU8XOdM4/Gl+vma9+GNCwaeFx6s3e9paarCIenZIg1h1wyPp1RyqhaK8awTf
         gpTxO6zjGlrp9qLHEq9XheOroRMF8OSgwAvhWTbaQGp54jBbh/E7WzfY90eMdGStT6x8
         nGqzU0bi8htMgGnq4/bWZjKLq5A/aYBffTserNlGqUbJ+env2YXAmQ2Bztv8Q6UjXDhs
         qHeonEIdk3z7hGonPAJZPxcE9vFGvqFzkLP1Aq1Ak/DCbiZWj1ptkCz99Bj8+dhuBe9J
         uQ2VAYUoH/20+E9nyyptk/9b65bivjTxFIsF6K9AwWkOXKycm273GXYLOMl58Q4fWXah
         bAag==
X-Gm-Message-State: AJIora99mGTFlEOv3G+ezfMYELqPN0wiyO6o2w9aZsspczknzoHi8gkO
        15T8JR3A3V+DuUX1aqWtUdP+iawNFA0lUWPY
X-Google-Smtp-Source: AGRyM1vB4dvye86muNHjz2uYzjYu3wgst9IcGKfFJN1x4AFoEiWlw+oXEOTN6uK/qWuK1aMyyDzTuA==
X-Received: by 2002:a05:6402:500b:b0:431:78d0:bf9d with SMTP id p11-20020a056402500b00b0043178d0bf9dmr23555479eda.184.1656427966947;
        Tue, 28 Jun 2022 07:52:46 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com. [209.85.221.47])
        by smtp.gmail.com with ESMTPSA id c1-20020a056402158100b004357dca07cdsm9836979edv.88.2022.06.28.07.52.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 07:52:44 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id s1so18055764wra.9
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 07:52:43 -0700 (PDT)
X-Received: by 2002:a5d:4046:0:b0:21a:3a12:239e with SMTP id
 w6-20020a5d4046000000b0021a3a12239emr18136405wrp.138.1656427963334; Tue, 28
 Jun 2022 07:52:43 -0700 (PDT)
MIME-Version: 1.0
References: <20220628085949.2147920-1-rexnie3@gmail.com>
In-Reply-To: <20220628085949.2147920-1-rexnie3@gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 28 Jun 2022 07:52:31 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U8oR-L7XRJH7qVG2p2m1J8obnQSTzA2moZZ8Kmy2SzFw@mail.gmail.com>
Message-ID: <CAD=FV=U8oR-L7XRJH7qVG2p2m1J8obnQSTzA2moZZ8Kmy2SzFw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] drm/panel-edp: Add eDP innolux panel support
To:     Rex Nie <rexnie3@gmail.com>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sandeep Panda <spanda@codeaurora.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Hsin-Yi Wang <hsinyi@chromium.org>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jun 28, 2022 at 2:00 AM Rex Nie <rexnie3@gmail.com> wrote:
>
> Add support for the 14" innolux,n140hca-eac eDP panel.
>
> Signed-off-by: Rex Nie <rexnie3@gmail.com>
> Acked-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
> index 3626469c4cc2..2a8fcdffe80c 100644
> --- a/drivers/gpu/drm/panel/panel-edp.c
> +++ b/drivers/gpu/drm/panel/panel-edp.c
> @@ -1355,6 +1355,29 @@ static const struct panel_desc innolux_n125hce_gn1 = {
>         },
>  };
>
> +static const struct display_timing innolux_n140hca_eac_timing = {
> +       .pixelclock = { 72600000, 76420000, 80240000 },
> +       .hactive = { 1920, 1920, 1920 },
> +       .hfront_porch = { 80, 80, 80 },
> +       .hback_porch = { 190, 190, 190 },
> +       .hsync_len = { 60, 60, 60 },
> +       .vactive = { 1080, 1080, 1080 },
> +       .vfront_porch = { 6, 6, 6 },
> +       .vback_porch = { 38, 38, 38 },
> +       .vsync_len = { 8, 8, 8 },
> +       .flags = DISPLAY_FLAGS_VSYNC_LOW | DISPLAY_FLAGS_HSYNC_LOW,
> +};

A few questions:

1. If I'm doing my math right, you're saying that this panel runs at
30 Hz refresh rate. Truly? While I won't dismiss that as impossible,
it feels unlikely. Specifically:

In [2]: 72600000 / ((1920 + 80 + 190 + 60) * (1080 + 6 + 38 + 8))
Out[2]: 28.50412249705536

In [3]: 80240000 / ((1920 + 80 + 190 + 60) * (1080 + 6 + 38 + 8))
Out[3]: 31.503729878288183

NOTE: I managed to dig up a datasheet for this panel and the datasheet
I have shows it as a 60 Hz refresh rate panel.


2. You're using the "struct display_timing" here instead of the
"struct drm_display_mode". That can be OK, but can I ask why exactly?


3. Are you sure you need to add this entry? Moving forward I'm trying
to encourage people to use the generic "edp-panel". Mostly you'd want
to add a hardcoded panel here if:

a) Devices have already shipped using hardcoded timings and we don't
want to risk breaking something in the field with "edp-panel".

b) You're trying to support some eDP controller that can't handle the
generic "edp-panel". In this case I'm OK with landing changes but I'd
strongly encourage you to update the controller to handle things.


> +static const struct panel_desc innolux_n140hca_eac = {
> +       .timings = &innolux_n140hca_eac_timing,
> +       .num_timings = 1,
> +       .bpc = 6,

Is it really 6 bpc? The datasheet I dug up claims 16777216 colors
which would be 8 bpc. The EDID from that same datasheet also claims 8
bpc.


> +       .size = {
> +               .width = 309,
> +               .height = 174,
> +       },

Where are your delays? I know in old code these were hard to figure
out from the panel spec, but the kernel doc comments now translate it
into standard eDP terminology so this should be trivially easy for you
to provide.
