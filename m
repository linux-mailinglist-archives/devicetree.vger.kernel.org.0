Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE23275A056
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 23:07:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229610AbjGSVHJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 17:07:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230040AbjGSVHI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 17:07:08 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D46271BF0
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 14:07:06 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-51e344efd75so324270a12.1
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 14:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1689800825; x=1690405625;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p4lIPokQD32BbQK6d52kAu5Hx9pb2/M2wO5gb/BDmpU=;
        b=ZG73tmiN1U9X2jOwkuytimETB07VjCzciXEmYs64O6Pb5MnRc3+AVRpCWatZm3eo/F
         16GvLytGrmRyXTvkjsPS4EIq0n91W9iSSyRpK0SH3uGdn3TlJJ4jJIRwtkg8GZBW56x2
         wWZcCikyuub5Kweq+eYYDyanyJ8I5wbK5l2XQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689800825; x=1690405625;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p4lIPokQD32BbQK6d52kAu5Hx9pb2/M2wO5gb/BDmpU=;
        b=l7luY/sg8ty2WbhUsMGl8kNjWfqBVtWGUP8urnS4gFayQk+VRAYN1AzIxrQClYVFQA
         X+TeJYMsw0J33wSdmjNXHQYQLn7INelwXZ0Qh8Je+Nat9vAqUbCQgDmr+uhZIl0kR2D0
         VkCTKfSklv2lJgFGk3kyLUGdWKN9g0lYWkHwWMb59Y0ltjPjV0Y7wh9VWV9OR8PFlhy9
         /yV5zecKP3arhtcqHo8YzvhsjS5n5FGJT8JGJdL1fXIlY/CB2ucyynBFK8XPT0AySCn1
         zQhpoGc5QZknyMk59p3ZBnBMYZsR9QkLW/6fFcs2HTr2VwIFywbmgclX29Opu09gEWVK
         bn2A==
X-Gm-Message-State: ABy/qLY0bOIqEgn2w2svhJJTEgKafFI/y/CsDxOTdUQ+pbJvmKCtdWuU
        L1E+mydU/WmEuqhSycZsmY2ZvbdblhJhFXyIYEWCpqVcy9q87izraok=
X-Google-Smtp-Source: APBJJlHKEErLsrWrUSQyDHtwEW4/+IKd//PzlxeolD2CRDKfRms2Ll3p16jDhsbfBHYcIsxgkSDrZQD9IGh8X8MhkuE=
X-Received: by 2002:a05:6402:3492:b0:521:ab08:46dc with SMTP id
 v18-20020a056402349200b00521ab0846dcmr3769599edc.0.1689800825100; Wed, 19 Jul
 2023 14:07:05 -0700 (PDT)
MIME-Version: 1.0
References: <20230711211810.4172447-1-sjg@chromium.org> <CAL_JsqLYV+1gaOg-RUgVC8-ijbD0p+ffEAXMeQTHaX=n_xOOAw@mail.gmail.com>
 <CAPnjgZ0+ZgSa2xfrW=X_RJ945+6GpTpxh+5=-jr9o2VNL8jUsA@mail.gmail.com>
In-Reply-To: <CAPnjgZ0+ZgSa2xfrW=X_RJ945+6GpTpxh+5=-jr9o2VNL8jUsA@mail.gmail.com>
From:   Simon Glass <sjg@chromium.org>
Date:   Wed, 19 Jul 2023 15:06:53 -0600
Message-ID: <CAPnjgZ0Aa1+B+bpN5vr609d9a29B+t1sUwAoq=eNja4iSgorew@mail.gmail.com>
Subject: Re: [PATCH 1/2] schemas: Add firmware node schema
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED,USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Fri, 14 Jul 2023 at 11:57, Simon Glass <sjg@chromium.org> wrote:
>
> Hi Rob,
>
> On Fri, 14 Jul 2023 at 10:58, Rob Herring <robh@kernel.org> wrote:
> >
> > On Tue, Jul 11, 2023 at 3:18=E2=80=AFPM Simon Glass <sjg@chromium.org> =
wrote:
> > >
> > > Add a motivation and purpose for this new proposed node.
> > >
> > > Signed-off-by: Simon Glass <sjg@chromium.org>
> > > ---
> > >
> > >  dtschema/schemas/firmware.yaml | 83 ++++++++++++++++++++++++++++++++=
++
> > >  1 file changed, 83 insertions(+)
> > >  create mode 100644 dtschema/schemas/firmware.yaml
> > >
> > > diff --git a/dtschema/schemas/firmware.yaml b/dtschema/schemas/firmwa=
re.yaml
> > > new file mode 100644
> > > index 0000000..4439a70
> > > --- /dev/null
> > > +++ b/dtschema/schemas/firmware.yaml
> > > @@ -0,0 +1,83 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-clause
> > > +# Copyright 2023 Google LLC
> > > +#
> > > +
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/firmware.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: /firmware Node
> > > +
> > > +maintainers:
> > > +  - Simon Glass <sjg@chromium.org>
> > > +
> > > +description: |
> > > +  The '/firmware' node does not represent a real device, but serves =
as a place
> > > +  for recording information about the main firmware used on the devi=
ce, such as
> > > +  a map of its contents. This is used by the Operating System (OS), =
user space
> > > +  programs and possibly other firmware components. Data in the '/fir=
mware' node
> > > +  does not itself represent the hardware.
> > > +
> > > +  Properties in this node should be common to (and used by) at least=
 two
