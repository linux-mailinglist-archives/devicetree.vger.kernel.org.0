Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BD21CC4B99
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2019 12:38:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726330AbfJBKiA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Oct 2019 06:38:00 -0400
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77]:48706 "EHLO
        mx0b-00128a01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725766AbfJBKiA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Oct 2019 06:38:00 -0400
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
        by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x92AWi2V026102;
        Wed, 2 Oct 2019 06:37:24 -0400
Received: from nam02-cy1-obe.outbound.protection.outlook.com (mail-cys01nam02lp2050.outbound.protection.outlook.com [104.47.37.50])
        by mx0b-00128a01.pphosted.com with ESMTP id 2va19cw2t1-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Wed, 02 Oct 2019 06:37:23 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GNaeBDUPTVfm4hXPaI58QLqXPmkTOvyg72a5S5MaDGW+LEvQq4nBTUhv8qAmP2yaw2bNATkgoZ3/5Oh5DvH7ESYIeQGAMxKN4/OdsJLy/OZO6QJgyWdeQ83d8Uqra6yXUgSEi46X8WqMlCApaxhLjskESNzAhKcS5DD+jP9o7MQ+tT7noTAceSVDLL0r+ahKuWB+LgZMc4s1RugvyrDa0CoCbFdf6Pk5tm7LxVKKsPHeG3/jVrNmbW4TOPWO6uMtPyUQNNnMgn5ORKzqoEv55beAx/LJDbJ1BSQGfIk8ylh21oyC6+t2n14xw8VO2TJNYbQXKUxC8/nXmaAwcUD27g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jjNxrtLezlSqNHncroevDpQ33gTifF45tOkRght2UDE=;
 b=GnV1mSQp9KsOm8y6+Ibje/D1b6aG7s1pBZqGozd+PEsxEjPdkr6tKfloFCsx+9/w1f13EJlFtMaGJ1b9KrDHtHLQ+Tgk8L874uc9E4zNLLVDT6NB+IoqyNlE1O0SI9ydmuQUpl1kjGk7u7A1LmHIUzyTSgcJdbNOrst2RqFsdapETNzfu88MBeopq5ST0HYjW+ZSH1YfLTrKLJ56QeNUOOLiJMljtOBt821aEXsrSORpHnrA57hwKyNYQAJkBzI1yqMoUsrJhWcF67TbO6MqZoaAr51VSmaUcARr/KaDfHGuFzkFAbLjC3pCqawtASDgnymMhVE5WvBS9ztWWcfmuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=kernel.org smtp.mailfrom=analog.com;
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jjNxrtLezlSqNHncroevDpQ33gTifF45tOkRght2UDE=;
 b=5qqSdbU5ip8wTaoyFBeYuO590y/30hRKbyiJQhFANRGto0Yij7wR3SBDLxPOmv8Xudv6kADyGpcrnPmGxR/Po91kCuMPEebTnvdCPeCGc9fD52h4aK/F395yqOS2AeRDntQQV/yxTR3tEg74m7S/kvmlL7HJ87NtYCDmAQX45RM=
