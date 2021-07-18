Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50AC43CC70A
	for <lists+devicetree@lfdr.de>; Sun, 18 Jul 2021 02:32:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230318AbhGRAe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jul 2021 20:34:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230259AbhGRAe6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jul 2021 20:34:58 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBD48C061762
        for <devicetree@vger.kernel.org>; Sat, 17 Jul 2021 17:32:00 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id g8so16716516lfh.8
        for <devicetree@vger.kernel.org>; Sat, 17 Jul 2021 17:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GiOcA9fDhX332QQkbECnDAuU57MnDvjKhHt74brAsd4=;
        b=QqbnQgsv/ajdlgCbOM0gq0g7FZNs0AbFigA/0ipXJiEXJGly+tlK9erNMERE8PA2rQ
         fV/gVY5xNUty2kHdSElmFKDGFoS+yMK3mf7CiRP6LrqKaFPtW5EDm9I4uFh2ZtZh4s3m
         z4bMO4lo51Dd3Qwhrc++2IKRxPSBmqwPAiUYFMlSPYHp9flltp5ibXqvq61dJlPGJTaQ
         0okiiInLKbfmBTEFnH1VyZdD2Ug8K3mh4o2jS+fAxh6J1K14jl3StwsfqWVPhzPYeRRp
         H45cRIUF/dYngweD8xQ0drMSaJrVAdN3Yn8w3t1wXnRcgfvCknH9ovNC64WK2NC7ho+i
         WMBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GiOcA9fDhX332QQkbECnDAuU57MnDvjKhHt74brAsd4=;
        b=uXOS/N7AO5mmUF8PvNgCU+IJPIDezJ6AmD2ybiQkETbBWrJCJBEbQjnl+YPZg9ogog
         K3NfdZq1qXA9I7BYj0CKQuhMzjO2wI/2o1BWPj6U4sfFif/xo4TTaEJxlEXyDnp7Yjpe
         VOXhOvm+rtT6Cr7T7+pH6zMQHlMune9dl1DnTte912Xkb0D6m1SciEHDTX5PtsHmflUH
         7Zwk69MbmMph0q63BvX1nJ9h4TkG01fo92OFce0kcJEPZGF2ZGQ+KBzJlnKCeBCk0hhD
         bN7QIIEZHEAWCvGkudV20/YzcsdSmc+fRzn/++pwtuxGXody3Gl1gmzdrDH3aBlzIpJC
         NMUg==
X-Gm-Message-State: AOAM530XZ6ThxYZ2nrKq1PjB/ltMgjjXu+0kUbsJEb2aOjL3ppadsXHG
        bP7SLzlR3dj3LWXpC69yk8aqYwbrBgw/ttpqWQ9dbg==
X-Google-Smtp-Source: ABdhPJzUE4mwcMvftXDt9OelhGDF5Xj2/T270B5egWGsaIKWTNtuSaIt9NhYbKXb4xTog5SSevqmX/HoABHDg7tXXbs=
X-Received: by 2002:a05:6512:3f1f:: with SMTP id y31mr6296371lfa.29.1626568319143;
 Sat, 17 Jul 2021 17:31:59 -0700 (PDT)
MIME-Version: 1.0
References: <1626430843-23823-1-git-send-email-dillon.minfei@gmail.com> <1626430843-23823-3-git-send-email-dillon.minfei@gmail.com>
In-Reply-To: <1626430843-23823-3-git-send-email-dillon.minfei@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 18 Jul 2021 02:31:48 +0200
Message-ID: <CACRpkdZZyN_8ND52+piHYaksujwwwTMigkv6eL0fih_2dYZ4Lg@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/panel: Add ilitek ili9341 panel driver
To:     dillon min <dillon.minfei@gmail.com>
Cc:     "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Dave Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Doug Anderson <dianders@chromium.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dillon,

thanks for your patch!

On Fri, Jul 16, 2021 at 12:20 PM <dillon.minfei@gmail.com> wrote:

> From: Dillon Min <dillon.minfei@gmail.com>
>
> This driver combine tiny/ili9341.c mipi_dbi_interface driver
> with mipi_dpi_interface driver, can support ili9341 with serial
> mode or parallel rgb interface mode by register configuration.
>
> Signed-off-by: Dillon Min <dillon.minfei@gmail.com>

Nice!

> +config DRM_PANEL_ILITEK_ILI9341
> +       tristate "Ilitek ILI9341 240x320 QVGA panels"
> +       depends on OF && SPI
> +       depends on DRM_KMS_HELPER
> +       depends on DRM_KMS_CMA_HELPER
(...)
> +#include <drm/drm_gem_framebuffer_helper.h>
> +#include <drm/drm_gem_cma_helper.h>
> +#include <drm/drm_fb_helper.h>
> +#include <drm/drm_gem_atomic_helper.h>
> +#include <drm/drm_atomic_helper.h>

Hm now there is a (partial) KMS driver in the panel driver, kinda, sorta.
Is this the right split? I'm not the best with DRM infrastructure,
just asking.

> +struct ili9341_config {
> +       u32 max_spi_speed;
> +       /** @mode: the drm display mode */
> +       const struct drm_display_mode mode;
> +       /* @ca: TODO: need comments for this register */
> +       u8 ca[ILI9341_CA_LEN];

These are all in the datasheet but I guess you plan to add these
TODOs later. (It's fine I suppose, the driver is already very nice.)

> +       struct regulator *vcc;

Use the right name of the pin for the regulator. I guess this is actually
vci. I would implement all three regulators and get them as bulk.
See e.g. drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c
for an example on how to get and enable several regulators
using bulk.

The regulator framework will provide dummy regulators if you
didn't define some of them so it is fine to just provide one or two.

Yours,
Linus Walleij
