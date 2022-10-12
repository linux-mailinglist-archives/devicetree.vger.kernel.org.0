Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF1195FC3A7
	for <lists+devicetree@lfdr.de>; Wed, 12 Oct 2022 12:21:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbiJLKVx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Oct 2022 06:21:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbiJLKVw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Oct 2022 06:21:52 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADA458B2E4
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 03:21:51 -0700 (PDT)
Received: from mail.ideasonboard.com (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net [86.13.91.161])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id A2158749;
        Wed, 12 Oct 2022 12:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1665570109;
        bh=7amiVuuK213q9K8bp98wEIhKNYJhUJxt/cOkvLpsu8U=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=aSbTpyhczDDymEqAc9GH8xkddJrY+5en2bt7IT1qYQtrv6nXrm9vOtoqdeeKPy/rn
         mvnJtHeQJpqjvSKbGjRBcx9Tzi4mG4QuLW7y2les1w4eweNtLmNikLk3FtW4N2rhcl
         dDg3T7+KJiL7454OIxDWWjp4ECFRiWug5esj/LbU=
From:   Daniel Scally <dan.scally@ideasonboard.com>
To:     krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        kieran.bingham@ideasonboard.com, debix-tech@polyhex.net,
        Daniel Scally <dan.scally@ideasonboard.com>
Subject: [PATCH v3 2/3] dt-bindings: arm: fsl: Enumerate Debix Model A Board
Date:   Wed, 12 Oct 2022 11:21:20 +0100
Message-Id: <20221012102121.1747491-3-dan.scally@ideasonboard.com>
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

Add an entry to the list of imx8mp boards denoting the Debix Model A
board from Polyhex Technology Co.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
---
Changes in v3:

    - Dropped (2GB) from the comment too (Kieran)

Changes in v2:

    - Dropped 2gb suffix, added hyphens for readability (Laurent)

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7431579ab0e8..1cb72eda8652 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -931,6 +931,7 @@ properties:
               - dh,imx8mp-dhcom-pdk2      # i.MX8MP DHCOM SoM on PDK2 board
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
               - gateworks,imx8mp-gw74xx   # i.MX8MP Gateworks Board
+              - polyhex,imx8mp-debix-model-a # Polyhex Debix Model A Board
               - toradex,verdin-imx8mp     # Verdin iMX8M Plus Modules
               - toradex,verdin-imx8mp-nonwifi  # Verdin iMX8M Plus Modules without Wi-Fi / BT
               - toradex,verdin-imx8mp-wifi  # Verdin iMX8M Plus Wi-Fi / BT Modules
-- 
2.34.1