Received: from DM6PR03CA0022.namprd03.prod.outlook.com (2603:10b6:5:40::35) by
 BN3PR03MB2307.namprd03.prod.outlook.com (2a01:111:e400:7bb1::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.18; Wed, 2 Oct
 2019 10:37:21 +0000
Received: from CY1NAM02FT053.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::205) by DM6PR03CA0022.outlook.office365.com
 (2603:10b6:5:40::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.14 via Frontend
 Transport; Wed, 2 Oct 2019 10:37:21 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 CY1NAM02FT053.mail.protection.outlook.com (10.152.74.165) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2305.20
 via Frontend Transport; Wed, 2 Oct 2019 10:37:20 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com [10.64.69.107])
        by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x92AbHVZ019580
        (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
        Wed, 2 Oct 2019 03:37:17 -0700
Received: from nsa.sphairon.box (10.44.3.90) by NWD2HUBCAS7.ad.analog.com
 (10.64.69.107) with Microsoft SMTP Server (TLS) id 14.3.408.0; Wed, 2 Oct
 2019 06:37:16 -0400
From:   =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To:     <devicetree@vger.kernel.org>, <alsa-devel@alsa-project.org>
CC:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 2/2] dt-bindings: asoc: Add ADAU7118 documentation
Date:   Wed, 2 Oct 2019 12:37:29 +0200
Message-ID: <20191002103729.94676-2-nuno.sa@analog.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191002103729.94676-1-nuno.sa@analog.com>
References: <20191002103729.94676-1-nuno.sa@analog.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.44.3.90]
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57;IPV:NLI;CTRY:US;EFV:NLI;SFV:NSPM;SFS:(10009020)(376002)(39860400002)(346002)(136003)(396003)(189003)(199004)(478600001)(8676002)(50466002)(3846002)(6306002)(356004)(5660300002)(8936002)(1076003)(50226002)(246002)(47776003)(11346002)(36756003)(86362001)(76176011)(53416004)(2616005)(5820100001)(186003)(2906002)(16526019)(7736002)(316002)(7636002)(305945005)(26005)(70586007)(4326008)(110136005)(336012)(70206006)(126002)(476003)(54906003)(45776006)(2870700001)(966005)(6116002)(486006)(6666004)(426003)(106002)(446003)(23676004);DIR:OUT;SFP:1101;SCL:1;SRVR:BN3PR03MB2307;H:nwd2mta2.analog.com;FPR:;SPF:Pass;LANG:en;PTR:nwd2mail11.analog.com;MX:1;A:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9986d86d-33b3-4e47-a059-08d7472480c9
X-MS-TrafficTypeDiagnostic: BN3PR03MB2307:
X-MS-Exchange-PUrlCount: 3
X-Microsoft-Antispam-PRVS: <BN3PR03MB2307977D250F7AA8DF4C44CE999C0@BN3PR03MB2307.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0178184651
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vpwu8DszQ0bXQ6dH7fVxn/ku4GXZJk1uWElYErYHZ9sN3fj9kmEqXzO5+jFG+ODO3ql1vcEDplQMAOXkbxp9WQlexEUQ1AKIo1B7zvwqxQv+lZDz5DBrbQArn2fV20CvRqeE0U5oui16GODj1bfeAkPLDofBDHSHGj9I7y9lteyd6XFQQBXw8mcuWlGFpuqjWmBUt5GICIGC3dcux6H3/MsC57jJhpHICmb7jmz1Y5xc5BQmo2/1p56P2nDFEhUCP0LtfQQS2cW0onyBfwqVlxMgTDPbyaLM+8vtCblpuzqFs8rCQDb6bIboGuyRBdRe5KWFpPL0KlUvx3xmNNpqfNfeLemXNohgn6Bz9jppoafTjo+hAZja+3pCe0HietBeWOjxXyZA0odgSs5TZxBGS+tfy9msUHjhd21cSZ3S6ea3VJYy1ZtOLOSJJu9Vi7H5a/fTQGDP46rmTXvsT6vvMA==
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2019 10:37:20.0035
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9986d86d-33b3-4e47-a059-08d7472480c9
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a;Ip=[137.71.25.57];Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR03MB2307
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-02_06:2019-10-01,2019-10-02 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=999 adultscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 malwarescore=0 impostorscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910020099
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the ADAU7118 8 channel PDM to I2S/TDM converter devicetree
bindings.

Signed-off-by: Nuno Sá <nuno.sa@analog.com>
---
Changes in v2:
 * List regulators as required.

 .../bindings/sound/adi,adau7118.yaml          | 90 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 91 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/adi,adau7118.yaml

diff --git a/Documentation/devicetree/bindings/sound/adi,adau7118.yaml b/Documentation/devicetree/bindings/sound/adi,adau7118.yaml
new file mode 100644
index 000000000000..5713133005b5
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/adi,adau7118.yaml
@@ -0,0 +1,90 @@
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
+  - IOVDD-supply
+  - DVDD-supply
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
+                IOVDD-supply = <&supply>;
+                DVDD-supply = <&supply>;
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
+            IOVDD-supply = <&supply>;
+            DVDD-supply = <&supply>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 8ba47cac8e83..58f7bc6e8897 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1013,6 +1013,7 @@ F:	sound/soc/codecs/ad1*
 F:	sound/soc/codecs/ad7*
 F:	sound/soc/codecs/ssm*
 F:	sound/soc/codecs/sigmadsp.*
+F:	Documentation/devicetree/bindings/sound/adi,adau*
 
 ANALOG DEVICES INC DMA DRIVERS
 M:	Lars-Peter Clausen <lars@metafoo.de>
-- 
2.23.0

