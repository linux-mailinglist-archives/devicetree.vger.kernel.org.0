Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB8F0284AE5
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 13:28:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726002AbgJFL2u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 07:28:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725946AbgJFL2u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 07:28:50 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D991BC061755
        for <devicetree@vger.kernel.org>; Tue,  6 Oct 2020 04:28:49 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id u21so17102514eja.2
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 04:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=2vvG/38iYkkylR6w34R2r+nRTlYCoIkRe19OvI4lRc4=;
        b=hrxbO60V/hPLxrYeUYlJ3J5Az9QciMZAF76VueconZzmsK8KwfHn63EpQsgSuWQNBD
         HEeRandDuYIEDntAyi2W3TEUe1onKU40ANy2Nvd6M5eByGJD+Hlt+X5/wDoN2EvzYmnl
         ULtO83D48xTU0zhF8cUyznBG8x4zAzH8Jrl/CagEc1SAcvvSGMcDSc3flRy9ogN+EZh3
         spXPPegV2jYKDBvrnes95T8amnfqDLtfR7yAjoiA8xuusFL42YsyRXXvBn8u6vs0L2zd
         1BCU5gK8v8S2Oih4g/gvgb7VvvPcyCpv4crgfH/0Qp/USXcp6Ru0mgqX9qx7Q+WIF/dZ
         Jlkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=2vvG/38iYkkylR6w34R2r+nRTlYCoIkRe19OvI4lRc4=;
        b=MUFwCAB+Aq4dJNk0ew8gcnEwTcw1nJ7BG4SnO58u0mE1NI+wjqFUipHQec4PAt/Izq
         bwO4XM2gnGKJ1XPUp5gVRwB5etlzfHoF5bCDlBvQPXTCCRK9yiCSnzXTgp0rSSIauGnW
         3fsk/l5So/Ayhvtq3111rBijgRN5z7xV3I4G8TwKgzKPkxt+WcEARtk8v/CbAwvVHT8F
         N2F2X4OL73ZOOZSBF4icrPBBQzpDprPK2fV2nc7t4AUm1CHZkOlg3XUz38z2t5ilJlb7
         k4NH8oVe3ai4fRXZKO1evDeDQRKI2VZi4iFn1JoPJebiCzBX50cvlcoi48W1n+MWensK
         Hizg==
X-Gm-Message-State: AOAM530nURal2+Yr+t/Tz0i/E3xJZKiQKbOePTby1TF2hYKKkhOpnw/b
        6bgNbv5yn2o4BnVjmICwMP9rnTnCDCQoKxkuMwY/jw==
X-Google-Smtp-Source: ABdhPJy2UFpnkhb+kG7sAOgYlKcybXQMCAgxn5Tz4eI4BMBsyBiQeVnV8ev5MXadG7ItYBQUiw04I3DQJcbtEiS5LTM=
X-Received: by 2002:a17:906:dc5:: with SMTP id p5mr4946452eji.116.1601983727497;
 Tue, 06 Oct 2020 04:28:47 -0700 (PDT)
MIME-Version: 1.0
References: <20201005071403.17450-1-ricardo.canuelo@collabora.com>
 <20201005071403.17450-4-ricardo.canuelo@collabora.com> <CAL_JsqJ5E6LSis1LzgEGPN6aEktkFamRn19v0s-x_OZ+8yMTiA@mail.gmail.com>
 <20201006061317.rs63e3dh4grxij2v@rcn-XPS-13-9360>
In-Reply-To: <20201006061317.rs63e3dh4grxij2v@rcn-XPS-13-9360>
From:   Guenter Roeck <groeck@google.com>
Date:   Tue, 6 Oct 2020 04:28:36 -0700
Message-ID: <CABXOdTcN5e-KFvAZ4ZwVF8tvFv1quB7JNZ-JOnzEBXdr1UmOnQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: mfd: google,cros-ec: add missing properties
To:     =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
Cc:     Rob Herring <robh@kernel.org>,
        Collabora Kernel ML <kernel@collabora.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Simon Glass <sjg@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 5, 2020 at 11:13 PM Ricardo Ca=C3=B1uelo
<ricardo.canuelo@collabora.com> wrote:
>
> Hi Rob,
>
> thanks for reviewing the patch. Find my comments below:
>
> On lun 05-10-2020 10:37:09, Rob Herring wrote:
> > > +  '#address-cells':
> > > +    enum: [1, 2]
> > > +
> > > +  '#size-cells':
> > > +    enum: [0, 1]
> >
> > This doesn't really make sense. Either there's a size or there isn't.
> >
> > [...]
> >
> > > +  "^regulator@[a-f0-9]+$":
> > > +  "^ec-codec@[a-f0-9]+$":
> >
> > What does the number space represent and is it the same for each of
> > these? If not, then this is kind of broken. There's only 1 number
> > space at a given level.
>
> I see what you mean. In the regulator, the unit-address means the identif=
ier
> for the voltage regulator and I guess it could also be defined as
> simply "^regulator@[0-9]+$". In the codec, though, it's a physical base
> address.
>
> The reg property in these has a different format, that's why I
> defined #address-cells and #size-cells above to have a range of values
> instead of fixed values.
>
> From your experience, what's the best course of action here? I can't
> find a driver managing google,cros-ec-codec yet, although the binding
> was submitted in January.
>

It seems like I am missing something. In the mainline kernel:

sound/soc/codecs/cros_ec_codec.c:       { .compatible =3D
"google,cros-ec-codec" },

Can you explain what you mean with "can't find a driver managing
google,cros-ec-codec yet" ?

Thanks,
Guenter
