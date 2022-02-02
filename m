Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C37854A7A45
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 22:24:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347686AbiBBVYr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 16:24:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347568AbiBBVYZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 16:24:25 -0500
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4461AC061751
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 13:24:22 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id i17so384781pfq.13
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 13:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Cn5bTxD+y0u/cuoyspIF5KY9HBsgsURj9OKkTRdQlHM=;
        b=SNurvubUTpRw3jzJLUyEpOcSnGu3nC0+AdjsMxlqqRXoBD3zWOBMjvfFONFTi6JaQU
         yes2UUkv+fyfGE3KDXCTqUGNQlzVoRNqF9RjMBytTsNSDsLqGiFbpl/gxYhTT5bs0R2y
         xYPK8kMKrBTPYhmML8aT1i61Zwfk6+eLXzp2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Cn5bTxD+y0u/cuoyspIF5KY9HBsgsURj9OKkTRdQlHM=;
        b=Dy4eLnXZ78myx9W1WacHHUvrmtTIGHbbp7yWHKuVv5w9iUBDbtDk+MHS1vn6ui4pGa
         zeGNQTRXQZMBOG5eBhCsuaMQc0T/zodgghdjhhMmS1KmDmcu5Ixr98xCx1q89rck4ff/
         0jB15yDDmrsSQGIlV1vL23czpARobLITWFPqTKrmWlOJQMP0BfqRiAYgDUVdoJAZmGeA
         IDuDgdnZs1QrO2OniIAXYF6XCfjAA617nR0p1wgBrjLToo+mjPSH2to58twK9OsAHX4j
         5qahkQPn/gfns9VWNOUIY47CCmYp4bELNb3hSHyu7dhFJ4v0U4jVAnlJFA8TLdq8X/jH
         Ht/A==
X-Gm-Message-State: AOAM531hgbBLpKsj8vEF8kWc5soyyuVUeWfUpRpZRqKk2RJLZ4BlQ0xe
        uU0EIOu5IV+Sbj6s7Rjg2XyuKQ==
X-Google-Smtp-Source: ABdhPJzxTbAGRg1diy8LkKtzJUjrTUGZT77WrRaGr4wMKnEH/SV3zdH93xFEfOcrDNhBgXtzcW6eiw==
X-Received: by 2002:a62:1643:: with SMTP id 64mr31080879pfw.55.1643837061733;
        Wed, 02 Feb 2022 13:24:21 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:f1c4:10b6:b4ef:16e5])
        by smtp.gmail.com with ESMTPSA id on9sm7627983pjb.16.2022.02.02.13.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 13:24:21 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     pmaliset@codeaurora.org, mka@chromium.org,
        quic_rjendra@quicinc.com,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        kgodara@codeaurora.org, konrad.dybcio@somainline.org,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        sibis@codeaurora.org, swboyd@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 08/14] arm64: dts: qcom: sc7280: Move pcie1_clkreq pull / drive str to boards
Date:   Wed,  2 Feb 2022 13:23:42 -0800
Message-Id: <20220202132301.v3.8.Iffff0c12440a047212a164601e637b03b9d2fc78@changeid>
X-Mailer: git-send-email 2.35.0.rc2.247.g8bbb082509-goog
In-Reply-To: <20220202212348.1391534-1-dianders@chromium.org>
References: <20220202212348.1391534-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Pullups and drive strength don't belong in the SoC dtsi file. Move to
the board file.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v3:
- ("Move pcie1_clkreq pull / drive str to boards") new for v3.

 arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts | 5 +++++
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi                   | 5 +++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi                       | 2 --
 3 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
index 918352c097bc..82c3c8f0342b 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
@@ -826,6 +826,11 @@ &usb_2_hsphy {
 
 /* PINCTRL - additions to nodes defined in sc7280.dtsi */
 
+&pcie1_clkreq_n {
+	bias-pull-up;
+	drive-strength = <2>;
+};
+
 &qspi_cs0 {
 	bias-disable;
 };
diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
index 23e656e51904..6e20e8c07402 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
@@ -366,6 +366,11 @@ key_vol_up_default: key-vol-up-default {
 	};
 };
 
+&pcie1_clkreq_n {
+	bias-pull-up;
+	drive-strength = <2>;
+};
+
 &qspi_cs0 {
 	bias-disable;
 };
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 3f9837921c17..a2e3aa6ecdd3 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -3293,8 +3293,6 @@ edp_hot_plug_det: edp-hot-plug-det {
 			pcie1_clkreq_n: pcie1-clkreq-n {
 				pins = "gpio79";
 				function = "pcie1_clkreqn";
-				drive-strength = <2>;
-				bias-pull-up;
 			};
 
 			qspi_clk: qspi-clk {
-- 
2.35.0.rc2.247.g8bbb082509-goog