> > > +  firmware projects, such as U-Boot and TF-A. Project-specific subno=
des can be
> > > +  used for properties which are specific to a single project.
> > > +
> > > +  Purpose of '/firmware' node
> > > +  ---------------------------
> > > +
> > > +  Firmware has traditionally been fairly opaque to the OS, with the =
OS taking
> > > +  no interest in its contents, version, layout or how it might be up=
dated. This
> > > +  is less than ideal, since firmware is an important part of the sys=
tem and
> > > +  visibility into its operation is every bit as important as visbili=
ty into the
> > > +  OS and user-space programs within the system.
> > > +
> > > +  The traditional approach has been to let firmware deal with firmwa=
re, and the
> > > +  OS deal with everything else. Updating firmware has been handled b=
y firmware.
> > > +  For example, the UEFI spec defines a way for the OS to post a 'cap=
sule' which
> > > +  is discovered next time the system boots, permitting firmware upda=
tes. But
> > > +  firmware updates in firmware are highly problematic. They require =
a reboot
> > > +  and a sometimes-lengthy wait with a strange-looking interface unfa=
miliar
> > > +  to most users. It seems better to make the update as transparent a=
s possible
> > > +  to the user. As an example of that, ChromeOS has full knowledge of=
 the
> > > +  firmware version and layout, updates it in the background from use=
r space and
> > > +  instantly selects the new firmware when the user reboots or logs o=
ut.
> >
> > Perhaps if OS based firmware updates are useful, then UEFI should gain
> > that capability rather than inventing some way to do it with DT. Seems
> > like a worthy goal, just needs wider review IMO.
>
> Perhaps it should, although it would involve changing the spec, etc.
> In any case it would be a very strange world if we mandated UEFI
> everywhere.
>
> Yes I am looking for wider review, partly since the work to document
> all the firmware-image complexity is happening mostly in U-Boot at
> present.
>
> >
> > > +  A common objection to considering the system holistically is that =
some parts
> > > +  of the system are inaccessible to the OS, such as a secure enclave=
. However
> > > +  this does not preclude providing visibility into what is present i=
n that
> > > +  enclave. Firmware-version information is still useful. Firmware up=
dates are
> > > +  still needed and can still be initiated from user space.
> > > +
> > > +  Another objection is that firmware should provide an interface to =
the OS,
> > > +  while keeping its structure private. This thinking is largely driv=
en by
> > > +  extrapolating from how firmware has been handled in the 'BIOS' day=
s.
> >
> > It's also the case that the OS may not have direct access to the h/w ne=
eded.
>
> I tried to cover that in the paragraph you quote immediately
> above...what is missing?
>
> >
> > > +  It should be considered a degenerate case rather than the norm. As=
 complexity
> > > +  increases, it creates an artificial boundary between two pieces of=
 the whole.
> > > +  Mechanisms then need to be invented to cross this unnecessary chas=
m. An
> > > +  example of this is Intel's Dynamic Platform and Thermal Framework =
(DPTF),
> > > +  which consists of user-space, OS and firmware components all worki=
ng towards
> > > +  a shared goal. We need a standard description of these cross-syste=
m pieces.
> > > +
> > > +  In order to 'teach the OS about firmware', we need a place to put =
this
> > > +  information. That is the purpose of this node.
> > > +
> > > +  In an Open Source world the entire model of firmware needs to adju=
st to be
> > > +  more open, more visible and managed just like any other part of th=
e system.
> > > +  The major goal is to standardise how firmware is presented to the =
OS and user
> > > +  space, so that common utilities can be used to manage the entire s=
ystem,
> > > +  including the firmware. For example, fwupd can look in this node f=
or
> > > +  information on how to update the firmware, similar to how VBE work=
s. [1]
> > > +  It is likely that other purposes will come to light over time.
> >
> > It's good we're documenting /firmware, but your use seems different to
> > what's already in place. Generally, /firmware has been for providers
> > which are implemented by firmware and are not on any bus. SCMI for
> > example. PSCI is another example, but it predated using /firmware so
> > it's typically just put at the top level (and also PSCI should have
> > been made discoverable like any SMCCC interface).
>
> The intent here is that the node is not on any bus.
>
> I'm happy to create a new node if that is better.
>
> >
> > > +
> > > +  [1] https://github.com/fwupd/fwupd/tree/main/plugins/vbe
> > > +
> > > +properties:
> > > +  $nodename:
> > > +    const: firmware
> > > +
> > > +  "#address-cells": true
> > > +  "#size-cells": true
> >
> > What address space is this? It's not memory mapped because you don't
> > have 'ranges'.
>
> Probably this should be 'false' ? I suppose there may be an address
> space, for example in memory-mapped SPI flash, but that is not very
> common. The firmware could be stored in eMMC or UFS, which are not
> memory-mapped.

Are there any other comments on this? Is there a way to tag it so that
other firmware people might see it?

Regards,
Simon
