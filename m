Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE009754013
	for <lists+devicetree@lfdr.de>; Fri, 14 Jul 2023 18:58:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235914AbjGNQ63 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jul 2023 12:58:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229706AbjGNQ62 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jul 2023 12:58:28 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7B203599
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 09:58:26 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5F79961D66
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 16:58:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCEF5C433CA
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 16:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689353905;
        bh=eLVEY0zx32En6pSzi5Z3ZM0VonFhWPdLwLtsG4m4c34=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=qwv1B0kW7MRFInK3jHBk7KRUIbc1WNu+ZW+Q1XY62c9JBxVisWw7APNfPg2droFnF
         oCgTwN7Tcn7lhoDyc/OuO9vOnua/Bn5VeeH+ctT1pELa9SQ7Jhu+lMTP6pyebwdriB
         hd99iiVzyuooLabP0UvSairrRPHQO0kNkwgUDRDzDQnedO49i/qqz39pZ3LQT0tP4Q
         S6vXKfNHl1Ubm8vQR4WdcLQfLVoU7nnffzxd+EO/2krccrCIa+6cE7Dm762U6xc2De
         hTVEdEu8eT1kl/bfi8MKZHnqgLNzmjFsw+rs0PYzyhsK2j1mpli4K9hGOOfu4R2LTM
         8qL+21D45I+GQ==
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2b6f943383eso32207151fa.2
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 09:58:25 -0700 (PDT)
X-Gm-Message-State: ABy/qLZGG5jxH4CoK2zSK9UHUm2M/VYfvByGsk0VL7iXKOW7DK6qLaqH
        /SxOgINVrgVFWO9sdoPdYpNP9Bo66Ib7SYvoSg==
X-Google-Smtp-Source: APBJJlHmE+YU+bfz5g3d2n5OoksCW3sNRFmV3NU59u4UldqwE00OTrBDB43Eucd+6ymV5sW3ubq3eccI0BF1UuJ8Jn0=
X-Received: by 2002:a2e:8456:0:b0:2b6:dfef:d523 with SMTP id
 u22-20020a2e8456000000b002b6dfefd523mr4207163ljh.50.1689353903703; Fri, 14
 Jul 2023 09:58:23 -0700 (PDT)
MIME-Version: 1.0
References: <20230711211810.4172447-1-sjg@chromium.org>
In-Reply-To: <20230711211810.4172447-1-sjg@chromium.org>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 14 Jul 2023 10:58:11 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLYV+1gaOg-RUgVC8-ijbD0p+ffEAXMeQTHaX=n_xOOAw@mail.gmail.com>
Message-ID: <CAL_JsqLYV+1gaOg-RUgVC8-ijbD0p+ffEAXMeQTHaX=n_xOOAw@mail.gmail.com>
Subject: Re: [PATCH 1/2] schemas: Add firmware node schema
To:     Simon Glass <sjg@chromium.org>
Cc:     devicetree@vger.kernel.org, Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 11, 2023 at 3:18=E2=80=AFPM Simon Glass <sjg@chromium.org> wrot=
e:
>
> Add a motivation and purpose for this new proposed node.
>
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
>
>  dtschema/schemas/firmware.yaml | 83 ++++++++++++++++++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 dtschema/schemas/firmware.yaml
>
> diff --git a/dtschema/schemas/firmware.yaml b/dtschema/schemas/firmware.y=
aml
> new file mode 100644
> index 0000000..4439a70
> --- /dev/null
> +++ b/dtschema/schemas/firmware.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-clause
> +# Copyright 2023 Google LLC
> +#
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/firmware.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: /firmware Node
> +
> +maintainers:
> +  - Simon Glass <sjg@chromium.org>
> +
> +description: |
> +  The '/firmware' node does not represent a real device, but serves as a=
 place
> +  for recording information about the main firmware used on the device, =
such as
> +  a map of its contents. This is used by the Operating System (OS), user=
 space
