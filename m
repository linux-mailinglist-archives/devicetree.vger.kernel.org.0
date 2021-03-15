Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 795D233AB63
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 07:04:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229884AbhCOGDF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 02:03:05 -0400
Received: from m42-2.mailgun.net ([69.72.42.2]:64460 "EHLO m42-2.mailgun.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229607AbhCOGC6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 15 Mar 2021 02:02:58 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1615788177; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=CFrkyfVxE9eKUVg9TiQ1zsFSGHaO9pEnp9ZPIbivGvU=; b=OjlAct7dATupAaqLERNWmnjWGZho+eEGnBx0tTFlPWjKykRRNgGB+1DAaQkq5dNqXOrwAMwG
 H+J4Ex7rwbbPKxmPIWaJm6HiV6uJzdPMfgYpd2GwnDHHGxC2vdOlv9ovDwq+yvq1jNKa4sWO
 M2S2eOi9Yp4eOLthUvXO737Zp18=
X-Mailgun-Sending-Ip: 69.72.42.2
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 604ef8906dc1045b7d811cfe (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 15 Mar 2021 06:02:56
 GMT
Sender: rnayak=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 20127C43463; Mon, 15 Mar 2021 06:02:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
        autolearn=no autolearn_force=no version=3.4.0
Received: from blr-ubuntu-173.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: rnayak)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id B394AC433C6;
        Mon, 15 Mar 2021 06:02:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B394AC433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=rnayak@codeaurora.org
From:   Rajendra Nayak <rnayak@codeaurora.org>
To:     will@kernel.org
Cc:     robh+dt@kernel.org, bjorn.andersson@linaro.org,
        linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
Subject: [PATCH] dt-bindings: arm-smmu: Add compatible for SC7280 SoC
Date:   Mon, 15 Mar 2021 11:32:24 +0530
Message-Id: <1615788144-29508-1-git-send-email-rnayak@codeaurora.org>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

Add the SoC specific compatible for SC7280 implementing
arm,mmu-500.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>
---
This was earlier posted as part of the entire DT series for sc7280 [1]
Rest of the patches are now picked, posting this separately so it can
be picked up via the ARM SMMU tree.

[1] https://lore.kernel.org/patchwork/project/lkml/list/?series=488871

 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 6ba161d..9d27aa5 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -34,6 +34,7 @@ properties:
         items:
           - enum:
               - qcom,sc7180-smmu-500
+              - qcom,sc7280-smmu-500
               - qcom,sc8180x-smmu-500
               - qcom,sdm845-smmu-500
               - qcom,sm8150-smmu-500
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

