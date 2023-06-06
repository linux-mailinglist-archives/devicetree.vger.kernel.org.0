Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCF0F7240BB
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 13:21:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234194AbjFFLVT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 07:21:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234238AbjFFLVS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 07:21:18 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80EC2E5E
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 04:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686050477; x=1717586477;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=2mvumiZGx2+Piix5ZdL2TSLfy4EkghiFZMMTdi92zK4=;
  b=oHTpWuenqQE8MaRAFiR3uZiXFznkL4Dj8X+n3uJh8PSpBNKmy8qP+ea/
   yLyo2rm1eQsJEciCsJLmlq2TV/rctAIa52V1MvRIgwYzx2r9ocpmsEyPc
   jokPwjg72Rd/EsV/XizU5sIsxBu85ptaksw2EsiSgWXAb8IPmVGC1dWIA
   ztmYu7grPyT1Y0WeMvy8f8iXfU28SKnp+P8aucraXvaFZ/y9tRtD8qYVm
   LGXW9yldSFXMZkBhxSbq7nhycT1as0xcwhwwRaCUotdKWlgZosMt3LUMQ
   5hM/19gZHnRfEPTp7SMubK+SLEMSzfTpImwHlfb8j63ulEv3+8ZTtID3H
   A==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31301044"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Jun 2023 13:21:14 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 06 Jun 2023 13:21:14 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 06 Jun 2023 13:21:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686050474; x=1717586474;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=2mvumiZGx2+Piix5ZdL2TSLfy4EkghiFZMMTdi92zK4=;
  b=qySB100n4dcq2X3R0uZha7fcQVV50EJu8kItxIEUb+au5dwVzyeiWQuJ
   uOFhZt7S6y+MhjRctwRJNe6z3eWgRmnPXcSNQ9qD/4GxO31OhbZxfyzc6
   lJCP3N6OprAWFF87Rl8UVjaRJuG5i7nm7ncaIG3L4GsLMIBqRjtdRfjOh
   h2rEB4F+ZF6PnIAFh2BQvPXYBJqpHKhMaSalKcbnZv5ZqM5OpzoM5Mnd4
   h7mNORMbp4szfyLpc4YVtMFNTyQ/J4tS5kLcmOi+QJ2pGI1eV9TQAsoMr
   MtCCp41Zx6lv44Ql3GfxHc8Y2Inn2dpnLSE3xQP20ARGGSAx8QOqVvWuF
   A==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31301043"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Jun 2023 13:21:14 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id D1126280092;
        Tue,  6 Jun 2023 13:21:13 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux@ew.tq-group.com, Markus Niebel <Markus.Niebel@tq-group.com>
Subject: [PATCH 1/3] dt-bindings: arm: add TQMa8Xx boards
Date:   Tue,  6 Jun 2023 13:21:06 +0200
Message-Id: <20230606112108.685885-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230606112108.685885-1-alexander.stein@ew.tq-group.com>
References: <20230606112108.685885-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

TQMa8Xx is a SOM series featuring NXP i.MX8X SoC.
They are called TQMa8XQP and TQMa8XDP respectively.
MBa8Xx is an evaluation mainboard for this SOM

Signed-off-by: Markus Niebel <Markus.Niebel@tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 2510eaa8906dd..c4dcdac43bafb 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1195,6 +1195,23 @@ properties:
           - const: toradex,colibri-imx8x
           - const: fsl,imx8qxp
 
+      - description:
+          TQMa8Xx is a series of SOM featuring NXP i.MX8X system-on-chip
+          variants. It is designed to be clicked on different carrier boards
+          MBa8Xx is the starterkit
+        oneOf:
+          - items:
+              - enum:
+                  - tq,imx8dxp-tqma8xdp-mba8xx # TQ-Systems GmbH TQMa8XDP SOM on MBa8Xx
+              - const: tq,imx8dxp-tqma8xdp     # TQ-Systems GmbH TQMa8XDP SOM (with i.MX8DXP)
+              - const: fsl,imx8dxp
+              - const: fsl,imx8qxp
+          - items:
+              - enum:
+                  - tq,imx8qxp-tqma8xqp-mba8xx # TQ-Systems GmbH TQMa8XQP SOM on MBa8Xx
+              - const: tq,imx8qxp-tqma8xqp     # TQ-Systems GmbH TQMa8XQP SOM (with i.MX8QXP)
+              - const: fsl,imx8qxp
+
       - description: i.MX8ULP based Boards
         items:
           - enum:
-- 
2.34.1

