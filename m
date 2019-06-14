Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 71C1B45AFD
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 12:56:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727083AbfFNK4m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 06:56:42 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:45979 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727054AbfFNK4m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 06:56:42 -0400
Received: by mail-io1-f68.google.com with SMTP id e3so4661147ioc.12
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2019 03:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=06iI6z4cthU4ce66OeHWQkRCnmuFyEIHHZ9Es1yn3sc=;
        b=ooZzfFJD2u9j2LussEGHFOPOfLBkJ+BU0GJHPBhgAJ/vkF6JbiQbi3Z9LCSduATYrm
         pmqk7dvkdE04MoEJvLFEsmWLKI31BrB0lbpcgBa7PmY2Pqee615LcMhMjtdzFAWkeAol
         te7vdgYxjdEddafQhiDTatljo0z/1a5LRul94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=06iI6z4cthU4ce66OeHWQkRCnmuFyEIHHZ9Es1yn3sc=;
        b=jBYK3gxA5OJYPlHjY2f46c157n3R4RwOH2x/pSKfQ5Q5F0hYEIwOOXQFSf0hiMV/Cc
         E+nLLRLrM2kKvAuJ7GknaaZ9mVhdJt+6X7RxHXVTzDIjbkr1qO8r9D6JOk9K2vdjpWUR
         CahiUrv/cKXzRtaXlE2zYvHRQDBtYi118tAtut3PUvhNwL3wYXqUBUQTDshL6/kohgQE
         F+tNajyVHUDye9zM2CHDFmUlTi+CSD9TLsGdNipTedoGDbXx5XV/bfxUmKJwzrSjQG6y
         MDeYABGDLKEE34rkgDMUx6clSonqH0wv8EJ4bTA8aMDEU+ok4tFNI1OymvSlux5yei2R
         8EkA==
X-Gm-Message-State: APjAAAXc5kTcKf31w35X0N1mYJkTqzrQ9e19e+7kkpZd3sQ6Ux7+pINB
        RUbUI4W7kiERsHyZMFVyJfzom0xQetoBUbp1YSv7fa4PPzo=
X-Google-Smtp-Source: APXvYqwkcIwVPtfblhejh6xHVBtwFYzc9v3JjBjZavec/51f+nlxxqOghRWbuFOJBMDNowUmrcO58Fw+cwukMr5fTSU=
X-Received: by 2002:a05:6602:2253:: with SMTP id o19mr14463706ioo.297.1560509801785;
 Fri, 14 Jun 2019 03:56:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
 <20190613185241.22800-3-jagan@amarulasolutions.com> <CAGb2v65xuXc4C1jOyM1GbEFVDam5P-6NN0ZhtzwzA7qU5F3nJQ@mail.gmail.com>
 <CAGb2v67DY534hXrx2H4jnZXA7jJS7sq2UwYCqw1iAgyLKdNzgA@mail.gmail.com>
In-Reply-To: <CAGb2v67DY534hXrx2H4jnZXA7jJS7sq2UwYCqw1iAgyLKdNzgA@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Fri, 14 Jun 2019 16:26:30 +0530
Message-ID: <CAMty3ZBc-AqbNGZCxRhOPw46iMvEZxoq1oATA46=K29gRYi4Sg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/9] drm/sun4i: tcon: Add TCON LCD support
 for R40
To:     Chen-Yu Tsai <wens@csie.org>
Cc:     Maxime Ripard <maxime.ripard@bootlin.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 14, 2019 at 9:05 AM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Fri, Jun 14, 2019 at 11:19 AM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Fri, Jun 14, 2019 at 2:53 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > >
> > > TCON LCD0, LCD1 in allwinner R40, are used for managing
> > > LCD interfaces like RGB, LVDS and DSI.
> > >
> > > Like TCON TV0, TV1 these LCD0, LCD1 are also managed via
> > > tcon top.
> > >
> > > Add support for it, in tcon driver.
> > >
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> >
> > Reviewed-by: Chen-Yu Tsai <wens@csie.org>
>
> I take that back.
>
> The TCON output muxing (which selects whether TCON LCD or TCON TV
> outputs to the GPIO pins)
> is not supported yet. Please at least add TODO notes, or ideally,

Are you referring about port selection? it is support in
sun8i_tcon_top_de_config.
