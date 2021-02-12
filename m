Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68CE6319A82
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 08:35:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229981AbhBLHdw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Feb 2021 02:33:52 -0500
Received: from so15.mailgun.net ([198.61.254.15]:61658 "EHLO so15.mailgun.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229991AbhBLHc1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 12 Feb 2021 02:32:27 -0500
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1613115121; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=vp6QA1VauAFg2UWksKCXrEG+gav9pF9fsujirrxGudU=; b=KSjf2FUcK1ryZbdahcIn4LLvFnHPpjFJrwG2GWYphaaQhKRG18Pv7qsqrEJPKEGeL7CecdTH
 rJwi8VKF/SfLPUoNLd9CzGOivkHyMvqupltLQTIugKSFZVGFzFi8kMSuP72+JeM7b7skPSXl
 /RzgRxRCXciWeelNDAc9EcHsEKY=
X-Mailgun-Sending-Ip: 198.61.254.15
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-east-1.postgun.com with SMTP id
 60262ed1e4842e9128c9dd76 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 12 Feb 2021 07:31:29
 GMT
Sender: rnayak=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 5CD17C433CA; Fri, 12 Feb 2021 07:31:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from blr-ubuntu-173.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: rnayak)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id B76B6C433ED;
        Fri, 12 Feb 2021 07:31:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B76B6C433ED
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=rnayak@codeaurora.org
From:   Rajendra Nayak <rnayak@codeaurora.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Rajendra Nayak <rnayak@codeaurora.org>
Subject: [PATCH 04/13] dt-bindings: qcom,pdc: Add compatible for sc7280
Date:   Fri, 12 Feb 2021 12:58:41 +0530
Message-Id: <1613114930-1661-5-git-send-email-rnayak@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1613114930-1661-1-git-send-email-rnayak@codeaurora.org>
References: <1613114930-1661-1-git-send-email-rnayak@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible string for sc7180 SoC from Qualcomm

Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
---
 Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.txt b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.txt
index 1df2939..9345c2e 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.txt
@@ -19,6 +19,7 @@ Properties:
 	Value type: <string>
 	Definition: Should contain "qcom,<soc>-pdc" and "qcom,pdc"
 		    - "qcom,sc7180-pdc": For SC7180
+		    - "qcom,sc7280-pdc": For SC7280
 		    - "qcom,sdm845-pdc": For SDM845
 
 - reg:
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

