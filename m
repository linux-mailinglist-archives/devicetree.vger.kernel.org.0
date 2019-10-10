Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4C00DD2206
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2019 09:43:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733225AbfJJHmo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Oct 2019 03:42:44 -0400
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77]:15738 "EHLO
        mx0a-00128a01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1733156AbfJJHmo (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 10 Oct 2019 03:42:44 -0400
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
        by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x9A7cHCn023051;
        Thu, 10 Oct 2019 03:42:16 -0400
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1nam02lp2051.outbound.protection.outlook.com [104.47.36.51])
        by mx0a-00128a01.pphosted.com with ESMTP id 2ver39qt28-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 10 Oct 2019 03:42:15 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C29/yiPKKWwumZakhThPGrFrk0e3M2xBb8lC6JJK8TKNO6a2BPv0GdbEVL31pyYuJn0bySzwvGlyCz7DvHG7Tn4WQSCK2aWOQkxjHrJ08GMtQ3lcwsiSQq7zsOfB0QQPmIkGcF+ohvatWmrAt1gusjXp77L9jL0DuCgW04xckH7zxK6aGVV++1Py9xFySBf+6a8wzQxnXxoiZeSu8GtYiyi6P/L8xHkB5p/+Qd0d0SMKIeD4XEnvIyGTCUtV4okxnvP9UWnd5sXzWjpa6FRnQJFVJ3vj+DdYEUNl6KcvLh9wXU/Swu1kH+rs0/Za9XWjct3RiJYfXjp6v55EdX96yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZcaasmzVl3SQyrzMHNFBLH3SkeUDjrvLmE5s163pVPg=;
 b=VNfgjC4Vc2NmdIZXSyuJ1KpN5Lqy7CTIdCmNLT33a+phqXf3VtNee40DEuoTtv+9Xl+ycX9wznda6GQdjFJKd1cgOMbb8aeaT76oqpmUMiwO3RmqrSIDjZ6YPM3bAvMsn5jG4gqC6KyG/4d2NcElBSECooWs2rjvWYef2umIw+MCrCBWZNRqdPQJNJFkL2geZLedbdGGHkcl9HjW22+DcWC+eM1l1b7PDYqgIpn83BINJ00zc0w6obrRAlv4LXc4CkruwQU769XRiFhO0jlPExUTl2/enxGZkhoKY4Y6JnY5gzQwqYvyMqxE1+vJZE3z55OeAm2VxIFbGPyXwIRDBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.55) smtp.rcpttodomain=arm.com smtp.mailfrom=analog.com;
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZcaasmzVl3SQyrzMHNFBLH3SkeUDjrvLmE5s163pVPg=;
 b=QIq6uzGJtSoYQ3N+pWSzBADEkE8YdoetGTsBe21bUUi6S3JoVJmcK2QwJpRHcUkHRfDi0VuPjKCHCmkEPJdxr1QJPErq89f5Kmx7RTw/vuuQenZMwtgmI5rnG8AJ/lCnFHnZgScyZ8gRlh0Xam6MJufvMySpGSvznrxtAnT2pkw=