> +  programs and possibly other firmware components. Data in the '/firmwar=
e' node
> +  does not itself represent the hardware.
> +
> +  Properties in this node should be common to (and used by) at least two
> +  firmware projects, such as U-Boot and TF-A. Project-specific subnodes =
can be
> +  used for properties which are specific to a single project.
> +
> +  Purpose of '/firmware' node
> +  ---------------------------
> +
> +  Firmware has traditionally been fairly opaque to the OS, with the OS t=
aking
> +  no interest in its contents, version, layout or how it might be update=
d. This
> +  is less than ideal, since firmware is an important part of the system =
and
> +  visibility into its operation is every bit as important as visbility i=
nto the
> +  OS and user-space programs within the system.
> +
> +  The traditional approach has been to let firmware deal with firmware, =
and the
> +  OS deal with everything else. Updating firmware has been handled by fi=
rmware.
> +  For example, the UEFI spec defines a way for the OS to post a 'capsule=
' which
> +  is discovered next time the system boots, permitting firmware updates.=
 But
> +  firmware updates in firmware are highly problematic. They require a re=
boot
> +  and a sometimes-lengthy wait with a strange-looking interface unfamili=
ar
> +  to most users. It seems better to make the update as transparent as po=
ssible
> +  to the user. As an example of that, ChromeOS has full knowledge of the
> +  firmware version and layout, updates it in the background from user sp=
ace and
> +  instantly selects the new firmware when the user reboots or logs out.

Perhaps if OS based firmware updates are useful, then UEFI should gain
that capability rather than inventing some way to do it with DT. Seems
like a worthy goal, just needs wider review IMO.

> +  A common objection to considering the system holistically is that some=
 parts
> +  of the system are inaccessible to the OS, such as a secure enclave. Ho=
wever
> +  this does not preclude providing visibility into what is present in th=
at
> +  enclave. Firmware-version information is still useful. Firmware update=
s are
> +  still needed and can still be initiated from user space.
> +
> +  Another objection is that firmware should provide an interface to the =
OS,
> +  while keeping its structure private. This thinking is largely driven b=
y
> +  extrapolating from how firmware has been handled in the 'BIOS' days.

It's also the case that the OS may not have direct access to the h/w needed=
.

> +  It should be considered a degenerate case rather than the norm. As com=
plexity
> +  increases, it creates an artificial boundary between two pieces of the=
 whole.
> +  Mechanisms then need to be invented to cross this unnecessary chasm. A=
n
> +  example of this is Intel's Dynamic Platform and Thermal Framework (DPT=
F),
> +  which consists of user-space, OS and firmware components all working t=
owards
> +  a shared goal. We need a standard description of these cross-system pi=
eces.
> +
> +  In order to 'teach the OS about firmware', we need a place to put this
> +  information. That is the purpose of this node.
> +
> +  In an Open Source world the entire model of firmware needs to adjust t=
o be
> +  more open, more visible and managed just like any other part of the sy=
stem.
> +  The major goal is to standardise how firmware is presented to the OS a=
nd user
> +  space, so that common utilities can be used to manage the entire syste=
m,
> +  including the firmware. For example, fwupd can look in this node for
> +  information on how to update the firmware, similar to how VBE works. [=
1]
> +  It is likely that other purposes will come to light over time.

It's good we're documenting /firmware, but your use seems different to
what's already in place. Generally, /firmware has been for providers
which are implemented by firmware and are not on any bus. SCMI for
example. PSCI is another example, but it predated using /firmware so
it's typically just put at the top level (and also PSCI should have
been made discoverable like any SMCCC interface).

> +
> +  [1] https://github.com/fwupd/fwupd/tree/main/plugins/vbe
> +
> +properties:
> +  $nodename:
> +    const: firmware
> +
> +  "#address-cells": true
> +  "#size-cells": true

What address space is this? It's not memory mapped because you don't
have 'ranges'.

Rob
