Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE1CD34325E
	for <lists+devicetree@lfdr.de>; Sun, 21 Mar 2021 13:19:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229854AbhCUMTK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Mar 2021 08:19:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229784AbhCUMSf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Mar 2021 08:18:35 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B064C061574
        for <devicetree@vger.kernel.org>; Sun, 21 Mar 2021 05:18:35 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id ha17so6945730pjb.2
        for <devicetree@vger.kernel.org>; Sun, 21 Mar 2021 05:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0A00HABlLc9uoR9pP82TBmZMvUE1e8Jh+/uh0UVLNe0=;
        b=FZFF3aP/8ufYeiXsK1dIOEcJvc/dbV0Od45gvXJb3uBExPt6KRFAKxZ5rtgDFdZUmz
         UYXIiLz59epPQ0bxoorqBsAvTxsmdWbi4ZVG9+J/LamEpMNrra0r4NiFH6xAuTm84k1e
         cwqp5oZLjaJYljYe+8L9YnxZWEu0Yny+YtYlRRoVZn26AnDBkI6SuchFf3TpzxyE9gmf
         5Rpb+F7c9mLHwmWtbDuxtzjT5dBaTrruRxrbvpME1CilVdyPbAzpnYtN6Al3KNriZgoc
         X2FpV/A4k0lGLoUhT1bB5PiIZ4ijrGgiIPEL3z7kGXSKse36fUsJTB3WlV3acAhjOK8w
         FskA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0A00HABlLc9uoR9pP82TBmZMvUE1e8Jh+/uh0UVLNe0=;
        b=dZuswFPM5RGEOQ4xQpsHZdiTojBbB+GztBoh0Xn9ld1wR7NyLsN6Vbh2Qxv56R9ugJ
         CnFvl54DAXPZhPG4wx+R0P+zJFdcqpGnVHZmg5jNfQUAvSHr9XIiVeTlO7xwDNFJ9aPe
         px1ci8ZCqDSrvbXKeK4oIwrrNgJ30CRWequ3VswRAlSQnQ7EMF3iyrZnBPdzAbOF4meQ
         mnjPiFvj3j+mrLZnHeBqzIdVs/pmD4jb3EwDGa9Tf93G4YKtDMWlcX/EJIp2Mjb1tuL9
         y5ycimYfsE0A1cfaT358yeSDXq1zNL12413EYu5uiRZd7Yv1vrcR7/KlFbh30sVkXvN4
         ViBA==
X-Gm-Message-State: AOAM532VGtoFpzTFtil3NkGZ2gPftGOaEIa5oDZa/aGnnAPyGAD5CRVy
        IzRKi8K4ERrix5+gtYC+yC7urg==
X-Google-Smtp-Source: ABdhPJwScgAEaOVyKhFeUQbsgZES4mkBWlxxkXcSjV1gVihpu/nUp0SMiumrYBXCp17NdKkJrMB5CA==
X-Received: by 2002:a17:90b:3783:: with SMTP id mz3mr8441065pjb.88.1616329114263;
        Sun, 21 Mar 2021 05:18:34 -0700 (PDT)
Received: from localhost ([116.206.101.232])
        by smtp.gmail.com with ESMTPSA id q11sm10313799pfh.132.2021.03.21.05.18.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Mar 2021 05:18:33 -0700 (PDT)
From:   Leo Yan <leo.yan@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Coresight ML <coresight@lists.linaro.org>
Cc:     Leo Yan <leo.yan@linaro.org>,
        Georgi Djakov <georgi.djakov@linaro.org>
Subject: [PATCH v2] arm64: dts: msm8916: Enable CoreSight STM component
Date:   Sun, 21 Mar 2021 20:11:05 +0800
Message-Id: <20210321121105.678515-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT binding for CoreSight System Trace Macrocell (STM) on msm8916,
which can benefit the CoreSight development on DB410c.

Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---

Changes from v1:
* alphabetically and address ordering for DT node; pad addresses with
* zeroes (Stephan Gerhold).

 arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi |  1 +
 arch/arm64/boot/dts/qcom/msm8916.dtsi     | 27 +++++++++++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi b/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
index 3a9538e1ec97..2165b7415add 100644
--- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
+++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi
@@ -410,6 +410,7 @@ &wcd_codec {
 &funnel0 { status = "okay"; };
 &funnel1 { status = "okay"; };
 &replicator { status = "okay"; };
+&stm { status = "okay"; };
 &tpiu { status = "okay"; };
 
 &smd_rpm_regulators {
diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 402e891a84ab..f02b976480d5 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -489,6 +489,26 @@ snoc: interconnect@580000 {
 				 <&rpmcc RPM_SMD_SNOC_A_CLK>;
 		};
 
+		stm: stm@802000 {
+			compatible = "arm,coresight-stm", "arm,primecell";
+			reg = <0x00802000 0x1000>,
+			      <0x09280000 0x180000>;
+			reg-names = "stm-base", "stm-stimulus-base";
+
+			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
+			clock-names = "apb_pclk", "atclk";
+
+			status = "disabled";
+
+			out-ports {
+				port {
+					stm_out: endpoint {
+						remote-endpoint = <&funnel0_in7>;
+					};
+				};
+			};
+		};
+
 		/* System CTIs */
 		/* CTI 0 - TMC connections */
 		cti0: cti@810000 {
@@ -562,6 +582,13 @@ funnel0_in4: endpoint {
 						remote-endpoint = <&funnel1_out>;
 					};
 				};
+
+				port@7 {
+					reg = <7>;
+					funnel0_in7: endpoint {
+						remote-endpoint = <&stm_out>;
+					};
+				};
 			};
 
 			out-ports {
-- 
2.25.1

