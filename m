Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E188F3E815A
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 20:01:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234445AbhHJR6x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 13:58:53 -0400
Received: from so254-9.mailgun.net ([198.61.254.9]:24511 "EHLO
        so254-9.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237178AbhHJR4w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 13:56:52 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1628618189; h=References: In-Reply-To: References:
 In-Reply-To: Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=wdqL1DdUtVW6v1FINuwwQImqzwB8zjHrVnZD1Wvz4Gk=; b=THwr8Hq5YwLM3wnRukt7T8BujecGeqjQA1jykgpzJNfYWfHUihYc1T3jtRdXgyk3O103OSOo
 yj5WniQ6M792cuiFf8blmgyLc59BzLX2vq5ZGXSXvRFhQZeEMwGdi1eEwvsRQr8PGUiIwICC
 o+Qgt6vAtG1WZRnlCBjUnQXFr88=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 6112bdc2f746c298d90a6b0b (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 10 Aug 2021 17:56:18
 GMT
Sender: schowdhu=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 22E2AC2BB5A; Tue, 10 Aug 2021 17:56:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from blr-ubuntu-525.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: schowdhu)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 48063C358F4;
        Tue, 10 Aug 2021 17:56:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 48063C358F4
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=schowdhu@codeaurora.org
From:   Souradeep Chowdhury <schowdhu@codeaurora.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>, vkoul@kernel.org,
        Souradeep Chowdhury <schowdhu@codeaurora.org>
Subject: [PATCH V6 4/7] arm64: dts: qcom: sm8150: Add Data Capture and Compare(DCC) support node
Date:   Tue, 10 Aug 2021 23:24:40 +0530
Message-Id: <a2dc15156c5c29f09920aa0beaa81e10a991ff8f.1628617260.git.schowdhu@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1628617260.git.schowdhu@codeaurora.org>
References: <cover.1628617260.git.schowdhu@codeaurora.org>
In-Reply-To: <cover.1628617260.git.schowdhu@codeaurora.org>
References: <cover.1628617260.git.schowdhu@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the DCC(Data Capture and Compare) device tree node entry along with
the addresses for register regions.

Signed-off-by: Souradeep Chowdhury <schowdhu@codeaurora.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index d6d50b4..e0e1d3d 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -1627,6 +1627,12 @@
 			interrupts = <GIC_SPI 582 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		dma@10a2000 {
+			compatible = "qcom,sm8150-dcc", "qcom,dcc";
+			reg = <0x0 0x010a2000 0x0 0x1000>,
+			      <0x0 0x010ad000 0x0 0x3000>;
+		};
+
 		ufs_mem_hc: ufshc@1d84000 {
 			compatible = "qcom,sm8150-ufshc", "qcom,ufshc",
 				     "jedec,ufs-2.0";
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

