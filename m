Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 927921D4B9A
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2020 12:52:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726003AbgEOKwN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 May 2020 06:52:13 -0400
Received: from mail27.static.mailgun.info ([104.130.122.27]:42529 "EHLO
        mail27.static.mailgun.info" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726171AbgEOKwM (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 15 May 2020 06:52:12 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1589539932; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=WTO64yR7Gyv3bO/7Aolr2Ns3FQUteAECAxwuDLyZ4qg=; b=oIAiEmbPGfRA6DhbdJDAYOpJw5EfsqcALGVtjaYqP9mhIyVu7s/JzgWvMtmgs/jV7arCz87n
 n/lme6l7u2y0Tv0CSuMUvvUEpMcAw7Np4CabBDqdoidpmndf9hfWLOzWp4ARp96mQZ1tSKto
 +mZefEscj5oDa1L29njk4E0/pWA=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-east-1.postgun.com with SMTP id
 5ebe74548ebbf95ecb8fc81a (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 15 May 2020 10:52:04
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id BC0EFC4478C; Fri, 15 May 2020 10:52:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: saiprakash.ranjan)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 4A776C433D2;
        Fri, 15 May 2020 10:51:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4A776C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From:   Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To:     Mathieu Poirier <mathieu.poirier@linaro.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: [PATCH 2/2] arm64: dts: qcom: sc7180: Add support to skip powering up of ETM
Date:   Fri, 15 May 2020 16:21:37 +0530
Message-Id: <7599d58142dcefbcb08a2eaff71c7f411a1d52b1.1589539293.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <cover.1589539293.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1589539293.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add "qcom,skip-power-up" property to skip powering up ETM
on SC7180 SoC to workaround a hardware errata where CPU
watchdog counter is stopped when ETM power up bit is set
(i.e., when TRCPDCR.PU = 1).

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---

Depends on ETM driver change here - https://lore.kernel.org/patchwork/cover/1242100/

---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 8b3707347547..de4bae4ec224 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1657,6 +1657,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1676,6 +1677,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1695,6 +1697,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1714,6 +1717,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1733,6 +1737,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1752,6 +1757,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1771,6 +1777,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1790,6 +1797,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

