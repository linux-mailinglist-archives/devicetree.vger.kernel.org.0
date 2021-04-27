Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BF6B36C01F
	for <lists+devicetree@lfdr.de>; Tue, 27 Apr 2021 09:34:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230232AbhD0He7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Apr 2021 03:34:59 -0400
Received: from so254-9.mailgun.net ([198.61.254.9]:29051 "EHLO
        so254-9.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231130AbhD0He6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Apr 2021 03:34:58 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1619508856; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=AAxrCWNjdMQvBgnFcwuoWQZmImTH2y3gflCOb2dFfbI=; b=YGFUEZAc75+Wyfir5XFWYC4Vu4Wk47M6pbmW29PWG2eBqZfivGTz1APyHKun30GOfUBVvGM6
 oRu81+pIGaD2jFTzsp6ZrsxI08k4Mk0hHO1jwGqLS+qTSwW7lBLTEu4KoGqS+brU18W7GkHE
 nAAyW3Q2/6TbiEMqqTQ/FtV0A+E=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 6087be6c853c0a2c462dd422 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 27 Apr 2021 07:34:04
 GMT
Sender: sibis=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id BE37AC433D3; Tue, 27 Apr 2021 07:34:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from blr-ubuntu-87.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: sibis)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 4E4D8C4360C;
        Tue, 27 Apr 2021 07:34:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4E4D8C4360C
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=sibis@codeaurora.org
From:   Sibi Sankar <sibis@codeaurora.org>
To:     p.zabel@pengutronix.de, robh+dt@kernel.org,
        bjorn.andersson@linaro.org, sboyd@kernel.org
Cc:     agross@kernel.org, mani@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibis@codeaurora.org>
Subject: [PATCH v2 1/5] dt-bindings: mailbox: Add WPSS client index to IPCC
Date:   Tue, 27 Apr 2021 13:03:40 +0530
Message-Id: <1619508824-14413-2-git-send-email-sibis@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1619508824-14413-1-git-send-email-sibis@codeaurora.org>
References: <1619508824-14413-1-git-send-email-sibis@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add WPSS remote processor client index to Inter-Processor Communication
Controller (IPCC) block.

Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
---
 include/dt-bindings/mailbox/qcom-ipcc.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/mailbox/qcom-ipcc.h b/include/dt-bindings/mailbox/qcom-ipcc.h
index 4c23eefed5f3..eb91a6c05b71 100644
--- a/include/dt-bindings/mailbox/qcom-ipcc.h
+++ b/include/dt-bindings/mailbox/qcom-ipcc.h
@@ -29,5 +29,6 @@
 #define IPCC_CLIENT_PCIE1		14
 #define IPCC_CLIENT_PCIE2		15
 #define IPCC_CLIENT_SPSS		16
+#define IPCC_CLIENT_WPSS		24
 
 #endif
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

