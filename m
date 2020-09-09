Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF697262E49
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 14:04:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727900AbgIIMEo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 08:04:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730168AbgIIMCf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 08:02:35 -0400
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDFA2C061573
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 04:38:37 -0700 (PDT)
Received: by mail-lj1-x241.google.com with SMTP id v23so3115785ljd.1
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 04:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9TRB6Tic1GvoiGHPifsUtG58oe6V1YvsitjQ6KJ/66o=;
        b=emliJK5rA3zlTRxM+50luD9JVQB0ZPuvNY685ZMFxWp093fTPI0cJqm8aTAbNsIiTz
         2ds0tcD3ClYK8rjenrmcTXJOSVRgu7vkGfdKXf5zBJHCYJlZnHthW81lKRdcw2KUhJ6S
         xjec6W8J4CK6kt7lSeqSbOI6n/zS7Q2YLGb1zoQgu4LmMmmwMhWwMiHED8UtEuyJ3pI/
         nje9lEDTdBZn54St/XUWCZkAMJhHArjPQyOHTT2d9xuNX6jbP/FN+FIfxw0dRd/B0hFI
         7cROlmz53FPr1jZDSK4O8YLelfhkSbWRC5sNHFNzmFsV1D31DecSDQvKgqGrD61dKzUW
         Gbew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9TRB6Tic1GvoiGHPifsUtG58oe6V1YvsitjQ6KJ/66o=;
        b=uiY+wnv2CYQcEINbArLOEotYGt8BNuVFWGC5bX/MqeMJ04urIVvDbJxGnxeE65fHdB
         FLnjEc7Ub6l9nYTufscCGpwiJt8kBjJUUIfLhpiOVEO1LFSyUYBGC1o/bN7WCtC4nWLp
         zECN5o5QRZQ9QkD7jHWbIQhqgxfK7Htq9KIZk30QZbrJqkwZje85jXD/92uyBp9MayNZ
         7ZE5l9unoVShzBSOYHCJPGtZliaQi5MnuAy2Akozi0D45ufqL3xXklGPnqms+qC2EZAL
         700lwYZRs8T5HnVmS+hlzclke4ZMOzY8AqCIl2h54xJkHs9nvxzfUvNCmW5TzEo5D2w+
         CE4w==
X-Gm-Message-State: AOAM530xJ1wQ3o61Q2Nf9PAEnl/5IplKsZhdJ4hSWzSsE+XJ0aaSZwxr
        opJz0cWwzFbbGSPOLHd872gjKzy//p1fDYUwAlMkhg==
X-Google-Smtp-Source: ABdhPJxzR/ZCIG9jECMBKx/8boudGCTyC6bXc41iHHQbYiHLiewFVe1Xa8ySlp8DVpYdpTLW5W3ulcJ/fOZNxZYlnqk=
X-Received: by 2002:a2e:810e:: with SMTP id d14mr1827296ljg.100.1599651516160;
 Wed, 09 Sep 2020 04:38:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200822163250.63664-1-paul@crapouillou.net> <20200822163250.63664-7-paul@crapouillou.net>
In-Reply-To: <20200822163250.63664-7-paul@crapouillou.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 9 Sep 2020 13:38:25 +0200
Message-ID: <CACRpkdY8GnpK_Xiz6zRtj0G_LPKpLiopMsHR=9M3DU56eZMVzA@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] drm/panel: Add Ilitek ILI9341 DBI panel driver
To:     Paul Cercueil <paul@crapouillou.net>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Noralf Tronnes <noralf@tronnes.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        od@zcrc.me,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Paul,

just a drive-by comment:

On Sat, Aug 22, 2020 at 6:33 PM Paul Cercueil <paul@crapouillou.net> wrote:

> +       gpiod_set_value_cansleep(priv->reset_gpiod, 0);
> +       usleep_range(20, 1000);
> +       gpiod_set_value_cansleep(priv->reset_gpiod, 1);

This implies that the reset line is active low.

I would specify in the DT GPIO handle that it is active low
and invert the above.

So:

reset-gpios = <&gpio 4 GPIO_ACTIVE_LOW>;

gpiod_set_value_cansleep(priv->reset_gpiod, 1);
usleep_range(20, 1000);
gpiod_set_value_cansleep(priv->reset_gpiod, 0);

> +       priv->reset_gpiod = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
> +       if (IS_ERR(priv->reset_gpiod)) {
> +               dev_err(dev, "Couldn't get our reset GPIO\n");
> +               return PTR_ERR(priv->reset_gpiod);
> +       }

This would then fetch the GPIO as asserted (device in reset)
unless changed, but that may be the right thing to do actually.

> +static const struct ili9341_pdata yx240qv29_pdata = {
> +       .mode = { DRM_SIMPLE_MODE(240, 320, 37, 49) },
> +       .width_mm = 0, // TODO
> +       .height_mm = 0, // TODO

When nothing else works and data sheets are incomplete I
just take out a ruler and measure on the actual device.

Yours,
Linus Walleij
