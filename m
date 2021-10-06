Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D40E423F5D
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 15:32:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230048AbhJFNeS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 09:34:18 -0400
Received: from mx1.tq-group.com ([93.104.207.81]:18811 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230023AbhJFNeR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 6 Oct 2021 09:34:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1633527145; x=1665063145;
  h=subject:from:to:cc:date:mime-version:
   content-transfer-encoding:message-id;
  bh=wZiREG20BjEiTJRnwZWlOCnyxxSCgmhJ1maroNiROi4=;
  b=j/zM0aRwWg2JgwxhuvwrVcR8CRGcYcCpcpltv81haaQFjR3Zaw7SdLXO
   9AvKTNXIlGVEksBXDLFk9vf6SyzX7dbrRsVFJREtF8XGWXH0zOACrXBfP
   15rJhUJYkrNJjjAqUQ6zXceD5LTteKoxv9jyG4oZq7a7uW560L7Nm3awm
   AsJkk2yWNoAnw3V9HOKdlc9DBTY9dMSgLWxwYoaYwnbq6by9wz9+TVY/t
   1yrDsChaKn6Wr4Rf+m0TjlLuXbwf6mbSnWXUlZU2jydCytCFSSR/1V7dN
   cz6OJiIEAwcCWJRdo14g8zkWhSM0H/kQR2j2q5d5QPNfVhMvX20EYGAdb
   w==;
X-IronPort-AV: E=Sophos;i="5.85,350,1624312800"; 
   d="scan'208";a="19898161"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Oct 2021 15:32:23 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 06 Oct 2021 15:32:23 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 06 Oct 2021 15:32:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1633527143; x=1665063143;
  h=subject:from:to:cc:date:mime-version:
   content-transfer-encoding:message-id;
  bh=wZiREG20BjEiTJRnwZWlOCnyxxSCgmhJ1maroNiROi4=;
  b=BoLoD/PCUrZwzV2UZg7TaFprGYd6xFzdHGveky64hsV6gGGE34WE/M7w
   FWL3H9sdoO1GDxliHZvxsd4MLN9qivQZdthI4drmazhGgUiQJVgmOByh9
   StlWFIRZA+mAmf+/i7V8arnr1yirJcKaKZO6EtIxYawpztaMQjNfpdC3n
   kXLkCw5RBhGQQR2280erBtU2vRwz65m+geectHGXdmGkxN0Cb6IX3/CQY
   MpkXGxePqaWFzsnR0nTXTmqQ6asnQEVefJoYfY3Sl2h1iBwcTP1BEH2U5
   A07rURUG1fXONH0KEkOuah+6Hdj3U+53csv7Vv2QLwdVXHfpdvLrAQQEF
   Q==;
X-IronPort-AV: E=Sophos;i="5.85,350,1624312800"; 
   d="scan'208";a="19898160"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Oct 2021 15:32:23 +0200
Received: from vtuxmail01.tq-net.de (localhost [127.0.0.1])
        by vtuxmail01.tq-net.de (Postfix) with ESMTP id AC94E280065;
        Wed,  6 Oct 2021 15:32:23 +0200 (CEST)
Received: by vtuxmail01 (kopano-spooler) with MAPI; Wed, 6 Oct 2021 15:32:23
 +0200
Subject: AW: (EXT) Re: [PATCH 2/3] dt-bindings: drm/bridge: ti-sn65dsi83: Add
 vcc supply bindings
From:   "Alexander Stein" <Alexander.Stein@ew.tq-group.com>
To:     "Rob Herring" <robh@kernel.org>
Cc:     "David Airlie" <airlied@linux.ie>,
        "Daniel Vetter" <daniel@ffwll.ch>,
        Andrzej Hajda <a.hajda@samsung.com>,
        "Neil Armstrong" <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>,
        "Jonas Karlman" <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        "dri-devel" <dri-devel@lists.freedesktop.org>,
        =?us-ascii?Q?devicetree=40vger=2Eke?= =?us-ascii?Q?rnel=2Eorg?= 
        <devicetree@vger.kernel.org>
Date:   Wed, 6 Oct 2021 13:32:23 +0000
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Priority: 3 (Normal)
X-Mailer: Kopano 8.7.82
Message-Id: <kcEE.GYPgnunSRpO/+9Q/n9b1tA.gI0jmLa61wE@vtuxmail01.tq-net.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 6, 2021 at 3:21 PM Rob Herring
<robh+dt@kernel.org> wrote:

> On Wed, Oct 6, 2021 at 2:47 AM Alexander Stein
> <alexander.stein@ew.tq-group.com> wrote:
> >
> > Add a VCC regulator which needs to be enabled before the EN pin is
> > released.
> >
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> >=C2=A0 .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml=C2=A0=C2=A0=C2=A0=C2=A0 | 5 +++++
> >=C2=A0 1 file changed, 5 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > index 07b20383cbca..149cff3233c2 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > @@ -32,6 +32,9 @@ properties:
> >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 maxItems: 1
> >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 description: GPIO specifier for bridge_en pin (active high).
> >
> > +=C2=A0 vcc-supply:
> > +=C2=A0=C2=A0=C2=A0 description: A 1.8V power supply (see regulator/regulator.yaml).
> > +
> >=C2=A0=C2=A0=C2=A0 ports:
> >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 $ref: /schemas/graph.yaml#/properties/ports
> >
> > @@ -94,6 +97,7 @@ required:
> >=C2=A0=C2=A0=C2=A0 - compatible
> >=C2=A0=C2=A0=C2=A0 - reg
> >=C2=A0=C2=A0=C2=A0 - enable-gpios
> > +=C2=A0 - vcc-supply
>
> You generally can't make added properties required unless all DT files
> already had this property. It breaks compatibility.

I agree, but AFAICS none of the in-kernel DT files uses this binding. I used
'grep -re "ti,sn65dsi8[34]" arch/*/boot/dts' to check. Only
ti,sn65dsi86 is used on some qcom boards, but this is a completly different
binding and driver.

Best regards,
Alexander

