Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F1E4234A72
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 16:30:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727830AbfFDOa3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 10:30:29 -0400
Received: from outils.crapouillou.net ([89.234.176.41]:52866 "EHLO
        crapouillou.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727815AbfFDOa3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 10:30:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
        s=mail; t=1559658626; h=from:from:sender:reply-to:subject:subject:date:date:
         message-id:message-id:to:to:cc:cc:mime-version:mime-version:
         content-type:content-transfer-encoding:content-transfer-encoding:
         in-reply-to:references; bh=4cAolbWoKTHLPYyCj5ZQdqh3XnXg7VnevdTyUFj0lEs=;
        b=JmgFYMIMTFg83age8Btws16JHc/vrtlykqnHmb5X75OasFt/ksRQf3sVTd50HmzLG+7kN7
        AKwEJIYdq45qbKkIP5DiNMOxtcVYb6m9ZQ48VRjG4isClO+RAUDqX28Q4YyZ78SaTTquBw
        DTHxh3MOWPFRBW98d0qXCmFYFZsC+oY=
From:   Paul Cercueil <paul@crapouillou.net>
To:     Boris Brezillon <bbrezillon@kernel.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        od@zcrc.me, Paul Cercueil <paul@crapouillou.net>,
        Rob Herring <robh@kernel.org>
Subject: [RE-RESEND PATCH v3 1/4] dt-bindings: memory: jz4780: Add compatible string for JZ4740 SoC
Date:   Tue,  4 Jun 2019 16:30:15 +0200
Message-Id: <20190604143018.11644-1-paul@crapouillou.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a compatible string to support the memory controller built into the
JZ4740 SoC from Ingenic.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
Reviewed-by: Boris Brezillon <bbrezillon@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Notes:
    v2: No change
    
    v3: Change compatible string for jz4740 instead of j4725b

 .../bindings/memory-controllers/ingenic,jz4780-nemc.txt          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ingenic,jz4780-nemc.txt b/Documentation/devicetree/bindings/memory-controllers/ingenic,jz4780-nemc.txt
index f936b5589b19..59b8dcc118ee 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ingenic,jz4780-nemc.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/ingenic,jz4780-nemc.txt
@@ -5,6 +5,7 @@ controller in Ingenic JZ4780
 
 Required properties:
 - compatible: Should be set to one of:
+    "ingenic,jz4740-nemc" (JZ4740)
     "ingenic,jz4780-nemc" (JZ4780)
 - reg: Should specify the NEMC controller registers location and length.
 - clocks: Clock for the NEMC controller.
-- 
2.21.0.593.g511ec345e18

