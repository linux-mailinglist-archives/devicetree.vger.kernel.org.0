Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE06538E6D8
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 14:46:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232462AbhEXMrs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 08:47:48 -0400
Received: from ns.lynxeye.de ([87.118.118.114]:34429 "EHLO lynxeye.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232389AbhEXMrr (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 24 May 2021 08:47:47 -0400
Received: by lynxeye.de (Postfix, from userid 501)
        id EBD6CE7424E; Mon, 24 May 2021 14:45:47 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on lynxeye.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.0 tests=ALL_TRUSTED,BAYES_00
        autolearn=ham version=3.3.1
Received: from astat.fritz.box (a89-183-24-20.net-htp.de [89.183.24.20])
        by lynxeye.de (Postfix) with ESMTPA id 27326E74214;
        Mon, 24 May 2021 14:45:46 +0200 (CEST)
From:   Lucas Stach <dev@lynxeye.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        "Lukas F . Hartmann" <lukas@mntre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: [PATCH v3 2/4] dt-bindings: vendor-prefixes: add mntre
Date:   Mon, 24 May 2021 14:45:34 +0200
Message-Id: <20210524124536.27854-2-dev@lynxeye.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210524124536.27854-1-dev@lynxeye.de>
References: <20210524124536.27854-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

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

