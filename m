Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5F69FC0B5D
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2019 20:36:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728036AbfI0SgO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Sep 2019 14:36:14 -0400
Received: from mail-ua1-f67.google.com ([209.85.222.67]:44989 "EHLO
        mail-ua1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726988AbfI0SgN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Sep 2019 14:36:13 -0400
Received: by mail-ua1-f67.google.com with SMTP id n2so2249675ual.11
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2019 11:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pgw6AMmjd8FcODYhNXJ6h6EuyT3ubSZ01OmcV533FOg=;
        b=eDTJBlEWZDWx0XFuvuALBQtlzosOa7YmfK5ZM7UwW5LFknREGRhpCEAQ0JgHlw7WRo
         pFbve1t00ldHPq2nBuLl0fH7f6lYJEINJFuTXx7Dj+GTsCgipzq3by71xWZrruN+SeS/
         jtBMKwHUsgLedk/Oh6pwTyONVzNMiswP6pQZ3yStgKmZtSYUAxfKDblmz+vRj9Tst6wQ
         yCAP1nM39po/IKL4VDCr7ID//pyvPQv+AtUfr+Iy5Aoid/ybRmZMVdGn3FCNGpPi0rE6
         gtqzUGv2NOFQsD4VSbzWWQkcvrTs4CM2NUuH/aUNfjvGIPAz6P8+3bca8dMwM+V6UY3W
         7xLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pgw6AMmjd8FcODYhNXJ6h6EuyT3ubSZ01OmcV533FOg=;
        b=L9pEl/tdkmywdk3G/JIy3y2j/Rc/CmDqoxX4sd78mCOF+p3tau3Q/XfGTpeys/zi26
         U85NMTYXkLUk7SXduSiQ3whmwQTqAk4RN9hEGTWQ5RXs1VrDrKPqd3eghhV63LaGxUJI
         T/WwtFGW2FnM9gAUd5reiv0hxWm1uwSBBFFgbqGFsTcZxUJnLcJdsax4EBIL464LgLRO
         iD30CFQtE3YswELVx1jvs3wBgSqoYWS81ZGL3JgwOy8/5SRRDaPyt37alWt+fVulXbmR
         1AsaKnmwApRpXI5+abwt2HcPzFCMv3YKLkAifYwed+BYsdrv3HpHuVSMbpZ7mJ+fOWt1
         GaUA==
X-Gm-Message-State: APjAAAWOmnnUFtNQBN3aqYqrsTW1yjiWznmCCBoeqdrVcbobsc9XAVx2
        XCI8iToDlPsvEoJm9oOeKdhB2ZzBxxU9on0qHvONMg==
X-Google-Smtp-Source: APXvYqzJk+RufAS38mOg2G7I5XaU61Uo/xNb1WDdry5ntpEov4c8yXd8xlDSiZU6gXC/Me/a9M+9jPX0x3jzP1+S8O0=
X-Received: by 2002:ab0:3098:: with SMTP id h24mr5559466ual.100.1569609372593;
 Fri, 27 Sep 2019 11:36:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190922102341.GO25745@shell.armlinux.org.uk> <E1iBz55-0008Mj-CX@rmk-PC.armlinux.org.uk>
 <CAPDyKFpQn+O-M60q-Tc4QOBM+WhFhmnkU6_-t5hnQcndLo==YA@mail.gmail.com>
 <AM0PR04MB66766AC0807A85B3E5428E028F840@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <4cb91a30-ed1b-1fef-58df-fbc46757bd5d@arm.com>
In-Reply-To: <4cb91a30-ed1b-1fef-58df-fbc46757bd5d@arm.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 27 Sep 2019 20:35:35 +0200
Message-ID: <CAPDyKFpm-73euWRWDHhMz=aRt38VLWp5-OaTVhVeFwuc+y46mQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma coherent
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Leo Li <leoyang.li@nxp.com>,
        dann frazier <dann.frazier@canonical.com>,
        Russell King <rmk+kernel@armlinux.org.uk>,
        Will Deacon <will.deacon@arm.com>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        "Y.b. Lu" <yangbo.lu@nxp.com>, Christoph Hellwig <hch@lst.de>,
        Mark Rutland <mark.rutland@arm.com>,
        DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 24 Sep 2019 at 20:04, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 24/09/2019 04:41, Leo Li wrote:
> >
> >
> >> -----Original Message-----
> >> From: Ulf Hansson <ulf.hansson@linaro.org>
> >> Sent: Monday, September 23, 2019 4:27 PM
> >> To: Russell King <rmk+kernel@armlinux.org.uk>
> >> Cc: Robin Murphy <robin.murphy@arm.com>; dann frazier
> >> <dann.frazier@canonical.com>; Will Deacon <will.deacon@arm.com>;
> >> Nicolin Chen <nicoleotsuka@gmail.com>; Y.b. Lu <yangbo.lu@nxp.com>;
> >> Christoph Hellwig <hch@lst.de>; Mark Rutland <mark.rutland@arm.com>;
> >> DTML <devicetree@vger.kernel.org>; Leo Li <leoyang.li@nxp.com>; Rob
> >> Herring <robh+dt@kernel.org>; Shawn Guo <shawnguo@kernel.org>; Linux
> >> ARM <linux-arm-kernel@lists.infradead.org>
> >> Subject: Re: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma
> >> coherent
> >>
> >> On Sun, 22 Sep 2019 at 12:29, Russell King <rmk+kernel@armlinux.org.uk>
> >> wrote:
> >>>
> >>> The LX2160A esdhc controllers are setup by the driver to be DMA
> >>> coherent, but without marking them as such in DT, Linux thinks they
> >>> are not.  This can lead to random sporadic DMA errors, even to the
> >>> extent of preventing boot, such as:
> >>>
> >>> mmc0: ADMA error
> >>> mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> >>> mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
> >>> mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
> >>> mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> >>> mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
> >>> mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
> >>> mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x000040d8
> >>> mmc0: sdhci: Timeout:   0x00000003 | Int stat: 0x00000001
> >>> mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
> >>> mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
> >>> mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
> >>> mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
> >>> mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
> >>> mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
> >>> mmc0: sdhci: Host ctl2: 0x00000000
> >>> mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
> >>> mmc0: sdhci: ============================================
> >>> mmc0: error -5 whilst initialising SD card
> >>>
> >>> These are caused by the device's descriptor fetch hitting
> >>> speculatively loaded CPU cache lines that the CPU does not see through
> >>> the normal, non-cacheable DMA coherent mapping that it uses for
> >>> non-coherent devices.
> >>>
> >>> DT and the device must agree wrt whether the device is DMA coherent or
> >>> not.
> >>>
> >>> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> >>
> >> As I am picking up patch1 and patch2 from this series, I can also help out and
> >> pick up this one, if that is okay by people?
> >
> > There is some concern recently from linux-next maintainer about this causing potential conflicts.  https://lkml.org/lkml/2019/9/15/225
>
> In principle, it should be fine for #2 and #3 to go via separate trees -
> #3 aligns the DT with the existing behaviour of the driver, while #2
> will make the driver behave correctly whichever state the DT is in.
>
> Robin.

That's right, so I am leaving this patch for arm-soc people to pick up then.

Kind regards
Uffe
