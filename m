Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2FCCD10C8D
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 20:02:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726019AbfEASCT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 14:02:19 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:38244 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725973AbfEASCT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 May 2019 14:02:19 -0400
Received: by mail-ot1-f68.google.com with SMTP id b1so3658255otp.5
        for <devicetree@vger.kernel.org>; Wed, 01 May 2019 11:02:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zhN43htDOUhLI5nQy3ITTF4IOUOIfjQesvgpn+s0RiA=;
        b=X+SUdaDTx5oujkc3kHa/8SoLFoblSp/XIapOohgZBts0rob/q0azKFkEfyMZ71O0PR
         hM2uUlm3sYPd/8UV9/NpdDLgwSwR9RCApERX+68imUqM8NvIZTVAPiQq00/p7sCrvZWQ
         moWj2MrFOMlmK8FwIdIwrCGIrLmflTJt7hPFNGKXNeQ9Ak7aLJpMuBQLqAzyxufgCgda
         qUh0Mynae/W8O9CQrnhtbIL1nQnDmm4sHGF7Avz7dPVoVpgk8UBxeKiR0rGHGEaYptzS
         hh0GCjERX1oYKm6irUMotfJ+BNPuvr2quqQ77I6gbVXxLNoC65XTGY/nLs2kFlk1AziY
         NRZg==
X-Gm-Message-State: APjAAAUhJQQV7FcYwnNWIs3UneNqvUIsOyyu9eO20jcmjw9hEbxLTLkD
        PeuK6NM5yCd8+/Lffd/mRhnjr2H/osQ=
X-Google-Smtp-Source: APXvYqz/3U5E44tQ6KtiAJq3bAwWVsnBSMo5mF9ZBcSFxKyBIL41YeLJNSnOVx+GMzkaD2PQZFHUvQ==
X-Received: by 2002:a9d:7c95:: with SMTP id q21mr4713862otn.157.1556733737054;
        Wed, 01 May 2019 11:02:17 -0700 (PDT)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com. [209.85.167.170])
        by smtp.gmail.com with ESMTPSA id 20sm1016501oty.58.2019.05.01.11.02.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 11:02:15 -0700 (PDT)
Received: by mail-oi1-f170.google.com with SMTP id t70so8850567oif.5
        for <devicetree@vger.kernel.org>; Wed, 01 May 2019 11:02:15 -0700 (PDT)
X-Received: by 2002:aca:4e83:: with SMTP id c125mr6968036oib.13.1556733735278;
 Wed, 01 May 2019 11:02:15 -0700 (PDT)
MIME-Version: 1.0
References: <20181019074908.13226-12-boris.brezillon@bootlin.com> <10efc9a0980f4bc2b06b4149d9a4ff90@svr-chch-ex1.atlnz.lc>
In-Reply-To: <10efc9a0980f4bc2b06b4149d9a4ff90@svr-chch-ex1.atlnz.lc>
From:   Li Yang <leoyang.li@nxp.com>
Date:   Wed, 1 May 2019 13:02:04 -0500
X-Gmail-Original-Message-ID: <CADRPPNQn5vGBxOOQGrCJADYT4pe7inOqrTByo6K5wMhbs7Kd3A@mail.gmail.com>
Message-ID: <CADRPPNQn5vGBxOOQGrCJADYT4pe7inOqrTByo6K5wMhbs7Kd3A@mail.gmail.com>
Subject: Re: [v2,11/15] mtd: maps: Merge physmap_of.c into physmap-core.c
To:     Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Cc:     Boris Brezillon <bbrezillon@kernel.org>,
        David Woodhouse <dwmw2@infradead.org>,
        Brian Norris <computersforpeace@gmail.com>,
        Marek Vasut <marek.vasut@gmail.com>,
        Richard Weinberger <richard@nod.at>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Pawel Moll <pawel.moll@arm.com>,
        Ian Campbell <ijc+devicetree@hellion.org.uk>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Kumar Gala <galak@codeaurora.org>,
        Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>,
        "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 2, 2019 at 6:46 PM Chris Packham
<Chris.Packham@alliedtelesis.co.nz> wrote:
>
> Hi Boris,
>
> I've just come across the commit from this patch.
>
> On 19/10/18 8:49 PM, Boris Brezillon wrote:
> > There's no real reason to have two separate driver for the DT and pdata
> > case. Just do what we do everywhere else and handle DT and pdata
> > parsing in the same driver.
> >
> > Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
> > Reviewed-by: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
> > ---
> > Changes in v2:
> > - Add Ricardo's R-b
> > - Fix 2 checks (reported by Ricardo)
> > ---
> >   drivers/mtd/maps/Kconfig           |   4 +-
> >   drivers/mtd/maps/Makefile          |   7 +-
> >   drivers/mtd/maps/physmap-core.c    | 261 +++++++++++++++++++++++---
> >   drivers/mtd/maps/physmap_of_core.c | 368 -------------------------------------
> >   4 files changed, 240 insertions(+), 400 deletions(-)
> >   delete mode 100644 drivers/mtd/maps/physmap_of_core.c
> >
> > diff --git a/drivers/mtd/maps/Kconfig b/drivers/mtd/maps/Kconfig
> > index afb36bff13a7..5bffebacce86 100644
> > --- a/drivers/mtd/maps/Kconfig
> > +++ b/drivers/mtd/maps/Kconfig
> > @@ -66,8 +66,8 @@ config MTD_PHYSMAP_BANKWIDTH
> >         used internally by the CFI drivers.
> >
> >   config MTD_PHYSMAP_OF
> > -     tristate "Memory device in physical memory map based on OF description"
> > -     depends on OF && (MTD_CFI || MTD_JEDECPROBE || MTD_ROM || MTD_RAM)
> > +     bool "Memory device in physical memory map based on OF description"
> > +     depends on OF && MTD_PHYSMAP
>
> Previously we could select MTD_PHYSMAP_OF if MTD_RAM was defined. After
> this change we can't select this because MTD_PHYSMAP does not have
> MTD_RAM as dependency.
>
> I'm just in the process of porting the latest kernel to a platform with
> parallel SRAM and NAND via a dedicated controller. I haven't got to a
> point where the platform is booting but I suspect I'll loose my SRAM.

Another minor issue is that previously the MTD_PHYSMAP_OF can be
selected separately, but now it cannot be selected without the
MTD_PHYSMAP.  This may break existing defconfigs.  Probably it will be
better to select MTD_PHYSMAP automatically when MTD_PHYSMAP_OF is
selected?

Regards,
Leo
