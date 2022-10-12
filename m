Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 813845FC3A6
	for <lists+devicetree@lfdr.de>; Wed, 12 Oct 2022 12:21:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229490AbiJLKVv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Oct 2022 06:21:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbiJLKVv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Oct 2022 06:21:51 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D99E8E0F5
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 03:21:50 -0700 (PDT)
Received: from mail.ideasonboard.com (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net [86.13.91.161])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id B41AA4DB;
        Wed, 12 Oct 2022 12:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1665570108;
        bh=Xyt3n51R5HYjmQcN+Xhj/UxHA7P1HOixqV4PLbpmRJk=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=dru/MILJqydlPAdUhRyVJipgEcO91fkaqdi+2Q34ZDGzvlz/vCa9O6I41X2UsbzsV
         Z7wtDgFQkjA4R/qpUquDXy+JZu9Bh3TuZOe4x0P+XRInDcHLP/bS41lUzUcGwQ0Gur
         dMUEH2AlMJV6bbWmOnM9Gm29B3L1qKHKmvcDVBF0=
From:   Daniel Scally <dan.scally@ideasonboard.com>
To:     krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        kieran.bingham@ideasonboard.com, debix-tech@polyhex.net,
        Daniel Scally <dan.scally@ideasonboard.com>
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add Polyhex Technology Co.
Date:   Wed, 12 Oct 2022 11:21:19 +0100
Message-Id: <20221012102121.1747491-2-dan.scally@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221012102121.1747491-1-dan.scally@ideasonboard.com>
References: <20221012102121.1747491-1-dan.scally@ideasonboard.com>
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
Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
---
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

