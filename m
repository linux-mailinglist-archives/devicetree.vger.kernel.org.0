Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5853E10B050
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2019 14:35:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727213AbfK0Nfq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Nov 2019 08:35:46 -0500
Received: from mail-vs1-f67.google.com ([209.85.217.67]:39820 "EHLO
        mail-vs1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727149AbfK0Nfq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Nov 2019 08:35:46 -0500
Received: by mail-vs1-f67.google.com with SMTP id x21so15197124vsp.6
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2019 05:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Dx6Wkv3ySGhXS7qkfXJJNC6KphczTVFp4Ev8Iq4fldI=;
        b=nbgu7pRIs9YzZOrtRCF+j2cEMFGx1sNFj31QpHqVahAmOam94iAL18YA9Hq58tzKek
         0mxzxrwGSu0aFlRhUFmhqiO3jbF624J7a6WJF7VNhKwUsJ6QyL5kpQFp+pZ/8+NYQHVw
         KazwKCDdWqXG0tQEgIHXM3MmaP0hb3SYgoa2cT+eojLzYQSkhsvZJCVGYsj0XLRGaJYL
         gHSUGVwnTKJI+oAHmMAM23csKKMTfylhYiyHEbSueon9SVvPBvi9kwkN8qaRzkynqp6E
         kA/cDOdIo0iqh8Ioh6eihHtQjaGCB72jlNP7TdMoW9qbTRlXBeWgX+mtUxnHBYRXrBjD
         ieFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Dx6Wkv3ySGhXS7qkfXJJNC6KphczTVFp4Ev8Iq4fldI=;
        b=QXPZ9jOcgcQNa/wfH8Xyx94fctXZz8mueUoTT/Sto2BPx3U/LCp23GFtpJxIjjubKE
         jEyetMOKJc+u7V1+/6lD7+jUb0C8FZJ+F4HK+qEH9lYRPTnm1bhrJVe1XM+G8OdkzPaZ
         SSPJUgT3wdKjWrP6oiIq8jUcrKK9UfS3qaZ1LM1NslxoKgmNMhtqPyWV4R+ELk6scBsI
         Smb+t0AHTpzEJZcdPUU5OwjJh70BXt/wna7E/y3/xa+etJ97sD3dwSmhxrEXp1kZow4x
         CsNVj2dj13vH86dN3sRhHOb9tcM+x7eSGCRZ3LqzbnMFNfwKG5NwSMqfqcwP1QwzAFoP
         f1kA==
X-Gm-Message-State: APjAAAVCqF7oBNGtOY1nyKG+roEwSYHs2CgCj0ojseZ/p9Y2O5OkEMgl
        EnU2gPmusfzHOsdwSthZV4O5AQHgJhVqMqyRxjLHCg==
X-Google-Smtp-Source: APXvYqxTK7Y0dYdPsk1QLrm3GQ61nChJ51nQBQEnr2r1WJ4jId+4aZ7y6DwhtjdZzHGHtVxFBrSd3MlBXY9hpL+raRQ=
X-Received: by 2002:a67:88c8:: with SMTP id k191mr3302354vsd.86.1574861745194;
 Wed, 27 Nov 2019 05:35:45 -0800 (PST)
MIME-Version: 1.0
References: <20191127115619.20278-1-m.felsch@pengutronix.de> <20191127115619.20278-3-m.felsch@pengutronix.de>
In-Reply-To: <20191127115619.20278-3-m.felsch@pengutronix.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 27 Nov 2019 14:35:33 +0100
Message-ID: <CACRpkdYLeSjsXaG6Bg4Y2-8PW41ALn4PN7QUvp3tA7XReWrKGg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] mfd: da9062: add support for the DA9062 GPIOs in
 the core
To:     Marco Felsch <m.felsch@pengutronix.de>,
        Marc Zyngier <marc.zyngier@arm.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Support Opensource <support.opensource@diasemi.com>,
        Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 27, 2019 at 12:56 PM Marco Felsch <m.felsch@pengutronix.de> wrote:

> Currently the da9062 GPIO's aren't available. The patch adds the support
> to make these available by adding a gpio device with the corresponding
> irq resources. Furthermore the patch fixes a minor style issue for the
> onkey device.
>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

This is a regmap irqchip so I guess not much to say about it.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

HOWEVER: this looks very much hierarchical does it not?

I can clearly see that regmap's irqchip does not support
hierarchical interrupt domains, so we should just make a
mental note somewhere that "oh yeah and then one day
we should make regmap irqchips play well with hierarchical
interrupts".

Yours,
Linus Walleij
