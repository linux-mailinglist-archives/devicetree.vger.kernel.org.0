Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5ADEF7044CC
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 07:45:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229978AbjEPFpM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 01:45:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbjEPFpM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 01:45:12 -0400
Received: from APC01-PSA-obe.outbound.protection.outlook.com (mail-psaapc01on2040.outbound.protection.outlook.com [40.107.255.40])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98BEF35A0
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 22:45:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n7S4g2qm/8w3xtG3Af8k8ufdBPbJoBlY6E+npYFO6rhFkERLsBZh8VEk61apoRX0mnet89mc/Hvk1bxgYe1d2lhvhFkQycIVxq+tgV6ZiaVkBYh+fKGEpsLKN92o4jK05rfwrkgFgDa3IjX+od7VSsOVYJrcOUWhe5zVnxCgzO+hePQRwtyQVMiutBtSyS4GjRBPvSpz2PxJ88WTeHqcbNT1K04Yiy0NqlZvbxHh9/yPdTrR0nXzgG+TkgttckUNJQ1Qs22xIFpnTTQzTBIndyXhxdt3F0vjMPWtFMzBxGRQrYxURX6LEJe6sEE0rQ7KXEY87CRVL7iUwC84yqAh6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3WiG9MuHqOut1bXVHImQNWWtjdMN4yu8sUelVHyexNI=;
 b=KUHXX1zsTzZrJ4EB5yezsI7ATQviIHfKM1rbSBg+W1MbxpnG6uzWAUJbcnbeTRGGzHOw4wnJPtURZp22T+o5Xa7x1mv8Fpc8tR19EIoxwp3GIj1rFxVbx7q/8O3uP07Gq87LTgZCxdIm88/n/wh4yTuosR5kI8klthG5VgoBuBKC5W2THYJ16XWSund3gOiVeMBMsCM09MyIeJCL8GKhyWfxJmE1vJsOpmKAC2WHDuFb0qad6at6MVXNrZ1mACti+IAY0H4u1A1kyO5vZ5aD9NNt05Sf3Wyy823OazqOnVTXDjrXk8dADcpmnmy60r53ZR66oJOn+LvzPXCYZBIxzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 211.75.126.7) smtp.rcpttodomain=kernel.org smtp.mailfrom=nuvoton.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=nuvoton.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nuvoton.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3WiG9MuHqOut1bXVHImQNWWtjdMN4yu8sUelVHyexNI=;
 b=R0NdWMtEreFGrdeFMAR/sQKsnY/0V4gAnDITXF2QCiGl84vbWdTdG2Zs/P7J7sWqmRE/nRans4780ipyRgQBiobWHYT+Ee46mZ0Z5Me3n4wY9SVfsWu7Xr/NFcUzIvhnPhvmLpgtEFBRuBx0GzJMl/l3MXO3cah78VuIb4t5u7w=
