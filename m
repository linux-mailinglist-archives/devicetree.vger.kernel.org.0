Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2CCB4BDE36
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2019 14:43:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732456AbfIYMnE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Sep 2019 08:43:04 -0400
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77]:9184 "EHLO
        mx0b-00128a01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726369AbfIYMnE (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Sep 2019 08:43:04 -0400
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
        by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x8PCbrYE017479;
        Wed, 25 Sep 2019 08:41:50 -0400
Received: from nam02-bl2-obe.outbound.protection.outlook.com (mail-bl2nam02lp2055.outbound.protection.outlook.com [104.47.38.55])
        by mx0b-00128a01.pphosted.com with ESMTP id 2v6hku4pvw-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Wed, 25 Sep 2019 08:41:50 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SsIoIR9HFJKrqJi872Pkfy3MTvEaRwPCQ5n8dgA+ToyCAj3978gdAh4PnTwd7TYKSDmT+Zv/PVo/x8MTAGUxFSKelo7Hl3vTERvUP8P0VThkxZi4JU/hhJASLrlrYt1vFuyQig1xzwlnify0Lcs5d8GbB1zF0mVq7M0dz3MxgEZs14oB274E10FDAvW2oa8Tj5g0Flxvm4gLsrAQIC/9zUGHzW9pIIyylHLr4GS4t+s3x/WOIkzsNT4yVdRjxkGiYZHyDTXNYO8KaRKxlkoJGmgnbIy3VSBGz2ZpwMRP9uv0Zo7BbulYUFZoNYQrrBauOPtL4BIQHWhBADqweI1zfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wcg7UWO0/Plxleu8dzxFj4LVb81L0J7le8pWpWVMe2w=;
 b=L+ii91M/Q+9JoBs4+WTCY3WUG8QcGF573KRikgNw89jqvj1UwTdCEO5GMg/W0NqQOOzRORKhTwSHz8bELWv0onPWadQc8OfCsicwIaPa9iE5Qv90KLmy5agkPuX2Su3Fxtz8fjx9blXof4Iyfwz0983FVxTAKtwGwEowRK2RTEJZZLfqRof5fyUKMU2TqAUGOv35wjyWtA8zRQlTpwZnJBL6Bw1MrCHE5vmMYc5ORGgP7Tu5Y+zseVl0bWjAnjTaVUVpRq3qyNyJAxPe/FIdQXcrh3zxEswla8O9pcuytXYW2wr1sL9ZmQFQjQzfre+EtIQ4tInLMAVDS0h3xgMHDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.55) smtp.rcpttodomain=gmail.com smtp.mailfrom=analog.com;
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wcg7UWO0/Plxleu8dzxFj4LVb81L0J7le8pWpWVMe2w=;
 b=TxB/lJJ4KZ20bQNERkrOiVpP4fZlJm+JYu/MR7HZgfVopSJP6fAxlbfRzfcGN55XjuL7rcoXC3jJ7TWFlxcFQKt/peDzwe8vVJnCnwTTlGI3Hnir9e6E6XpVJSifR8yyQWSOeCpzwJjhaTMX3ilkNrAo8Ke7XG9nYyfk1FSrwgI=
Received: from DM6PR03CA0068.namprd03.prod.outlook.com (2603:10b6:5:100::45)
 by SN2PR03MB2144.namprd03.prod.outlook.com (2603:10b6:804:c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.26; Wed, 25 Sep
 2019 12:41:48 +0000
Received: from CY1NAM02FT008.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::202) by DM6PR03CA0068.outlook.office365.com
 (2603:10b6:5:100::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2178.18 via Frontend
 Transport; Wed, 25 Sep 2019 12:41:48 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 CY1NAM02FT008.mail.protection.outlook.com (10.152.75.59) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Wed, 25 Sep 2019 12:41:48 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com [10.64.69.107])
        by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x8PCfgKw013401
        (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
        Wed, 25 Sep 2019 05:41:42 -0700
Received: from nsa.sphairon.box (10.44.3.90) by NWD2HUBCAS7.ad.analog.com
 (10.64.69.107) with Microsoft SMTP Server (TLS) id 14.3.408.0; Wed, 25 Sep
 2019 08:41:47 -0400
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
Date:   Wed, 25 Sep 2019 14:42:07 +0200
Message-ID: <20190925124207.204374-2-nuno.sa@analog.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190925124207.204374-1-nuno.sa@analog.com>
References: <20190925124207.204374-1-nuno.sa@analog.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.44.3.90]
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55;IPV:NLI;CTRY:US;EFV:NLI;SFV:NSPM;SFS:(10009020)(346002)(396003)(136003)(376002)(39860400002)(199004)(189003)(6306002)(966005)(316002)(126002)(70206006)(476003)(2616005)(486006)(446003)(11346002)(70586007)(45776006)(76176011)(6116002)(3846002)(47776003)(356004)(6666004)(23676004)(106002)(50466002)(2906002)(2870700001)(1076003)(53416004)(426003)(336012)(5820100001)(8936002)(50226002)(26005)(110136005)(186003)(16526019)(54906003)(36756003)(4326008)(246002)(86362001)(8676002)(305945005)(7636002)(478600001)(7736002)(5660300002);DIR:OUT;SFP:1101;SCL:1;SRVR:SN2PR03MB2144;H:nwd2mta1.analog.com;FPR:;SPF:Pass;LANG:en;PTR:nwd2mail10.analog.com;A:1;MX:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d66c699f-3c21-4211-0b16-08d741b5bb4c
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(4709080)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);SRVR:SN2PR03MB2144;
X-MS-TrafficTypeDiagnostic: SN2PR03MB2144:
X-MS-Exchange-PUrlCount: 3
X-Microsoft-Antispam-PRVS: <SN2PR03MB214422ED95A2A9B6E8CD508A99870@SN2PR03MB2144.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 01713B2841
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: OpATD4wua0AyMHeZaLRBRFsRHl6xH9s8qVkKRMrJ9omHzpfPo0nMMicdtoSy72V7vQFBWRrNO5bz6d1tV6I7W8KE2xHnoX2XAJTa3iVUz6hxaBrzAUTvZbszdXDl7J40f53O4HRTykJCYfaTQeNubaXZx5gYnsLvUN9JDJyk6nDkDzJ4U5ZPc3BQVP2dL7DgGEyyOH8HBaIm15uJYpjKaLxt5mzKPrZsaKbE2NlMLNX3ulIoW1ZvqhMa7aXLO2atBKwVkpFm8U9UNtF0HIG9x2A5wtHeRN9QiIpueb7Oi0mHax79Rs2RtbcnUVE/GqtsfAfgOdIOaBALKyBoKS6//qGqesGWDIHWjBcCmuJGFBboJvJsa93Rp2ilPeYmZJiwEbSGjGIjuaiE+BHA/FhHI2En7LyfqDEoJCY4uUYz1szaBFeEGpxOsD+iJAL8Q9hOnLRmVXqvjDwFT3SUjKIoWw==
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2019 12:41:48.2192
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d66c699f-3c21-4211-0b16-08d741b5bb4c
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a;Ip=[137.71.25.55];Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN2PR03MB2144
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-25_05:2019-09-23,2019-09-25 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 adultscore=0 spamscore=0 mlxlogscore=999 mlxscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909250129
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

