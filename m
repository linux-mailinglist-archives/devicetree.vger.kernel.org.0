Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B98DB13DE7F
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2020 16:20:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726744AbgAPPT4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jan 2020 10:19:56 -0500
Received: from mx07-00178001.pphosted.com ([62.209.51.94]:48063 "EHLO
        mx07-00178001.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726574AbgAPPT4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Jan 2020 10:19:56 -0500
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 00GFHVJs003155;
        Thu, 16 Jan 2020 16:19:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=C+b4GqJxMy8KX4XkFdZFKvRKGdv1UhxpiPcv4vNpcww=;
 b=ghYmlgyKI6/OLX1Ml6QIqVdAXqrTA7cFlSuUO8cJbxI941U98/AJrJu1rrmRXcVTju8w
 4RbUOE9d2mTwX5bcWNtbuxn6oJvVtgaoHPx9jX2ue2jwL6RISxuN3Aof6E3CHfIOY2oa
 KlzdyFEingtnjnJV2tgVhjZ4D0FfNUns3UGBMPuplG/WDScWmfTwJKfLd34aCrc3nJym
 bdyJ6c9MaELpknjBPRCHIB2zuOriT0CrFuxG66eKzVs19Iv6shx7Rlr6GXu+z6193Mbb
 Bzpf/ZFu7MC6iRoR7dThq7mVtOLlGu2SpWo5KOHe7VIYtu6BCMH61pVumVa3doXJklfj mQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com with ESMTP id 2xf7fp1tyq-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 16 Jan 2020 16:19:22 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 59D5910002A;
        Thu, 16 Jan 2020 16:19:21 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4BC1021ECF3;
        Thu, 16 Jan 2020 16:19:21 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 16 Jan 2020 16:19:20
 +0100
From:   Benjamin Gaignard <benjamin.gaignard@st.com>
To:     <daniel.lezcano@linaro.org>, <tglx@linutronix.de>,
        <robh+dt@kernel.org>, <mark.rutland@arm.com>,
        <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
        <linux@armlinux.org.uk>, <p.paillet@st.com>,
        <linus.walleij@linaro.org>
CC:     <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <fabrice.gasnier@st.com>,
        Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: [PATCH v2 1/2] dt-bindings: mfd: Document STM32 low power clkevent bindings
Date:   Thu, 16 Jan 2020 16:19:17 +0100
Message-ID: <20200116151918.20987-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200116151918.20987-1-benjamin.gaignard@st.com>
References: <20200116151918.20987-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-01-16_04:2020-01-16,2020-01-15 signatures=0
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a subnode to STM low power timer bindings to support clkevent driver

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
version 2:
- document the bindings inside stm32 lptimer yaml

 .../devicetree/bindings/mfd/st,stm32-lptimer.yaml          | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
index 1a4cc5f3fb33..535e0b40cdf9 100644
--- a/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
+++ b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
@@ -81,6 +81,16 @@ patternProperties:
     required:
       - compatible
 
+  clkevent:
+    type: object
+
+    properties:
+      compatible:
+        const: st,stm32-clkevent-lp
+
+    required:
+      - compatible
+
 required:
   - "#address-cells"
   - "#size-cells"
@@ -115,6 +125,10 @@ examples:
       counter {
         compatible = "st,stm32-lptimer-counter";
       };
+
+      clkevent {
+        compatible = "st,stm32-clkevent-lp";
+      };
     };
 
 ...
-- 
2.15.0

