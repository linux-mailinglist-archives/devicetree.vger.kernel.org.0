Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E18F63D1071
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:02:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238005AbhGUNWR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:22:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237974AbhGUNWQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 09:22:16 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2099DC061757
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 07:02:53 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id u13so3287481lfs.11
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 07:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+7Qp3N8i2ZqaUKiDMln9kfRvQQx8iZ4aXJx31dGT4ps=;
        b=k+zdBVlIlSQR1P9SUQm4rWxiuVKGt+Rdrj1zn8ykerQwuV2c1ohdgP/tbToleYU5pK
         k6tkA3Mffh6O0IrtAKFfYHwFBINE6YXJlCMzAycKnlMV7qsU8JoUvPTK5RHN4JsRuMWN
         nx9VIsMrsX8K39QuvUjj/Kf2qwdLWVwkPiBtrLkhsmIVin8FOcccA7I4rp3fRqeqOadM
         crhsm3N2Fj9J1rz1Pn0Yzid3rVP0rk8uousrwvM5nCE4hVwHDql8jShpAWYHQ3qPoYd3
         deHr+L3O/Ay9z5Hl+PQ9IMMgY0dpBiyHYDwVn6AyxH2f2nROXplKiAaKTpHL3jzElEg9
         jtPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+7Qp3N8i2ZqaUKiDMln9kfRvQQx8iZ4aXJx31dGT4ps=;
        b=fty3DvxvZ0Co479UwxW8l/W8RYzjw23FPDaxoz44PTCsNEblqCBERnfORwFobtJrGe
         DXRGxQQIR9V7nBNyZ/GSI9RI3kZytG8TEdYmrA4iEOELd107Qw9sD5t7YGrc9r1DBQyC
         IRIkCFQUfbI7LnS7z3dSFwoInLckoj8zveKd/dKAdEEhFOQ3H9hOIrEtOoKeCqnkxS9f
         b6p8Jao6NjJKoMnpPKSrwd/8YMuEuGMCFgyaVu0bMiZAosHM0E2eJvTD75RsoKWieP5x
         AJW+k3QL2er7HQ1X0hzD6lm7z7zGSGGvF2orBS5j9Xyu0fzUsdzlgfbgpABmZBcsSey3
         mUIQ==
X-Gm-Message-State: AOAM532T03i5xtm6vQWEj/u5xePV41nZe0Zr/mKB3T7CVwzY2o6kpbaJ
        GJdcYo1f3uW9xHNZTEebyxYiLCR1xNDxB8DnjWoBgA==
X-Google-Smtp-Source: ABdhPJzixaew0F1GayfkVMS5XfHQR639oq4+GHeo0cd4p/TY/QddiF+whNLR6zx166zTDGONuB6zet+F22BbijBYcxs=
X-Received: by 2002:ac2:5e71:: with SMTP id a17mr25038632lfr.465.1626876169985;
 Wed, 21 Jul 2021 07:02:49 -0700 (PDT)
MIME-Version: 1.0
References: <1626853288-31223-1-git-send-email-dillon.minfei@gmail.com> <1626853288-31223-4-git-send-email-dillon.minfei@gmail.com>
In-Reply-To: <1626853288-31223-4-git-send-email-dillon.minfei@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 21 Jul 2021 16:02:39 +0200
Message-ID: <CACRpkdbkbbuHk2U8auXqzZbSs6eKnj2+0BySivHcuEvsY31kWg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] drm/panel: Add ilitek ili9341 panel driver
To:     dillon min <dillon.minfei@gmail.com>
Cc:     "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Dave Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 21, 2021 at 9:41 AM <dillon.minfei@gmail.com> wrote:

> From: Dillon Min <dillon.minfei@gmail.com>
>
> This driver combine tiny/ili9341.c mipi_dbi_interface driver
> with mipi_dpi_interface driver, can support ili9341 with serial
> mode or parallel rgb interface mode by register configuration.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Dillon Min <dillon.minfei@gmail.com>
> ---
> changes in v2:
> - replace vcc regulator to three bulk regulators(vci, vddi, vddi-led)
>   according to linus suggestion, thanks.

This is a really nice driver.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
