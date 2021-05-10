Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA224379764
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 21:08:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230497AbhEJTHv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 15:07:51 -0400
Received: from ns.lynxeye.de ([87.118.118.114]:56346 "EHLO lynxeye.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231223AbhEJTHt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 10 May 2021 15:07:49 -0400
Received: by lynxeye.de (Postfix, from userid 501)
        id 3F067E74264; Mon, 10 May 2021 20:59:37 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on lynxeye.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.0 tests=ALL_TRUSTED,BAYES_00
        autolearn=ham version=3.3.1
Received: from astat.fritz.box (a89-183-115-43.net-htp.de [89.183.115.43])
        by lynxeye.de (Postfix) with ESMTPA id A43F8E7425C;
        Mon, 10 May 2021 20:59:35 +0200 (CEST)
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Cc:     "Lukas F . Hartmann" <lukas@mntre.com>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] dt-bindings: vendor-prefixes: add mntre
Date:   Mon, 10 May 2021 20:59:30 +0200
Message-Id: <20210510185931.104780-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510185931.104780-1-l.stach@pengutronix.de>
References: <20210510185931.104780-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Lucas Stach <dev@lynxeye.de>

MNT Research GmbH develops open source hardware, software
and textiles in Berlin, Germany.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
Acked-by: Rob Herring <robh@kernel.org>
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

