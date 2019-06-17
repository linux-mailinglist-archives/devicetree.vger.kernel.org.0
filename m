Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CE5644887F
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 18:14:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728036AbfFQQOo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 12:14:44 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:54027 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726005AbfFQQOo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 12:14:44 -0400
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1hcuHI-0000aG-F0; Mon, 17 Jun 2019 18:14:40 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hcuHH-0000vc-D3; Mon, 17 Jun 2019 18:14:39 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, linux-imx@nxp.com
Cc:     devicetree@vger.kernel.org, Gilles.Buloz@kontron.com,
        frieder.schrempf@kontron.de, thomas.schaefer@kontron.com,
        Stefan.Nickl@kontron.com, Michael.Brunner@kontron.com,
        kernel@pengutronix.de, festevam@gmail.com, plaes@plaes.org
Subject: [PATCH v2 1/3] dt-bindings: add Kontron vendor prefix
Date:   Mon, 17 Jun 2019 18:14:30 +0200
Message-Id: <20190617161432.32268-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617161432.32268-1-m.felsch@pengutronix.de>
References: <20190617161432.32268-1-m.felsch@pengutronix.de>
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

Kontron is a leading embedded computer supplier. More information can be
found on: https://www.kontron.de/

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
 - convert from vendor-prefixes.txt to vendor-prefixes.yaml

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 33a65a45e319..9163c5eadd2e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -449,6 +449,8 @@ patternProperties:
     description: Rakuten Kobo Inc.
   "^koe,.*":
     description: Kaohsiung Opto-Electronics Inc.
+  "^kontron,.*":
+    description: Kontron S&T AG
   "^kosagi,.*":
     description: Sutajio Ko-Usagi PTE Ltd.
   "^kyo,.*":
-- 
2.20.1

