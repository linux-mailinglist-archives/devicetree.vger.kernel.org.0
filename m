Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1DA9F152EE
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2019 19:41:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726407AbfEFRlq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 May 2019 13:41:46 -0400
Received: from mail-vs1-f66.google.com ([209.85.217.66]:37061 "EHLO
        mail-vs1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726437AbfEFRll (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 May 2019 13:41:41 -0400
Received: by mail-vs1-f66.google.com with SMTP id w13so8662408vsc.4
        for <devicetree@vger.kernel.org>; Mon, 06 May 2019 10:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dH/alIcSKffA1y2RRlZpvtM5MZ4euuymjniYCSBueNk=;
        b=KE53O3Y8F/GfFN+9A4pCqL+PxAzhiCWWW4PA5x7wEj5ThydBOQWLySloLsIj1r94/l
         jge3nd+TBY5mcxaVry8MdgIBTFR2FuPHrxJ2jWnfa90EasrHNeOepJlAzznWKOeQGtwp
         uuOmngpZD6le8N8O0uiBiOjnOAbTxdVZCjHZhGQDixeIoy/oBSc/IZVKAP4q9xRSgg4W
         cUXcmYsQtJJhZJEVvqptHnyfSqCp/zwykrlrE7OYpCm71Ir/uOeR9h2ctg04s8FvQOGj
         /J/1gmdLZMW7oe6cJGAIaivR3YgmhWlYZggjlPgl2s03vtClNZzBgwj3R66mWkF75Zxz
         4Wxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dH/alIcSKffA1y2RRlZpvtM5MZ4euuymjniYCSBueNk=;
        b=hRhbSFvGnDb/DlMb3uD1Z1jzFU2sOZ8b4C19TxP0/aBHMv90YFk6wzkPFR189jg2Dr
         uPsiSU876aSPGP98U9xwm7dPJ0fVlYomPqEuKfjiDDHa4q4oDQJqcABAj2+NWw62isIc
         PiD/LZY1DTZGVJMMU3Aq+TMEFJSMJgfxyPeBRYmxB9quZ+ty5Piw+uJ7x84hhg946xAx
         2REtKFzK5i1ZzYsM5gtS9Rh2AA0eb/ICwsH/CA+xsXJNycy7AOpPF/70YF5ViTv6E89l
         SCVuPViNzEnh+2Peia830tF2+rAXSrx1f+dR2FRomqoZl1k/Dak4UxVqNIo80zmpNnkq
         PUCw==
X-Gm-Message-State: APjAAAXIUvOzFmaIv2gVI9TWsTOxbKBddBtVyMtwwabkHjZbHA1Dwfpv
        GJad+kWfHpFqkZXS10zHjEFlvQPg2sJFKxtS6Ip1mg==
X-Google-Smtp-Source: APXvYqxyqvGFoX7WBWffNIKwJK+F9jk9BgOypI6lRO8xNum7HGbXRziLtoNK+1GxA8rZtYpvDoC6d7TT7WItEsI3tAo=
X-Received: by 2002:a67:e9d0:: with SMTP id q16mr14654015vso.178.1557164500244;
 Mon, 06 May 2019 10:41:40 -0700 (PDT)
MIME-Version: 1.0
References: <1557147240-29551-1-git-send-email-sagar.kadam@sifive.com>
 <1557147240-29551-2-git-send-email-sagar.kadam@sifive.com> <20190506131919.GC15291@lunn.ch>
In-Reply-To: <20190506131919.GC15291@lunn.ch>
From:   Sagar Kadam <sagar.kadam@sifive.com>
Date:   Mon, 6 May 2019 23:11:25 +0530
Message-ID: <CAARK3H=fY=Y9GDR-t6RLBV4wOEduPD++F5NKAayNGeuHudrtew@mail.gmail.com>
Subject: Re: [PATCH v1 v1 1/3] dt-bindings: i2c: add documentation for adding
 SiFive I2C driver
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        Palmer Dabbelt <palmer@sifive.com>,
        Paul Walmsley <paul.walmsley@sifive.com>, peter@korsgaard.com,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 6, 2019 at 6:49 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Mon, May 06, 2019 at 06:23:58PM +0530, Sagar Shrikant Kadam wrote:
> > Add DT binding for OpenCore's based i2c device as found in
> > FU540 Chipset on HiFive Unleashed Platform (Rev A00).
> >
> > The doc explains, how to add DT support for I2C devices.
> >
> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> > ---
> >  .../devicetree/bindings/i2c/i2c-sifive.txt         | 29 ++++++++++++++++++++++
> >  1 file changed, 29 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/i2c/i2c-sifive.txt
>
> Hi Sagar
>
> Please extend the existing i2c-ocores.txt file, not add a new file.

Hi Andrew,
Thanks for your review.
Yes I will extend the i2c-ocores.txt to support sifive devices, and
will submit a v2 of this patch.

>
>        Andrew
