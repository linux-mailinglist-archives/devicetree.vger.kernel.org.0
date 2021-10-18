Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDA52431993
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 14:44:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230346AbhJRMqz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 08:46:55 -0400
Received: from mail.kernel.org ([198.145.29.99]:48230 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229519AbhJRMqx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 18 Oct 2021 08:46:53 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9E88860EE9
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 12:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1634561082;
        bh=ZL9e3eGrmC0Ie88Mdfl7fImyjuCu2CkK+jQySL6d3Vo=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=UfNLuZGHoXSBKfeIQJrv1U3iakWr0N16/OcCf83BDNHwvpCzqF2D/pdwc0iXf0j8y
         4VQDo2XKkRY0FbJYtgoTVUbqiCgiY8n24gyZgsAGn8BB76MMZe3nlGJ11vHRP00yQ2
         aZGYf6zzr28YVxsAzGcKUOogicZDWrIv5a0hLRYZajrQNXTfJdajWoz662nkZP+DhP
         K9kNmTLSjqz0UrrkkQF4ATlpRC7xn1LwpP2dum6UwZ8ftom4x8jR0K/0DwgBFt4/MZ
         X+0jhHJ1yPJxRAbwcZE1Cx9QcQISGW+EYUMNNlFt9bASgFtynNrD0oi9PmF3G6U2qK
         G1s+wGFJLSa2Q==
Received: by mail-ed1-f52.google.com with SMTP id 5so40044534edw.7
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 05:44:42 -0700 (PDT)
X-Gm-Message-State: AOAM5334OAbFeY0hYP02HBxk9jwhkJtzMPvS1HclmtFN/8FmRllW/BMr
        85FOjgVkm9Wtd3irksfslwf7m8Let/zzEZSYnA==
X-Google-Smtp-Source: ABdhPJyZG95UI3isnS3/MWtVxqmFLZ5yj0gIsUDVGC6LMmsTKPxQeoYUPwe1Dk/0jlKQ0KM0J8+qp2GHh49zFtVlM7w=
X-Received: by 2002:aa7:c357:: with SMTP id j23mr46215878edr.145.1634561079137;
 Mon, 18 Oct 2021 05:44:39 -0700 (PDT)
MIME-Version: 1.0
References: <1634475996-6809-1-git-send-email-stefan.wahren@i2se.com>
 <1634475996-6809-3-git-send-email-stefan.wahren@i2se.com> <1634484570.846584.60704.nullmailer@robh.at.kernel.org>
 <c88489a9-53f3-cae2-48bc-5afcf4ca5256@i2se.com>
In-Reply-To: <c88489a9-53f3-cae2-48bc-5afcf4ca5256@i2se.com>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 18 Oct 2021 07:44:26 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK6v85jWT+BmU1O1AEsYde+e7LtKCDKBtN1nV+O3KTARQ@mail.gmail.com>
Message-ID: <CAL_JsqK6v85jWT+BmU1O1AEsYde+e7LtKCDKBtN1nV+O3KTARQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: soc: bcm: Convert brcm, bcm2835-vchiq to json-schema
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Ojaswin Mujoo <ojaswin98@gmail.com>,
        Mwesigwa Guma <mguma@redhat.com>,
        linux-staging@lists.linux.dev,
        Scott Branden <sbranden@broadcom.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Ray Jui <rjui@broadcom.com>, devicetree@vger.kernel.org,
        "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE" 
        <bcm-kernel-feedback-list@broadcom.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Oct 17, 2021 at 11:31 AM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> Hi Rob,
>
> Am 17.10.21 um 17:29 schrieb Rob Herring:
> > On Sun, 17 Oct 2021 15:06:36 +0200, Stefan Wahren wrote:
> >> This converts the VCHIQ bindings to YAML format.
> >>
> >> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> >> ---
> >>  .../bindings/soc/bcm/brcm,bcm2835-vchiq.txt        | 17 --------
> >>  .../bindings/soc/bcm/brcm,bcm2835-vchiq.yaml       | 47 ++++++++++++++++++++++
> >>  2 files changed, 47 insertions(+), 17 deletions(-)
> >>  delete mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.txt
> >>  create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml
> >>
> > Running 'make dtbs_check' with the schema in this patch gives the
> > following warnings. Consider if they are expected or the schema is
> > incorrect. These may not be new warnings.
> >
> > Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> > This will change in the future.
> >
> > Full log is available here: https://patchwork.ozlabs.org/patch/1542230
> >
> >
> > mailbox@7e00b840: compatible: Additional items are not allowed ('brcm,bcm2835-vchiq' was unexpected)
> >       arch/arm64/boot/dts/broadcom/bcm2837-rpi-3-a-plus.dt.yaml
> >       arch/arm64/boot/dts/broadcom/bcm2837-rpi-3-b.dt.yaml
> >       arch/arm64/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dt.yaml
> >       arch/arm64/boot/dts/broadcom/bcm2837-rpi-cm3-io3.dt.yaml
> >       arch/arm/boot/dts/bcm2836-rpi-2-b.dt.yaml
> >       arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dt.yaml
> >       arch/arm/boot/dts/bcm2837-rpi-3-b.dt.yaml
> >       arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dt.yaml
> >       arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dt.yaml
> >
> > mailbox@7e00b840: compatible: ['brcm,bcm2836-vchiq', 'brcm,bcm2835-vchiq'] is too long
> >       arch/arm64/boot/dts/broadcom/bcm2837-rpi-3-a-plus.dt.yaml
> >       arch/arm64/boot/dts/broadcom/bcm2837-rpi-3-b.dt.yaml
> >       arch/arm64/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dt.yaml
> >       arch/arm64/boot/dts/broadcom/bcm2837-rpi-cm3-io3.dt.yaml
> >       arch/arm/boot/dts/bcm2836-rpi-2-b.dt.yaml
> >       arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dt.yaml
> >       arch/arm/boot/dts/bcm2837-rpi-3-b.dt.yaml
> >       arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dt.yaml
> >       arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dt.yaml
>
> i'm confused patch 1/2 ( "ARM: dts: bcm283x: Drop fallback compatible
> for vchiq" ) of this series should prevent this warning. Was it applied
> before running dtbs_check?

No, so you can ignore this.

Rob
