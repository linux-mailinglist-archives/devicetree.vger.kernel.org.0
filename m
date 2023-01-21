Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABCB56766A4
	for <lists+devicetree@lfdr.de>; Sat, 21 Jan 2023 15:06:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbjAUOGk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Jan 2023 09:06:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjAUOGj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Jan 2023 09:06:39 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D791637B48
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 06:06:37 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MplHR-1ovgRn0vO9-00q7R7; Sat, 21 Jan 2023 15:01:10 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        =?UTF-8?q?S=C3=A9bastien=20Szymanski?= 
        <sebastien.szymanski@armadeus.com>,
        Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 2/2] dt-bindings: arm: Document the rest of i.MX28 based boards
Date:   Sat, 21 Jan 2023 15:00:53 +0100
Message-Id: <20230121140053.10242-2-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230121140053.10242-1-stefan.wahren@i2se.com>
References: <20230121140053.10242-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:fM2V/sbpbIOXDCuTIG+llT/N7Y/Q2607yE45nT5eg3uWn4seesc
 Nh3CnqIAaCXoZYsUjsOlEK/NU1E0WsdEecU8HYTy/hpDd6UNEB5STy2+s3E0m6sIE1e2UUU
 Aho3i6Zew6PVVUSRiJelyK47QcH3bk04Lc/SO/2WLprsKgLrwmyavDAAk5SGKZ+6cOL+XHO
 e9DyyNSFpy0y7pz8rdOpw==
UI-OutboundReport: notjunk:1;M01:P0:vwc4ktLS2Vg=;Urcq8stTd8UiuYzA5vv3t/WnQjn
 e7JKKHb2pl/jDncWKVP7EihJ28Zi9PWwLPSG53M5RbO/rWdvNOwH95THpfUd7ObNZucsKyabF
 qFiUqGqfcE3ICJ7DDxaF0RC6yu2GNQlNofQwXXZHohAe6FhvOwKxEBJzlbs0yfAtUjv1xagNp
 qYADiJn+Bto3c2o0FgF1QLdpUzSLBkO+sE16Dl6PTxutmYgEWc8pieeuZQ14IzB6aC4Q38FWM
 YVnaR4QvTdZxux+0I11pooRPz+c6haoes2yE30qYP5Ouo6IyaS916QNZhkxdG86YFV7zMqynA
 6ibYV8qsXl0yT4U7S7RB/lVWzNEP9qkkKnDZzJf+wOadc5DnUKsH6i8NdZYme0YvBeH10+jDS
 kVD60sjtsDQ+6cjHB2lEm8WExZzgK3fQ5zt4btR/Eyl/LhJetkQgWTRGxhd/GlavAlzym/7Gh
 MaTCHq1pVm3DR+0x6tw5dbm+2zg7ce0YDIChYLmDcReiL27QPsL9847zEpuC77EQ9R4rTUgQM
 Q6q+QAwVEtLgsFopA5O6MxYQVjOd6dtq4+84NuQHP6oezOFNh3ADtBF3jEW2fBU5C/HKDyUoM
 1zzN8JOLN63boi/Lnc12qY72xEDFnjuH1/ErBXnTK2eGDFOgBBVNC28l93Si96S5YX4uEFbuV
 jqL6jSpNYkhHnbuSgWZYv9RuBGspkVaZ2LWppjDZzg==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Not all compatibles of i.MX28 based boards are documented, which
cause dtbs_check warnings. So add the missing compatibles to
fsl.yaml.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../devicetree/bindings/arm/fsl.yaml          | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 599e8fcec6bc..ce5b5a82ee3a 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -88,18 +88,56 @@ properties:
         items:
           - enum:
               - armadeus,imx28-apf28      # APF28 SoM
+              - bluegiga,apx4devkit       # Bluegiga APx4 SoM on dev board
+              - crystalfontz,cfa10036     # Crystalfontz CFA-10036 SoM
+              - eukrea,mbmx28lc
               - fsl,imx28-evk
               - i2se,duckbill
               - i2se,duckbill-2
+              - karo,tx28                 # Ka-Ro electronics TX28 module
+              - lwn,imx28-xea
+              - msr,m28cu3                # M28 SoM with custom base board
+              - schulercontrol,imx28-sps1
               - technologic,imx28-ts4600
           - const: fsl,imx28
 
+      - description: i.MX28 Aries M28 SoM Board
+        items:
+          - const: aries,m28
+          - const: denx,m28
+          - const: fsl,imx28
+
+      - description: i.MX28 Aries M28EVK Board
+        items:
+          - const: aries,m28evk
+          - const: denx,m28evk
+          - const: fsl,imx28
+
       - description: i.MX28 Armadeus Systems APF28Dev Board
         items:
           - const: armadeus,imx28-apf28dev
           - const: armadeus,imx28-apf28
           - const: fsl,imx28
 
+      - description: i.MX28 Crystalfontz CFA-10036 based Boards
+        items:
+          - enum:
+              - crystalfontz,cfa10037
+              - crystalfontz,cfa10049
+              - crystalfontz,cfa10057
+              - crystalfontz,cfa10058
+          - const: crystalfontz,cfa10036
+          - const: fsl,imx28
+
+      - description: i.MX28 Crystalfontz CFA-10037 based Boards
+        items:
+          - enum:
+              - crystalfontz,cfa10055
+              - crystalfontz,cfa10056
+          - const: crystalfontz,cfa10037
+          - const: crystalfontz,cfa10036
+          - const: fsl,imx28
+
       - description: i.MX28 Duckbill 2 based Boards
         items:
           - enum:
@@ -109,6 +147,19 @@ properties:
           - const: i2se,duckbill-2
           - const: fsl,imx28
 
+      - description: i.MX28 Eukrea Electromatique MBMX283LC Board
+        items:
+          - const: eukrea,mbmx283lc
+          - const: eukrea,mbmx28lc
+          - const: fsl,imx28
+
+      - description: i.MX28 Eukrea Electromatique MBMX287LC Board
+        items:
+          - const: eukrea,mbmx287lc
+          - const: eukrea,mbmx283lc
+          - const: eukrea,mbmx28lc
+          - const: fsl,imx28
+
       - description: i.MX31 based Boards
         items:
           - enum:
-- 
2.34.1

