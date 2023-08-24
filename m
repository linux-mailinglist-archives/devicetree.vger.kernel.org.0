Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2E4E786D66
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 13:08:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234735AbjHXLI1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 07:08:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234754AbjHXLH7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 07:07:59 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA072170C
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 04:07:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7D7DC61DC8
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 11:07:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8234EC433C7;
        Thu, 24 Aug 2023 11:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692875275;
        bh=VviWv2NAhAkKN20qjfzk0xFlVyvdKpN9cYHuWUXfUvU=;
        h=Date:From:To:In-Reply-To:References:Resent-Date:Resent-From:
         Subject:Resent-Cc:From;
        b=KZCEIlxuxRvaTfBqdmkzmxzeXNsNjEaMk2gSArFaN1ZnTazZ9H1cqCx6MxsBrFDD+
         Ty/6zAwXepq9h+62VX/MNhimqDxUPtgr2mygy2IjtI0Byb6F4eQM1kpVQScOBlnboQ
         ZqHa3Sro2XBfmDmVfsZCa/K8SD267foYbg7BfMMKQ/uS42HVBtI6rfyC5PoM2owpiE
         NhGKQxqvSUOU53xB+Fvc+5yBeUuJTed0TtK9VffaCa36LZFhNlnmBjRsImOoCsgAAk
         KDtBDhhJgxwhq7pWhGoogQ+Pg0ZRXTIdEZdYhaelIPSjAUpLX1LC87hoE9uCA92ZvJ
         m7fuxGEh6Qc3Q==
Date:   Thu, 24 Aug 2023 10:03:49 +0200
From:   Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org> (by way of Marek
        =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>)
To:     Krzysztof Kozlowski <krzk@kernel.org>
Message-ID: <20230824100349.2d0080d8@dellmb>
In-Reply-To: <7213dd0d-5783-cda7-6d49-8bf442e81921@kernel.org>
References: <20230823161012.6986-1-kabel@kernel.org>
 <20230823161012.6986-2-kabel@kernel.org>
 <7213dd0d-5783-cda7-6d49-8bf442e81921@kernel.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/4] dt-bindings: arm: add cznic,turris-omnia-mcu
 binding
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Krzysztof,

thanks for the review.

On Thu, 24 Aug 2023 09:37:23 +0200
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 23/08/2023 18:10, Marek Beh=C3=BAn wrote:
> > Add binding for cznic,turris-omnia-mcu, the device-tree node
> > representing the system-controller features provided by the MCU on the
> > Turris Omnia router.
> >=20
> > Signed-off-by: Marek Beh=C3=BAn <kabel@kernel.org> =20
>=20
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC (and consider --no-git-fallback argument). It might
> happen, that command when run on an older kernel, gives you outdated
> entries. Therefore please be sure you base your patches on recent Linux
> kernel.

I shall do that.

> > ---
> >  .../bindings/arm/cznic,turris-omnia-mcu.yaml  | 72 +++++++++++++++++++
> >  MAINTAINERS                                   |  1 +
> >  2 files changed, 73 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/arm/cznic,turris-=
omnia-mcu.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/arm/cznic,turris-omnia-m=
cu.yaml b/Documentation/devicetree/bindings/arm/cznic,turris-omnia-mcu.yaml
> > new file mode 100644
> > index 000000000000..055485847e71
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/arm/cznic,turris-omnia-mcu.yaml=
 =20
>=20
> ARM directory is only for top-level bindings, so this should go to soc.

Hmm. The board uses a marvell SoC, but the board is from CZ.NIC (who
does not create its own SoCs). So should this go into soc/marvell or
soc/cznic?

> > @@ -0,0 +1,72 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/cznic,turris-omnia-mcu.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: CZ.NIC's Turris Omnia MCU
> > +
> > +maintainers:
> > +  - Marek Beh=C3=BAn <kabel@kernel.org>
> > +
> > +description:
> > +  The MCU on Turris Omnia acts as a system controller providing additi=
onal
> > +  GPIOs, interrupts, watchdog, system power off and wakeup configurati=
on.
> > +
> > +properties:
> > +  compatible:
> > +    const: cznic,turris-omnia-mcu
> > +
> > +  reg:
> > +    description: MCU I2C slave address
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  interrupt-controller: true
> > +
> > +  '#interrupt-cells':
> > +    const: 2
> > +
> > +  gpio-controller: true
> > +
> > +  '#gpio-cells':
> > +    const: 2
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - interrupt-controller
> > +  - gpio-controller
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +
> > +    ic: interrupt-controller {
> > +        interrupt-controller;
> > +        #interrupt-cells =3D <2>;
> > +    }; =20
>=20
> Drop this node, not relevant.

Will the binding example compile without the ic node if the
system-controller below uses it?

> > +
> > +    i2c {
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +
> > +        system-controller@2a {
> > +            compatible =3D "cznic,turris-omnia-mcu";
> > +            reg =3D <0x2a>;
> > +
> > +            interrupt-parent =3D <&ic>;
> > +            interrupts =3D <11 IRQ_TYPE_NONE>; =20
>=20
> Are you sure interrupt is type none?

The interrupt type is either LEVEL_LOW or EDGE_FALLING, depending on
the version of the MCU firmware, so this has to be selected by the
driver.

I tried setting LEVEL_LOW, since that is the one that is used by the
newest MCU firmware. But then if the firmware is old and I want to
select EDGE_FALLING in the driver when requesting the IRQ, it fails
with message
  type mismatch, failed to map hwirq-%lu for %s!
from
  kernel/irq/irqdomain.c function irq_create_fwspec_mapping

I guess I can use irqd_set_trigger_type() before requesting the IRQ to
avoid this error.

Should I use use LEVEL_LOW in the binding example and device-tree?

Thank you for the review.

Marek
