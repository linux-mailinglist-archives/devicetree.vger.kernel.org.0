Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4ACF31AD6B3
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2020 09:01:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728321AbgDQHBQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Apr 2020 03:01:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728245AbgDQHBN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Apr 2020 03:01:13 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D857AC061A10
        for <devicetree@vger.kernel.org>; Fri, 17 Apr 2020 00:01:13 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id kb16so702376pjb.1
        for <devicetree@vger.kernel.org>; Fri, 17 Apr 2020 00:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=e5yt6ZDVqr+7QSHc88Bnrv499SbQQkOFM9/QQvODlrQ=;
        b=i+z1H6qc1RQjl8dF/ZQWkrj1LOmONZiANWqZQj2D1MApZKXOwpspT+eAloxxqIWDgb
         2lxvRDCuJUmPo5f5TTlJ8mQBdorfC+3Sb+nANtWH/ShuFGYtSopy6PHdifjCPMZVjFw0
         AlpaM40+KsDeja6zYbzc2ZmmTZHvG3PuGI2VjJzpwekWr1/xHwTCLj2eRw2dd++Kcv8e
         Xzje+GzPKMh1Dk+AEFwcOENQ6LqmvYTKIHbkteGRf9J1pkfjaBWgL+y1r0LghOq1kuNM
         xnXo6BRHouV9DGEgGcOsahVlGL65Hf3d4c/zFgk9eZUDuLcAnx4GX+ynjLehVLKhyejD
         ijew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e5yt6ZDVqr+7QSHc88Bnrv499SbQQkOFM9/QQvODlrQ=;
        b=E7i2OmFTL+JQVbdLWwqaeQc22l/n5yqa1jp+zAGqpo3CMqmg45fK6+E+DiXnoo3SxZ
         5RnGf55PHP0jBjO9FgwSJiQsh9LtGQrLUKN99yU6/RU1MtxIlx7S016cEC+qseMn3yCj
         nep8yqjAZ1xku+59MZnIwJ2YfTBCGekTnSYWhR/8dzxSDnkCxxmLkbiLLnV50pwhGTxO
         1vAANGcMZ0H5ZuGrmB058OhfYN2rgq5Dl+Ys+v93Dp2vmm+QdSO0FtgO3ksqWdmSHqpX
         z8a0tH8jqoH2k5b3Mw/zlYF19+kRhTvDNR6V63NDcB7WGw1X8oVvVS++zYtfHYh6D3oV
         jYSg==
X-Gm-Message-State: AGi0PuZUE3qxKA29v9GejGZR8FlR+FddHmebpSfr2r5j8zC2fsAilKBw
        vgT7apGDsBfhDVPJ5flgaDk8sQ==
X-Google-Smtp-Source: APiQypKAPouxJUj8ZEHXCCyGsr9aFHrJPhULvsgTpcyEK+wS31hk0TH+VbwkpYL+s3wPwKVaYlchtA==
X-Received: by 2002:a17:90a:68cb:: with SMTP id q11mr2759270pjj.15.1587106873385;
        Fri, 17 Apr 2020 00:01:13 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id c125sm18561609pfa.142.2020.04.17.00.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2020 00:01:12 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] arm64: dts: qcom: db820c: Add vdd_gfx and tie it into mmcc
Date:   Fri, 17 Apr 2020 00:00:43 -0700
Message-Id: <20200417070044.1376212-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200417070044.1376212-1-bjorn.andersson@linaro.org>
References: <20200417070044.1376212-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rajendra Nayak <rnayak@codeaurora.org>

Add the SPMI regulator node in the PMI8994, use it to give us VDD_GX
at a fixed max nominal voltage for the db820c and specify this as supply
for the MMSS GPU_GX GDSC.

With the introduction of CPR support the range for VDD_GX should be
expanded.

Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
[bjorn: Split between pmi8994 and db820c, changed voltage, rewrote commit message]
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- Polished commit message
- vdd_gfx -> vdd-gfx

 arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi | 14 ++++++++++++++
 arch/arm64/boot/dts/qcom/pmi8994.dtsi        |  6 ++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
index 4692b7ad16b7..fc23b381c5e4 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
+++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
@@ -251,6 +251,10 @@ &mdss {
 	status = "okay";
 };
 
+&mmcc {
+	vdd-gfx-supply = <&vdd_gfx>;
+};
+
 &msmgpio {
 	gpio-line-names =
 		"[SPI0_DOUT]", /* GPIO_0, BLSP1_SPI_MOSI, LSEC pin 14 */
@@ -688,6 +692,16 @@ pinconf {
 	};
 };
 
+
+&pmi8994_spmi_regulators {
+	vdd_gfx: s2@1700 {
+		reg = <0x1700 0x100>;
+		regulator-name = "VDD_GFX";
+		regulator-min-microvolt = <980000>;
+		regulator-max-microvolt = <980000>;
+	};
+};
+
 &rpm_requests {
 	pm8994-regulators {
 		compatible = "qcom,rpm-pm8994-regulators";
diff --git a/arch/arm64/boot/dts/qcom/pmi8994.dtsi b/arch/arm64/boot/dts/qcom/pmi8994.dtsi
index 21e05215abe4..e5ed28ab9b2d 100644
--- a/arch/arm64/boot/dts/qcom/pmi8994.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi8994.dtsi
@@ -26,5 +26,11 @@ pmic@3 {
 		reg = <0x3 SPMI_USID>;
 		#address-cells = <1>;
 		#size-cells = <0>;
+
+		pmi8994_spmi_regulators: regulators {
+			compatible = "qcom,pmi8994-regulators";
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
 	};
 };
-- 
2.24.0

