Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94D6E69BE57
	for <lists+devicetree@lfdr.de>; Sun, 19 Feb 2023 04:11:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229441AbjBSDLe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Feb 2023 22:11:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbjBSDLd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Feb 2023 22:11:33 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B66212BD2
        for <devicetree@vger.kernel.org>; Sat, 18 Feb 2023 19:11:32 -0800 (PST)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 90FBA92A;
        Sun, 19 Feb 2023 04:11:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1676776290;
        bh=X0lLUInyPkKpHOsyCncJoPlX1g8/5aikh+d1ToQIWFg=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=U2CY/wuOzp8IWp0EKYP7C6hegzV84reJK0EzcJ7sJ69KRtrrtJbmz6FCzgYStBORK
         zJpkZkZ61Z7g5n83rE4LnJATmfMTecIv6MfKZgYFpNoxwFvZE4rUvImOMiYF1t8hfo
         8WiL7nRQwE1ttFAhMGiqD6Q3QlmbHdrHfxMEqZ9Q=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Marco Contenti <marco.c@variscite.com>,
        Nate Drude <nate.d@variscite.com>,
        FrancescoFerraro <francesco.f@variscite.com>,
        Harshesh Valera <harshesh.v@variscite.com>
Subject: [PATCH v1 1/4] dt-bindings: arm: fsl: Add Variscite DT8MCustomBoard with DART MX8M-PLUS
Date:   Sun, 19 Feb 2023 05:11:23 +0200
Message-Id: <20230219031126.19372-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230219031126.19372-1-laurent.pinchart@ideasonboard.com>
References: <20230219031126.19372-1-laurent.pinchart@ideasonboard.com>
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

The DT8MCustomBoard is a carrier board from Variscite compatible with
the family ox i.MX8M DART modules (i.MX8MM, i.MX8MN and i.MX8MP). Add an
entry for the DT8MCustomBoard v2 mounted with a DART MX8M-PLUS module.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 05b5276a0e14..d62c5643e78f 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -990,6 +990,12 @@ properties:
           - const: tq,imx8mp-tqma8mpql       # TQ-Systems GmbH i.MX8MP TQMa8MPQL SOM
           - const: fsl,imx8mp
 
+      - description: Variscite DT8MCustomBoard with DART i.MX8MP module
+        items:
+          - const: variscite,dart-mx8mp-dt8mcustomboard-v2 # Variscite DART-MX8M-PLUS on DT8MCustomBoard 2.x
+          - const: variscite,dart-mx8mp                    # Variscite i.MX8MP DART-MX8M-PLUS module
+          - const: fsl,imx8mp
+
       - description: i.MX8MQ based Boards
         items:
           - enum:
-- 
Regards,

Laurent Pinchart

