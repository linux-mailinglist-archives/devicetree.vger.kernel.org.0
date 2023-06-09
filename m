Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A387C7290BD
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 09:16:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238291AbjFIHQv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 03:16:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238281AbjFIHQR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 03:16:17 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A0183589
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 00:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686294941; x=1717830941;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=rglwPnnCh4JkW+rLdV6FB+gI3tpwBPD9iGIxhuqLe+g=;
  b=lZ6CAnkbuTC2R0ULqPoPPPBT8ejEb2MkO98Or90tW3dgQui0FSb+JDEy
   M7aYvPIuO8sAyz9RrJ6gu5krcUgY9n9WkmDj1NEUmS2olAbgLvrpNLimd
   ovQmYdsN1Udq1Hord5CPE//gh4bguESALCMRk2nPrIgDlepe6hlLmRmCV
   onL+hwt01rkfLi7bnZjBrR4X3UIF5i505Qz00u1S04ScYE9G9tibwb9S3
   u5PDcx2K76LTirOKw2JPuKpYdyiyiqVOn3++0Ljchqk3LfhE+Lyf7hhya
   jGJxcCl3WR1hTcTT3fmIe0CVksgvIlsje2cszrp/fQrxqH0rW4ncJ2zgg
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,228,1681164000"; 
   d="scan'208";a="31357752"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 09 Jun 2023 09:15:39 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 09 Jun 2023 09:15:39 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 09 Jun 2023 09:15:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686294939; x=1717830939;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=rglwPnnCh4JkW+rLdV6FB+gI3tpwBPD9iGIxhuqLe+g=;
  b=dOC8GqwjGL66DLKmKpo391W1tGJC8/hs5zXJlcpJnDiNWnmgUhfhibKA
   yqQD6JIDeWqUHUTm49RyoGOHE9kgfJ8j25FOKLZR56b2sj0xLbLVA7p4w
   SOtgQPuOZbkbsBj1eyvTUr+uryu2Hltw9xQZofTdvmYq7W8Yxs0ccgabt
   871e3li18tMvnsLmx1KUZkW1G+wFNXUDc0gIX38XuJF32kS+Q2Nm0juBg
   v6KP21DBE/gA3D416kieBTJ3v+j+yeF5/NCDybKR31jpn9LdL+1x3cZ63
   fnkWraErFQLH2kjqXQXG44KxGKSIQd5VPG2ZA21SEOiYBLIwQlAuCzjSQ
   g==;
X-IronPort-AV: E=Sophos;i="6.00,228,1681164000"; 
   d="scan'208";a="31357751"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 09 Jun 2023 09:15:39 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 5BE7B280087;
        Fri,  9 Jun 2023 09:15:39 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Liu Ying <victor.liu@nxp.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/1] dt-bindings: phy: mixel,mipi-dsi-phy: Remove assigned-clock* properties
Date:   Fri,  9 Jun 2023 09:15:38 +0200
Message-Id: <20230609071538.149712-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
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

With dt-schema v2021.02 these properties are added by default. Some SoC
(e.g. imx8mq) configure more than just one clock using these properties.

Fixes: f9b0593dd4fc6 ("dt-bindings: phy: Convert mixel,mipi-dsi-phy to json-schema")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes in v2:
* Add Conor's r-b
* Add rationale to commit message why these properties can be removed

 .../devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml      | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml b/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
index 786cfd71cb7eb..3c28ec50f0979 100644
--- a/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
@@ -32,15 +32,6 @@ properties:
   clock-names:
     const: phy_ref
 
-  assigned-clocks:
-    maxItems: 1
-
-  assigned-clock-parents:
-    maxItems: 1
-
-  assigned-clock-rates:
-    maxItems: 1
-
   "#phy-cells":
     const: 0
 
-- 
2.34.1

