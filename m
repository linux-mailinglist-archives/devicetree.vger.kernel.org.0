Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0491DBEC6D
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 09:18:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727996AbfIZHSY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Sep 2019 03:18:24 -0400
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77]:52334 "EHLO
        mx0a-00128a01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727821AbfIZHSP (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 26 Sep 2019 03:18:15 -0400
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
        by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x8Q7DSsq018177;
        Thu, 26 Sep 2019 03:17:03 -0400
Received: from nam03-co1-obe.outbound.protection.outlook.com (mail-co1nam03lp2058.outbound.protection.outlook.com [104.47.40.58])
        by mx0a-00128a01.pphosted.com with ESMTP id 2v6hj969un-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
        Thu, 26 Sep 2019 03:17:02 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jlum2Mpq3xaXUlqEdDe6aNv0jwBm6CH1OTH1hodoPp1765b4C97S+jAGgybmjT9xx7IQqvP+Tg19uzQ22d02lpOF2ejAska4lfEEH6cbyTf52uK9GJjGvedQsXHX4Rvsu/ZZxpjV50FR+OXrBm/KpnguWMgWrAvyn34mSe2qJFeRX5OX4ph1c+qwT9nvdpMI4EPy5d8ugjh61pkP8KlJIKgs6nn7NTAq01VjmLQFJn3B+lVzahmj74mhdZTglPo+2jbkMydfEnbEiYuXGoA+N90qflJ8+pMWj1glyZYdZ3ZMtsp+huTkW+zxw6ipwn9zcRwn8OI5uyhWf4uJs0i7xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wcg7UWO0/Plxleu8dzxFj4LVb81L0J7le8pWpWVMe2w=;
 b=UpImwPB9C15LuO3JY2EXzRJ0MjkdUsbl0pqfHGhZBqU2XVg62dY5edsppJxD0c4q9KdbWsobjVLxM07rXPAaVO7VbxpfUrl5uo1xtMt32NZY6dIB0RQV4rYjKJFlONCF3a7aMIX8vYkwKrsKqdl01gch0M+H7QiTDpaqTUOoKnD+rxrRlkiLjWZ4HNNyTMIbjAYoYh4YNMoOI5LrRC+PilCNnFqNNmttNmmahwara4q44i+aspiBVDU7KfFZSrWuvyCdbtB7WWjElQq3qp+hOb67r+TsJ0C2AeyR6aOS1w7xS5SbRbSzQYDL2YuiOv59ns0cdPvqpTeCtaqFVP+ixA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.55) smtp.rcpttodomain=gmail.com smtp.mailfrom=analog.com;
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wcg7UWO0/Plxleu8dzxFj4LVb81L0J7le8pWpWVMe2w=;
 b=LaMwEHkiGn+uQwpD6tIWusJWqL+21BNP8DyvDgCjTLyFyHRlCFOhXeAmtTdFee+XYQpw4zu15PJA3l7fA74/AyuvfzhNV7Qs6DnbbyrndtNujHO0qCK3Oz8ssNKWj5wAh7XS3MZQR+7C8c2nUiPaYAh7N9qOc91RhCOBztlwaeE=
