Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 80C954B26D8
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 14:12:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345306AbiBKNMS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 08:12:18 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243510AbiBKNMR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 08:12:17 -0500
X-Greylist: delayed 430 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 11 Feb 2022 05:12:14 PST
Received: from asav21.altibox.net (asav21.altibox.net [109.247.116.8])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B16D8F74
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 05:12:14 -0800 (PST)
Received: from localhost.localdomain (211.81-166-168.customer.lyse.net [81.166.168.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: noralf.tronnes@ebnett.no)
        by asav21.altibox.net (Postfix) with ESMTPSA id 9A36F800C4;
        Fri, 11 Feb 2022 14:05:02 +0100 (CET)
From:   =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
To:     robh+dt@kernel.org, thierry.reding@gmail.com
Cc:     sam@ravnborg.org, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: [PATCH v3 2/3] drm/mipi-dbi: Add driver_private member to struct mipi_dbi_dev
Date:   Fri, 11 Feb 2022 14:04:33 +0100
Message-Id: <20220211130434.20732-3-noralf@tronnes.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220211130434.20732-1-noralf@tronnes.org>
References: <20220211130434.20732-1-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=Adef4UfG c=1 sm=1 tr=0
        a=OYZzhG0JTxDrWp/F2OJbnw==:117 a=OYZzhG0JTxDrWp/F2OJbnw==:17
        a=IkcTkHD0fZMA:10 a=M51BFTxLslgA:10 a=SJz97ENfAAAA:8
        a=y_86xVX8oVuJ6HyYcK4A:9 a=QEXdDO2ut3YA:10 a=vFet0B0WnEQeilDPIY6i:22
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

