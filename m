Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4ECEF3771B0
	for <lists+devicetree@lfdr.de>; Sat,  8 May 2021 14:26:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230511AbhEHM1j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 May 2021 08:27:39 -0400
Received: from ns.lynxeye.de ([87.118.118.114]:59871 "EHLO lynxeye.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230507AbhEHM1j (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 8 May 2021 08:27:39 -0400
X-Greylist: delayed 543 seconds by postgrey-1.27 at vger.kernel.org; Sat, 08 May 2021 08:27:39 EDT
Received: by lynxeye.de (Postfix, from userid 501)
        id A019FE74260; Sat,  8 May 2021 14:17:02 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on lynxeye.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.0 tests=ALL_TRUSTED,BAYES_00
        autolearn=ham version=3.3.1
Received: from astat.fritz.box (a89-183-71-68.net-htp.de [89.183.71.68])
        by lynxeye.de (Postfix) with ESMTPA id EEEB5E7424E;
        Sat,  8 May 2021 14:17:00 +0200 (CEST)
From:   Lucas Stach <dev@lynxeye.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        "Lukas F . Hartmann" <lukas@mntre.com>
Cc:     Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] dt-bindings: vendor-prefixes: add mntre
Date:   Sat,  8 May 2021 14:16:49 +0200
Message-Id: <20210508121650.105864-2-dev@lynxeye.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210508121650.105864-1-dev@lynxeye.de>
References: <20210508121650.105864-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MNT Research GmbH develops open source hardware, software
and textiles in Berlin, Germany.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f6064d84a424..11f5fc5452cb 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -717,6 +717,8 @@ patternProperties:
     description: MiraMEMS Sensing Technology Co., Ltd.
   "^mitsubishi,.*":
     description: Mitsubishi Electric Corporation
+  "^mntre,.*":
+    description: MNT Research GmbH
   "^modtronix,.*":
     description: Modtronix Engineering
   "^mosaixtech,.*":
-- 
2.31.1

