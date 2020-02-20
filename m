Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3CD8A1658F2
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2020 09:12:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726541AbgBTIMt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Feb 2020 03:12:49 -0500
Received: from mail27.static.mailgun.info ([104.130.122.27]:25481 "EHLO
        mail27.static.mailgun.info" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726501AbgBTIMs (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 20 Feb 2020 03:12:48 -0500
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1582186368; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=KSFN05C5NtOXiH34t8XT3SiOfyQlUfmASjWs5M6ZyJ8=; b=dprqJhzDJHNtVdAC+h3sV+Dh7xIVLk11YMUOkz9JQ5zK1YDDRWPc12ZAh+6dxsUi+6413Shd
 Lz5See+awMUDkoC3jqNeW5A0H2XFpLVMDLxy+lyrbTAeJ6WD5RCitvD5lY1qYXV+rHKJbzL2
 nYr4FUW4j6gs7PskSLlSZWaCInQ=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4e3f76.7fb80366bca8-smtp-out-n03;
 Thu, 20 Feb 2020 08:12:38 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id E059BC43383; Thu, 20 Feb 2020 08:12:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.0
Received: from smasetty-linux.qualcomm.com (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: smasetty)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 2FDB8C4479F;
        Thu, 20 Feb 2020 08:12:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2FDB8C4479F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none smtp.mailfrom=smasetty@codeaurora.org
From:   Sharat Masetty <smasetty@codeaurora.org>
To:     freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Cc:     dri-devel@freedesktop.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
        jcrouse@codeaurora.org, mka@chromium.org, dianders@chromium.org,
        Sharat Masetty <smasetty@codeaurora.org>
Subject: [PATCH] dt-bindings: arm-smmu: update the list of clocks
Date:   Thu, 20 Feb 2020 13:42:22 +0530
Message-Id: <1582186342-3484-2-git-send-email-smasetty@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1582186342-3484-1-git-send-email-smasetty@codeaurora.org>
References: <1582186342-3484-1-git-send-email-smasetty@codeaurora.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds a clock definition needed for powering on the GPU TBUs
and the GPU TCU.

Signed-off-by: Sharat Masetty <smasetty@codeaurora.org>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 6515dbe..235c0df 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -28,6 +28,7 @@ properties:
           - enum:
               - qcom,msm8996-smmu-v2
               - qcom,msm8998-smmu-v2
+              - qcom,sc7180-smmu-v2
               - qcom,sdm845-smmu-v2
           - const: qcom,smmu-v2

@@ -116,6 +117,7 @@ properties:
     items:
       - const: bus
       - const: iface
+      - const: mem_iface_clk

   clocks:
     items:
@@ -123,6 +125,7 @@ properties:
           smmu ptw
       - description: interface clock required to access smmu's registers
           through the TCU's programming interface.
+      - description: core clock required for the GPU SMMU TBUs and the GPU TCU

   power-domains:
     maxItems: 1
--
1.9.1
