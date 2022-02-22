Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37D074BF47F
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 10:17:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229526AbiBVJQp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 04:16:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230136AbiBVJQo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 04:16:44 -0500
Received: from cpanel.siel.si (cpanel.siel.si [46.19.9.99])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C06D210877C
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 01:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
        s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=5kA21rrqZvG5o4TjDfAbXB/5uQCUtNlrAIS+MNM758M=; b=XbLJwU/TSTnooIWm9htCN4XM0/
        K4BMsSHCHfDNBd+pVSSTPYKrs6NQmD+/hmeZs3UA+Btv+rRNPtdaMiIOwFIWU2fkYtJ32xB1eVppq
        AyKFRAya+O5aH8YmiFtyzATT01vLbPU6h/4/78YqpOPwYtgcWfMEcQba8KECnW+eGjfDMQTWgm6qC
        Y+FmoMDLtJwRAnQPvT5CzqxHg9wo2ruMnAuhXlJaG5AHhq8h6Fn8GwfnJBcVOpTbTgBG4g9bh72gC
        QfCYb8yfGRkS46tB1CIeHmOYf0JdV5Mk97OtN3LVvddMux4TjAQAlyu64J+yfig7KxA+dfkOwZUZ/
        VdfYQvWQ==;
Received: from [89.212.21.243] (port=33310 helo=localhost.localdomain)
        by cpanel.siel.si with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.94.2)
        (envelope-from <andrej.picej@norik.com>)
        id 1nMRHA-001d57-4D; Tue, 22 Feb 2022 10:16:12 +0100
From:   Andrej Picej <andrej.picej@norik.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     robh+dt@kernel.org, kernel@pengutronix.de, shawnguo@kernel.org,
        leoyang.li@nxp.com, krzysztof.kozlowski@canonical.com,
        festevam@gmail.com, linux@rempel-privat.de, arnd@arndb.de,
        linux-imx@nxp.com, y.bas@phytec.de
Subject: [PATCH v2 1/3] dt-bindings: arm: fsl: add PHYTEC phyGATE Tauri i.MX6 ULL
Date:   Tue, 22 Feb 2022 10:16:04 +0100
Message-Id: <20220222091606.530581-2-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220222091606.530581-1-andrej.picej@norik.com>
References: <20220222091606.530581-1-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id: andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H5,
        RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for phyGATE Tauri board with phyCORE-i.MX6 ULL.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes in v2:
 - added Rob's Acked-by
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 97f6eebad76a..aca681477e1e 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -640,6 +640,15 @@ properties:
           - const: phytec,imx6ull-pcl063  # PHYTEC phyCORE-i.MX 6ULL
           - const: fsl,imx6ull
 
+      - description: i.MX6ULL PHYTEC phyGATE-Tauri
+        items:
+          - enum:
+              - phytec,imx6ull-phygate-tauri-emmc
+              - phytec,imx6ull-phygate-tauri-nand
+          - const: phytec,imx6ull-phygate-tauri # PHYTEC phyGATE-Tauri with i.MX6 ULL
+          - const: phytec,imx6ull-pcl063        # PHYTEC phyCORE-i.MX 6ULL
+          - const: fsl,imx6ull
+
       - description: i.MX6ULL Boards with Toradex Colibri iMX6ULL Modules
         items:
           - enum:
-- 
2.25.1

