Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C0CCA11E9CD
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2019 19:11:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728679AbfLMSLD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Dec 2019 13:11:03 -0500
Received: from relay12.mail.gandi.net ([217.70.178.232]:42969 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728599AbfLMSLD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Dec 2019 13:11:03 -0500
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7CBDF20000F;
        Fri, 13 Dec 2019 18:11:00 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        <linux-rockchip@lists.infradead.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Sandy Huang <hjc@rock-chips.com>
Cc:     <linux-arm-kernel@lists.infradead.org>,
        Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        dri-devel@lists.freedesktop.org,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 03/12] drm/rockchip: lvds: Fix indentation of a #define
Date:   Fri, 13 Dec 2019 19:10:42 +0100
Message-Id: <20191213181051.25983-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213181051.25983-1-miquel.raynal@bootlin.com>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix a #define indentation before adding more lines.

Fixes: 34cc0aa25456 ("drm/rockchip: Add support for Rockchip Soc LVDS")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.h b/drivers/gpu/drm/rockchip/rockchip_lvds.h
index 029bad8e1a14..1387bcbc4bc0 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.h
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.h
@@ -70,7 +70,7 @@
 #define RK3288_LVDS_CFG_REG21			0x84
 #define RK3288_LVDS_CFG_REG21_TX_ENABLE		0x92
 #define RK3288_LVDS_CFG_REG21_TX_DISABLE	0x00
-#define RK3288_LVDS_CH1_OFFSET                 0x100
+#define RK3288_LVDS_CH1_OFFSET			0x100
 
 /* fbdiv value is split over 2 registers, with bit8 in reg2 */
 #define RK3288_LVDS_PLL_FBDIV_REG2(_fbd) \
-- 
2.20.1

