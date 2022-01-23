Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C56BC497397
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 18:34:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229687AbiAWRe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 12:34:58 -0500
Received: from asav21.altibox.net ([109.247.116.8]:50616 "EHLO
        asav21.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233158AbiAWRe6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jan 2022 12:34:58 -0500
Received: from localhost.localdomain (211.81-166-168.customer.lyse.net [81.166.168.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: noralf.tronnes@ebnett.no)
        by asav21.altibox.net (Postfix) with ESMTPSA id 42A918007E;
        Sun, 23 Jan 2022 18:25:43 +0100 (CET)
From:   =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
To:     robh+dt@kernel.org, thierry.reding@gmail.com
Cc:     sam@ravnborg.org, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: [PATCH 2/3] drm/mipi-dbi: Add driver_private member to struct mipi_dbi_dev
Date:   Sun, 23 Jan 2022 18:25:19 +0100
Message-Id: <20220123172520.48741-3-noralf@tronnes.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220123172520.48741-1-noralf@tronnes.org>
References: <20220123172520.48741-1-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=ZLv5Z0zb c=1 sm=1 tr=0
        a=OYZzhG0JTxDrWp/F2OJbnw==:117 a=OYZzhG0JTxDrWp/F2OJbnw==:17
        a=IkcTkHD0fZMA:10 a=M51BFTxLslgA:10 a=SJz97ENfAAAA:8
        a=Q2Ih0uKjMOPNe-lQhrwA:9 a=QEXdDO2ut3YA:10 a=vFet0B0WnEQeilDPIY6i:22
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

devm_drm_dev_alloc() can't allocate structures that embed a structure
which then again embeds drm_device. Workaround this by adding a
driver_private pointer to struct mipi_dbi_dev which the driver can use for
its additional state.

Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
---
 include/drm/drm_mipi_dbi.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/drm/drm_mipi_dbi.h b/include/drm/drm_mipi_dbi.h
index 05e194958265..e24865058d87 100644
--- a/include/drm/drm_mipi_dbi.h
+++ b/include/drm/drm_mipi_dbi.h
@@ -130,6 +130,8 @@ struct mipi_dbi_dev {
 	 * @dbi: MIPI DBI interface
 	 */
 	struct mipi_dbi dbi;
+
+	void *driver_private;
 };
 
 static inline struct mipi_dbi_dev *drm_to_mipi_dbi_dev(struct drm_device *drm)
-- 
2.33.0

