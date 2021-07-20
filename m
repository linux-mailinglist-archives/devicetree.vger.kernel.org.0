Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC6253CFE68
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 17:57:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237150AbhGTPRM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jul 2021 11:17:12 -0400
Received: from mail.kernel.org ([198.145.29.99]:45516 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S240642AbhGTPG6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 20 Jul 2021 11:06:58 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 302FA610CC
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 15:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1626796056;
        bh=BxiRuDVFJYuZkeXyO8d1mCAMGC+NGkUblJgfHvYhwjE=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=rGnbg8XmbJfi9YO2dDED5QEAkVHpG1kjnG17q33W5f08ZPcO+pdf8bOc/+GfzfBB8
         IkPgDsKj4dAXDdvhNwDisb8ccy8qcE1DFy6Db83TeN7qKEd3RL4yJO39Lb9L8rEhhQ
         h5DurIZ57pTg30gRcd0fdboZDR4GzdvRT0jGLVapAia5SRhs7kw66lpsn6K2Y/wlzb
         lIdeEIaEWw3MkUq2FotTQGC+HgSCeK9xewgLpbBXeZcijhxT3yyKAofbybdqLnFh7E
         t61L9Xvd/TJSIw4fYMN6RPIRULL8+sAR9IMP5/ATejZoSDi5yysCYvA94kOTupoCiT
         bnOz5fFisNioA==
Received: by mail-pj1-f47.google.com with SMTP id o3-20020a17090a6783b0290173ce472b8aso2172677pjj.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 08:47:36 -0700 (PDT)
X-Gm-Message-State: AOAM533pbCto+ZJFTjiJcE3L7YG0ABSEp5JcyLkTEPgavgpfSkn8lrHt
        jiXvag8dTTlD9fnw2TcXmKPKzq9T/uziJQ+5hsg=
X-Google-Smtp-Source: ABdhPJz8fAmQPz8P5f3v7CFN4Tz4IMYQ4TGAzCx449tovZu48yCAUuUyAM/PGZaq/acQgnMAIB281I3U+29cMfs6UuQ=
X-Received: by 2002:a17:902:bb83:b029:120:512b:86c0 with SMTP id
 m3-20020a170902bb83b0290120512b86c0mr24081120pls.32.1626796055813; Tue, 20
 Jul 2021 08:47:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210621140036.2879563-1-thierry.reding@gmail.com>
 <162442779339.5511.14827117243689906234.b4-ty@canonical.com>
 <CAL_JsqL3WMOrPNzF-juqL8y20dAjt0BZaZU-yLnekKKCjTqmMA@mail.gmail.com> <CA+Eumj6hSOLJ32u5P00684BiLe3=1QztxWc9BFXWe5iQHSA9mA@mail.gmail.com>
In-Reply-To: <CA+Eumj6hSOLJ32u5P00684BiLe3=1QztxWc9BFXWe5iQHSA9mA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
Date:   Tue, 20 Jul 2021 17:47:23 +0200
X-Gmail-Original-Message-ID: <CAJKOXPc=EDcWkPbrim3O5b8fbkrJKd+0xhijvY4UNdSsPQsVQw@mail.gmail.com>
Message-ID: <CAJKOXPc=EDcWkPbrim3O5b8fbkrJKd+0xhijvY4UNdSsPQsVQw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm-smmu: Fix json-schema syntax
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
        Will Deacon <will@kernel.org>,
        Linux IOMMU <iommu@lists.linux-foundation.org>,
        Joerg Roedel <joro@8bytes.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 13 Jul 2021 at 10:27, Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> On Mon, 12 Jul 2021 at 16:14, Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Tue, Jun 22, 2021 at 11:56 PM Krzysztof Kozlowski
> > <krzysztof.kozlowski@canonical.com> wrote:
> > >
> > > On Mon, 21 Jun 2021 16:00:36 +0200, Thierry Reding wrote:
> > > > Commit 4287861dca9d ("dt-bindings: arm-smmu: Add Tegra186 compatible
> > > > string") introduced a jsonschema syntax error as a result of a rebase
> > > > gone wrong. Fix it.
> > >
> > > Applied, thanks!
> > >
> > > [1/1] dt-bindings: arm-smmu: Fix json-schema syntax
> > >       commit: bf3ec9deaa33889630722c47f7bb86ba58872ea7
> >
> > Applied where? Now Linus's master is broken.
>
> To memory controller drivers tree. Pushed to soc folks some time ago:
> https://lore.kernel.org/lkml/20210625073604.13562-1-krzysztof.kozlowski@canonical.com/

Hi Rob,

The patch landed in the Linus' tree in v5.14-rc2.

Best regards,
Krzysztof
