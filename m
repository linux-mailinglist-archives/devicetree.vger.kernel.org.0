Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4C70D9990D
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 18:24:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389857AbfHVQYL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 12:24:11 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:45322 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729718AbfHVQYL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 12:24:11 -0400
Received: by mail-io1-f68.google.com with SMTP id t3so12960255ioj.12
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2019 09:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lixom-net.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5jA9zwn1UxjBuCxNstI14/1pfzFprdw/Ed8oKUD0YIk=;
        b=wnk14vUUq6zpP5CzYxIVacuXxytmkig+eZ/o2O8a9Wid0GHC4JbykIBqwDLLux1mAZ
         2n70jUXa8jEv0BnA2gtWJHfOibK6cxxKsdnjcHfBoPCbXR1PRgp4nqaXCLPtinun87Eb
         8Eeds3rTPI+f/r4ORNbQmnGN2qNtZLfoAm5C54V2AciQERaf+dUo6JfPP+Q2yTy7p9mr
         YrkPLYFkvlkI128m5q/nrW4J9aZnu5PFtVJE/3X0GkF7LfPUs0KnKbC+ZoOqUeU8npbE
         4Z1KAzE4lbVQEMW0GvbFodhHRJkgYty7ucFet4lsx8NXbLXQ/T8KqMzNxazxQ+RRSLcv
         GkYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5jA9zwn1UxjBuCxNstI14/1pfzFprdw/Ed8oKUD0YIk=;
        b=QdI7SaAxWL03e35B7yL2mkOHH0qr+q3AbTawcsf7/0b+aid7hxQF6ykj9LR7qk3hZB
         lzVWx5UHktW0QANuIhpTuIWE2jmddMrkrevv5Nx3RCxSH/wiZSdYbKicUmpfqhmDK9JS
         pVhrRB2g5+HK/pyN0JfKP+slcVKMEH69Lv9l8bMkQhefF4BJ8R3dd1S3Pe1EzDRhESfq
         q2O2GQzLese8IgCCCVowQZCBvoQoW17/mKMmPvJ4UekstIrL5UN0GZGbHXlgO6ZlrGmt
         JlOYFzs+yCMLKiT9mJW0/YGb56/7Sd8AkIODakLaVIBU0WFp7z1bsqlEr05LoD/uZlS9
         ZnQA==
X-Gm-Message-State: APjAAAVkwbBpFpW/ptMjgOJG5W0YYdeL8z2YsseWOSFD9KEdKwA3Gumc
        vUzU4xtgtwAMRvUkTyAYnoLjwCBZD9GFb8E2jyskQw==
X-Google-Smtp-Source: APXvYqzCwIozfnYJNCN4i+QfSef2+thQeEphqEkwMXZMvYLndmnllz8/vu0rhkQbN9YkrG2PKeJ5ts2DohP9qnbTM5E=
X-Received: by 2002:a5e:8a46:: with SMTP id o6mr646257iom.36.1566491050001;
 Thu, 22 Aug 2019 09:24:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190822092643.593488-1-lkundrak@v3.sk> <244fdc87-0fe5-be79-d9cd-2395d0ac3f57@kernel.org>
In-Reply-To: <244fdc87-0fe5-be79-d9cd-2395d0ac3f57@kernel.org>
From:   Olof Johansson <olof@lixom.net>
Date:   Thu, 22 Aug 2019 09:23:59 -0700
Message-ID: <CAOesGMjDTbwSviXbB2P=wPjmp2JC_U8XB0fUby5R003RCaeRaQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/20] Initial support for Marvell MMP3 SoC
To:     Marc Zyngier <maz@kernel.org>
Cc:     Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Jason Cooper <jason@lakedaemon.net>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Russell King <linux@armlinux.org.uk>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        linux-clk <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 22, 2019 at 3:32 AM Marc Zyngier <maz@kernel.org> wrote:
>
> On 22/08/2019 10:26, Lubomir Rintel wrote:
> > Hi,
> >
> > this is a second spin of a patch set that adds support for the Marvell
> > MMP3 processor. MMP3 is used in OLPC XO-4 laptops, Panasonic Toughpad
> > FZ-A1 tablet and Dell Wyse 3020 Tx0D thin clients.
> >
> > Compared to v1, there's a handful of fixes in response to reviews. Patch
> > 02/20 is new. Details in individual patches.
> >
> > Apart from the adjustments in mach-mmp/, the patch makes necessary
> > changes to the irqchip driver and adds an USB2 PHY driver. The latter
> > has a dependency on the mach-mmp/ changes, so it can't be submitted
> > separately.
> >
> > The patch set has been tested to work on Wyse Tx0D and not ruin MMP2
> > support on XO-1.75.
>
> How do you want this series to be merged? I'm happy to take the irqchip
> related patches as well as the corresponding DT change (once reviewed)
> through my tree.

DT changes, unless there's lack of backwards compatibility, are best
merged through the platform trees. Especially for new platforms like
these where there's likely going to be nearby changes (and thus
conflicts).

I.e. driver changes I'm all for bringing through driver trees
(including binding patches), but please leave dts/dtsi changes to the
platform.


-Olof