Received: from BL0PR03CA0034.namprd03.prod.outlook.com (2603:10b6:208:2d::47)
 by BYAPR03MB3989.namprd03.prod.outlook.com (2603:10b6:a03:7c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.25; Thu, 26 Sep
 2019 07:17:01 +0000
Received: from SN1NAM02FT011.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::202) by BL0PR03CA0034.outlook.office365.com
 (2603:10b6:208:2d::47) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.21 via Frontend
 Transport; Thu, 26 Sep 2019 07:17:00 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 SN1NAM02FT011.mail.protection.outlook.com (10.152.72.82) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.20
 via Frontend Transport; Thu, 26 Sep 2019 07:17:00 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com [10.64.69.107])
        by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x8Q7Gsga010188
        (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
        Thu, 26 Sep 2019 00:16:54 -0700
Received: from nsa.ad.analog.com (10.44.3.90) by NWD2HUBCAS7.ad.analog.com
 (10.64.69.107) with Microsoft SMTP Server (TLS) id 14.3.408.0; Thu, 26 Sep
 2019 03:16:59 -0400
From:   =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>
CC:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/2] dt-bindings: asoc: Add ADAU7118 documentation
Date:   Thu, 26 Sep 2019 09:17:07 +0200
Message-ID: <20190926071707.17557-2-nuno.sa@analog.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190926071707.17557-1-nuno.sa@analog.com>
References: <20190926071707.17557-1-nuno.sa@analog.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.44.3.90]
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55;IPV:NLI;CTRY:US;EFV:NLI;SFV:NSPM;SFS:(10009020)(39860400002)(376002)(396003)(136003)(346002)(189003)(199004)(476003)(11346002)(8676002)(7696005)(2616005)(76176011)(5660300002)(246002)(5820100001)(4326008)(70586007)(23676004)(26005)(86362001)(3846002)(6116002)(966005)(47776003)(1076003)(6666004)(356004)(70206006)(50226002)(36756003)(16526019)(6306002)(478600001)(186003)(45776006)(305945005)(7736002)(7636002)(2906002)(316002)(486006)(106002)(2870700001)(54906003)(110136005)(336012)(8936002)(126002)(50466002)(446003)(426003);DIR:OUT;SFP:1101;SCL:1;SRVR:BYAPR03MB3989;H:nwd2mta1.analog.com;FPR:;SPF:Pass;LANG:en;PTR:nwd2mail10.analog.com;MX:1;A:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bdca5296-7b07-4724-49a0-08d74251862f
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328)(7193020);SRVR:BYAPR03MB3989;
X-MS-TrafficTypeDiagnostic: BYAPR03MB3989:
X-MS-Exchange-PUrlCount: 3
X-Microsoft-Antispam-PRVS: <BYAPR03MB3989C6BB9B7CF4EF409F174999860@BYAPR03MB3989.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0172F0EF77
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: jbLlIjfxITK6Tkhxl6oPNouwES0KgYdDd9zQnyUAUbi28KEtmLyF5iSZWV5nII7QAjaAMWPXggTZCyb7CXXs6DYsuKkRI1qV+6CdtKVFBcNjr6uwxD7Q+TLa1/hgMrLaTlcHbbcoymBxFRiLGAP651sGd5gmuOu9omP2GSACsOoTmJMx1ocByIux8VV/FtVMmgY2J2Z+XP1W5Or8SiyZCTEImDRNROfbP5hnJDaxOSmeVUKp3olY7DV+CJcWuj5dq17MIuVucJ+apBEdWdGbjrMDZkWXCUIEjFO9G72PCCxmKn3pk8cVbSucpagxEsNSJgnAojvRt3yVeRh/65iA7NjSvvYfaeGMeU5sffjWz4ybB4CeNYWFJzs6ABV4aACS6/gOhhTL4vtiI3mm/QNGcrH5Wxrcx8+tw8rT0CxioAE77K54wAdRJeoO1H5qosviMV6JlOrFzBKIqpwFuLIx2Q==
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2019 07:17:00.5953
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bdca5296-7b07-4724-49a0-08d74251862f
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a;Ip=[137.71.25.55];Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3989
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-26_02:2019-09-25,2019-09-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 phishscore=0 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0
 mlxscore=0 adultscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1909260072
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the ADAU7118 8 channel PDM to I2S/TDM converter devicetree
bindings.

Signed-off-by: Nuno Sá <nuno.sa@analog.com>
---
 .../bindings/sound/adi,adau7118.yaml          | 88 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 89 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/adi,adau7118.yaml

diff --git a/Documentation/devicetree/bindings/sound/adi,adau7118.yaml b/Documentation/devicetree/bindings/sound/adi,adau7118.yaml
new file mode 100644
index 000000000000..e5776fb60c7f
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/adi,adau7118.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/adi,adau7118.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+
+title: Analog Devices ADAU7118 8 Channel PDM to I2S/TDM Converter
+
+maintainers:
+  - Nuno Sá <nuno.sa@analog.com>
+
+description: |
+  Analog Devices ADAU7118 8 Channel PDM to I2S/TDM Converter over I2C or HW
+  standalone mode.
+  https://www.analog.com/media/en/technical-documentation/data-sheets/ADAU7118.pdf
+
+properties:
+  compatible:
+    enum:
+      - adi,adau7118
+
+  reg:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+  IOVDD-supply:
+    description: Digital Input/Output Power Supply.
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+
+  DVDD-supply:
+    description: Internal Core Digital Power Supply.
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+
+  adi,decimation-ratio:
+    description: |
+      This property set's the decimation ratio of PDM to PCM audio data.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [64, 32, 16]
+        default: 64
+
+  adi,pdm-clk-map:
+    description: |
+      The ADAU7118 has two PDM clocks for the four Inputs. Each input must be
+      assigned to one of these two clocks. This property set's the mapping
+      between the clocks and the inputs.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32-array
+      - minItems: 4
+        maxItems: 4
+        items:
+          maximum: 1
+        default: [0, 0, 1, 1]
+
+required:
+  - "#sound-dai-cells"
+  - compatible
+
+dependencies:
+  IOVDD-supply: [ DVDD-supply ]
+  DVDD-supply: [ IOVDD-supply ]
+
+examples:
+  - |
+    i2c0 {
+        /* example with i2c support */
+        #address-cells = <1>;
+        #size-cells = <0>;
+        status = "okay";
+        adau7118_codec: adau7118-codec@14 {
+                compatible = "adi,adau7118";
+                reg = <14>;
+                #sound-dai-cells = <0>;
+                status = "okay";
+                adi,pdm-clk-map = <1 1 0 0>;
+                adi,decimation-ratio = <16>;
+        };
+    };
+
+    /* example with hw standalone mode */
+    adau7118_codec_hw: adau7118-codec-hw {
+            compatible = "adi,adau7118";
+            #sound-dai-cells = <0>;
+            status = "okay";
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 77c920559d82..88158010fbd7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -996,6 +996,7 @@ F:	sound/soc/codecs/ad1*
 F:	sound/soc/codecs/ad7*
 F:	sound/soc/codecs/ssm*
 F:	sound/soc/codecs/sigmadsp.*
+F:	Documentation/devicetree/bindings/sound/adi,adau*
 
 ANALOG DEVICES INC DMA DRIVERS
 M:	Lars-Peter Clausen <lars@metafoo.de>
-- 
2.23.0

