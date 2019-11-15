Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B6426FE24B
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2019 17:08:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727658AbfKOQIa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Nov 2019 11:08:30 -0500
Received: from metis.ext.pengutronix.de ([85.220.165.71]:47169 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727564AbfKOQIa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Nov 2019 11:08:30 -0500
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1iVe90-0002S5-MC; Fri, 15 Nov 2019 17:08:22 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1iVe8y-00047D-6K; Fri, 15 Nov 2019 17:08:20 +0100
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, KCHSU0@nuvoton.com, broonie@kernel.org,
        thomas.fehrenbacher@siedle.de
Cc:     kernel@pengutronix.de, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: ASoC: add nau8812 documentation
Date:   Fri, 15 Nov 2019 17:08:17 +0100
Message-Id: <20191115160819.15557-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191115160819.15557-1-m.felsch@pengutronix.de>
References: <20191115160819.15557-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add dt-bindings for the nau8812 device.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/devicetree/bindings/sound/nau8810.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/nau8810.txt b/Documentation/devicetree/bindings/sound/nau8810.txt
index 05830e477acd..ddb007a43e68 100644
--- a/Documentation/devicetree/bindings/sound/nau8810.txt
+++ b/Documentation/devicetree/bindings/sound/nau8810.txt
@@ -4,7 +4,7 @@ This device supports I2C only.
 
 Required properties:
 
-  - compatible : "nuvoton,nau8810"
+  - compatible : "nuvoton,nau8810" or "nuvoton,nau8812"
 
   - reg : the I2C address of the device.
 
-- 
2.20.1

