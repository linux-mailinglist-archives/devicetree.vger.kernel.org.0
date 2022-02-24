Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DAED4C2FA2
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 16:28:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235766AbiBXP2R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 10:28:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236459AbiBXP2J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 10:28:09 -0500
Received: from asav22.altibox.net (asav22.altibox.net [109.247.116.9])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F12A3388F
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 07:27:37 -0800 (PST)
Received: from localhost.localdomain (211.81-166-168.customer.lyse.net [81.166.168.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: noralf.tronnes@ebnett.no)
        by asav22.altibox.net (Postfix) with ESMTPSA id B715123B78;
        Thu, 24 Feb 2022 16:27:35 +0100 (CET)
From:   =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
To:     robh+dt@kernel.org, dri-devel@lists.freedesktop.org
Cc:     sam@ravnborg.org, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, thierry.reding@gmail.com,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: [PATCH v5 4/5] drm/mipi-dbi: Add driver_private member to struct mipi_dbi_dev
Date:   Thu, 24 Feb 2022 16:27:07 +0100
Message-Id: <20220224152708.14459-5-noralf@tronnes.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220224152708.14459-1-noralf@tronnes.org>
References: <20220224152708.14459-1-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=KbX8TzQD c=1 sm=1 tr=0
        a=OYZzhG0JTxDrWp/F2OJbnw==:117 a=OYZzhG0JTxDrWp/F2OJbnw==:17
        a=IkcTkHD0fZMA:10 a=M51BFTxLslgA:10 a=7gkXJVJtAAAA:8 a=SJz97ENfAAAA:8
        a=y_86xVX8oVuJ6HyYcK4A:9 a=QEXdDO2ut3YA:10 a=E9Po1WZjFZOl8hwRPBS3:22
        a=vFet0B0WnEQeilDPIY6i:22
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_SOFTFAIL,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

devm_drm_dev_alloc() can't allocate structures that embed a structure
which then again embeds drm_device. Workaround this by adding a
driver_private pointer to struct mipi_dbi_dev which the driver can use for
its additional state.

v3:
- Add documentation

Acked-by: Maxime Ripard <maxime@cerno.tech>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
---
 include/drm/drm_mipi_dbi.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/drm/drm_mipi_dbi.h b/include/drm/drm_mipi_dbi.h
index 6fe13cce2670..dad2f187b64b 100644
--- a/include/drm/drm_mipi_dbi.h
+++ b/include/drm/drm_mipi_dbi.h
@@ -130,6 +130,14 @@ struct mipi_dbi_dev {
 	 * @dbi: MIPI DBI interface
 	 */
 	struct mipi_dbi dbi;
+
+	/**
+	 * @driver_private: Driver private data.
+	 *                  Necessary for drivers with private data since devm_drm_dev_alloc()
+	 *                  can't allocate structures that embed a structure which then again
+	 *                  embeds drm_device.
+	 */
+	void *driver_private;
 };
 
 static inline struct mipi_dbi_dev *drm_to_mipi_dbi_dev(struct drm_device *drm)
-- 
2.33.0

