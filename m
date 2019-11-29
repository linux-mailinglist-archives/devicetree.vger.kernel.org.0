Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1522010D275
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2019 09:29:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726879AbfK2I3c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Nov 2019 03:29:32 -0500
Received: from mail-lj1-f196.google.com ([209.85.208.196]:45435 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725892AbfK2I3b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Nov 2019 03:29:31 -0500
Received: by mail-lj1-f196.google.com with SMTP id d20so1250445ljc.12
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2019 00:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cWGIyDGedrBpqvnGEcfpuSqDBvTplOuqKnHOt1z2nZY=;
        b=JYgDLrUje5DKLKp+k3Oade2QQs94WUDe1/8QVxUb7fsNTk/l6626+oRlXD3e/bpqq8
         3rXVOCn0W8WeVVi211CVf31RgRAvuuS0547r4rO7b8Qtqnt42ewe9w+v0yZ6ApeYS/pT
         AhaSF/3el3gdmRajOhieiokp6NWpp5KDmsg4Vy+O4Ndx/X8ZiUvvtr9MvUBytVXKX6nq
         4lzl2ls4ows7n0x+hLyiowSg7RcF2HUUiqvfF/iFHV13scJqOdo55G8+ne3TV9wbPt7D
         i4KUysQTFkRwCs7GHaAge7IXW0GhQ3iI5+IFlsuloczcM77XNCDWJsEqmETJcstMZeix
         tDAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cWGIyDGedrBpqvnGEcfpuSqDBvTplOuqKnHOt1z2nZY=;
        b=CCTuznHqzh9EonVJPkOJIG7mp7d7Gwlb324reFfk4GnZO83+B+QIK+lvukdpXrhdZl
         k8F2P9KehyOUYk/48TILqp7B9ROz7V7eRnQL0DyGyAPZWhMjBWxPFAHWjLXrX22rUz+S
         SXtX3+3j8osCmzQsN34vZLOh6VrOHjIOEvRNpmBVM3kQzzvpBWWj23xkeiANDhyUgUIx
         FQjgfVyxLqsAYy1fmHLinqaYHDciGdP3AHju/Q6BawnSMDve5IV1AoGNW+wCL5TFRzq8
         SY934A5oBxB2OjAQhXG1WXBEGN5XPAO9A8Bz0pIrbu4C/Frw4+HyXOjP8hjpJp8h5m/R
         wOMA==
X-Gm-Message-State: APjAAAV7UKlR7fJUtGslY3p0a144opmfbyVB7Aun2uLHu8VA9RhRk+Ia
        05KtURM18XdaVpqN5a55vu1p3k1FKGw0qM0uo7hXWA==
X-Google-Smtp-Source: APXvYqyFVu1QDHRAEXN8klwjdP572QLZkNK+IG5v4PcKoUa4g8y93kq9uXa8jHwJNaDlWusiqugi2HpACqmUZgN4wsY=
X-Received: by 2002:a2e:9a12:: with SMTP id o18mr36798466lji.191.1575016168447;
 Fri, 29 Nov 2019 00:29:28 -0800 (PST)
MIME-Version: 1.0
References: <20191127135932.7223-1-m.felsch@pengutronix.de> <20191127135932.7223-4-m.felsch@pengutronix.de>
In-Reply-To: <20191127135932.7223-4-m.felsch@pengutronix.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 29 Nov 2019 09:29:16 +0100
Message-ID: <CACRpkdbw_R2Lu1G8ZqV8vMCQL+A7XUV7qAb=gC-je6dzPC2rzw@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] regulator: da9062: add voltage selection gpio support
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Support Opensource <support.opensource@diasemi.com>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, stwiss.opensource@diasemi.com,
        Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 27, 2019 at 2:59 PM Marco Felsch <m.felsch@pengutronix.de> wrote:

> The DA9062/1 devices can switch their regulator voltages between
> voltage-A (active) and voltage-B (suspend) settings. Switching the
> voltages can be controlled by ther internal state-machine or by a gpio
> input signal and can be configured for each individual regulator. This
> commit adds the gpio-based voltage switching support.
>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Changelog:
>
> v2:
> - use new public api gpiod_to_offset()

OK this is better in my opinion, at least it is a lesser evil than
the hacks I've seen.

> +       struct reg_field vsel_gpi;

Again add some comments to the code describing what this is
about please. A general purpose input that can be configured
such that it is not a general purpose input anymore, but instead
looped back internally to control a voltage on the DA9062.

Part of me wonder if these lines are really "general purpose"
but I suppose software could use them.

Yours,
Linus Walleij
