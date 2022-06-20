Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B34055115A
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 09:20:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239254AbiFTHTq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 03:19:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239244AbiFTHTo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 03:19:44 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA0BEE0FF
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 00:19:42 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id s10so10849302ljh.12
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 00:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2U1MvDNs6ua06s0bphjWFfhDRw12QhEGF/7HoemXNqc=;
        b=vgulDfw3pliOHcWOBcuC4lESyKHaE2yPHDoY/lCPNZBRWvuw/wsyMkE6lh6j+zjzvL
         PLDlmTwZzbxK0mz+GS4J149Ch2gH5/7Mhq86CEFIy1SnzXrmL4zE2T9IhhglUjwpPB/0
         LFB74DiM1fpLF5kGkgHYVLV0sHVBiTTOUm1FsF17hCtJrbz3it00cu1aa33YPYPEG9pl
         YK3AiGS6Geq0Ivc0NxQmn3YuO+5rHG+D8Gx1RyOu7Zqsi1MACr6ip3Sisd9LOMrnydf9
         EtJFNfj+vfS4LaMwQ43oEHfq+i/SDemYkOv348+GPJg7U9s3WE9dDKdUAqTqzYfpwXZX
         kBNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2U1MvDNs6ua06s0bphjWFfhDRw12QhEGF/7HoemXNqc=;
        b=3IQegCL3zrB12yAp/d6XZMZa+k+Rew0dHFjG5ZGaVcpAYF8JwCCbicztvelIUbjW9j
         VIchfGCar0yeVwq+A4uMeZQtazkzYSJbTZ+tzWWuHw3vM3tcdoT6jLYJ2oUngocRil/U
         6b5h147Nm95pXx8+JEHb4XgTd0y3qqp32xorHrf05GIRwm3V49cyKSFTHSHNfBLBtCag
         A8Hrscc9w0LhWK607mJ9ffdNZuc0GotqkaMq3leFIsXsaTNXv3BBPhRSl+Jnk8zdQuyF
         xhodmyqew8iplDOaDwcSVfamIBwOc7Wh0vhbDLKpfBL0GOviPZAL5FgA10oblJDXBDVJ
         +tQw==
X-Gm-Message-State: AJIora9N/z9prNSHxzSBQpyYmaw3aottk8p5W2tylRCVsNIlI6WWwJ1h
        mOuYHA2rD99KkPk8suIYaAdhAw==
X-Google-Smtp-Source: AGRyM1scmEDsrKKrRPbDdq0712m8YS2hAAGT6aatcv4z8UJ49PL5j40bUNz1i0lytivzrIbmgnYngA==
X-Received: by 2002:a2e:a884:0:b0:253:f2a8:81b0 with SMTP id m4-20020a2ea884000000b00253f2a881b0mr11070637ljq.60.1655709580929;
        Mon, 20 Jun 2022 00:19:40 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t16-20020a195f10000000b004795bcfe953sm1649775lfb.214.2022.06.20.00.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 00:19:40 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 2/4] arm64: dts: qcom: msm8996: correct #clock-cells for QMP PHY nodes
Date:   Mon, 20 Jun 2022 10:19:34 +0300
Message-Id: <20220620071936.1558906-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620071936.1558906-1-dmitry.baryshkov@linaro.org>
References: <20220620071936.1558906-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The commit 82d61e19fccb ("arm64: dts: qcom: msm8996: Move '#clock-cells'
to QMP PHY child node") moved the '#clock-cells' properties to the child
nodes. However it missed the fact that the property must have been set
to <0> (as all pipe clocks use of_clk_hw_simple_get as the xlate
function. Also the mentioned commit didn't add '#clock-cells' properties
to second and third PCIe PHY nodes. Correct both these mistakes:

- Set '#clock-cells' to <0>,
- Add the property to pciephy_1 and pciephy_2 nodes.

Fixes: 82d61e19fccb ("arm64: dts: qcom: msm8996: Move '#clock-cells' to QMP PHY child node")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 1341cb7ba168..e97f193aefd3 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -609,7 +609,7 @@ pciephy_0: phy@35000 {
 				      <0x00035400 0x1dc>;
 				#phy-cells = <0>;
 
-				#clock-cells = <1>;
+				#clock-cells = <0>;
 				clock-output-names = "pcie_0_pipe_clk_src";
 				clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
 				clock-names = "pipe0";
@@ -623,6 +623,7 @@ pciephy_1: phy@36000 {
 				      <0x00036400 0x1dc>;
 				#phy-cells = <0>;
 
+				#clock-cells = <0>;
 				clock-output-names = "pcie_1_pipe_clk_src";
 				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
 				clock-names = "pipe1";
@@ -636,6 +637,7 @@ pciephy_2: phy@37000 {
 				      <0x00037400 0x1dc>;
 				#phy-cells = <0>;
 
+				#clock-cells = <0>;
 				clock-output-names = "pcie_2_pipe_clk_src";
 				clocks = <&gcc GCC_PCIE_2_PIPE_CLK>;
 				clock-names = "pipe2";
@@ -2862,7 +2864,7 @@ ssusb_phy_0: phy@7410200 {
 				      <0x07410600 0x1a8>;
 				#phy-cells = <0>;
 
-				#clock-cells = <1>;
+				#clock-cells = <0>;
 				clock-output-names = "usb3_phy_pipe_clk_src";
 				clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
 				clock-names = "pipe0";
-- 
2.35.1

