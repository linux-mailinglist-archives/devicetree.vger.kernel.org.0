Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72C2726303D
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 17:12:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729614AbgIIPKy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 11:10:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730064AbgIIL6C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 07:58:02 -0400
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 553BBC0617A3
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 04:58:01 -0700 (PDT)
Received: by mail-lj1-x244.google.com with SMTP id c2so3103327ljj.12
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 04:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=veMOlwm85HGnlMSTVN952J/Jqjc/7rvdCvDfPKEre0c=;
        b=Lq0jJ4whRo5WT/1EwrgGOl0XtPUPtvtGXLC81q5hE5FLoHPxnCgByqRckcoRWhj69y
         8POlYqx76p1PczfUYqXfb+R7q5w0oL+bb5PyhrPpsQU6UKMKeUmSKkDaAL+s7kMke30d
         YiGusFifL3kjDo2Y3BUUdRoscclcabbbQiDZACAMH/75Q1mpxTyMd9tTtFm3ATcURbyg
         04CbyAHdOELljt3QOr0smY9DXjCBobqHTrbDupSNhYUX41fkK4Xwy4UFEbq3Cdo/dBpR
         ZqwdOCqg5JfSW9dyYIRNMjwnVLuw8KhzqqZqiD74IP0vOQ4EN43WzK6XOkONzPBpOh5Y
         r9JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=veMOlwm85HGnlMSTVN952J/Jqjc/7rvdCvDfPKEre0c=;
        b=HA2SmtGshnoP9rQPPeFf/H7OaidWEREm4lVN64y2mGS94x3X/0pgJ4KGbAuOSllwoe
         CE7uJPIAY+kUWS7tX5HUaThtcFoNARz6IT/zlQKasKcH7vTygE+phQBbtqUM2aGhmd8T
         GHG4CRsLnCvu6O+mSB3BhDFt6DkB65pTxIbMAgFNQkEuTWO1YSW6Qd+cl7MPLrXn7Ddz
         I/tjO/jE07Q+NDo508TFWCeSZV9DKa0NMs5R0OGUOVx2pvyw+4VRODHWCH+4iYFtl6kr
         GtlFS8+d3xCmXjMop6rJhUxfcFB9oAoOtPRnnsUfbITqXLCx5s2aM+wLdE7z7tLST8zL
         ZBkA==
X-Gm-Message-State: AOAM532MofKMci3YiKrXNB7RCOyYvnotglLsPccaGExi9BTEECxGDUKe
        eHNywqrK6cnF99+UI+DTfjhKJXEkiTYLdizsr20bfA==
X-Google-Smtp-Source: ABdhPJwCf3FmxgZrTisFeaRuj2pxBcn3CZA8Jzyk/0TkRmXwR5H+xd9VJWHscFXDHtkwCveC2Trx20irnwH9IVujNcM=
X-Received: by 2002:a2e:a177:: with SMTP id u23mr1687459ljl.104.1599652679725;
 Wed, 09 Sep 2020 04:57:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200822163250.63664-1-paul@crapouillou.net> <20200822163250.63664-4-paul@crapouillou.net>
In-Reply-To: <20200822163250.63664-4-paul@crapouillou.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 9 Sep 2020 13:57:48 +0200
Message-ID: <CACRpkdaN7S9PoYd2d-hxUNq9NXA52P0TugwRzyFuCTCc6Onp=Q@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] drm: Add SPI DBI host driver
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
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Paul,

I looked a bit at this patch

On Sat, Aug 22, 2020 at 6:33 PM Paul Cercueil <paul@crapouillou.net> wrote:

> +config DRM_MIPI_DBI_SPI
> +       tristate "SPI host support for MIPI DBI"
> +       depends on DRM && OF && SPI

I think you want to depend on SPI_HOST actually.

> +       struct gpio_desc *dc;

This dc is very much undocumented, so I can only guess what
it is for, please add some kerneldoc explaining what it is.
I suppose it is in the DBI spec but I don't have it.

> +       gpiod_set_value_cansleep(dbi->dc, 0);

Since it is optional I usually prefer to do it like this:

if (dbi->dc)
   gpiod_set_value_cansleep(dbi->dc, 0);

> +  gpiod_set_value_cansleep(dbi->dc, 1);

Since you drive this low when you assert it and
high when you de-assert it, inverse this and mark the
GPIO line as GPIO_ACTIVE_LOW in the device tree
instead.

> +       dbi->dc = devm_gpiod_get_optional(dev, "dc", GPIOD_OUT_LOW);
> +       if (IS_ERR(dbi->dc)) {
> +               dev_err(dev, "Failed to get gpio 'dc'\n");
> +               return PTR_ERR(dbi->dc);
> +       }

Currently you are requesting the line asserted according to the
above logic. Is that what you want?

If you change the DT to GPIO_ACTIVE_LOW then this seems
correct.

But I am overall a bit curious about this "dc" thing. What is it
really? It seems suspiciously similar to a SPI chip select,
and then that is something that should be handled by the
SPI core and set as cs-gpios in the device tree instead.
It is certainly used exactly like a chip select as far as I can
tell.

Yours,
Linus Walleij
