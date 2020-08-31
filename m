Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A351025754D
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 10:27:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725954AbgHaI1j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 04:27:39 -0400
Received: from mail29.static.mailgun.info ([104.130.122.29]:12477 "EHLO
        mail29.static.mailgun.info" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726102AbgHaI1j (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Aug 2020 04:27:39 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1598862458; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=BsJW+6b+ChjHM1tuO2UVuZumO9q0AK+u8r67VrfoMpM=; b=l+GuByI7zBaVvNGbdFED/eaLJHzMCilrLFEbk+T2xhOsGMR6LMjIB1YkT8T63/4oXPZ1yqNL
 /JK8G0TMe3PH+fe7gtJy8WrR6EBvsKaRoxnZ8WgaDFpAfQJILBC6de9Zcix6TDyHYDbqW3SW
 r9uGR7LD3dCmJ5+z12JeRphM7jM=
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-west-2.postgun.com with SMTP id
 5f4cb469d3d3df8c3975e08a (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 31 Aug 2020 08:27:21
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 23F3FC433CA; Mon, 31 Aug 2020 08:27:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.0
Received: from kathirav-linux.qualcomm.com (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: kathirav)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 904A6C433C6;
        Mon, 31 Aug 2020 08:27:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 904A6C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none smtp.mailfrom=kathirav@codeaurora.org
From:   Kathiravan T <kathirav@codeaurora.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     kathirav@codeaurora.org
Subject: [PATCH] arm64: dts: ipq8074: enable watchdog support
Date:   Mon, 31 Aug 2020 13:57:08 +0530
Message-Id: <1598862428-13996-1-git-send-email-kathirav@codeaurora.org>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable watchdog support for the IPQ8074 SoCs.

Signed-off-by: Kathiravan T <kathirav@codeaurora.org>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index 96a5ec89b5f0..74a474300314 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -498,6 +498,14 @@ timer {
 				     <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
 		};
 
+		watchdog: watchdog@b017000 {
+			compatible = "qcom,kpss-wdt";
+			reg = <0xb017000 0x1000>;
+			interrupts = <GIC_SPI 3 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&sleep_clk>;
+			timeout-sec = <30>;
+		};
+
 		timer@b120000 {
 			#address-cells = <1>;
 			#size-cells = <1>;

base-commit: f75aef392f869018f78cfedf3c320a6b3fcfda6b
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

