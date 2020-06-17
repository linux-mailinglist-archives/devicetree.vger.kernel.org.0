Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 088741FCEC2
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2020 15:45:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726853AbgFQNpR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Jun 2020 09:45:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726341AbgFQNpQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Jun 2020 09:45:16 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67C42C0613ED
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2020 06:45:16 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id b6so2383605wrs.11
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2020 06:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jZcfSh9+wW5N+Dlp3gMek+FnLdHyfPdEraPwakLbSEY=;
        b=LYAkHByCGO57OGvCsKakDa/onsj0NNBFKEEvJ1Z7yYhTezhe8ecYidS+fkrK9VFrBz
         SygBH0qJBjfg3qU3HPXeyU8qALRaERnoia1cSFiOruEduuKOrx8vuRg1Kl1WksZQCLMK
         x/5nLL7+T2k0SU7zHsW7tdWl4RiwXAqkqs2Fy546cOoMY647WD5v1IQqNKWaqoQQDTo4
         Fu93NL6f5TPFC+i9cCNmWKSL2uQnJg0vC4e+UvZuzF13cCeVrCAApkOOBlsVWXiytWqG
         c5GFLY/NNOSig71fvwBpu2UfSn9tOl2xE27q9XngYXC+pEjbm45Ppje22FIen6vyjkGr
         lRzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jZcfSh9+wW5N+Dlp3gMek+FnLdHyfPdEraPwakLbSEY=;
        b=qTwQrCx1F24dffSKilw09AfZmAgosOpxKhzEH92N3I6XBscVdvAjnlFuoSFJVMuade
         XIveI9vmea06FsaIArokbmeYdWK65IhcxhqNWtkNdiU71gS4QNglrFqBd1YXq0J7ustW
         X9Ce/v7BX5sqOInZnIjjWPiNq9ZIN7na9RVNwDVIpTV6IcpdYQ74nOlpDvCAQwn6P2w9
         DzvI+yKXConhtQKw1Ddhk02Rz2iGgiUUzvdxO8THPvjfZWxT8YuAAx0/clL0bjuTO2Uq
         NRlXDtvAtboGKQXMg6Cg/ijzQjqFDQTXHR6+rPuMJwnvLnFSRQZ1im2Qx+2HdzkjHR4P
         Z1cw==
X-Gm-Message-State: AOAM5330ov1iF5HeFlk+OpQqTHwym5ng7f5q9jqjGZqxPEWqrNKxADTu
        u5qxoVdoZUWKetsYLrSLZ+ZmOg==
X-Google-Smtp-Source: ABdhPJyjEYHOKxsSHo9Q9bM5sAOlNls27BPQ1cWgfi72kiXg1pUC1BOlnpNjFiDtsyLCGFq+QVwFTA==
X-Received: by 2002:adf:9c12:: with SMTP id f18mr9306013wrc.105.1592401514854;
        Wed, 17 Jun 2020 06:45:14 -0700 (PDT)
Received: from localhost.localdomain ([87.120.218.65])
        by smtp.googlemail.com with ESMTPSA id j14sm1251165wrs.75.2020.06.17.06.45.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 06:45:14 -0700 (PDT)
From:   Georgi Djakov <georgi.djakov@linaro.org>
To:     bjorn.andersson@linaro.org
Cc:     agross@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        georgi.djakov@linaro.org
Subject: [PATCH] arm64: dts: msm8916: Add interconnect provider DT nodes
Date:   Wed, 17 Jun 2020 16:45:15 +0300
Message-Id: <20200617134515.25229-1-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add nodes for the network-on-chip interconnect buses present on
MSM8916-based platforms.

Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 28 +++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 32bd140ac9fd..6c57896d9836 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/arm/coresight-cti-dt.h>
+#include <dt-bindings/interconnect/qcom,msm8916.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/qcom,gcc-msm8916.h>
 #include <dt-bindings/reset/qcom,gcc-msm8916.h>
@@ -406,11 +407,38 @@ soc: soc {
 		ranges = <0 0 0 0xffffffff>;
 		compatible = "simple-bus";
 
+		bimc: interconnect@400000 {
+			compatible = "qcom,msm8916-bimc";
+			reg = <0x00400000 0x62000>;
+			#interconnect-cells = <1>;
+			clock-names = "bus", "bus_a";
+			clocks = <&rpmcc RPM_SMD_BIMC_CLK>,
+				 <&rpmcc RPM_SMD_BIMC_A_CLK>;
+		};
+
 		restart@4ab000 {
 			compatible = "qcom,pshold";
 			reg = <0x4ab000 0x4>;
 		};
 
+		pcnoc: interconnect@500000 {
+			compatible = "qcom,msm8916-pcnoc";
+			reg = <0x00500000 0x11000>;
+			#interconnect-cells = <1>;
+			clock-names = "bus", "bus_a";
+			clocks = <&rpmcc RPM_SMD_PCNOC_CLK>,
+				 <&rpmcc RPM_SMD_PCNOC_A_CLK>;
+		};
+
+		snoc: interconnect@580000 {
+			compatible = "qcom,msm8916-snoc";
+			reg = <0x00580000 0x14000>;
+			#interconnect-cells = <1>;
+			clock-names = "bus", "bus_a";
+			clocks = <&rpmcc RPM_SMD_SNOC_CLK>,
+				 <&rpmcc RPM_SMD_SNOC_A_CLK>;
+		};
+
 		msmgpio: pinctrl@1000000 {
 			compatible = "qcom,msm8916-pinctrl";
 			reg = <0x1000000 0x300000>;
