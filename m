Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B4475F9F6A
	for <lists+devicetree@lfdr.de>; Mon, 10 Oct 2022 15:32:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbiJJNcH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Oct 2022 09:32:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbiJJNcG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Oct 2022 09:32:06 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66A3772864
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 06:32:02 -0700 (PDT)
Received: from mail.ideasonboard.com (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net [86.13.91.161])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id B68F3E3A;
        Mon, 10 Oct 2022 15:31:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1665408719;
        bh=z9GzFBREEyugpdQHCNj9FT0yaGOAjZHJpoYypDJqLR0=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=b2C4uvYVSw0pczyqVgPyMqvS+3Go81rAp9cYPPKMckhnJmI9ieXnPZUD0e/T4V6a3
         a2D+Qp3qUWLk7Ojmy2FKwpb+zh5wzbuOzsbRvnIKNbqgLBqU6O2uf8k43h3GX8Lbp7
         eJYJbNT1azTuIKtMgJUVaG0kiiiaRy1D505eO03M=
From:   Daniel Scally <dan.scally@ideasonboard.com>
To:     krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        kieran.bingham@ideasonboard.com, debix-tech@polyhex.net,
        Daniel Scally <dan.scally@ideasonboard.com>
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add Polyhex Technology Co.
Date:   Mon, 10 Oct 2022 14:31:44 +0100
Message-Id: <20221010133146.1430768-2-dan.scally@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221010133146.1430768-1-dan.scally@ideasonboard.com>
References: <20221010133146.1430768-1-dan.scally@ideasonboard.com>
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

