Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0486041543A
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 01:51:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238597AbhIVXwh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 19:52:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238569AbhIVXwg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 19:52:36 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDAC9C061757
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 16:51:05 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id i25so19092843lfg.6
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 16:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X6DdH0xnghaB9Dt/aDxkwOs5ayvQ920sKlagKXTBlV0=;
        b=iUpf03D4/FlCV4qFLHKa1g+SmrJe1teeAzesCA3+8k69/vwBegVS8voipKW99acdJd
         4Zfw0jdQ9EV7+e7gEr8950niZxnpnzf0Y53qOL+fTgP57jc3xvhQ4NKBVQfaouDK21k+
         masfKB7xBMPIKbp3er5DSVV37LhvrjmdyB5vQI/JTSUDMFthVo+/HtiJgSEH73sVrNww
         a3TJrmrQD8zgbeUR0TSiTKbr5JKaOZDaMz/973V0Df6pnU158KgKaRRw14OZ+S0clp59
         DGw10xpNF8dkxCRwE/MD8InhywHNsS8zmOnf5PBctLEYsUnFdtDsFVW/3oGwXRJo2Zwf
         Q7vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X6DdH0xnghaB9Dt/aDxkwOs5ayvQ920sKlagKXTBlV0=;
        b=U8/16FNyzM24Ayj0kloDin51JiX/17PAd/kPrcnan3i/8Q/7IIhoijdTyz3kPua15A
         WRq4atoOVruloU/GXqHNWwv3n3fBPcV/bsKqUtoZRofvL5d/T2l213IIhoL1oLdqbyQl
         IvVDyJkRBJlRh3vhr4tFyvVroo89SDbLtPKU911enTaDh6sCRcR0glpog6bIcSdjRBCS
         dJmSh+FE3xBTdsZ/4TzkNDc7ncLNJdATD6HgV+e6FcFvfdHJWsOVWpTbOYR2QsGrbDDg
         v0qYLcf8axY+Cpz8vgRB+lPsVXIF6V42s2oC3ki4HLJQe/uXPGm+eRQSHV+7WGoQOFFk
         ef8g==
X-Gm-Message-State: AOAM531wKSJMYB7RYIfFbighURdXEtF9Zeaebio8Hmqlwkij1uataPqI
        Iqk20ij3S/gdJRZJOMjM6OfFcgjsx7Dx3gVA1zOhDQ==
X-Google-Smtp-Source: ABdhPJwP0jQYm2qHzZkkETLwbgCuF3BpNy8NQFc9OF4emblJl1PauuJ9+IpNO3fApqvvgiNo+eSll9OtWwFQZ38MSdA=
X-Received: by 2002:a05:6512:e82:: with SMTP id bi2mr1479994lfb.95.1632354664167;
 Wed, 22 Sep 2021 16:51:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210717045627.1739959-1-daniel@0x0f.com> <CACRpkdbE+_DJFhBCmtz5JwJupf7QkkWZhXrgf1KG_3rPqvEm0w@mail.gmail.com>
 <CAFr9PXmFHanrx4Frg3hQwo-RbAY-UXxC=FOAj++cshSHa99z3g@mail.gmail.com>
 <CAMpxmJUoG7qPhy2CxapCn1M=w_AssOQsEmyvXO18OpedM6hBjw@mail.gmail.com>
 <CAHp75VdU52rwKY3AA0Nxt3VGOFr71XtjCDqZbSxR4GNczSqihQ@mail.gmail.com> <CAMpxmJUSvBSa=T1a1Bq_YhAGib9BcXf4xYMSOfyprHbG0t_QWw@mail.gmail.com>
In-Reply-To: <CAMpxmJUSvBSa=T1a1Bq_YhAGib9BcXf4xYMSOfyprHbG0t_QWw@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 23 Sep 2021 01:50:53 +0200
Message-ID: <CACRpkdZSdCuA59O5CYjb9FvXA_+ZSBcrp2tc2Hu5=gzCrFBnEg@mail.gmail.com>
Subject: Re: [PATCH 00/10] gpio: msc313: Add gpio support for ssd20xd
To:     Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc:     Andy Shevchenko <andy.shevchenko@gmail.com>,
        Daniel Palmer <daniel@0x0f.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 22, 2021 at 2:50 PM Bartosz Golaszewski
<bgolaszewski@baylibre.com> wrote:
> On Wed, Sep 22, 2021 at 12:52 PM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:

> > Have you tried to use the `b4` tool? It is capable of getting
> > everything from the lore archive.
>
> I haven't tried it because I have never heard of it. :) Thanks for the heads-up.

I use this all the time, it is awesome.

Yours,
Linus Walleij
