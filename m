Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 335ED204013
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2020 21:19:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728552AbgFVTTv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jun 2020 15:19:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728553AbgFVTTl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jun 2020 15:19:41 -0400
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com [IPv6:2607:f8b0:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD7ACC061799
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2020 12:19:40 -0700 (PDT)
Received: by mail-ot1-x341.google.com with SMTP id u23so14056027otq.10
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2020 12:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YIazu2RiYqWy+wLjTZlhFuFMzL0wUDBze0yedPUrnMk=;
        b=rF8znHBG1+wbr507/H4zIJpBiygQSLn5iMVT7/IHb9kHNVnPutLYZ1QtxmlZSchb5q
         vK/gOdkb6X9ngylTLc+GTaJZm0Fp76zz/jc/gXPRUtqcpgChoP3qgFj6bm9pn9e3YBOj
         njS6L9EqhsJkSslXOPjntPjJdvBe90oH5yJSanndoBxIj7puBLZhwadw4Aru/D0Qn3Bi
         D5XyInJTmjuAH4I+4EQS4n8YBGhmAPd2aqeXx+yX715fFOsfmav3EBOhvVoIyxfpMcqW
         9XHsu4GS4AJ6edJ4vsDuhoeFsPaVOzRV4u6oEmAbsTvXDf0fwKCf3PI4IO0hd5SJPxob
         ryMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YIazu2RiYqWy+wLjTZlhFuFMzL0wUDBze0yedPUrnMk=;
        b=DxHIErykjcEEbu6nzHTJ4LXT/XxfoneYMfJBQ68DkZUhPR5N8sBdWUGRN/y5q4zQTV
         FgieoHoMm3ocIDL1goG/D8UF1DKgSYxfQfSqBxQKzg6kI4Z/ZCnpWhp0STZqwk3d20L4
         oKMQqVjjNsLKZJX0ifpMzr4Al7/O8/l5PXip+fRtVOFKgR1ARgprIh1saqIDI3EXRUgC
         B/vc6b0PJzJcNWejYPbHqhig8YbcZTPzy56DUbwaBkdJbRFjDJQ6pQEuJxk1iuGondGX
         2jMfmiHdEmxzyEcUuAuO6oPRisJJUIHlUr9sEbAAf8ghl98x4Feuww7TOgAHf782IZFI
         ZH8Q==
X-Gm-Message-State: AOAM532i4F/vxc6oDMhtqt556NRWGXOxFMGbiFSPvADv+4pC4gR77vVD
        kCHpU0JeeUL9900Zyqf/K2oHnA==
X-Google-Smtp-Source: ABdhPJxiPUw6lHoXiRB0erNWvg5b58rqok96gMq7oOv2h2m7u4oT7tlhKuvuWvugubZR8nhuG0abtg==
X-Received: by 2002:a9d:1722:: with SMTP id i34mr14228083ota.6.1592853580165;
        Mon, 22 Jun 2020 12:19:40 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id m84sm3348294oif.32.2020.06.22.12.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 12:19:39 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Ohad Ben-Cohen <ohad@wizery.com>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v7 5/5] arm64: dts: qcom: sdm845: Add IMEM and PIL info region
Date:   Mon, 22 Jun 2020 12:19:42 -0700
Message-Id: <20200622191942.255460-6-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200622191942.255460-1-bjorn.andersson@linaro.org>
References: <20200622191942.255460-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a simple-mfd representing IMEM on SDM845 and define the PIL
relocation info region, so that post mortem tools will be able to locate
the loaded remoteprocs.

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v6:
- None

 arch/arm64/boot/dts/qcom/sdm845.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 8eb5a31346d2..fee50d979dc3 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -3724,6 +3724,21 @@ spmi_bus: spmi@c440000 {
 			cell-index = <0>;
 		};
 
+		imem@146bf000 {
+			compatible = "simple-mfd";
+			reg = <0 0x146bf000 0 0x1000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			ranges = <0 0 0x146bf000 0x1000>;
+
+			pil-reloc@94c {
+				compatible = "qcom,pil-reloc-info";
+				reg = <0x94c 0xc8>;
+			};
+		};
+
 		apps_smmu: iommu@15000000 {
 			compatible = "qcom,sdm845-smmu-500", "arm,mmu-500";
 			reg = <0 0x15000000 0 0x80000>;
-- 
2.26.2

