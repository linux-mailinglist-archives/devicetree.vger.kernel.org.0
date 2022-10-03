Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3767E5F2C80
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 10:54:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230450AbiJCIyD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 04:54:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbiJCIxj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 04:53:39 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6866A65AE
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 01:37:21 -0700 (PDT)
Received: from mail.ideasonboard.com (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net [86.13.91.161])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2AD83A4C;
        Mon,  3 Oct 2022 10:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1664786239;
        bh=NEqUW/g3VlJOpC1G4a2dhCD0UXHgCAWdUncHD06p7mY=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=JGgnnWEBTAZTswLhFYiSyaKkqnK5/DyvitnuDU21MvyLpIQQZPiQOqefyEqRaEl8P
         yogkmaMvAhPcD0TZZSvfOM5PjpN1j3+jOP+q8DZeVCZQk8szWi6yYTEqmPh7jzgPr+
         rV/2D7eVmXObxv6ELyswUTifJ5QUtj8o0ToKexqE=
From:   Daniel Scally <dan.scally@ideasonboard.com>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        laurent.pinchart@ideasonboard.com, kieran.bingham@ideasonboard.com,
        debix-tech@polyhex.net, Daniel Scally <dan.scally@ideasonboard.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Polyhex Technology Co.
Date:   Mon,  3 Oct 2022 09:37:03 +0100
Message-Id: <20221003083705.22495-2-dan.scally@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003083705.22495-1-dan.scally@ideasonboard.com>
References: <20221003083705.22495-1-dan.scally@ideasonboard.com>
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

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
---
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

