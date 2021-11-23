Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA17B459C8A
	for <lists+devicetree@lfdr.de>; Tue, 23 Nov 2021 08:01:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232359AbhKWHEI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Nov 2021 02:04:08 -0500
Received: from m43-7.mailgun.net ([69.72.43.7]:44883 "EHLO m43-7.mailgun.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233866AbhKWHEG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Nov 2021 02:04:06 -0500
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1637650859; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=bRnrJGld5aUZt2Zkd7+xQdVdSfT95bkYOiXUz3cWbQc=; b=XsdNvEJc76/F/5GzrGmqC4MRu0TMOqxKvOFA3Sktbiyp5+datWVDKGM+X1udBo9G/YO94ZS0
 WzZpQA1p+9z2+UOTo8osAtD0msIsbEfw/Q0bGT51Cfg2AdKhLltM6mQIX241iBMinxhVDT1Y
 eoY5SUwkTmMFxhiWWAW4nWwInG4=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n10.prod.us-east-1.postgun.com with SMTP id
 619c91a43553c354be09a256 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 23 Nov 2021 07:00:52
 GMT
Sender: rnayak=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 2BD75C4361C; Tue, 23 Nov 2021 07:00:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from blr-ubuntu-173.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: rnayak)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 2623CC43617;
        Tue, 23 Nov 2021 07:00:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 2623CC43617
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=codeaurora.org
From:   Rajendra Nayak <rnayak@codeaurora.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sboyd@codeaurora.org,
        dianders@chromium.org, mka@chromium.org, kgodara@codeaurora.org,
        Rajendra Nayak <rnayak@codeaurora.org>
Subject: [PATCH 1/4] dt-bindings: arm: qcom: Document qcom,sc7280-crd board
Date:   Tue, 23 Nov 2021 12:30:10 +0530
Message-Id: <1637650813-16654-2-git-send-email-rnayak@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1637650813-16654-1-git-send-email-rnayak@codeaurora.org>
References: <1637650813-16654-1-git-send-email-rnayak@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the qcom,sc7280-crd board based off sc7280 SoC,
The board is also known as hoglin in the Chrome OS builds,
and given there would be multiple (at least one more) rev
of this board document the google,hoglin-rev0 compatible as well.

Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index c8808e0..2abfd28 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -203,6 +203,8 @@ properties:
           - enum:
               - qcom,sc7280-idp
               - qcom,sc7280-idp2
+              - qcom,sc7280-crd
+              - google,hoglin-rev0
               - google,piglin
               - google,senor
           - const: qcom,sc7280
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

