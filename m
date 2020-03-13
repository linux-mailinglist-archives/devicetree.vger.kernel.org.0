Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D15E01845BA
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2020 12:15:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726526AbgCMLPs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Mar 2020 07:15:48 -0400
Received: from mail26.static.mailgun.info ([104.130.122.26]:56501 "EHLO
        mail26.static.mailgun.info" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726504AbgCMLPs (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Mar 2020 07:15:48 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1584098147; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=yeuupc2jT6lYvVM1w7cMW2Jcjp/sGmYQTtDqYqbatgY=; b=Gr9D0ASyMcnkOlX2kC9NHenTBvk0u8UP+Bf2yYszwJ4jrFT16IbgghKo3gXpSo2lD9L8raCD
 +Up2bmSvAv8JOsWoKFNWsRI3nkg6LgYUjyBqk0fY2c3DZjKLt9SqfdI3ikdkYHTApKuS6skV
 t8m+lqVnRX7/zJJSUlkK8bS31rU=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e6b6b63.7fa83099c7d8-smtp-out-n02;
 Fri, 13 Mar 2020 11:15:47 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 031D7C432C2; Fri, 13 Mar 2020 11:15:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.0
Received: from akashast-linux.qualcomm.com (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: akashast)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 816F5C433CB;
        Fri, 13 Mar 2020 11:15:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 816F5C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none smtp.mailfrom=akashast@codeaurora.org
From:   Akash Asthana <akashast@codeaurora.org>
To:     robh+dt@kernel.org, agross@kernel.org, mark.rutland@arm.com
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mgautam@codeaurora.org,
        rojay@codeaurora.org, skakit@codeaurora.org,
        Akash Asthana <akashast@codeaurora.org>
Subject: [PATCH V2 2/2] dt-bindings: spi: Add interconnect binding for QSPI
Date:   Fri, 13 Mar 2020 16:45:21 +0530
Message-Id: <1584098121-18075-3-git-send-email-akashast@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584098121-18075-1-git-send-email-akashast@codeaurora.org>
References: <1584098121-18075-1-git-send-email-akashast@codeaurora.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add documentation for the interconnect and interconnect-names
properties for QSPI.

Signed-off-by: Akash Asthana <akashast@codeaurora.org>
---
Changes in V2:
 - Added minItems = 1 for interconnect property

 Documentation/devicetree/bindings/spi/qcom,spi-qcom-qspi.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/qcom,spi-qcom-qspi.yaml b/Documentation/devicetree/bindings/spi/qcom,spi-qcom-qspi.yaml
index 9582d37..0cf470e 100644
--- a/Documentation/devicetree/bindings/spi/qcom,spi-qcom-qspi.yaml
+++ b/Documentation/devicetree/bindings/spi/qcom,spi-qcom-qspi.yaml
@@ -40,6 +40,15 @@ properties:
       - description: AHB clock
       - description: QSPI core clock
 
+  interconnects:
+    minItems: 1
+    maxItems: 2
+
+  interconnect-names:
+    items:
+      - const: qspi-config
+      - const: qspi-memory
+
 required:
   - compatible
   - reg
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,\na Linux Foundation Collaborative Project
