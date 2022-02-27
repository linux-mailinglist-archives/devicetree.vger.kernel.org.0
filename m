Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAFE04C5B39
	for <lists+devicetree@lfdr.de>; Sun, 27 Feb 2022 13:47:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230340AbiB0MsX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Feb 2022 07:48:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230441AbiB0MsU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Feb 2022 07:48:20 -0500
Received: from asav21.altibox.net (asav21.altibox.net [109.247.116.8])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2436FAE78
        for <devicetree@vger.kernel.org>; Sun, 27 Feb 2022 04:47:41 -0800 (PST)
Received: from localhost.localdomain (211.81-166-168.customer.lyse.net [81.166.168.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: noralf.tronnes@ebnett.no)
        by asav21.altibox.net (Postfix) with ESMTPSA id BB3B88005A;
        Sun, 27 Feb 2022 13:47:39 +0100 (CET)
From:   =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
To:     robh+dt@kernel.org, dri-devel@lists.freedesktop.org
Cc:     sam@ravnborg.org, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, thierry.reding@gmail.com,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: [PATCH v6 2/5] drm/modes: Remove trailing whitespace
Date:   Sun, 27 Feb 2022 13:47:10 +0100
Message-Id: <20220227124713.39766-3-noralf@tronnes.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220227124713.39766-1-noralf@tronnes.org>
References: <20220227124713.39766-1-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=Adef4UfG c=1 sm=1 tr=0
        a=OYZzhG0JTxDrWp/F2OJbnw==:117 a=OYZzhG0JTxDrWp/F2OJbnw==:17
        a=IkcTkHD0fZMA:10 a=M51BFTxLslgA:10 a=7gkXJVJtAAAA:8 a=SJz97ENfAAAA:8
        a=LfDBrUgEAAAA:8 a=UdrTMzJVFnDzRRQ4zF0A:9 a=QEXdDO2ut3YA:10
        a=E9Po1WZjFZOl8hwRPBS3:22 a=vFet0B0WnEQeilDPIY6i:22
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

Acked-by: Sam Ravnborg <sam@ravnborg.org>
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

