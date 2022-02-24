Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0213F4C2FA1
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 16:28:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230080AbiBXP2O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 10:28:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236455AbiBXP2J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 10:28:09 -0500
Received: from asav22.altibox.net (asav22.altibox.net [109.247.116.9])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49AED1BA14C
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 07:27:36 -0800 (PST)
Received: from localhost.localdomain (211.81-166-168.customer.lyse.net [81.166.168.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: noralf.tronnes@ebnett.no)
        by asav22.altibox.net (Postfix) with ESMTPSA id 2453723B7B;
        Thu, 24 Feb 2022 16:27:35 +0100 (CET)
From:   =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
To:     robh+dt@kernel.org, dri-devel@lists.freedesktop.org
Cc:     sam@ravnborg.org, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, thierry.reding@gmail.com,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: [PATCH v5 2/5] drm/modes: Remove trailing whitespace
Date:   Thu, 24 Feb 2022 16:27:05 +0100
Message-Id: <20220224152708.14459-3-noralf@tronnes.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220224152708.14459-1-noralf@tronnes.org>
References: <20220224152708.14459-1-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=KbX8TzQD c=1 sm=1 tr=0
        a=OYZzhG0JTxDrWp/F2OJbnw==:117 a=OYZzhG0JTxDrWp/F2OJbnw==:17
        a=IkcTkHD0fZMA:10 a=M51BFTxLslgA:10 a=SJz97ENfAAAA:8 a=LfDBrUgEAAAA:8
        a=FFT6fZ0L-V-ZZCBJyAEA:9 a=QEXdDO2ut3YA:10 a=vFet0B0WnEQeilDPIY6i:22
        a=O_qpqY92pKIWs21-0QgL:22
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_SOFTFAIL,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove trailing whitespace from a comment.

Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
---
 drivers/gpu/drm/drm_modes.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
index 96b13e36293c..77a4c8dd0bb8 100644
--- a/drivers/gpu/drm/drm_modes.c
+++ b/drivers/gpu/drm/drm_modes.c
@@ -127,7 +127,7 @@ EXPORT_SYMBOL(drm_mode_probed_add);
  * according to the hdisplay, vdisplay, vrefresh.
  * It is based from the VESA(TM) Coordinated Video Timing Generator by
  * Graham Loveridge April 9, 2003 available at
- * http://www.elo.utfsm.cl/~elo212/docs/CVTd6r1.xls 
+ * http://www.elo.utfsm.cl/~elo212/docs/CVTd6r1.xls
  *
  * And it is copied from xf86CVTmode in xserver/hw/xfree86/modes/xf86cvt.c.
  * What I have done is to translate it by using integer calculation.
-- 
2.33.0

