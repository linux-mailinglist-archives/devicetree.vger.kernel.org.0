Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF7C364483C
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 16:44:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234701AbiLFPoi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 10:44:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234612AbiLFPoi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 10:44:38 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1EDC23BE9
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 07:44:36 -0800 (PST)
Received: from mail.ideasonboard.com (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net [86.13.91.161])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 45BE9558;
        Tue,  6 Dec 2022 16:44:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1670341475;
        bh=ZR8K+h2ZUznYypd9AT2KEoVqsi4HJFTJKw9G2JFIYrc=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=oSDgbZasugqjZA5tdpt41Swt8FXKOoq7+Od2K7spGVfznlZG3gXkqst2LB80pIYx3
         HkAgdpnKFvjjgUHuWfPjQY3dAROAsb7ItndvG2D8kKfzHeLXYK9uGpLXvmfzB06leJ
         YonkmbSVKrmk/aybhPdvGUfsHkXewr6Dj0uiwxA0=
From:   Daniel Scally <dan.scally@ideasonboard.com>
To:     krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        kieran.bingham@ideasonboard.com, debix-tech@polyhex.net,
        Daniel Scally <dan.scally@ideasonboard.com>
Subject: [PATCH v5 1/3] dt-bindings: vendor-prefixes: Add Polyhex Technology Co.
Date:   Tue,  6 Dec 2022 15:44:12 +0000
Message-Id: <20221206154414.1461492-2-dan.scally@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221206154414.1461492-1-dan.scally@ideasonboard.com>
References: <20221206154414.1461492-1-dan.scally@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an entry for Polyhex Technology Co. to vendor-prefixes.yaml

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
Tested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
---
Changes in v5: 

  - None

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 0496773a3c4d..3c9f0c9441aa 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -977,6 +977,8 @@ patternProperties:
     description: PocketBook International SA
   "^polaroid,.*":
     description: Polaroid Corporation
+  "^polyhex,.*":
+    description: Polyhex Technology Co. Ltd.
   "^portwell,.*":
     description: Portwell Inc.
   "^poslab,.*":
-- 
2.34.1