Received: from BN6PR03CA0080.namprd03.prod.outlook.com (2603:10b6:405:6f::18)
 by DM5PR03MB2428.namprd03.prod.outlook.com (2603:10b6:3:72::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Thu, 10 Oct
 2019 07:42:13 +0000
Received: from BL2NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::204) by BN6PR03CA0080.outlook.office365.com
 (2603:10b6:405:6f::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.17 via Frontend
 Transport; Thu, 10 Oct 2019 07:42:13 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 BL2NAM02FT057.mail.protection.outlook.com (10.152.77.36) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2347.16
 via Frontend Transport; Thu, 10 Oct 2019 07:42:13 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com [10.64.69.107])
        by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x9A7g6Bd013839
        (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
        Thu, 10 Oct 2019 00:42:06 -0700
Received: from nsa.sphairon.box (10.44.3.90) by NWD2HUBCAS7.ad.analog.com
 (10.64.69.107) with Microsoft SMTP Server (TLS) id 14.3.408.0; Thu, 10 Oct
 2019 03:42:12 -0400
From:   =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To:     <devicetree@vger.kernel.org>, <alsa-devel@alsa-project.org>
CC:     Mark Rutland <mark.rutland@arm.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Subject: [PATCH v3 2/2] dt-bindings: asoc: Add ADAU7118 documentation
Date:   Thu, 10 Oct 2019 09:42:34 +0200
Message-ID: <20191010074234.7344-2-nuno.sa@analog.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191010074234.7344-1-nuno.sa@analog.com>
References: <20191010074234.7344-1-nuno.sa@analog.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.44.3.90]
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55;IPV:NLI;CTRY:US;EFV:NLI;SFV:NSPM;SFS:(10009020)(396003)(136003)(346002)(39860400002)(376002)(199004)(189003)(6306002)(8936002)(446003)(2616005)(336012)(478600001)(5820100001)(966005)(126002)(11346002)(476003)(486006)(50226002)(8676002)(426003)(23676004)(53416004)(246002)(4326008)(76176011)(47776003)(54906003)(316002)(110136005)(70206006)(70586007)(2870700001)(50466002)(1076003)(16526019)(5660300002)(356004)(6666004)(106002)(186003)(86362001)(45776006)(6116002)(26005)(36756003)(3846002)(7736002)(7636002)(305945005)(2906002);DIR:OUT;SFP:1101;SCL:1;SRVR:DM5PR03MB2428;H:nwd2mta1.analog.com;FPR:;SPF:Pass;LANG:en;PTR:nwd2mail10.analog.com;A:1;MX:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c44d8652-af07-46fc-88b6-08d74d555d63
X-MS-TrafficTypeDiagnostic: DM5PR03MB2428:
X-MS-Exchange-PUrlCount: 3
X-Microsoft-Antispam-PRVS: <DM5PR03MB2428DF4AD7F215FA89A4F15299940@DM5PR03MB2428.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 018632C080
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Jc/jxf6oXsYki++AFTCRRRK2iq5haAnxMCEMayuPwg1ZMtz0B12MYzNYKkLSNbiUPMcEOHQHz5QemKU8FWRHyYY+G/t/l339oAkv607G65f+D9XzcTwWZqWhS4G5AdKQa9LVPod8fXK1K9C+ml8qncOUm5Ufz2T1w9rmk4Rp/xM2tMJCeR/HRiES0UgLK/yfrv6awxr9/viqyIl4sdtDDZyR2vpGm0U2RignGhr8Vjnw+pnOJskf+p7iD8fwsmM+u+bZbgW2r+sq1nIqNXZhvDl6qB9ujvjueeIVNhChov5R22ou/o40cpcq8XwozqGKMEiRPe6RjEEVcW4EcluyrKX45BRW4IMGNsRpv6MgnFEJw+svEeo0PTRDEZUUj2FLQAGNW7+VuhCNlMOsLk8N7mH834GizlNkBvzRb4EB1l5r3//6XIRt4xA77VSnOCqZUN0V1k7acNmC5DOmSVhIUw==
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2019 07:42:13.0107
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c44d8652-af07-46fc-88b6-08d74d555d63
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a;Ip=[137.71.25.55];Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR03MB2428
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-10_04:2019-10-08,2019-10-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 mlxscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910100071
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the ADAU7118 8 channel PDM to I2S/TDM converter devicetree
bindings.

Signed-off-by: Nuno Sá <nuno.sa@analog.com>
---
Changes in v2:
 * List regulators as required;

Changes in v3:
 * Set the correct license for new bindings.

 .../bindings/sound/adi,adau7118.yaml          | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/adi,adau7118.yaml

diff --git a/Documentation/devicetree/bindings/sound/adi,adau7118.yaml b/Documentation/devicetree/bindings/sound/adi,adau7118.yaml
new file mode 100644
index 000000000000..cfcef602b3d9
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/adi,adau7118.yaml
@@ -0,0 +1,90 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
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
-- 
2.23.0

