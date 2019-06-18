Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1C74F49A06
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 09:12:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728571AbfFRHMj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 03:12:39 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:41391 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725919AbfFRHMi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 03:12:38 -0400
Received: by mail-pf1-f193.google.com with SMTP id m30so7100288pff.8
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 00:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=uMkMCv3BUoXLIY8oihfQPbNdvfEpRTYBkVyHKvMXCxo=;
        b=UP65qTPR+PVH9R0yUIf3Ua5dHgffMfh1HjiizGbyeCEXQQUsZFNt0BjYxnfbEPb5e2
         kZwfswFy6tbao8QG4VlChvqNNFukKdpctn9FAr9GtQd7OtbChbaAPuetVqBYc1Blz0Ym
         Orx2Bct4ZzJVysUVAoWLSWwruldUs6tZ41avYyUzE6F67T1emdnH2W1/bQVKrLrLOFp1
         71U3k6pGrAM+iAkp1Y6ZHWu00zVise80ZQJ+Vk4x71o51zkVP7JIovJy4wkrjXQXxGwl
         uaVDgxs6aV+yDxqakjKg0Vc1CeuofaTiBaRnTefmmeJMRRZoVVLBsgHPZWWuhErnTo9e
         8uYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=uMkMCv3BUoXLIY8oihfQPbNdvfEpRTYBkVyHKvMXCxo=;
        b=j8Sy2NTD7DQG/Y+ImSu3y4ujDrMLl4PCY7Qmb9QNVdJ/AkzmAoN1oRURWH0EpgWgW3
         vqpYoduKwblxGtGKQ/t5MBicCfkQOpRyTXwy02OJ2nHOt9Ka26DZ9SwbVjrYazy5oQho
         LKn4OxNguhjCriQG9bW1NTgwvW0XKzD2wzqyyH7kjU/CnIrio9wvPImbkTES6OYRnduI
         H1m+mqL9W22W18tIEwQGL7HAm8bKrI2ai0XNfukok/Ai7qNoewwA8y9SWPL5XDs3vUJt
         aoT2j5ItK6c8a5aKDDRIASEpMrdaovj0gJZC84xV9coqYiU7Musj2GZHxvGzoqghuSLb
         +n9Q==
X-Gm-Message-State: APjAAAUzmTAOnLRseytNupRPhn7NgindfQtqYLEHZzKDZYOpEZNLFkjw
        1DyxM+B2V5sMrDIR8KU/BqZghW4Gcpc=
X-Google-Smtp-Source: APXvYqzT9yDFgrWXzL17w6F+6WzZOHPFNClSCnrZ/Me4Pzh7JrexSnochsWdQoaHG6kWd9P0e63z2g==
X-Received: by 2002:a62:fb10:: with SMTP id x16mr119211653pfm.112.1560835484882;
        Mon, 17 Jun 2019 22:24:44 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id b15sm13176070pfi.141.2019.06.17.22.24.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Jun 2019 22:24:44 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>
Cc:     David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH] arm64: dts: qcom: msm8996: Rename smmu nodes
Date:   Mon, 17 Jun 2019 22:24:41 -0700
Message-Id: <20190618052441.32306-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Node names shouldn't include "qcom," and should whenever possible use
a generic identifier. Resolve this by renaming the smmu nodes "iommu".

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 2ecd9d775d61..c934e00434c7 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -1163,7 +1163,7 @@
 			};
 		};
 
-		vfe_smmu: arm,smmu@da0000 {
+		vfe_smmu: iommu@da0000 {
 			compatible = "qcom,msm8996-smmu-v2", "qcom,smmu-v2";
 			reg = <0xda0000 0x10000>;
 
@@ -1314,7 +1314,7 @@
 			};
 		};
 
-		adreno_smmu: arm,smmu@b40000 {
+		adreno_smmu: iommu@b40000 {
 			compatible = "qcom,msm8996-smmu-v2", "qcom,smmu-v2";
 			reg = <0xb40000 0x10000>;
 
@@ -1331,7 +1331,7 @@
 			power-domains = <&mmcc GPU_GDSC>;
 		};
 
-		mdp_smmu: arm,smmu@d00000 {
+		mdp_smmu: iommu@d00000 {
 			compatible = "qcom,msm8996-smmu-v2", "qcom,smmu-v2";
 			reg = <0xd00000 0x10000>;
 
@@ -1347,7 +1347,7 @@
 			power-domains = <&mmcc MDSS_GDSC>;
 		};
 
-		lpass_q6_smmu: arm,smmu-lpass_q6@1600000 {
+		lpass_q6_smmu: iommu@1600000 {
 			compatible = "qcom,msm8996-smmu-v2", "qcom,smmu-v2";
 			reg = <0x1600000 0x20000>;
 			#iommu-cells = <1>;
-- 
2.18.0

