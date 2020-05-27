Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A2301E3933
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2020 08:28:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728614AbgE0G2P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 May 2020 02:28:15 -0400
Received: from mail27.static.mailgun.info ([104.130.122.27]:57548 "EHLO
        mail27.static.mailgun.info" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727965AbgE0G2O (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 27 May 2020 02:28:14 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1590560893; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=1JU5P6SSJi3Mzo/Vr/khHl0YlT5LryxGbyA3I2UXqIQ=; b=L94fpaMLtg96MFy0dWgMnB1vt0hHiwMN7diOC2n/Rutcfq/0l+RaeiZHWsEJl26yb9GJq+y0
 DUYFG4cUEwaGdVPnJ0rpl/dnb85k8ycTMjTwye7E3hcsmM6pC4S5gIHiLoR5rxKng5AEnRHJ
 /PBSjJa8E7aigu0MTYabwZ1pTIc=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 5ece08783131442d9566f516 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 27 May 2020 06:28:08
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 019D5C433CB; Wed, 27 May 2020 06:28:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from akashast-linux.qualcomm.com (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: akashast)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 94953C433C6;
        Wed, 27 May 2020 06:28:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 94953C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none smtp.mailfrom=akashast@codeaurora.org
From:   Akash Asthana <akashast@codeaurora.org>
To:     robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mgautam@codeaurora.org,
        rojay@codeaurora.org, skakit@codeaurora.org,
        msavaliy@codeaurora.org, Akash Asthana <akashast@codeaurora.org>
Subject: [PATCH V7 2/3] dt-bindings: geni-se: Add interconnect binding for GENI QUP
Date:   Wed, 27 May 2020 11:57:43 +0530
Message-Id: <1590560864-27037-3-git-send-email-akashast@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590560864-27037-1-git-send-email-akashast@codeaurora.org>
References: <1590560864-27037-1-git-send-email-akashast@codeaurora.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add documentation for the interconnect and interconnect-names properties
for the GENI QUP.

Signed-off-by: Akash Asthana <akashast@codeaurora.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
---
Changes in V5:
 - Add interconnect property for QUP wrapper (parent node).
 - Add minItems = 2 for interconnect property in child nodes

Changes in V6:
 - As per Rob's comment added minItems = 2 for interconnect-names.

Changes in V7:
 - No change.

 .../devicetree/bindings/soc/qcom/qcom,geni-se.yaml      | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
index 885966f..b19505b 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
@@ -46,6 +46,12 @@ properties:
 
   ranges: true
 
+  interconnects:
+    maxItems: 1
+
+  interconnect-names:
+    const: qup-core
+
 required:
   - compatible
   - reg
@@ -73,6 +79,17 @@ patternProperties:
         description: Serial engine core clock needed by the device.
         maxItems: 1
 
+      interconnects:
+         minItems: 2
+         maxItems: 3
+
+      interconnect-names:
+         minItems: 2
+         items:
+           - const: qup-core
+           - const: qup-config
+           - const: qup-memory
+
     required:
       - reg
       - clock-names
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,\na Linux Foundation Collaborative Project

