Return-Path: <devicetree+bounces-135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD90B79FDB1
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 10:00:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9261A1F223F9
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06DCCCA4A;
	Thu, 14 Sep 2023 08:00:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F079DEBC
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 08:00:41 +0000 (UTC)
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CEF29B;
	Thu, 14 Sep 2023 01:00:41 -0700 (PDT)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38E5M5JS016857;
	Thu, 14 Sep 2023 04:00:19 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3t2y8k26mm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Sep 2023 04:00:19 -0400 (EDT)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 38E80IhT031658
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 Sep 2023 04:00:18 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Thu, 14 Sep
 2023 04:00:17 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Thu, 14 Sep 2023 04:00:17 -0400
Received: from daniel-Precision-5530.ad.analog.com ([10.48.65.230])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 38E7xpmW002387;
	Thu, 14 Sep 2023 04:00:12 -0400
From: Daniel Matyas <daniel.matyas@analog.com>
To: 
CC: Daniel Matyas <daniel.matyas@analog.com>,
        Jean Delvare
	<jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
        <linux-hwmon@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-doc@vger.kernel.org>
Subject: [PATCH v3 2/5] dt-bindings: hwmon: Add possible new properties to max31827 bindings
Date: Thu, 14 Sep 2023 10:59:45 +0300
Message-ID: <20230914075948.208046-2-daniel.matyas@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230914075948.208046-1-daniel.matyas@analog.com>
References: <20230914075948.208046-1-daniel.matyas@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: Dw5uK9h3uk3Ji7DD0XDxkR4KF0I9Tavk
X-Proofpoint-GUID: Dw5uK9h3uk3Ji7DD0XDxkR4KF0I9Tavk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-14_05,2023-09-13_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxlogscore=999
 suspectscore=0 priorityscore=1501 impostorscore=0 mlxscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2308100000
 definitions=main-2309140069

These modify the corresponding bits in the configuration register.

adi,comp-int is a hardware property, because it affects the behavior
of the interrupt signal and whatever it is connected to.

adi,timeout-enable is a hardware property, because it affects i2c
bus operation.

Signed-off-by: Daniel Matyas <daniel.matyas@analog.com>
---

v2 -> v3: Changed commit subject and message

v1 -> v2: Added adi,timeout-enable property to binding. Fixed
dt_binding_check errors.

 .../bindings/hwmon/adi,max31827.yaml          | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwmon/adi,max31827.yaml b/Documentation/devicetree/bindings/hwmon/adi,max31827.yaml
index 2dc8b07b4d3b..6bde71bdb8dd 100644
--- a/Documentation/devicetree/bindings/hwmon/adi,max31827.yaml
+++ b/Documentation/devicetree/bindings/hwmon/adi,max31827.yaml
@@ -32,6 +32,37 @@ properties:
       Must have values in the interval (1.6V; 3.6V) in order for the device to
       function correctly.
 
+  adi,comp-int:
+    description:
+      If present interrupt mode is used. If not present comparator mode is used
+      (default).
+    type: boolean
+
+  adi,alrm-pol:
+    description:
+      Sets the alarms active state.
+            - 0 = active low
+            - 1 = active high
+      For max31827 and max31828 the default alarm polarity is low. For max31829
+      it is high.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+
+  adi,flt-q:
+    description:
+      Select how many consecutive temperature faults must occur before
+      overtemperature or undertemperature faults are indicated in the
+      corresponding status bits.
+      For max31827 default fault queue is 1. For max31828 and max31829 it is 4.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [1, 2, 4, 8]
+
+  adi,timeout-enable:
+    description:
+      Enables timeout. Bus timeout resets the I2C-compatible interface when SCL
+      is low for more than 30ms (nominal).
+    type: boolean
+
 required:
   - compatible
   - reg
@@ -49,6 +80,10 @@ examples:
             compatible = "adi,max31827";
             reg = <0x42>;
             vref-supply = <&reg_vdd>;
+            adi,comp-int;
+            adi,alrm-pol = <0>;
+            adi,flt-q = <1>;
+            adi,timeout-enable;
         };
     };
 ...
-- 
2.34.1


