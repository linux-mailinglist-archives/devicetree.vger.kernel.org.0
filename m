Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 941A5426E5E
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 18:06:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229814AbhJHQID (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Oct 2021 12:08:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229606AbhJHQIB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Oct 2021 12:08:01 -0400
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EFD4C061755
        for <devicetree@vger.kernel.org>; Fri,  8 Oct 2021 09:06:06 -0700 (PDT)
Received: by mail-io1-xd2f.google.com with SMTP id r134so121520iod.11
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 09:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5P+eTwdfekkeReRVz2WZGhFiOpyoDubpLpaAhZ1wNFc=;
        b=Ld4ZeEB8gVpPyAstB5fAg87eWun+AgTxIDH4savKgqCkTpN/Ll5hC1AAtzLorvz+xM
         JzROyW1jr221i/oFbINO9fYZA4cJTFkr9Hj1/AjiKACTE5a1l6mHtTj+2R8KG5c8LRTI
         mfnVcXpyAYwly4q3B7qK0vlvcIFToDqH7b08CvF9/ACKGeXv+SNfqXTzgxWav8f0w36I
         Glx+IcAKK0A09M9g6f0fuVMsFP/oa+GjG0/G+y/riA/Iq06kxrhDPh5zIokuyXqc7/AA
         dxFOXjwhdefQqe6gUNgJCE3WrCykChlUyHKEINb3Brafj1Oi/fQedSB5mXJQvcngUreV
         uC5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5P+eTwdfekkeReRVz2WZGhFiOpyoDubpLpaAhZ1wNFc=;
        b=sB5YndDduMMunJvRjA4QgWJ5Lsayw/7RGDtp33v+KD1wOoLv9FQmspVLG4oelHum3r
         DEDhZpWdwPLspmBHLtfrGKEQFXSpqjHN3aE37vb3yaGkgOEd/XwgDG3nPKmE09XJ7d0o
         2zy3g2KORyQ3geM0MxCYzvh1un2FZ+ez/Z8veN0A3nk2QaCoQbPMXnFvkOjiAAMfSc/D
         C3LV9jHgxRn1jNzMeNgkxUU2ujg3IdjQ0YeYqfHEpEG54KF2JKVOFH+5G23lYjKCSx06
         aH3p1fFuYrmDiqQGPykXCwcsnFHEPVUe/ryBj6GpJXyv/cB+C7/u5fBRDF4GSqPEhZmB
         M+XQ==
X-Gm-Message-State: AOAM532xrSuH05xzk+LrWwdzbTinI5vk8GCopZXguLsYNRKCtNIS3gM6
        45KPGPQxwdB2pzDEBltkrN/HANpRbO55LyjW16wCLg==
X-Google-Smtp-Source: ABdhPJzg66NLOSTrK9+C20AgUwE+bQJwbbgJ4wysctn88/0k7VsJeigJC8QgZnAFTYYSqkrYNsghsJQIB3j9axFmIPQ=
X-Received: by 2002:a05:6602:2e01:: with SMTP id o1mr6066414iow.31.1633709165895;
 Fri, 08 Oct 2021 09:06:05 -0700 (PDT)
MIME-Version: 1.0
References: <20211008114343.57920-1-robert.marko@sartura.hr>
 <20211008120855.46zbo2fl5edwf7ja@pali> <CA+HBbNGvFtws2GF7RLbznAbXfvjKx4rOJ=eMeuHOJ6s7iANtzw@mail.gmail.com>
 <20211008134347.lskm5pzt73pkf7oc@pali> <CA+HBbNEDxBDvNZPSWnBYJOUhqdwonBhFwD9P0xhSGccdvQJx3Q@mail.gmail.com>
 <20211008180427.68be1d3f@thinkpad>
In-Reply-To: <20211008180427.68be1d3f@thinkpad>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Fri, 8 Oct 2021 18:05:55 +0200
Message-ID: <CA+HBbNEwrjMzawrA3xscAs0ogZm_nXTQ-46J-Yt7zHcgFbu_6g@mail.gmail.com>
Subject: Re: [PATCH v5] arm64: dts: marvell: add Globalscale MOCHAbin
To:     =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>
Cc:     =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
        gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 8, 2021 at 6:04 PM Marek Beh=C3=BAn <kabel@kernel.org> wrote:
>
> On Fri, 8 Oct 2021 17:52:40 +0200
> Robert Marko <robert.marko@sartura.hr> wrote:
>
> > I have to agree, so I did some digging.
> > I don't think that the Armada 8k PCI driver actually supports HW level =
PERST#.
> > I then looked at the functional specs and the only thing that looks
> > related to PERST#
> > is PCIe Software Reset Register which has a SoftWarePERst bit.
> >
> > Can you maybe look at it?
> >
> > Removed the reset-gpios and set the PERST pinmux to PCIe, and the
> > QCA9377 card will
> > show up, but I have no idea whether PERST# actually ever gets toggled.
>
> You can check with voltmeter, toggle the bit via mw command in u-boot.

Yeah, I was planning to do that but I cant actually read the register
as using md
or devmem causes it to lock up and then panic and reset.

Regards,
Robert
--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
