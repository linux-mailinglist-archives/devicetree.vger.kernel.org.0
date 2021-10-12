Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2C3C429DCE
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 08:35:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233215AbhJLGh1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 02:37:27 -0400
Received: from mx1.tq-group.com ([93.104.207.81]:57951 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232340AbhJLGh1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Oct 2021 02:37:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1634020526; x=1665556526;
  h=subject:from:to:cc:date:mime-version:
   content-transfer-encoding:message-id;
  bh=AqDXFNbyoaiHXtkNnJ8/WYQC55Sps3VC5kkKVFJsr5M=;
  b=q6oIhJoYhtX130yU2NH8RaM2xGAscZHH3ntNixmEjpLGreH0BTZKtSrs
   f76vdjX+VOogiSVAIvbrBhkfrmcXfTZcbGtUZE9RNznIdY06vGrjlN58y
   GwSpCO7M9RYWE/cHq5QUikYavmLqHDJcBx2TParYFNbZQeB54/1VFnJFu
   5W687/DXV+9ztFcI35ZRbxXhX6kBkaEvf23uCHti4iw4DpyLi809Tjd2R
   fbtyB0ccuJyUHwWkfGpZRQ6BAH6lgZvak7OAeSPNLsZXEolon0Jbhwyf1
   P/rS7vm8uVqmTqjlnxIistOz3wWtQTwgHpAKBQii9OKIaLXb7A7Khl2xU
   Q==;
X-IronPort-AV: E=Sophos;i="5.85,366,1624312800"; 
   d="scan'208";a="19984664"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 12 Oct 2021 08:35:25 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 12 Oct 2021 08:35:25 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 12 Oct 2021 08:35:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1634020525; x=1665556525;
  h=subject:from:to:cc:date:mime-version:
   content-transfer-encoding:message-id;
  bh=AqDXFNbyoaiHXtkNnJ8/WYQC55Sps3VC5kkKVFJsr5M=;
  b=HAqA0TsVQhFrkbLFrudlNC2FwdDH8j8XKR6L+ERpOvMDoiIlsGWIZzQR
   9dgBm5Urz4xteN5nsmERvhXZmT1nr7kbWyoDVaoUYLBfsnxUB+QBTbW/U
   53+6f20dBUN31QW0kYT8wJ/hfEGjdoSOfOTWz4RByEEXcv6ovyftQbdZd
   hQluNvg6+15WUM56sgf5MeGA+N0jvyX1y5wYQjMsAt63uTlDekFnr8X+d
   x28w3+qpU8nTi3oAoMBnr6hSkONQvXBz1PUPqt0uDDMylv9vTAaeQ1FoD
   Ke97GU0pwGqiw89xWoqV9TrTQB2pCSQ7DBSjF+VqJ3QuCzghqj1VJacze
   w==;
X-IronPort-AV: E=Sophos;i="5.85,366,1624312800"; 
   d="scan'208";a="19984663"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 12 Oct 2021 08:35:25 +0200
Received: from vtuxmail01.tq-net.de (localhost [127.0.0.1])
        by vtuxmail01.tq-net.de (Postfix) with ESMTP id 3B6EB280065;
        Tue, 12 Oct 2021 08:35:25 +0200 (CEST)
Received: by vtuxmail01 (kopano-spooler) with MAPI; Tue, 12 Oct 2021 08:35:25
 +0200
Subject: AW: (EXT) Re: [PATCH 1/3] drm/bridge: ti-sn65dsi83: Add vcc supply
 regulator support
From:   "Alexander Stein" <Alexander.Stein@ew.tq-group.com>
To:     "Sam Ravnborg" <sam@ravnborg.org>
Cc:     "David Airlie" <airlied@linux.ie>,
        "Daniel Vetter" <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>,
        "Andrzej Hajda" <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        "Robert Foss" <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        "Jonas Karlman" <jonas@kwiboo.se>,
        "Jernej Skrabec" <jernej.skrabec@gmail.com>,
        =?us-ascii?Q?dri-devel=40lists=2Efreedesktop=2Eorg?= 
        <dri-devel@lists.freedesktop.org>,
        =?us-ascii?Q?devicetree=40vger=2Eke?= =?us-ascii?Q?rnel=2Eorg?= 
        <devicetree@vger.kernel.org>
Date:   Tue, 12 Oct 2021 06:35:25 +0000
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Priority: 3 (Normal)
X-Mailer: Kopano 8.7.82
Message-Id: <kcEE.3XovpxrPSziglCoQmtmkFQ.gDS6VjO/1wE@vtuxmail01.tq-net.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sam,

On Mon, 11 Oct 2021 22:29:30 +0200, Sam Ravnborg wrote:
> > VCC needs to be enabled before releasing the enable GPIO.
> >=20
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> >  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 15 ++++++++++++++-
> >  1 file changed, 14 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > index a32f70bc68ea..5fab0fabcd15 100644
> > --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > @@ -33,6 +33,7 @@
> >  #include <linux/of_device.h>
> >  #include <linux/of_graph.h>
> >  #include <linux/regmap.h>
> > +#include <linux/regulator/consumer.h>
> > =20
> >  #include <drm/drm_atomic_helper.h>
> >  #include <drm/drm_bridge.h>
> > @@ -143,6 +144,7 @@ struct sn65dsi83 {
> >  =09struct mipi_dsi_device=09=09*dsi;
> >  =09struct drm_bridge=09=09*panel_bridge;
> >  =09struct gpio_desc=09=09*enable_gpio;
> > +=09struct regulator=09=09*vcc;
> >  =09int=09=09=09=09dsi_lanes;
> >  =09bool=09=09=09=09lvds_dual_link;
> >  =09bool=09=09=09=09lvds_dual_link_even_odd_swap;
> > @@ -647,6 +649,12 @@ static int sn65dsi83_parse_dt(struct sn65dsi83 *ctx,
> enum sn65dsi83_model model)
> > =20
> >  =09ctx->panel_bridge =3D panel_bridge;
> > =20
> > +=09ctx->vcc =3D devm_regulator_get(dev, "vcc");
> In the binding the vcc regulator is required, but devm_regulator_get()
> will create a dummy regulator if not found. Maybe this is on purpose and
> all is good.

Thanks for addressing this. I was slightly unsure myself, but IMHO this is
all good as this makes the driver backward compatible with older DT
which lack the regulator. If there was no vcc regulator necessary and the bridge
was working,then a dummy regulator is fine, as the DT fix would be adding a
always-on, regulator-fixed without any enable/disable possibility anyway.

Best regards,
Alexander

