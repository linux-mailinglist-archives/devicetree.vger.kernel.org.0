Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C09C413C4C
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 23:21:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229619AbhIUVXJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 17:23:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbhIUVXI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 17:23:08 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95A21C061574
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 14:21:39 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id u8so2831266lff.9
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 14:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=F5/6yk3bA4ZtAQhszFbIeecMs6OvspCWgR3vbaET4+Q=;
        b=lLoRTNIwSbGGWZt6mWms0SyQCt8fR4wHbUp6H3PiG3lZ9P72e44etlAeaSl660sg7/
         LyWLs8/IhHfl2n4Djw6Ok/bomHtm+QRTRQBFyRBVTenWAshQ6T+vVU48J5Y6hIGjFUif
         NKCo8MiEN096dTUxmX0eAl+m98lKioMWCrJeLgPfBmYWv0pR0VxnftJ1lWQ9JYjPYfev
         nCZILIT9zi6lmtTtFTr45ujb+Guup0gN1iLijAVJjsOA7oi6MLc2ihZp6yYl+qPuKI9Q
         XsDpImY4J2JbfOwDu3vC1OBUDn4898VGnRiz9+P6lhaF32VutgGY7lmOSyGf431uZaLk
         auaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=F5/6yk3bA4ZtAQhszFbIeecMs6OvspCWgR3vbaET4+Q=;
        b=oS11bQNGH6MgFaAKQRfwLlZjcFghZmm0RiSxEtDa0B8TE/BpRZZQcBGfCnRzvHR107
         wO7godypgWwx3XUj3ir0ohjvQ0AuD/zvPP9j342JAfLOzOzibrbi0chQGXxMLe/aL7oh
         g1aKIrLNnn+tsXf5SUzQ34NUBqXXgw/iiTS/lrhDTkILyMM+/eoUn3zknbBZ3Od24rbP
         ldCCDYgM3k6SIG7Qxx4uCVeUEhfA9WjruZhd33QGyRE+jBpkbAMBdpiDPpPin2Y0VqL0
         mkfs693PBstdiaTQp0B8Jl5kA/x8wTYzrfyPR1QMyNra/7d22UPTLwAKA+srrOfSWJUQ
         OfyQ==
X-Gm-Message-State: AOAM532sgSvW24QHhr/MtEPwyDI9NmiBrgZXRirlNWX510l7465jd/Jo
        rk45UwXEOpWIKbjr4fYB1ICSvnS5WlAGBlmXWUDBkg==
X-Google-Smtp-Source: ABdhPJyMdUbIh89MeY7Ny6Ll/yrl+HU+tUEAYTd6yW2P9M1xmauRxkyeoBdFZ1hL199mCvYLNrLhrYM4Q0/i+qUxKiQ=
X-Received: by 2002:a05:651c:1408:: with SMTP id u8mr6243341lje.253.1632259297056;
 Tue, 21 Sep 2021 14:21:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6504:507a:0:0:0:0 with HTTP; Tue, 21 Sep 2021 14:21:36
 -0700 (PDT)
In-Reply-To: <20210921205247.GA2363535@roeck-us.net>
References: <cover.1631021349.git.krzysztof.adamski@nokia.com>
 <12984255aac11a3edfc0e6278e1a1cac70ce97ec.1631021349.git.krzysztof.adamski@nokia.com>
 <YUkKCe7845uCqoy5@robh.at.kernel.org> <20210921125831.GB1864238@roeck-us.net>
 <CAL_JsqLo=inkKVKSU8N=_h90RfpDk6NNWPKdKyTXh-VvqXDCag@mail.gmail.com> <20210921205247.GA2363535@roeck-us.net>
From:   Oskar Senft <osk@google.com>
Date:   Tue, 21 Sep 2021 17:21:36 -0400
Message-ID: <CABoTLcSt9TnmyC4uQOQU4Y563pF-Nhbt2NfZvK+c0FKwAJEMeQ@mail.gmail.com>
Subject: Re: [PATCH 8/8] dt-bindings: hwmon: allow specifying channels for tmp421
To:     Guenter Roeck <linux@roeck-us.net>, rob@kernel.org
Cc:     Krzysztof Adamski <krzysztof.adamski@nokia.com>,
        Jean Delvare <jdelvare@suse.com>,
        Linux HWMON List <linux-hwmon@vger.kernel.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi

> > > +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 temperature-sensors {
> > > +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ltd {
> > > +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 statu=
s =3D "disabled";
> > > +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 };
> > > +
> > > +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rtd1 {
> > > +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 statu=
s =3D "okay";
> > > +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 type =
=3D <4> /* thermistor */;
> >
> > 'type' is a bit generic. We don't want the same property name to
> > possibly have multiple definitions.
> >
> How about sensor-type ?

In the datasheet this is called "mode". I called it "type" since it's
tempX_type in sysfs and I wanted to stay in sync with that.

> > If it is how you address an instance of something which seems to be
> > the case here, then 'reg' should be used.
> >

The reason I didn't do that is because you'd effectively have to
duplicate the ID in both the name (e.g. sensor@1) and the reg property
(e.g. reg =3D <1>). But maybe that's just what is is in device tree, I
can live with that.

However, we'd also have to find out whether the "local" sensor ("LTD")
would simply be #4, as it is in sysfs today. I'd also be ok with that
as it would keep sysfs and device tree "in sync" wrt. naming.

Thanks
Oskar.
