Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 715024254F
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 14:15:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405454AbfFLMPE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 08:15:04 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:45040 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727388AbfFLMPD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 08:15:03 -0400
Received: by mail-lf1-f66.google.com with SMTP id r15so11895726lfm.11
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2019 05:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FFYjM9wk0Lz17ea9speLpvagwR++tad6Xn0EKWjFYrA=;
        b=iz8jnCndeBkvP3p4bBUYrvrE0G6l+fnUrY4oU5MyfPxGojrx49R4TMU+njNn/7WkR1
         KudRDNq6DwntOfaunGUQ2Ggo7LykQcAuySfJlCxT5juyhc3dBfB+pQf/5I311Unb61Ak
         xDOd9SDmEBkAmthWSazEjw2aPFlUj9sFiYGMQb7c8R64IJKhJyDC763gJmHYUQHB2JEY
         ObuDuPWxggur9qaAQOWrQNqbA61Jj83r369UjaHpdkGB+xj6tC2Oo2lQDj2219vXZZjC
         WYTaixMFeNHwjcNo5OjrrHcq5pLGSx47JLd9HuGnPjcAo+4RnkSXgfEjH6OYMEiNgoEx
         ztdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FFYjM9wk0Lz17ea9speLpvagwR++tad6Xn0EKWjFYrA=;
        b=DuIYXsGTIyaTxjcv1/3N171P1HzyT8QSO2zT7ywVzKdvGkSfV1WvRDWJp556eNEmSB
         YvwHOjGcxNs9BBlBEBDoiuTs92/yuwxzlj6oLaA2xEhiSB3ETjiA+xS6yEO5Qi74gsgJ
         PQ0wIaq+JAfxDMNQSyct5gMw+EFJWZdlrJ1k8gXSn+fw6y683rCIXfYW1XT3Gtc7/uAL
         B6S1XNQsBm7KSa4IulxhT/yiOiuiTscidWS+A1/cATQnIM1uPvw6Qz9hGJOTZcHO9eD0
         XxYWIsjh/cX+oZJGUGvIcZRNexFvDd9rxdllomdS9SZYDz57vaH+yr+EV6z17+ukDaPD
         scMA==
X-Gm-Message-State: APjAAAU5hu6JOtyji/cg0ed5P+DE+cuDgfsYn8jV9vLlmXFxBf/Igo90
        kNX5XMRGUHgpyjCaRKUZm7gnzo5uJ9rU68lTJ3qLZg==
X-Google-Smtp-Source: APXvYqwy0mZMiBNpW/oi3ASfqSMigvHqJvRnpIQvSh4m+n3Y5mdNL+QhoJDfGK8Ag45DTi2N8BZsC58UGSuJHBOr+eI=
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr27964836lfm.61.1560341701722;
 Wed, 12 Jun 2019 05:15:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190611140940.14357-1-icenowy@aosc.io>
In-Reply-To: <20190611140940.14357-1-icenowy@aosc.io>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 12 Jun 2019 14:14:50 +0200
Message-ID: <CACRpkdbSo=oKh94GxmLX_FrhCuoZJyY27WeV8KJjBW6gTUrh=g@mail.gmail.com>
Subject: Re: [PATCH v2 00/11] Support for Allwinner V3/S3L and Sochip S3
To:     Icenowy Zheng <icenowy@aosc.io>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 11, 2019 at 4:10 PM Icenowy Zheng <icenowy@aosc.io> wrote:

>   dt-bindings: pinctrl: add missing compatible string for V3s
>   dt-bindings: pinctrl: add compatible string for Allwinner V3 pinctrl

I applied these two so we get down the depth of the patch stack.

Waiting for a v3 on the pinctrl patch.

Yours,
Linus Walleij
