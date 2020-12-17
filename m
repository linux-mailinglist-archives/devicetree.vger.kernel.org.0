Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF9062DD33B
	for <lists+devicetree@lfdr.de>; Thu, 17 Dec 2020 15:49:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727160AbgLQOtT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Dec 2020 09:49:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726983AbgLQOtS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Dec 2020 09:49:18 -0500
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E101C061282
        for <devicetree@vger.kernel.org>; Thu, 17 Dec 2020 06:48:38 -0800 (PST)
Received: by mail-qk1-x730.google.com with SMTP id 143so26524905qke.10
        for <devicetree@vger.kernel.org>; Thu, 17 Dec 2020 06:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=JCNruxdGg3cTCE+912d/xDPbIIMl2jn0TbDBS1a3OOc=;
        b=gNBlqMR0nvdGIzLo4Jnz6xdqnGUQ8se0o5tP+upG5LhNzqQ9WZ/CO9AcRS2LtvskJ8
         y/Y9FzC3QR5u8zEHEWbon4N5qpxBOsRmU/BbdG6C/G+Z+9DfXH84VxaVdirfMcv9Rsf3
         g3ex6uzYBrPA4EtOSGnb3ViG6HIn26q+uapXOm26aULmHs4AkHbaRsK4xcji1p83B1mK
         3mzO1yQALay7PIvr7WDxzdUaQzFBP+axbBUA+1Q+/dGXglPPNwbtk0XQ0W+rRFcVi3xa
         dP2SczBriSsY/A3hDlbaOoBarZR/3EJ7mgcK63Kbrw98qOpY+6lGp9A37t0Racd1DHOp
         farw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=JCNruxdGg3cTCE+912d/xDPbIIMl2jn0TbDBS1a3OOc=;
        b=AUjOzUoZrWTxFT/ngTABAyKi9mssQ0FCY4h2TLBmv/nLK4wU/uAmzbBcxmvaeLgwGz
         LZ0prokM1pfmi7AZOLVrmPtpJnlOe//OWDMMc928kbMwhwEQ+U5nljcGLiKpGSt+k0nK
         x1K2khvrihRgA+lQv22qRQrYBqqIotmXJT4PkuWkRcqsHx4amuSfdsNnOw4wKCGkm+gu
         X5B4S2TB8iY9BZuCwbR7fEbXFv/6UpEhMqEBQLWfKpiB8JJyZZtcFrjtZYw5FzmzvlXC
         ap/2hYTzhHWbu1Ni11CCkMClxMWmRfk2tID9R/6Bf1llVGAeYiAAIRcuLzH9r/pjt3nu
         /SgA==
X-Gm-Message-State: AOAM533U7hZGrL9tQtYKe9+1YsHy6O3tSkgihEex5V/WUt9W69i++U3D
        LGIcDTaFaoyIgDnTpnDjHtNfxjfu17d6k2zhZm4uig==
X-Google-Smtp-Source: ABdhPJyx1OZ1sHFxhznx0jM6oJQzjHA/Bx0O1108cH22KHEOdRnWExfzTd+bx2JZZd7RHfty2Hnow32GjNmBPE76J/Q=
X-Received: by 2002:a37:4acb:: with SMTP id x194mr48159859qka.295.1608216517838;
 Thu, 17 Dec 2020 06:48:37 -0800 (PST)
MIME-Version: 1.0
References: <20201217112708.3473-1-kostap@marvell.com> <20201217112708.3473-3-kostap@marvell.com>
 <20201217141522.GE4708@sirena.org.uk>
In-Reply-To: <20201217141522.GE4708@sirena.org.uk>
From:   Marcin Wojtas <mw@semihalf.com>
Date:   Thu, 17 Dec 2020 15:48:25 +0100
Message-ID: <CAPv3WKfv0uBGmtFCeoNRoW+sJPCt-qQNWOWi93n9XP8uP_+Tkw@mail.gmail.com>
Subject: Re: [PATCH 2/3] spi: orion: enable support for switching CS every
 transferred byte
To:     Mark Brown <broonie@kernel.org>
Cc:     Kostya Porotchkin <kostap@marvell.com>,
        linux-spi <linux-spi@vger.kernel.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>, nadavh@marvell.com,
        =?UTF-8?B?QmVuIFBlbGVkICjXkdefINek15zXkyk=?= <bpeled@marvell.com>,
        Stefan Chulski <stefanc@marvell.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

czw., 17 gru 2020 o 15:15 Mark Brown <broonie@kernel.org> napisa=C5=82(a):
>
> On Thu, Dec 17, 2020 at 01:27:07PM +0200, kostap@marvell.com wrote:
>
> > Some SPI devices, such as SLIC (Subscriber Line Interface Card)
> > require toggling the CS every transferred byte. Enable such
> > possibility by creating a new DT property and enabling SPI
> > device mode update. Add according support in the spi-orion driver.
>
> I'm pretty sure we already support this - if the client driver sets the
> word length to 8 bits then SPI_CS_WORD ought to do what your change
> describes as far as I can see.  What's missing there?

Sure, that needs to be confirmed on HW, but it looks like the required
functionality can be handled with SPI_CS_WORD.

As for the justification, the new flag was developed on a kernel
revision without it and applied easily, hence the possible oversight.

>
> > ---
> >  drivers/spi/spi-orion.c | 20 +++++++++++++++++++-
> >  drivers/spi/spi.c       |  6 ++++--
> >  include/linux/spi/spi.h |  1 +
> >  3 files changed, 24 insertions(+), 3 deletions(-)
>
> This is introducing something into the core and adding a user of it, it
> should be two separate patches.

Agree.

Thanks,
Marcin
