Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D89758E5F2
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2019 10:11:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730593AbfHOILA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Aug 2019 04:11:00 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:42683 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726443AbfHOILA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Aug 2019 04:11:00 -0400
Received: by mail-lj1-f195.google.com with SMTP id l14so1503153ljj.9
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2019 01:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8ebZA4/36rTxk/8zZnnGDTrAggtxlqN1B3xHCFNWBeg=;
        b=Lhpl/4CEOGdOAaUNVwfrFhEAvqDwbWuwmeCdhVlfhEZ4/EggH2nWpO8VyBdh8S3QLQ
         OXSjlscVTA0qX+4UtPYPdHZjLezQc1CMoaTTVEu/eEyI/1PY5ti4rNjbAsJDxz0U6m7Y
         rjkKnJ6lf4g2Q3tSWZxq3+ho22XDefURjkSV/EoglAd+kIXMVbqLGLj5VifjQ7udmyD/
         3lGQdWxU4oagagD4Sia2hN4cadPANHBfSlqe61KnNKLr97BDHpR9kBE1zDPYM2593NWe
         9/gq0LzoU/SBXdrT+TCXSCGU756D2pyjwdjOPkwqWBlcqHAAOQK1KCn8eunhI1124UQJ
         XUVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8ebZA4/36rTxk/8zZnnGDTrAggtxlqN1B3xHCFNWBeg=;
        b=YmOR6wK0zF3imItkeQ4cAUt+PCdhGXhDsfAC2MkJzigvwjayqaLjm31eiBlhW/ABmH
         DzQ8xPziZzsiGNdxnY3j1ScYtXU9UV5g+3MkwvpQ2jqn8pV4yVDYapOYoZXnJjUHSMol
         hM41+XdFkRMOVsWvKsTlZMP1b4cnwVJ+ea/mwJytHwfxWKMhrvrN3W3vSXECdblGGtak
         YE/EahRumK1JGgsanb1coxZw7RY/L7/zJ65UHc49GlbLC3e0XlPWU9BSo0KX9ktKLBej
         m4HPNlRTvLUzh9gcymEN4HnqxAsnBu/uE/jY0O6aMSVqfPtCn1Glb52p3tD5Ti0KHSFW
         pn2w==
X-Gm-Message-State: APjAAAUB9VY58r0YBQ0Nnfv+K5yXn31DBAdrRQ5Y3CrC0lHmopJeLejk
        f25C1FsVUqWTivEAe0XGBQv4H43FzY8gslGTVR880A==
X-Google-Smtp-Source: APXvYqw6nViHWAm98n06wtqmOkZygSxdicck4ta/i4U+OsaEfdC8l5tbW8rAx23zMzUJLlAWup0/GRhMtmPLdCvoD50=
X-Received: by 2002:a2e:9f0f:: with SMTP id u15mr2017156ljk.54.1565856658315;
 Thu, 15 Aug 2019 01:10:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
 <CACRpkdar5jE116CcywYxLR9JKWunRusJjNw7f3C0SFK4-4+dNQ@mail.gmail.com>
 <CACRpkdbEw5eCKb=nTCK4wuMsPEadEQdGx62cGRhk7F78p5X2CA@mail.gmail.com> <20190814143457.664b04c8@windsurf.home>
In-Reply-To: <20190814143457.664b04c8@windsurf.home>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 15 Aug 2019 10:10:46 +0200
Message-ID: <CACRpkdY-AtaS67u4s58PifFtP5C7xp4P15J+hW_Dba=Gb4rhSQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] CP115 pinctrl support
To:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 14, 2019 at 2:35 PM Thomas Petazzoni
<thomas.petazzoni@bootlin.com> wrote:
> On Wed, 14 Aug 2019 10:12:36 +0200
> Linus Walleij <linus.walleij@linaro.org> wrote:
>
> > On Wed, Aug 7, 2019 at 2:47 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> > > On Mon, Aug 5, 2019 at 12:16 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > >
> > > > This is the second batch of changes (out of three) to support the brand
> > > > new Marvell CN9130 SoCs which are made of one AP807 and one CP115.
> > > >
> > > > We add a new compatible (and the relevant support in the pinctrl
> > > > driver) before the addition in batch 3/3 of CN9130 SoCs DT using it.
> > >
> > > Waiting for review from the Mvebu maintainers.
> > >
> > > If it takes too long just nudge me, it looks good to me.
> >
> > So if the other MVEBU maintainers don't really look much at MVEBU
> > patches anymore while Miquel is working a lot on the platform,
> > what about listing Miquel as maintainer under the SoC entry, hm?
>
> Miquel sent his series on August 5, i.e 9 days ago. We're in August, in
> the middle of the summer vacations for many people. While it is nice to
> see subsystem maintainers who want to get code merged in a timely
> fashion, I think it is probably wise to give it some more time for
> review in this period of the year.

OK then maybe I am a bit impatient.

Yours,
Linus Walleij
