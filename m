Return-Path: <devicetree+bounces-841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C327A3522
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 12:26:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C26542816A1
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 10:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB5531C10;
	Sun, 17 Sep 2023 10:26:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 822471841
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 10:26:51 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBEE7B5;
	Sun, 17 Sep 2023 03:26:48 -0700 (PDT)
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 580301B3C;
	Sun, 17 Sep 2023 12:25:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1694946312;
	bh=q7+ql7RcFB/pJ87nMv8ZH2E7hUNjKZng9BfK2TFzXfA=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=vYDwMiSp9QPB7xt7Or7Gxx09mbnSX8blx6Pxo3KqbWXoVlczTSUX6wl2pK8eGyZFh
	 86au5w+oQOMCANR3GUDhmbNg92AB4AmIV/5C1Z6iYGTyil7pU39O/urRufoFECXdl+
	 7T4MEFlpjl/wz4nUvgKFiCd7Hbj62/+J8HULVcWk=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230915-starch-bankable-c4102e405a73@spud>
References: <20230915165946.4183839-1-kieran.bingham@ideasonboard.com> <20230915165946.4183839-2-kieran.bingham@ideasonboard.com> <20230915-starch-bankable-c4102e405a73@spud>
Subject: Re: [PATCH 1/2] Documentation: dt-bindings: media: i2c: Add ROHM BU64754 bindings
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>;
To: Conor Dooley <conor@kernel.org>
Date: Sun, 17 Sep 2023 11:26:44 +0100
Message-ID: <169494640440.1922990.14245619888948093891@ping.linuxembedded.co.uk>
User-Agent: alot/0.10
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Quoting Conor Dooley (2023-09-15 22:13:40)
> Yo,
>=20
> On Fri, Sep 15, 2023 at 05:59:45PM +0100, Kieran Bingham wrote:
> > Add YAML device tree bindings for the ROHM BU64754 VCM Motor Driver for
> > Camera Autofocus.
> >=20
> > Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> > ---
> >  .../bindings/media/i2c/rohm,bu64754.yaml      | 48 +++++++++++++++++++
> >  MAINTAINERS                                   |  7 +++
> >  2 files changed, 55 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/rohm,bu=
64754.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/i2c/rohm,bu64754.y=
aml b/Documentation/devicetree/bindings/media/i2c/rohm,bu64754.yaml
> > new file mode 100644
> > index 000000000000..22da4a46bb0c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/rohm,bu64754.yaml
> > @@ -0,0 +1,48 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +# Copyright (C) 2023 Ideas on Board Oy.
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/i2c/rohm,bu64754.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ROHM BU64754 Actuator Driver for Camera Autofocus
> > +
> > +maintainers:
> > +  - Kieran Bingham <kieran.bingham@ideasonboard.com>
> > +
> > +description: |
>=20
> That | is surplus to requirements since you have no formatting to
> preserve.
>=20
> > +  The BU64754 is an actuator driver IC which can control the actuator
> > +  position precisely using an internal Hall Sensor.
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - rohm,bu64754
>=20
> Why such a complicated pattern when you only have one item here?
> Why not just const: rohm,bu64754?

These devices are really simple. I'd expect other versions/variants to
be able to be covered by the same driver in the future, but I can remove
this for now and simplify.

>=20
> Otherwise, looks fine to me.


Thanks for the review.

--
Kieran

