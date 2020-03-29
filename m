Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F1E10196BE8
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2020 10:42:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727528AbgC2Ims (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Mar 2020 04:42:48 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:39475 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727504AbgC2Imr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Mar 2020 04:42:47 -0400
Received: by mail-pf1-f196.google.com with SMTP id k15so1855052pfh.6
        for <devicetree@vger.kernel.org>; Sun, 29 Mar 2020 01:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=solid-run-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Mm21zqNKH5QxiJQcUlrn7BqWiGlQa1KdybRnnNJOm1U=;
        b=d4O8PS/FC8ChncDuAjXIj/C137W0Vb8+83OzAVsVoNQZlVup9O/8zBRDfpBFScCDuf
         f2+G4Gh2WpQbkgmIl4jYUSQbkY15kSvElrizfP16KI2RXfyLPifIzP7soGxlFyBn/CmF
         /3beC3x5nlyeM6WfaHHDCRkB1mdBsngKPqH9ya16b4RyZyRPfand3BiPeRN4ajjSkWbt
         pEqcjF4traFAIGBhAle3p8LXcFI306vytPurkB91t73vD3cwnTF4vijwgNRKq2rIDFKH
         4AeMJMlv7DuOXNNXBIClzpPI6+6QI2GI6zH31yAiz9IKjp7zmUw/12usEJPso7Fuukq+
         u+bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Mm21zqNKH5QxiJQcUlrn7BqWiGlQa1KdybRnnNJOm1U=;
        b=EsiWw5OW7Nz4otIDd6O0k0lOpCMES4QkylyMXgy8iI0wktIQVipQc+YAJjLMp0AMmv
         AoKIJzQcjiaV9wUIReeIrufOn8GXqphy/Sqq1A4Z1XHTwTWfdyg3eef5xU3psgwA7Zr8
         I6oR4uWG5fMD6Vndk7SsPPeFwiQUb7sHTJZHk5nxdIRVyTWybdZpk+8Kgb3z4KZOOWrI
         E+18GMThBObWrsWdbCAiaCL1kAwEP1MNWMCLE5qR2IY1ye8w8tBu1rVVK3SqClQtYqXU
         helfrDpI2kxP1I/ER60wmwH26RvHC64xPooCk1QVsjGNeHsALws3kr/2FXSVgHLDvJro
         COEw==
X-Gm-Message-State: ANhLgQ3PDkk2c/zDEbDe3ma34gcgcm7nLmEWjtutl5mzsKkvF4PRXoLz
        LyFAAJ4rg72xi+CrotCI34IjhnqU7Xc1iYUski+Q9g==
X-Google-Smtp-Source: ADFU+vse3gxid5D8S54aiYHM0Z+bLIH5hv0RLHRgFuvgHaZ9yYD5mNB7wS/HLa4mj4i7DdnB3XxnGFy/rDQ/QNX3iU0=
X-Received: by 2002:a63:c64d:: with SMTP id x13mr7802548pgg.124.1585471366611;
 Sun, 29 Mar 2020 01:42:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200328212115.12477-1-eichest@gmail.com> <877dz3el4k.fsf@tarshish>
In-Reply-To: <877dz3el4k.fsf@tarshish>
From:   Rabeeh Khoury <rabeeh@solid-run.com>
Date:   Sun, 29 Mar 2020 11:42:35 +0300
Message-ID: <CA+j0otmO9QEKuYGk54wO_su0Kyzdxaf9ZB34SMBXQEih+46qRw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: clearfog-gt-8k: fix ge phy reset pin
To:     Baruch Siach <baruch@tkos.co.il>
Cc:     Stefan Eichenberger <eichest@gmail.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Mar 29, 2020 at 9:22 AM Baruch Siach <baruch@tkos.co.il> wrote:
>
> Hi Stefan,
>
> On Sun, Mar 29 2020, eichest@gmail.com wrote:
> > From: Stefan Eichenberger <eichest@gmail.com>
> >
> > According to the ClearFog-GT-8K-rev-1_1-Simplified-Schematic the reset
> > pin for the gigabit phy is MPP62 and not MPP43.
>
> Have you tested that on real hardware?
>
> The 1Gb PHY reset on my Clearfog GT-8K is connected to MPP43. Russell's
> commit 46f94c7818e7 ("arm64: dts: clearfog-gt-8k: set gigabit PHY reset
> deassert delay") indicates that this is the case on his board as well.
>
> In case there was a hardware change between board revisions, we need
> another dtb for that revision.

It's a bug in the simplified schematics since that schematics is based
on rev 1.0 and not rev 1.1 as claimed.

In rev 1.0; the 1Gbps phy reset was connected to MPP62; but that MPP
is not functional as a GPIO when selecting MPP[56:61] as SD card.
Due to that we manually rewired ALL rev 1.0 PCBs 1Gbps phy to be
connected to MPP43 via R8038 pads.

Rev 1.1 fixes this by that by disconnecting 1Gbps phy reset from MPP62
and wiring it to MPP43.
So basically rev 1.0 and rev 1.1 are compatible software wise. We will
fix the schematics.

Rabeeh
