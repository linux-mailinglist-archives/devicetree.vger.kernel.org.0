Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68F9E7246AE
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 16:46:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235266AbjFFOq5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 10:46:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233040AbjFFOql (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 10:46:41 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE1B32139
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 07:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686062727; x=1717598727;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=E9N6gczqBRtzStfelmYrMFPt3bD/yQja4D7peLE7F1A=;
  b=fKkTDQ8mfBOarr2fuTCZEbd8r8fBh7bDm664dqGCyqazgUJ35cmUZI7V
   hrP8j1nWklywZW0vtGK8yb/fzoK7wo7akpe4hz4tPtQN524Bvs6rbLAwu
   BjVrFByVOMTOL3zan5zfo5nWKhxUxKlOPJwC+iIPp0tZiwZXO5FnzF4aO
   yg/SPqRKJi4rNJSDunb0RJixqCrTZeqYcw0HkR08e0rVwBhCt2TIj7On3
   bHSM6WM7LGP+Hq7L3znzzmqMpcQWSoBLUuI5KJtBOSt669rGbbLhJ01wN
   +G/tuDrCPMWVAzVl2grQV9oup2qed+1DZmnHxLsqkMOD5aJWFlqMkCwbK
   w==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31307737"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Jun 2023 16:44:50 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 06 Jun 2023 16:44:50 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 06 Jun 2023 16:44:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686062690; x=1717598690;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=E9N6gczqBRtzStfelmYrMFPt3bD/yQja4D7peLE7F1A=;
  b=JRnGx8y66FpnViI9fVHfcRva2PJpBp7gjP1MIaS3NRMg27KqLVLBIxTU
   l6hw9Lco8GCPaVW+xEwFJT3sa87aZ37yUmjYtUi0mGOv6Yl3Cg2zu8Cpt
   7S56ljX6WoELB7Kne+hFBURa+Px7kaLqY4Hf2AQmdHnVXQWZ7AyDSBb9v
   48dCaJP/2HeeCDW2MV/6kMqe4oxqlAywQIqvPnWnx576q4cyR5EbWH+cd
   tiDAmLoA2LpmVH7a+8M7HDu0/tpRL4fExvIkODy2bd2VBIOg1wnBPxFJ8
   it/9RjfEkxB87rKkP3+VVFlzCH3g6e6lf+PrlnqxBKZB1uUmSGOQPONKl
   g==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31307736"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Jun 2023 16:44:50 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7AEE6280090;
        Tue,  6 Jun 2023 16:44:50 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Liu Ying <victor.liu@nxp.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 1/1] dt-bindings: phy: mixel,mipi-dsi-phy: Remove assigned-clock* properties
Date:   Tue,  6 Jun 2023 16:44:46 +0200
Message-Id: <20230606144447.775942-1-alexander.stein@ew.tq-group.com>
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

These properties are allowed anyway and some SoC (e.g. imx8mq) configure
more than just one clock using these properties.

Fixes: f9b0593dd4fc6 ("dt-bindings: phy: Convert mixel,mipi-dsi-phy to json-schema")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
I can't reproduce the mentioned mis-matches in commit f9b0593dd4fc6
("dt-bindings: phy: Convert mixel,mipi-dsi-phy to json-schema").

Since commit 62270eeb2b639 ("arm64: dts: imx8mq: Add clock parents for
mipi dphy") imx8mq.dtsi configures several clocks using assigned-clocks*
properties.

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

