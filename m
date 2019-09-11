Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5D7FCAF9D5
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2019 12:04:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725616AbfIKKEM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Sep 2019 06:04:12 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:39885 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727513AbfIKKEM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Sep 2019 06:04:12 -0400
Received: by mail-lf1-f66.google.com with SMTP id l11so15948088lfk.6
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2019 03:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hUrALqLYIp3tenV9WPlX+wrIGiFW2sjaAtprRGLAeEM=;
        b=p2jaID0PK0kDp5GpJDQQkIXhcRDJG0tyKs3M8dW00A0nTmYl4XPzPDxiiXVVHMrvt+
         3r7lWYb3E1VbxJKjCFl4T/s7r/GjKdCpMsYFGhPYq40CrLVtcwphRVLlOz4Mi1abAmc6
         gb7WEzvYMYxI1T0Yv1JJQMukj1kqEswd1th8aKqcRAHTLbfy8nsrMproykhpVp2apyq1
         YZAJxHMjH/FKf0pJw40wEhiG4GATCpQy1rgKrv+b1JNb++7VFgOOXTCNwIkKecduNXL3
         gwOiiQuJzd/9zYidBIhoUcbKtFgICCtV1yeLL8Sdtn6e6RFujjx3Wf2pnscLkru96m90
         vHEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hUrALqLYIp3tenV9WPlX+wrIGiFW2sjaAtprRGLAeEM=;
        b=GYmWVaVRH6Tt3B+ju++vnu+KDf0hcuFG+/SQJ+BFHPYFfQnrbeakRdbQV4SHP+HSVl
         LEi4wGbWYAAQnE22j/FX+LX8PxISWHkar0hsjegjqtMQUQVY6b2BAkVUegrTFglXlktl
         yLWnmDxXn9rWCkzfqQtwdSxrD+XdyBOFszXQFy5zg0pKsx/tuczt9dalF8N4m/cqfo0R
         Y4Fkbjl/8LKBJwZrkdHcA+i0wgk+FcOuIZVA2UgucHBoSENo0x1peXwUa2xA+S/SPNF8
         fzcFxXreB8diB7lIHynUo0EP6r8JNCzj3MFtK0xdXzeMc3ITy2qLN2gMDyiYLD4mQpnl
         Abew==
X-Gm-Message-State: APjAAAUxbHOeHKXA8uuxwEtRCiS0cTGxHuzR6TMViMQYKPXUmVLQmlGz
        JlrTr9sr6OHwtGCWn8zAzZEvrm3I3dXblKGWWAlF71k2yYXQZg==
X-Google-Smtp-Source: APXvYqzngoeZ/r34ebfHnHn3MkbXp29HvsnciD2vYxTBkFVS7UiQq+i0mLCv1JJKPJCI91Pa7RHozJe5TicykUeAq+0=
X-Received: by 2002:a19:14f:: with SMTP id 76mr22938921lfb.92.1568196250647;
 Wed, 11 Sep 2019 03:04:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190906062547.13264-1-rashmica.g@gmail.com>
In-Reply-To: <20190906062547.13264-1-rashmica.g@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Sep 2019 11:03:59 +0100
Message-ID: <CACRpkdY1Rk6vPihZkpKC9hya9ixQcqg9PG9rEpM3kSY0kxwsjg@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: gpio: aspeed: Update documentation
 with ast2600 controllers
To:     Rashmica Gupta <rashmica.g@gmail.com>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/ASPEED MACHINE SUPPORT" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/ASPEED MACHINE SUPPORT" 
        <linux-aspeed@lists.ozlabs.org>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 6, 2019 at 7:25 AM Rashmica Gupta <rashmica.g@gmail.com> wrote:

> The ast2600 is a new generation of SoC from ASPEED. Similarly to the
> ast2400 and ast2500, it has a GPIO controller for it's 3.3V GPIO pins.
> Additionally, it has a GPIO controller for 36 1.8V GPIO pins.  We use
> the ngpio property to differentiate between these controllers.
>
> Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>

The changes are uncontroversial (uses just standard GPIO
ngpios and adds a compatible) so patch applied.

Yours,
Linus Walleij
