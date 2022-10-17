Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 110C1601284
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 17:11:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230452AbiJQPLT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 11:11:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231218AbiJQPLO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 11:11:14 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0851175B8
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 08:11:10 -0700 (PDT)
Received: from mail.ideasonboard.com (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net [86.13.91.161])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 89340E70;
        Mon, 17 Oct 2022 17:11:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1666019467;
        bh=dD47nasK5odHhQjco+fAENn/8bMnVplBLHHCVxtgATI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=bFPqbVe/7bs2av2kia90xJpgLaPeIHSIHrNVoEZ4WIduCuS712yz7WqmTDdoFGoZ5
         8sfq8o+m7bnVHuOleEFBdx1sNCN5juNr/GEOk3A6xcanBJthITcEc4anF+U011uSHB
         O0K2tuyf1BerYm/OQhmuSPf8GhZLr/Wu7yQSW2zA=
From:   Daniel Scally <dan.scally@ideasonboard.com>
To:     krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        kieran.bingham@ideasonboard.com, debix-tech@polyhex.net,
        Daniel Scally <dan.scally@ideasonboard.com>
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add Polyhex Technology Co.
Date:   Mon, 17 Oct 2022 16:10:48 +0100
Message-Id: <20221017151050.2321919-2-dan.scally@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221017151050.2321919-1-dan.scally@ideasonboard.com>
References: <20221017151050.2321919-1-dan.scally@ideasonboard.com>
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
Changes in v4:

  - None

Changes in v3:

  - None

Changes in v2:

  - None

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2f0151e9f6be..7ba1d2c11aa9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -995,6 +995,8 @@ patternProperties:
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

