Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C2B6210ECDC
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2019 17:12:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727484AbfLBQMR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Dec 2019 11:12:17 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:43798 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727471AbfLBQMR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Dec 2019 11:12:17 -0500
Received: by mail-wr1-f67.google.com with SMTP id n1so45041802wra.10
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2019 08:12:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7Xv8o+WsUdwWC7CiaXpsHd5QUxK044+HKFw9W9npptk=;
        b=ig1O7d6GsDt4NBwP75X4Y5ujFXKgklak77SWNGcBuqnwXLGpk+P5XN90JKiEaf2DlT
         WrVdXQtvxPygQzaAZx5Wyn09al6SJ3AefSjaSRjKH65+vqyjjGV3AAI7blYUMk6bxxNU
         imZoAbvk8e7WIQaP2QJWb/dcdykPO0gubpktQ7rXHibDskvWbSc6e4RfKGeymd1SEHkQ
         rN4NCNH9RCYgSR8vJIq6oJKWcWEeRYOub/IGzL0nHFyW8U+kqcHiSk1Jtzj7DgCmQ2b1
         6mAr45FJYKlH47wLqjdCfiLeG38To+D9j+tZ1HBGdU1DBkzyDaikMHe5JMWjDCUZBREU
         +AIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7Xv8o+WsUdwWC7CiaXpsHd5QUxK044+HKFw9W9npptk=;
        b=OhymhxdQoSTOwP9IJAjh/ihIavVzESWk8yC/LwEcmSOUgpjh5nG7uph2O+mP7St2xz
         GD9gUjzhjUPXPfIfJz40sWCmalpmhTw5eX9kXPHGZrmKKqbzGsjxWbpfgoRe5pT3j2sl
         bYWYe4NeZaZBnNK5jDUmT5BPlH6lnam9jXtN5sZS7Ibqw7hGxdACMlLCLbX2pnJmJCx1
         8NnAaEVqKFuYVshOpAMuAby6gi3+xvMWubAZfGsnp92LDj9KrraqMn8141gmElX00TqM
         2DLul2GFMw0mVkYf8e0Jl9HXKT66URkmfDdz1mBKQakLU94jTkaaE8Hi8nZ7ebzMbEza
         GY0A==
X-Gm-Message-State: APjAAAVYayMmX4e9WTz9cRq3F+6RPbT+KvIFS8Cb95qWS/NxrlOdErE4
        AnANIS8FNGMZ/FisJ93OII5493eJ9pe+0gY+g1V4tg==
X-Google-Smtp-Source: APXvYqxqte31rdFQPjtRI2d0z8l6rqekmUjNbkTYkhGQNfoYXbCoNDt/WGK3fQmslUDfdpQIN0cF13ot7mHRN/DXrE0=
X-Received: by 2002:a5d:5345:: with SMTP id t5mr34600649wrv.0.1575303135165;
 Mon, 02 Dec 2019 08:12:15 -0800 (PST)
MIME-Version: 1.0
References: <1574864578-467-1-git-send-email-neal.liu@mediatek.com>
 <1574864578-467-4-git-send-email-neal.liu@mediatek.com> <CADnJP=uhD=J2NrpSwiX8oCTd-u_q05=HhsAV-ErCsXNDwVS0rA@mail.gmail.com>
 <1575027046.24848.4.camel@mtkswgap22>
In-Reply-To: <1575027046.24848.4.camel@mtkswgap22>
From:   Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date:   Mon, 2 Dec 2019 16:12:09 +0000
Message-ID: <CAKv+Gu_um7eRYXbieW7ogDX5mmZaxP7JQBJM9CajK+6CsO5RgQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] hwrng: add mtk-sec-rng driver
To:     Neal Liu <neal.liu@mediatek.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>
Cc:     Lars Persson <lists@bofh.nu>, Mark Rutland <mark.rutland@arm.com>,
        DTML <devicetree@vger.kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        wsd_upstream <wsd_upstream@mediatek.com>,
        Sean Wang <sean.wang@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?B?Q3J5c3RhbCBHdW8gKOmDreaZtik=?= <Crystal.Guo@mediatek.com>,
        "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
        Matt Mackall <mpm@selenic.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        "linux-mediatek@lists.infradead.org" 
        <linux-mediatek@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

(adding some more arm64 folks)

On Fri, 29 Nov 2019 at 11:30, Neal Liu <neal.liu@mediatek.com> wrote:
>
> On Fri, 2019-11-29 at 18:02 +0800, Lars Persson wrote:
> > Hi Neal,
> >
> > On Wed, Nov 27, 2019 at 3:23 PM Neal Liu <neal.liu@mediatek.com> wrote:
> > >
> > > For MediaTek SoCs on ARMv8 with TrustZone enabled, peripherals like
> > > entropy sources is not accessible from normal world (linux) and
> > > rather accessible from secure world (ATF/TEE) only. This driver aims
> > > to provide a generic interface to ATF rng service.
> > >
> >
> > I am working on several SoCs that also will need this kind of driver
> > to get entropy from Arm trusted firmware.
> > If you intend to make this a generic interface, please clean up the
> > references to MediaTek and give it a more generic name. For example
> > "Arm Trusted Firmware random number driver".
> >
> > It will also be helpful if the SMC call number is configurable.
> >
> > - Lars
>
> Yes, I'm trying to make this to a generic interface. I'll try to make
> HW/platform related dependency to be configurable and let it more
> generic.
> Thanks for your suggestion.
>

I don't think it makes sense for each arm64 platform to expose an
entropy source via SMC calls in a slightly different way, and model it
as a h/w driver. Instead, we should try to standardize this, and
perhaps expose it via the architectural helpers that already exist
(get_random_seed_long() and friends), so they get plugged into the
kernel random pool driver directly.

Note that in addition to drivers based on vendor SMC calls, we already
have a RNG h/w driver based on OP-TEE as well, where the driver
attaches to a standardized trusted OS interface identified by a UUID,
and which also gets invoked via SMC calls into secure firmware.
