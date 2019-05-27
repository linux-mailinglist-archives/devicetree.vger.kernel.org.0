Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 901112B6EF
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 15:48:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726706AbfE0NsR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 09:48:17 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:59770 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726693AbfE0NsQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 09:48:16 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4RDm68Y073368;
        Mon, 27 May 2019 08:48:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1558964886;
        bh=Hf8IFHndzk4D6oqYha5f5/8yYRj5fgQTA/zOXHmnD2s=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=GyzUuE8DUCwo1pogTWF8uek1L63iZTVcZKPiu1iQUQ1fWkBeLSW/4r3PW1kL6+Lax
         iK5y31Ik6dhiV0RVKFqGuiu4NzHynba9GoPc1LiuwzXjR1Ot47ftL4oseyxAAXU8tR
         WKEE0uAtZp/DYr1soZyH+KIvgAJJ+ZswVP6y9ywA=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4RDm6xC054858
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 27 May 2019 08:48:06 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 27
 May 2019 08:48:04 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 27 May 2019 08:48:04 -0500
Received: from jadmar.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4RDlviF065947;
        Mon, 27 May 2019 08:48:02 -0500
From:   Jyri Sarha <jsarha@ti.com>
To:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>
CC:     <laurent.pinchart@ideasonboard.com>, <tomi.valkeinen@ti.com>,
        <peter.ujfalusi@ti.com>, <a.hajda@samsung.com>, <robh@kernel.org>
Subject: [PATCH v8 2/6] drm/bridge: sii902x: Set output mode to HDMI or DVI according to EDID
Date:   Mon, 27 May 2019 16:47:53 +0300
Message-ID: <c42838073b83185a5cf9949caab3c70ee093b791.1558964241.git.jsarha@ti.com>
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

Set output mode to HDMI or DVI according to EDID HDMI signature.

Signed-off-by: Jyri Sarha <jsarha@ti.com>
Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/gpu/drm/bridge/sii902x.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/bridge/sii902x.c b/drivers/gpu/drm/bridge/sii902x.c
index 0d3d730b97ff..128d8fdb4ba6 100644
--- a/drivers/gpu/drm/bridge/sii902x.c
+++ b/drivers/gpu/drm/bridge/sii902x.c
@@ -181,12 +181,16 @@ static int sii902x_get_modes(struct drm_connector *connector)
 {
 	struct sii902x *sii902x = connector_to_sii902x(connector);
 	u32 bus_format = MEDIA_BUS_FMT_RGB888_1X24;
+	u8 output_mode = SII902X_SYS_CTRL_OUTPUT_DVI;
 	struct edid *edid;
 	int num = 0, ret;
 
 	edid = drm_get_edid(connector, sii902x->i2cmux->adapter[0]);
 	drm_connector_update_edid_property(connector, edid);
 	if (edid) {
+	        if (drm_detect_hdmi_monitor(edid))
+			output_mode = SII902X_SYS_CTRL_OUTPUT_HDMI;
+
 		num = drm_add_edid_modes(connector, edid);
 		kfree(edid);
 	}
@@ -196,6 +200,11 @@ static int sii902x_get_modes(struct drm_connector *connector)
 	if (ret)
 		return ret;
 
+	ret = regmap_update_bits(sii902x->regmap, SII902X_SYS_CTRL_DATA,
+				 SII902X_SYS_CTRL_OUTPUT_MODE, output_mode);
+	if (ret)
+		return ret;
+
 	return num;
 }
 
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

