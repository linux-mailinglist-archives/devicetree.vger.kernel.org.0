Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4144F2B6E8
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 15:48:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726670AbfE0NsP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 09:48:15 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:60696 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726191AbfE0NsP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 09:48:15 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4RDm33o053918;
        Mon, 27 May 2019 08:48:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1558964883;
        bh=jnO0wQSVfRbEBt1Q0sFOXV/qwgajJK9ldb5h/H7MyV0=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=JaRegP5b4EDwtUe0dmkvmgqI310ehK9utAiYb7nK/8fxfUcA/4Ghe4WVM5gS/6SAs
         y3MMdFWlm1Gpa3x/YfUI3JcCQiXflYFUg4LHBfp2i/vECKfTqatDUMhI5rTtyflkQ0
         WHJEYpD1/ZfMtbr0jBmLVSsgy5ApsYDgG3ESabBA=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4RDm3LG054707
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 27 May 2019 08:48:03 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 27
 May 2019 08:48:02 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 27 May 2019 08:48:02 -0500
Received: from jadmar.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4RDlviE065947;
        Mon, 27 May 2019 08:48:00 -0500
From:   Jyri Sarha <jsarha@ti.com>
To:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>
CC:     <laurent.pinchart@ideasonboard.com>, <tomi.valkeinen@ti.com>,
        <peter.ujfalusi@ti.com>, <a.hajda@samsung.com>, <robh@kernel.org>
Subject: [PATCH v8 1/6] drm/bridge: sii902x: add input_bus_flags
Date:   Mon, 27 May 2019 16:47:52 +0300
Message-ID: <deb02a1fd508c514472a4e660092f301e6681361.1558964241.git.jsarha@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1558964241.git.jsarha@ti.com>
References: <cover.1558964241.git.jsarha@ti.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Tomi Valkeinen <tomi.valkeinen@ti.com>

The driver always sets InputBusFmt:EDGE to 0 (falling edge).

Add drm_bridge_timings's input_bus_flags to reflect that the bridge
samples on falling edges.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
Signed-off-by: Jyri Sarha <jsarha@ti.com>
Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/gpu/drm/bridge/sii902x.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/bridge/sii902x.c b/drivers/gpu/drm/bridge/sii902x.c
index cdb8dfdb2dff..0d3d730b97ff 100644
--- a/drivers/gpu/drm/bridge/sii902x.c
+++ b/drivers/gpu/drm/bridge/sii902x.c
@@ -461,6 +461,12 @@ static int sii902x_i2c_bypass_deselect(struct i2c_mux_core *mux, u32 chan_id)
 	return 0;
 }
 
+static const struct drm_bridge_timings default_sii902x_timings = {
+	.input_bus_flags = DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE
+		 | DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE
+		 | DRM_BUS_FLAG_DE_HIGH,
+};
+
 static int sii902x_probe(struct i2c_client *client,
 			 const struct i2c_device_id *id)
 {
@@ -531,6 +537,7 @@ static int sii902x_probe(struct i2c_client *client,
 
 	sii902x->bridge.funcs = &sii902x_bridge_funcs;
 	sii902x->bridge.of_node = dev->of_node;
+	sii902x->bridge.timings = &default_sii902x_timings;
 	drm_bridge_add(&sii902x->bridge);
 
 	i2c_set_clientdata(client, sii902x);
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

