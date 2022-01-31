Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45A524A3E6E
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 09:05:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243297AbiAaIFg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 03:05:36 -0500
Received: from cpanel.siel.si ([46.19.9.99]:55624 "EHLO cpanel.siel.si"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238057AbiAaIFf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Jan 2022 03:05:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
        s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=/bzSJCWekCk44ARnOWEJGIm7gg/kreZB6Wj46kCVs7E=; b=cBMV9Ets2vnUdR47mPKU18F7De
        zwCLBoK9cRpBb9BPBJ8hwCm7Pw7sTtsWgpTXbE3cnidBp82jOLaIjk0ND8d5Bgkk34jtOTawFL3eR
        5CqjVQdg9zSpJWpaqab14JysieYRc2vZ2TzBSI+/A6UL7ZIHNl/XVRDdRS7+a6Ru0tqoCNwRMxE/u
        Yagf4+qeJZ1pC3q+NZdDjnF5//OCrphQSCDXwk+WptuU68OlRlN+KOUG10iHxWNyVLHmy8m2GPj0u
        iMb0BDD+NgnoXXoA4QR3EKBMa47p3RkkZwtlana3NYBqHT5QZZWA7D3dN/FUfMy1cXycxib4Q/Jum
        +y8RGg0Q==;
Received: from [89.212.21.243] (port=42748 helo=localhost.localdomain)
        by cpanel.siel.si with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.94.2)
        (envelope-from <andrej.picej@norik.com>)
        id 1nERgi-002KmK-LE; Mon, 31 Jan 2022 09:05:31 +0100
From:   Andrej Picej <andrej.picej@norik.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     robh+dt@kernel.org, kernel@pengutronix.de, shawnguo@kernel.org,
        leoyang.li@nxp.com, krzysztof.kozlowski@canonical.com,
        festevam@gmail.com, linux@rempel-privat.de, arnd@arndb.de,
        linux-imx@nxp.com, y.bas@phytec.de
Subject: [PATCH RESEND 1/4] dt-bindings: arm: fsl: add PHYTEC phyGATE Tauri i.MX6 ULL
Date:   Mon, 31 Jan 2022 09:05:23 +0100
Message-Id: <20220131080526.1171072-2-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220131080526.1171072-1-andrej.picej@norik.com>
References: <20220131080526.1171072-1-andrej.picej@norik.com>
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
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for phyGATE Tauri board with phyCORE-i.MX6 ULL.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
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

