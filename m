Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E32D2F2A60
	for <lists+devicetree@lfdr.de>; Tue, 12 Jan 2021 09:54:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392401AbhALIx7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jan 2021 03:53:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732543AbhALIx5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jan 2021 03:53:57 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9DB3C0617A5
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 00:52:54 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id b10so1976542ljp.6
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 00:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JsEm4I1NOjMflpIR4jGgdH1VuxMujPdLvKb9dS5688I=;
        b=Q91v3fKmkv7yHp1jk+4mrPGmxbo1mWWCFs3xqcg8gV6QkcBpp7MYlMrLJMzA6sAk3V
         +oxxHVrn2m9yBMl4cBHI/AtzRTMwdyn5YfhGjKZOcqvX353YR3GlZO3wOkqqoDu84OHp
         UtKzUTaQ3c9AurzzutPndd4sWUqZoDXDNZd+/S/fFRANW38PzxnDJtJxYfj1fA1L8pAp
         3ROnz5lQOdpGRyugwbAyMVZMu0e0vBWa+ogqp/NR40TBd3ZrwcemjrL5HVTHESrkrfzA
         CxE3a+YKPsNMNt8oHMV2Olajf4EUW+eIIVbM5Ohmqil0m/pTkn8loynxCUkWS849IJCu
         lHLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JsEm4I1NOjMflpIR4jGgdH1VuxMujPdLvKb9dS5688I=;
        b=HOaDfGkDEzXAF+QMMG/mKLc2uSyXvLo1FZhsVeP/8Yi8gLdXz/7Kcp6uR/tLHbLinb
         myjDr4MvuRbVJcpRTswJojc50gZa+jAR/2eeOnybBEhjuWW7Dg58tM498XuRWd+WTnc+
         4hGEyDxyQzz1Ac/XA2hjERK4E7IjrzZNFyT1zyT1arlR3HWBc+QV1i2A0aAC7cT8zjW6
         5ypGPGktGNzg1Ns43/ugk0III1hkqFtry+qRCvD9rdvz/4cVKxrz4YMQScuUj4ShtJB+
         4Qm4hytpQhYeA9p6+Qy2MtjvfMbTm91movwIT9v3pY3HwV8CipZM6MNtGgAVjp1m73Cx
         pJ3A==
X-Gm-Message-State: AOAM533lq4VHY801a6HVikRLVwWID1rvT7BhIsk81SDcD0ORMySdsSQ5
        OeuXcW1VwcOVAsjA8WCvyoFKMo52KHMhyakZaYsS5Q==
X-Google-Smtp-Source: ABdhPJxOVHEfMGqQL+Ee1Z/8lgjxVni/8qnA2F4LQjPU+qNuigb/gJQdyNRG9FDpz+vW65Ij7oQxSE3HlbzgqvVsz7Q=
X-Received: by 2002:a05:651c:1312:: with SMTP id u18mr1556193lja.200.1610441573181;
 Tue, 12 Jan 2021 00:52:53 -0800 (PST)
MIME-Version: 1.0
References: <20201211164801.7838-1-nsaenzjulienne@suse.de> <47b4dbc7a70d8f900789608e753be6faa36cebeb.camel@suse.de>
In-Reply-To: <47b4dbc7a70d8f900789608e753be6faa36cebeb.camel@suse.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 12 Jan 2021 09:52:42 +0100
Message-ID: <CACRpkdZCR=_KpPpb2o4e_OvQtJPYZ5qwcxa8MOC7UFvcjm6FUw@mail.gmail.com>
Subject: Re: [PATCH v6 00/11] Raspberry Pi PoE HAT fan support
To:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        linux-pwm@vger.kernel.org,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Stefan Wahren <wahrenst@gmx.net>,
        Linux Input <linux-input@vger.kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Greg KH <gregkh@linuxfoundation.org>,
        "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Eric Anholt <eric@anholt.net>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 11, 2021 at 10:02 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:

> I'd say at this point the series is pretty clean and, AFAIK, there aren't any
> objections. I'm not so sure who should take it, given that it covers numerous
> subsystems. Any suggestions on how to handle it?

This is one of those cases where I would suggest collect ACKs
from affected subsystem maintainers and send a pull request
to the SoC tree for this hairy bundle.

Yours,
Linus Walleij
