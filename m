Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5106398E24
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 17:15:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232065AbhFBPRf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 11:17:35 -0400
Received: from so254-9.mailgun.net ([198.61.254.9]:10845 "EHLO
        so254-9.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231961AbhFBPRe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 11:17:34 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1622646951; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=KK9oZ5JV6rw//1PGw9TjnoWljFEt77W7i8OVF7M3Mxk=; b=AEVtCwNDVENZipSJRJMi9p9UkDTfxCdvhxf2eYIdpWZ8rdLMKN3Uuc/8UEcUd7al7B2zBmGN
 wNgg/A+5OgLT8MWqWrMQfsJunW08VM9QwWDwayAATGKkUIRfgUPq1ryeV4LI1ZwHJBMsU46y
 cAngGi7TDPCgs3qz3DoSaON+4D8=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 60b7a085abfd22a3dca5715b (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 02 Jun 2021 15:15:17
 GMT
Sender: okukatla=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id B09E4C4323A; Wed,  2 Jun 2021 15:15:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from okukatla1-linux.qualcomm.com (unknown [202.46.22.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: okukatla)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 42C87C4338A;
        Wed,  2 Jun 2021 15:15:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 42C87C4338A
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=okukatla@codeaurora.org
From:   Odelu Kukatla <okukatla@codeaurora.org>
To:     georgi.djakov@linaro.org, bjorn.andersson@linaro.org,
        evgreen@google.com, Andy Gross <agross@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     sboyd@kernel.org, seansw@qti.qualcomm.com, elder@linaro.org,
        linux-arm-msm-owner@vger.kernel.org,
        Odelu Kukatla <okukatla@codeaurora.org>
Subject: [V3 1/3] dt-bindings: interconnect: Add EPSS L3 DT binding on SC7280
Date:   Wed,  2 Jun 2021 20:44:51 +0530
Message-Id: <1622646894-7833-2-git-send-email-okukatla@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1622646894-7833-1-git-send-email-okukatla@codeaurora.org>
References: <1622646894-7833-1-git-send-email-okukatla@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Epoch Subsystem (EPSS) L3 interconnect provider binding on SC7280
SoCs.

Signed-off-by: Odelu Kukatla <okukatla@codeaurora.org>
---
 .../devicetree/bindings/interconnect/qcom,osm-l3.yaml          |  4 +++-
 include/dt-bindings/interconnect/qcom,osm-l3.h                 | 10 +++++++++-
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
index d6a95c3..61e9a35 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
@@ -18,12 +18,14 @@ properties:
   compatible:
     enum:
       - qcom,sc7180-osm-l3
+      - qcom,sc7280-epss-l3
       - qcom,sdm845-osm-l3
       - qcom,sm8150-osm-l3
       - qcom,sm8250-epss-l3
 
   reg:
-    maxItems: 1
+    minItems: 1
+    maxItems: 4
 
   clocks:
     items:
diff --git a/include/dt-bindings/interconnect/qcom,osm-l3.h b/include/dt-bindings/interconnect/qcom,osm-l3.h
index 61ef649..99534a5 100644
--- a/include/dt-bindings/interconnect/qcom,osm-l3.h
+++ b/include/dt-bindings/interconnect/qcom,osm-l3.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /*
- * Copyright (C) 2019 The Linux Foundation. All rights reserved.
+ * Copyright (C) 2019, 2021 The Linux Foundation. All rights reserved.
  */
 
 #ifndef __DT_BINDINGS_INTERCONNECT_QCOM_OSM_L3_H
@@ -11,5 +11,13 @@
 
 #define MASTER_EPSS_L3_APPS	0
 #define SLAVE_EPSS_L3_SHARED	1
+#define SLAVE_EPSS_L3_CPU0	2
+#define SLAVE_EPSS_L3_CPU1	3
+#define SLAVE_EPSS_L3_CPU2	4
+#define SLAVE_EPSS_L3_CPU3	5
+#define SLAVE_EPSS_L3_CPU4	6
+#define SLAVE_EPSS_L3_CPU5	7
+#define SLAVE_EPSS_L3_CPU6	8
+#define SLAVE_EPSS_L3_CPU7	9
 
 #endif
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

