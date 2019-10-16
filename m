Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B3CB4D8FCF
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 13:44:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726052AbfJPLoU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 07:44:20 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:39146 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728578AbfJPLoT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 07:44:19 -0400
Received: by mail-lj1-f194.google.com with SMTP id y3so23673425ljj.6
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 04:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=O7ynzB3CWA40/rW0oocow5qJKo+UWyVMGynzk11MH2o=;
        b=tqcBEQiwAZuHbNTvZTYeJu3+9qGSGTafGNKw18zAz6r0TQUjtiVV4t5O/34QRyVQuZ
         pV2bEYsovFOE3BLkhA3Lnxfc0MbhmvGcszsZE8bt4WQFOl9WoJn9XPOaRIBi+r0NBjNj
         sviQZvtOWM134O6iuxF8rBIjJ8zTpkFrLll55f/UT3A8OQfEUCrjJNfwBWACaA77Cm9j
         CxcN2GV3PIqidmBxlSCUxfzMqT6ssJCV9LDvF1JQ1iqxAFt4exI1VD8AHxSIaLrayXOk
         lkyA5FsZsCHKXQdSvO9fSoWSgVtPTwj/BJDxXh0ZN3uz6uBvkBE5CCdXRN5pAAUnY0tM
         ci/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=O7ynzB3CWA40/rW0oocow5qJKo+UWyVMGynzk11MH2o=;
        b=KZtdnOXRJRON60xIEE+93v4TFEZcPRXhMp3lJJuR8PsDvjhR66DQ26kSBT9si+D2Om
         yBWZp51Tb6ntCY396VQzhdMsfwftGG59ryBk2MDUK8m3KcNfDxolIHtnFhdelcEqBv7r
         TwvvAlIQ7KL19mDrRhAlCtVxcQr7IRPvcn8EVTSGLFg79uohiQ8F02WWGykihwycKM4I
         cbuJI4BB50EhzyEY+EgnRpLU+w7jk56iEYqlTtzIJ1Ilv059GOONXA0Pf8p+wWUVg4C7
         2nQIpTAzAgAYalPBToohi1YctDxye8SQLPSqYeBVTcp2T1p/22Q0CRc7PnwV39Phr/8E
         /RWA==
X-Gm-Message-State: APjAAAXq4rInLpKY4kbXCAgUt6Zi+25iCcT35mXNdB2plg2bXGkbfmWS
        pPblmwWL1cgEtq1L35V4eAj/3xKvX2I3VqpUyQ7WiQ==
X-Google-Smtp-Source: APXvYqyFOs2Fg7UebeukbqPsBDyEK4Ja4kQKpeIBZd06yULdBvUgHCWhLnH7WEACArx5keMV4Owbn+d4jJVPujVGSJQ=
X-Received: by 2002:a2e:80d1:: with SMTP id r17mr25580740ljg.118.1571226256777;
 Wed, 16 Oct 2019 04:44:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190917105902.445-1-m.felsch@pengutronix.de> <20190917105902.445-4-m.felsch@pengutronix.de>
 <CACRpkdbbmVo3hem1xFqtmq9-htg9+QUXQpZoSyffdTZQ5kUo5Q@mail.gmail.com>
 <20191007085159.uo366hmos6zk2ops@pengutronix.de> <20191009095612.einxiswkmhvipjht@pengutronix.de>
 <20191009101737.dpsdyyla7nmn6xdi@pengutronix.de>
In-Reply-To: <20191009101737.dpsdyyla7nmn6xdi@pengutronix.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 16 Oct 2019 13:44:04 +0200
Message-ID: <CACRpkdZj+3PubdM9sXxtRn0HKtBbtaU9-5C6Sk5pNbnw5uNKhQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] gpio: da9062: add driver support
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Support Opensource <support.opensource@diasemi.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 9, 2019 at 12:17 PM Marco Felsch <m.felsch@pengutronix.de> wrote:

> > > > > +static int da9062_gpio_direction_input(struct gpio_chip *gc,
> > > > > +                                      unsigned int offset)
> > > > > +{
> > > > > +       struct da9062_gpio *gpio = gpiochip_get_data(gc);
> > > > > +       struct regmap *regmap = gpio->da9062->regmap;
> > > > > +       struct gpio_desc *desc = gpiochip_get_desc(gc, offset);
> >
> > This won't work anymore since I moved the driver to pinctrl and can't
> > include the drivers/gpio/gpiolib.h anymore. What is the right way to
> > get the same result within the pinctrl space? There are three possible
> > ways:
> > 1) Revert commit 1bd6b601fe196b6fbce2c93536ce0f3f53577cec which isn't
> >    the best due to safeness.
> > 2) Set the gpio as active low hard as the other da90*-gpio drivers did
> > 3) Introduce a dt-binding (seems wrong because the information is
> >    already there).
> > 4) "Re-implement" the gpiochip_get_desc() functionality driver
> >    internally.
>
> 4) won't work didn't recognize that 'struct gpio_device' is an internal
> struct.

This is after all a gpiochip so it can use the internal structures.
Go with

#include <../gpio/gpiolib.h>

Even if it is a bit ugly.

One day I want to join the subsystems into one, and then this would
go away, but until then we have to do this messy thing.

Yours,
Linus Walleij
