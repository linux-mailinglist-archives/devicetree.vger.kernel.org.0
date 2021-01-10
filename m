Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DCDE2F0491
	for <lists+devicetree@lfdr.de>; Sun, 10 Jan 2021 01:28:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726238AbhAJAZb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Jan 2021 19:25:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726132AbhAJAZb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Jan 2021 19:25:31 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8502BC061786
        for <devicetree@vger.kernel.org>; Sat,  9 Jan 2021 16:24:49 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id h205so32206536lfd.5
        for <devicetree@vger.kernel.org>; Sat, 09 Jan 2021 16:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MaNjSrG8taLJEzXd4CfVhlhv+S87fFrkBRWdE4GXbNU=;
        b=G8CJ6yX91fKSLE4hDDwBLWMD7zoM/coT9SC/zm9kWRyySwDSMvvyHUFNWSMzgok6SO
         Lxn5dJDH31e0i0pe1U/qnjX/hiAuZbs90ZAqY53pPMVzmMtdgDerq08JTffI9NWSBSZB
         IfDutdLr9GtspwSxrBNesP1zKWI00tRSii4fBGexW6C4Ohc2o38OTrpecKWH23DWz6i2
         bowTwVCAvxljAKg9BdqEjSeu2IgVTWok6FxoKbkoB5v6Icvu5MCHgA0lOGkOWlts6Tpe
         NpwdN2lgiOrjYeo1D8JDG442LUnAaM5m2E4VpvSD8San20rdGlIh90BG+347KxbSHL+X
         m1iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MaNjSrG8taLJEzXd4CfVhlhv+S87fFrkBRWdE4GXbNU=;
        b=jJRHH4rEudU1MCWV2wFMlrWJ2SrubfChIE9g0ewgJJqmgsHh6ny3DkSqrUY0CXQRgu
         Pcy56phsxN6N/szjZ7p6Jhtot+k3BNIC7Uji86+bImA1Nz5XnxkEyUMJPXITh9q6RDTK
         3llO+PGiPCqY7RLOA33LxUM8nrODUNMQ6z3tOwyNvVSkSiiEXy9UAI7EF6D3K6bX27m8
         UOwGIz7knKditjWxD4nyGxz/LG6yTyv0Nhtx/Q2HUnJIPYJCbL2+IHqqNgd1BILtlWh5
         +nLZpouTPgPt8OrpwF5kplj+/v/PG0AxI4M0/t2kQojGKpasQ7/g197DUJVw59MKEP7W
         zO5w==
X-Gm-Message-State: AOAM532YUXaXOBaavuqiwaECK5J3YczIx3KMBP78QOBarPP0V/eRNqfw
        KPuecTc0Jy++MVsjPuws5enBd5xXwD5rtq5d/MlUmQ==
X-Google-Smtp-Source: ABdhPJzWhUb8OaCqZ+wGW3wghfI4OfSe4HcyYD2SElJtQEE0jHkfmLE53PIQAkoRBbNxCjll818U9BU6+WvJ1RvEg5U=
X-Received: by 2002:a19:6557:: with SMTP id c23mr4137115lfj.157.1610238288101;
 Sat, 09 Jan 2021 16:24:48 -0800 (PST)
MIME-Version: 1.0
References: <20210109140204.151340-1-angelogioacchino.delregno@somainline.org>
 <20210109140204.151340-2-angelogioacchino.delregno@somainline.org>
 <CACRpkdbETKnhgR2-T+s3ChY4v-C5ErdPEp2WcMSZHzJ=O-fHig@mail.gmail.com> <111b918d-2b43-be81-2dbf-e984750b0ef7@somainline.org>
In-Reply-To: <111b918d-2b43-be81-2dbf-e984750b0ef7@somainline.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 10 Jan 2021 01:24:37 +0100
Message-ID: <CACRpkdZXgN91jKBDvf=P5_6ObOaacQa2PGL3-jP1gBW__ZyOaA@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: Add driver for Awinic AW9523/B I2C GPIO Expander
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Mark Brown <broonie@kernel.org>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        konrad.dybcio@somainline.org, marijn.suijten@somainline.org,
        martin.botka@somainline.org, phone-devel@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 10, 2021 at 12:11 AM AngeloGioacchino Del Regno
<angelogioacchino.delregno@somainline.org> wrote:
> Il 09/01/21 23:11, Linus Walleij ha scritto:

> > The major review comment is that it'd be nice if you look into
> > using regmaps register cache instead of rolling your own,
> > and also possibly using regmaps locking rather than your own
> > as a result of that.
> >
> Actually, I really tried to use regmap's FLAT register cache and after
> many, many tries... I had to give up. I just couldn't get it working. :(

This needs to be root-caused. The register cache in regmap is for
using not for decoration.

What is the problems you are seeing?

If it is fundamentally so that regmap has limitations that is one thing,
but I want to rule out that we're just not using it wrong or that there
is a bug in it that we should fix.

Looping in Mark Brown the regmap maintainer.

Yours,
Linus Walleij
