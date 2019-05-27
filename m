Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 106102B6F0
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 15:48:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726708AbfE0NsR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 09:48:17 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:35654 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726693AbfE0NsR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 09:48:17 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4RDm7S5042862;
        Mon, 27 May 2019 08:48:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1558964887;
        bh=Nb2UYYSLO8Mx+9pQxzErM264A56wP/rVqxDnQvP/ZL8=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=H4rb+forsCbMKsppoPf89JwZzTbzMuk2d3GOK7cLUVymdRWsCnu3mONEE+YG29xz1
         Xmxe+okvTGlQ1O666cOVltUDz4qjSw+L6aDMiYEO31/+I9hK7A32Jznmh/dptJ/8as
         ncC6CPz//4zxEYYpMfIpT4J/OhdaVP2VUtpE9XNc=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4RDm7vL096047
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 27 May 2019 08:48:07 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 27
 May 2019 08:48:06 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 27 May 2019 08:48:06 -0500
Received: from jadmar.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4RDlviG065947;
        Mon, 27 May 2019 08:48:04 -0500
From:   Jyri Sarha <jsarha@ti.com>
To:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>
CC:     <laurent.pinchart@ideasonboard.com>, <tomi.valkeinen@ti.com>,
        <peter.ujfalusi@ti.com>, <a.hajda@samsung.com>, <robh@kernel.org>
Subject: [PATCH v8 3/6] drm/bridge: sii902x: pixel clock unit is 10kHz instead of 1kHz
Date:   Mon, 27 May 2019 16:47:54 +0300
Message-ID: <1a2a8eae0b9d6333e7a5841026bf7fd65c9ccd09.1558964241.git.jsarha@ti.com>
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

The pixel clock unit in the first two registers (0x00 and 0x01) of
sii9022 is 10kHz, not 1kHz as in struct drm_display_mode. Division by
10 fixes the issue.

Signed-off-by: Jyri Sarha <jsarha@ti.com>
Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/gpu/drm/bridge/sii902x.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/sii902x.c b/drivers/gpu/drm/bridge/sii902x.c
index 128d8fdb4ba6..19f982a00dba 100644
--- a/drivers/gpu/drm/bridge/sii902x.c
+++ b/drivers/gpu/drm/bridge/sii902x.c
@@ -249,10 +249,11 @@ static void sii902x_bridge_mode_set(struct drm_bridge *bridge,
 	struct regmap *regmap = sii902x->regmap;
 	u8 buf[HDMI_INFOFRAME_SIZE(AVI)];
 	struct hdmi_avi_infoframe frame;
+	u16 pixel_clock_10kHz = adj->clock / 10;
 	int ret;
 
-	buf[0] = adj->clock;
-	buf[1] = adj->clock >> 8;
+	buf[0] = pixel_clock_10kHz & 0xff;
+	buf[1] = pixel_clock_10kHz >> 8;
 	buf[2] = adj->vrefresh;
 	buf[3] = 0x00;
 	buf[4] = adj->hdisplay;
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

