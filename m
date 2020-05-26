Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0504D1AB084
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2020 20:21:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2441446AbgDOSUr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Apr 2020 14:20:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S2441443AbgDOSUp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Apr 2020 14:20:45 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB2B0C061A10
        for <devicetree@vger.kernel.org>; Wed, 15 Apr 2020 11:20:44 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id e5so6237218edq.5
        for <devicetree@vger.kernel.org>; Wed, 15 Apr 2020 11:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hzKLrtw3cGV30H1X7oBdSRnu5P+yDafinMyFKy/vLiU=;
        b=iMAH80q8LFDslzRP1FrEEConq0mRxWUBDanMGg5CRSTSkHAwrINZZmrljdulQ/9jSg
         GjcvOltMaf9lKat72PGCQ9jSXIfux8cwrwaCTOoHHtlplWMOzqGneJfM3IoaPea90nDx
         9dv2gU1fm3aH/Iy0iiMO5J8AombSD8WuJeuAY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hzKLrtw3cGV30H1X7oBdSRnu5P+yDafinMyFKy/vLiU=;
        b=h6P92RxSKLxPtCD5S3hvL8UD/S6VlIq4vjdGvPcmIE0e0Wq/nLE/RpZ/BQlTqi04J/
         rUGpfunAh5LWr7Vn9ZQhECzHONj1ls2NCNXA7A6ku1qVckY498ER3USOuwF/8raWebzv
         tDGygYmdST2Lc8WpU9rFiFc6ufY5mo3hmDAypIdLC3sGdZJ774cgSHJDAybgHukcYHm1
         FF3+4E2Q+7e2EAt4Lhtq5LOCrGf+P29AZmTljwAkOLX2ViGVWGTnq24mb1m+1TDOEKSa
         Tf7LgqqkDArkWlLU1ve7ErvXqb7upi4Y6VsMyClT5vy4TE1b832BVvpzoYtjg7wJRGeY
         fT4Q==
X-Gm-Message-State: AGi0PuYLr6HmgJrc+kcTvo7Z/Uo/6Hsrg1fnJcjInNY4W61iV0Q5qkLY
        Y0oDNq5HwHFWI7IE4tx9MNMwyrssMTs=
X-Google-Smtp-Source: APiQypL4eQqMa+hktFEK/aDalZocjeb4t0uq3kTxhHg4mhPCcmObiPzJSCDRWAVx0t6SLDNtVNR0Hg==
X-Received: by 2002:a50:da49:: with SMTP id a9mr25452986edk.388.1586974843117;
        Wed, 15 Apr 2020 11:20:43 -0700 (PDT)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id d6sm2241844edt.63.2020.04.15.11.20.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Apr 2020 11:20:41 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id u13so1119423wrp.3
        for <devicetree@vger.kernel.org>; Wed, 15 Apr 2020 11:20:41 -0700 (PDT)
X-Received: by 2002:adf:fc4f:: with SMTP id e15mr30675925wrs.415.1586974840398;
 Wed, 15 Apr 2020 11:20:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200306034946.11223-1-bibby.hsieh@mediatek.com>
 <20200306034946.11223-2-bibby.hsieh@mediatek.com> <20200322130710.GA1091@ninjato>
 <CAAFQd5ANJcReHD_n0LorS+bjE8Cn_W-kY5LNgGG+L+jMmywYfA@mail.gmail.com>
 <20200324103448.GE1134@ninjato> <1586940598.5007.0.camel@mtksdaap41>
In-Reply-To: <1586940598.5007.0.camel@mtksdaap41>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Wed, 15 Apr 2020 20:20:28 +0200
X-Gmail-Original-Message-ID: <CAAFQd5Cs_q5nD4tYqe_qHu7_yUNv-eATDYOmi_So6fA=irSVJg@mail.gmail.com>
Message-ID: <CAAFQd5Cs_q5nD4tYqe_qHu7_yUNv-eATDYOmi_So6fA=irSVJg@mail.gmail.com>
Subject: Re: [PATCH v12 1/2] dt-binding: i2c: add bus-supply property
To:     Bibby Hsieh <bibby.hsieh@mediatek.com>
Cc:     Wolfram Sang <wsa@the-dreams.de>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        linux-i2c <linux-i2c@vger.kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-devicetree <devicetree@vger.kernel.org>,
        "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 15, 2020 at 10:50 AM Bibby Hsieh <bibby.hsieh@mediatek.com> wrote:
>
> On Tue, 2020-03-24 at 11:34 +0100, Wolfram Sang wrote:
> > > > > +- bus-supply
> > > > > +     phandle to the regulator that provides power to i2c.
> > > >
> > > > I think this is not clear enough. I assume it means the regulator for
> > > > driving SCL/SDA? In the coverletter you mention also an EEPROM. In your
> > > > case, this is driven by the same regulator? I am skeptical we can
> > > > abstract it like this because I2C devices could be driven by various
> > > > regulators in the system, so there couldn't be one "bus regulator". The
> > > > regulator for the EEPROM should be described in the EEPROM node. So,
> > > > this "bus supply" is only for driving SCL/SDA?
> > >
> > > In our case the bus-supply regulator drives the voltage rail to which
> > > SCL/SDA are pulled up and there is an EEPROM on the bus, powered by
> > > yet another rail. There is also another slave on the bus which uses
> > > the same regulator as the bus-supply for its own power.
> > >
> > > In other words, bus-supply only ensures that SCL and SDA are in a
> > > usable state. Other consumers need to refer to the regulator in their
> > > own supplies if they need it for their own power.
> > >
> > > Does this answer your questions?
> >
> > Yes, this was exactly what I was assuming.
> >
> > So, I think the above documentation should be changed: s|i2c|SCL/SDA|
> >
> > D'accord?
> >
> Yes, I think SCL/SDA is better than i2c
>
> Tomasz, How about it?

Sounds good to me.

Best regards,
Tomasz
