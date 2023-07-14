Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7630675420A
	for <lists+devicetree@lfdr.de>; Fri, 14 Jul 2023 20:01:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236637AbjGNR7B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jul 2023 13:59:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237172AbjGNR6w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jul 2023 13:58:52 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 898153AA0
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 10:58:25 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-51e5da802afso2654976a12.3
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 10:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1689357440; x=1691949440;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/dUG5KpWzC0bliTV5Nh6wXp5z84nDKmo3cpwWKzuR38=;
        b=eVs8YyZIl2OGyIo2YKjwjG6yszVgaG2NAeFb0kj9sD9tptBpgsVEmpVaQbzCTnz9ng
         11+SsiEd1355UeN/wfO7irR2hF8pzea9KBWAmSvoP/ebM7ovqiSfT4uY0wbMdrOGOgv1
         drEIh8hwJAAlD+SWdJ9ukbex+NldJ79u/Mf9o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689357440; x=1691949440;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/dUG5KpWzC0bliTV5Nh6wXp5z84nDKmo3cpwWKzuR38=;
        b=lJokeLXc4DuH9r84EruP1Udtkup0zD0WiAAKUQOXQ6/ek5wa49v/0sxBjbZeLiTT72
         sWr5B/u07l1XPlawWPhsHr0cEZd+mP9vTzaTHSQEnoeR8T1dE+FJoUcRdts7SwzagqUo
         127sPjuiQNMtNW+++pxTOwtTsESeIVCP8oFhqAAy4vCOjT/bZAmcJgA6yLWr/w45WScl
         YkADlDPPUky7YCvacek5o/QdmAahXBDQwuefdOSLEUQGx//h8tAwVXFs4WV/3bKW+LQ0
         IwvCRXvh9TD6fzLt5vbCX6A1OIR+V8kgJTa320A+hwswnT3T+4NApKPk7tnsbU0xV1ft
         +b5w==
X-Gm-Message-State: ABy/qLYGv/rhJ/w2MMyokYUnOZ7mraHfB5lOkMf8ozKwQJu/7IoMFK10
        lbksKqyquvAJ/D7vYKUH2xVbY8qZeZjxopuqP2yeHXRZGJ74dbB2k7iqEA==
X-Google-Smtp-Source: APBJJlGHKIJfSJA6kUsjor9D6XxbjRCGrcM4HoxqDlSzWQ4TzT5vyVyLUqQYnxdt0RgU3ZY514GCO6cfaPvz9qdm7R4=
X-Received: by 2002:aa7:da52:0:b0:51e:cb4:2b40 with SMTP id
 w18-20020aa7da52000000b0051e0cb42b40mr4771709eds.6.1689357439925; Fri, 14 Jul
 2023 10:57:19 -0700 (PDT)
MIME-Version: 1.0
References: <20230711211810.4172447-1-sjg@chromium.org> <CAL_JsqLYV+1gaOg-RUgVC8-ijbD0p+ffEAXMeQTHaX=n_xOOAw@mail.gmail.com>
In-Reply-To: <CAL_JsqLYV+1gaOg-RUgVC8-ijbD0p+ffEAXMeQTHaX=n_xOOAw@mail.gmail.com>
From:   Simon Glass <sjg@chromium.org>
Date:   Fri, 14 Jul 2023 11:57:08 -0600
Message-ID: <CAPnjgZ0+ZgSa2xfrW=X_RJ945+6GpTpxh+5=-jr9o2VNL8jUsA@mail.gmail.com>
Subject: Re: [PATCH 1/2] schemas: Add firmware node schema
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED,USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Fri, 14 Jul 2023 at 10:58, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Jul 11, 2023 at 3:18=E2=80=AFPM Simon Glass <sjg@chromium.org> wr=
ote:
> >
> > Add a motivation and purpose for this new proposed node.
> >
> > Signed-off-by: Simon Glass <sjg@chromium.org>
> > ---
> >
> >  dtschema/schemas/firmware.yaml | 83 ++++++++++++++++++++++++++++++++++
> >  1 file changed, 83 insertions(+)
> >  create mode 100644 dtschema/schemas/firmware.yaml
> >
> > diff --git a/dtschema/schemas/firmware.yaml b/dtschema/schemas/firmware=
.yaml
> > new file mode 100644
> > index 0000000..4439a70
> > --- /dev/null
> > +++ b/dtschema/schemas/firmware.yaml
> > @@ -0,0 +1,83 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-clause
> > +# Copyright 2023 Google LLC
> > +#
> > +
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/firmware.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: /firmware Node
> > +
> > +maintainers:
> > +  - Simon Glass <sjg@chromium.org>
> > +
> > +description: |
> > +  The '/firmware' node does not represent a real device, but serves as=
 a place
