Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF07A34D193
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 15:45:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230361AbhC2No7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 09:44:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231596AbhC2Nov (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 09:44:51 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DA2CC061762
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 06:44:51 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id g8so18498348lfv.12
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 06:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/xbwOyUoByuGnZGoWKpGwyaF8Ra1/D45zi9BaPI7asA=;
        b=iLaLQP3gfwQoeqqnF5bgUGM7HmMcRJd2XQHUEp2ZXgZlKyrHNnyDBgzyenG7VRZAkF
         TkzvXw0PdghuCeoFyIHVAyjML18L6DnL1Hm2qHPdqlUDIqO+7D5DIFdTbqWTL6RsoslN
         frLA/pVwrLgTFkwzc8E+HCJfWM2a1mHPJxa5YgZ+221DPxMO5Dy422whkdUC9MhzSUh9
         2rOQox2y9WTkTSEc/xw4jjloCHigCq6GFtgQYrqbSvXYEZAy3M4vdnPZgY+i1bRuZ7CU
         Z8VriZNADTlteSOp000kLFSykkZfOujZP2h5exuCf3xSPgm0yGnV9sxj3dfzMnrR4+bG
         c37A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/xbwOyUoByuGnZGoWKpGwyaF8Ra1/D45zi9BaPI7asA=;
        b=KRNpfL5jC4dKCuklhD1X086qklPip392QFyApbn2FJ57I2IKqHFnom+AjYmqO6eKU3
         6lJV48Mrgt5TZWF4h6NZ297N2WGuxknHurdC4sOBf7L35dPWvIWZdV7DxtHSvAz/2YtF
         YEmNsaw4TaHx6kXHOKWiC9TXnRNPfi+W/iQ2kay/EVoUL8DoIfjZB90YrNYPOhUI/nVP
         L9A5ACy2CE4wY4Ni+IdEcIaRrRfxIJfS0uv1fmHJTz65fGYqQZ5Ox3W6CkYbTEa9QRor
         s4AtoLq3FNaHyDB6y4DqckjDfqjJgbAl6WEZPKb9iNjXU0YvpiRNHzle/RJ5jWMys72w
         pdgw==
X-Gm-Message-State: AOAM531tuxb285i39Z+B+YSy3T/QrCyEtrZE5JBsb/4GjzGIvpyj3Cpz
        uOX8UaiSbE1e5lZbefoX/ysVdzbKAq2Yf6wiLb7/Ow==
X-Google-Smtp-Source: ABdhPJx46cwsZAPTk7xADrpjLswh2jZ2RWz0/XBNMefSDCHrAKWZDNbXjH4pAv01Lms1i1d6DR1r6h75l/y09/ITdeY=
X-Received: by 2002:a05:6512:243:: with SMTP id b3mr16860525lfo.529.1617025489839;
 Mon, 29 Mar 2021 06:44:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210329015938.20316-1-brad@pensando.io> <20210329015938.20316-14-brad@pensando.io>
In-Reply-To: <20210329015938.20316-14-brad@pensando.io>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 29 Mar 2021 15:44:38 +0200
Message-ID: <CACRpkda78p=aU5xfT+HtC9OCkZdkVEiN64F1jck2FDJB02C+Rg@mail.gmail.com>
Subject: Re: [PATCH v2 13/13] gpio: Use linux/gpio/driver.h
To:     Brad Larson <brad@pensando.io>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Mark Brown <broonie@kernel.org>,
        Serge Semin <fancer.lancer@gmail.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Olof Johansson <olof@lixom.net>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-spi <linux-spi@vger.kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 29, 2021 at 4:00 AM Brad Larson <brad@pensando.io> wrote:

> New drivers should include <linux/gpio/driver.h> instead
> of legacy <linux/gpio.h>.
>
> Signed-off-by: Brad Larson <brad@pensando.io>

Fold into patch 1 as indicated by Greg.

Yours,
Linus Walleij