Received: from SG2PR02CA0003.apcprd02.prod.outlook.com (2603:1096:3:17::15) by
 SI2PR03MB5500.apcprd03.prod.outlook.com (2603:1096:4:12f::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.32; Tue, 16 May 2023 05:45:06 +0000
Received: from SG2APC01FT0057.eop-APC01.prod.protection.outlook.com
 (2603:1096:3:17:cafe::57) by SG2PR02CA0003.outlook.office365.com
 (2603:1096:3:17::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33 via Frontend
 Transport; Tue, 16 May 2023 05:45:06 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 211.75.126.7)
 smtp.mailfrom=nuvoton.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nuvoton.com;
Received-SPF: Pass (protection.outlook.com: domain of nuvoton.com designates
 211.75.126.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=211.75.126.7; helo=NTHCCAS01.nuvoton.com; pr=C
Received: from NTHCCAS01.nuvoton.com (211.75.126.7) by
 SG2APC01FT0057.mail.protection.outlook.com (10.13.36.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6411.15 via Frontend Transport; Tue, 16 May 2023 05:45:06 +0000
Received: from NTHCCAS03.nuvoton.com (10.1.20.28) by NTHCCAS01.nuvoton.com
 (10.1.8.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Tue, 16 May
 2023 13:45:05 +0800
Received: from NTHCCAS04.nuvoton.com (10.1.8.29) by NTHCCAS03.nuvoton.com
 (10.1.20.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1847.3; Tue, 16 May
 2023 13:45:04 +0800
Received: from localhost.localdomain (10.11.36.27) by NTHCCAS04.nuvoton.com
 (10.1.8.29) with Microsoft SMTP Server id 15.1.2176.2 via Frontend Transport;
 Tue, 16 May 2023 13:45:04 +0800
From:   David Lin <CTLIN0@nuvoton.com>
To:     <broonie@kernel.org>
CC:     <lgirdwood@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <alsa-devel@alsa-project.org>,
        <devicetree@vger.kernel.org>, <YHCHuang@nuvoton.com>,
        <KCHSU0@nuvoton.com>, <WTLI@nuvoton.com>, <SJLIN0@nuvoton.com>,
        <ctlin0.linux@gmail.com>, David Lin <CTLIN0@nuvoton.com>
Subject: [PATCH] ASoC: dt-bindings: nau8810: Convert to dtschema
Date:   Tue, 16 May 2023 13:44:48 +0800
Message-ID: <20230516054447.1081404-1-CTLIN0@nuvoton.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-NotSetDelaration: True
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SG2APC01FT0057:EE_|SI2PR03MB5500:EE_
X-MS-Office365-Filtering-Correlation-Id: ee355f69-ccca-451f-0577-08db55d0b412
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SQ5ykzRv5ZfDrJ2t9b9Hsewc6kzfaqaJXyZVs2P5+xQMcXqzpT/GRDzYl0ns4C7rg7Mx5fw6k67jlSR1OG/hgl7R2NhnVows6aXvm8Z8SGtUuIHmy4unz1oBhNuKweYR7ovqpmi+zti3PEYfS7lgiWCwAjzauFP32A+2aAkl2nw0BDv4alxAdKlEM9WReMJBFYz6t1rYcArfNd2hCpUcFAL46MEEOBkSgYeHS7SCqtG1w3h7kfiiDIjyOGXLEqS633J9auRF3YCDaQKkTsgOTKrIDyupSYZoNCrLOGaD9PcYX04SBP298snPSLMF8qy19zHG3BmUbiJn03Or68NJ7xbYXnxPHTVmC4RdNkgWRvNTdaoJA4Co9yGD6IIHu8gJdlVmQzrDqkqUronXV8QjSYRMqKsg/SCiDZJWibMEMZbu+3pFLfrS1M1xNPo5Ypup/d5BEKDYu5xPnsz/rmD3R3ndqeLVH6M2K+c32wjiO33dWUfJX3jEKFAjLOLD6ma2eVmQNnnVUn5GGrBECWyGFuzNBS40IEuqTbCg+2J/TOlKLgYOjj4CorPymur/5F8BHGYkY/3dwADT6eooIZbKs6HqAasO1gZm4Ll3x5mu8RUAq7foFduNgKp0iYbuvOQVH7z4C9dP57SSljXeLa8fD3IdTCYqEgZmOgwDdH+O+W3P49q5ehSiM8dnTTL6H1fSkxKZBgLllbyAS97hrtxF6vb1cGQInuHJrT4/83SPXJucjcn4wC6tXAQ1Sw+EIPMT8Fe+4JP6f6rXRYSHMZ7isg==
X-Forefront-Antispam-Report: CIP:211.75.126.7;CTRY:TW;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:NTHCCAS01.nuvoton.com;PTR:211-75-126-7.hinet-ip.hinet.net;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(376002)(39860400002)(346002)(451199021)(46966006)(36840700001)(40470700004)(4326008)(36756003)(2906002)(336012)(426003)(5660300002)(8936002)(6916009)(8676002)(41300700001)(40460700003)(40480700001)(316002)(86362001)(70206006)(70586007)(478600001)(54906003)(6666004)(33656002)(186003)(107886003)(356005)(1076003)(82740400003)(83380400001)(26005)(47076005)(36860700001)(82310400005)(2616005)(966005)(81166007);DIR:OUT;SFP:1101;
X-OriginatorOrg: nuvoton.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 05:45:06.4601
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ee355f69-ccca-451f-0577-08db55d0b412
X-MS-Exchange-CrossTenant-Id: a3f24931-d403-4b4a-94f1-7d83ac638e07
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a3f24931-d403-4b4a-94f1-7d83ac638e07;Ip=[211.75.126.7];Helo=[NTHCCAS01.nuvoton.com]
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT0057.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR03MB5500
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the NAU8810 audio CODEC bindings to DT schema.

Signed-off-by: David Lin <CTLIN0@nuvoton.com>
---
 .../devicetree/bindings/sound/nau8810.txt     | 17 -------
 .../bindings/sound/nuvoton,nau8810.yaml       | 45 +++++++++++++++++++
 2 files changed, 45 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/nau8810.txt
 create mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8810.yaml

diff --git a/Documentation/devicetree/bindings/sound/nau8810.txt b/Documentation/devicetree/bindings/sound/nau8810.txt
deleted file mode 100644
index 7deaa452b200..000000000000
--- a/Documentation/devicetree/bindings/sound/nau8810.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-NAU8810/NAU8812/NAU8814 audio CODEC
-
-This device supports I2C only.
-
-Required properties:
-
-  - compatible : One of "nuvoton,nau8810" or "nuvoton,nau8812" or
-	"nuvoton,nau8814"
-
-  - reg : the I2C address of the device.
-
-Example:
-
-codec: nau8810@1a {
-	compatible = "nuvoton,nau8810";
-	reg = <0x1a>;
-};
diff --git a/Documentation/devicetree/bindings/sound/nuvoton,nau8810.yaml b/Documentation/devicetree/bindings/sound/nuvoton,nau8810.yaml
new file mode 100644
index 000000000000..d9696f6c75ed
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/nuvoton,nau8810.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/nuvoton,nau8810.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NAU8810/NAU8812/NAU8814 audio CODEC
+
+maintainers:
+  - David Lin <CTLIN0@nuvoton.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - nuvoton,nau8810
+      - nuvoton,nau8812
+      - nuvoton,nau8814
+
+  reg:
+    maxItems: 1
+
+  '#sound-dai-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        codec@1a {
+            #sound-dai-cells = <0>;
+            compatible = "nuvoton,nau8810";
+            reg = <0x1a>;
+        };
+    };
-- 
2.25.1