> > +  for recording information about the main firmware used on the device=
, such as
> > +  a map of its contents. This is used by the Operating System (OS), us=
er space
> > +  programs and possibly other firmware components. Data in the '/firmw=
are' node
> > +  does not itself represent the hardware.
> > +
> > +  Properties in this node should be common to (and used by) at least t=
wo
> > +  firmware projects, such as U-Boot and TF-A. Project-specific subnode=
s can be
> > +  used for properties which are specific to a single project.
> > +
> > +  Purpose of '/firmware' node
> > +  ---------------------------
> > +
> > +  Firmware has traditionally been fairly opaque to the OS, with the OS=
 taking
> > +  no interest in its contents, version, layout or how it might be upda=
ted. This
> > +  is less than ideal, since firmware is an important part of the syste=
m and
> > +  visibility into its operation is every bit as important as visbility=
 into the
> > +  OS and user-space programs within the system.
> > +
> > +  The traditional approach has been to let firmware deal with firmware=
, and the
> > +  OS deal with everything else. Updating firmware has been handled by =
firmware.
> > +  For example, the UEFI spec defines a way for the OS to post a 'capsu=
le' which
> > +  is discovered next time the system boots, permitting firmware update=
s. But
> > +  firmware updates in firmware are highly problematic. They require a =
reboot
> > +  and a sometimes-lengthy wait with a strange-looking interface unfami=
liar
> > +  to most users. It seems better to make the update as transparent as =
possible
> > +  to the user. As an example of that, ChromeOS has full knowledge of t=
he
> > +  firmware version and layout, updates it in the background from user =
space and
> > +  instantly selects the new firmware when the user reboots or logs out=
.
>
> Perhaps if OS based firmware updates are useful, then UEFI should gain
> that capability rather than inventing some way to do it with DT. Seems
> like a worthy goal, just needs wider review IMO.

Perhaps it should, although it would involve changing the spec, etc.
In any case it would be a very strange world if we mandated UEFI
everywhere.

Yes I am looking for wider review, partly since the work to document
all the firmware-image complexity is happening mostly in U-Boot at
present.

>
> > +  A common objection to considering the system holistically is that so=
me parts
> > +  of the system are inaccessible to the OS, such as a secure enclave. =
However
> > +  this does not preclude providing visibility into what is present in =
that
> > +  enclave. Firmware-version information is still useful. Firmware upda=
tes are
> > +  still needed and can still be initiated from user space.
> > +
> > +  Another objection is that firmware should provide an interface to th=
e OS,
> > +  while keeping its structure private. This thinking is largely driven=
 by
> > +  extrapolating from how firmware has been handled in the 'BIOS' days.
>
> It's also the case that the OS may not have direct access to the h/w need=
ed.

I tried to cover that in the paragraph you quote immediately
above...what is missing?

>
> > +  It should be considered a degenerate case rather than the norm. As c=
omplexity
> > +  increases, it creates an artificial boundary between two pieces of t=
he whole.
> > +  Mechanisms then need to be invented to cross this unnecessary chasm.=
 An
> > +  example of this is Intel's Dynamic Platform and Thermal Framework (D=
PTF),
> > +  which consists of user-space, OS and firmware components all working=
 towards
> > +  a shared goal. We need a standard description of these cross-system =
pieces.
> > +
> > +  In order to 'teach the OS about firmware', we need a place to put th=
is
> > +  information. That is the purpose of this node.
> > +
> > +  In an Open Source world the entire model of firmware needs to adjust=
 to be
> > +  more open, more visible and managed just like any other part of the =
system.
> > +  The major goal is to standardise how firmware is presented to the OS=
 and user
> > +  space, so that common utilities can be used to manage the entire sys=
tem,
> > +  including the firmware. For example, fwupd can look in this node for
> > +  information on how to update the firmware, similar to how VBE works.=
 [1]
> > +  It is likely that other purposes will come to light over time.
>
> It's good we're documenting /firmware, but your use seems different to
> what's already in place. Generally, /firmware has been for providers
> which are implemented by firmware and are not on any bus. SCMI for
> example. PSCI is another example, but it predated using /firmware so
> it's typically just put at the top level (and also PSCI should have
> been made discoverable like any SMCCC interface).

The intent here is that the node is not on any bus.

I'm happy to create a new node if that is better.

>
> > +
> > +  [1] https://github.com/fwupd/fwupd/tree/main/plugins/vbe
> > +
> > +properties:
> > +  $nodename:
> > +    const: firmware
> > +
> > +  "#address-cells": true
> > +  "#size-cells": true
>
> What address space is this? It's not memory mapped because you don't
> have 'ranges'.

Probably this should be 'false' ? I suppose there may be an address
space, for example in memory-mapped SPI flash, but that is not very
common. The firmware could be stored in eMMC or UFS, which are not
memory-mapped.

Regards,
Simon
