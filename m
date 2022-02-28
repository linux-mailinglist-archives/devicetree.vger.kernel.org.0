Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2AFC4C6C91
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 13:31:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236482AbiB1Mbj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 07:31:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236519AbiB1Mbi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 07:31:38 -0500
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D785774DDF
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 04:30:59 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id g1so11034632pfv.1
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 04:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=a/XNuiNwtu02wRy/TRgkyFviYDIYxqmuWsetEjULcyA=;
        b=UQNYW2DOhP2WdiWZJWQx2ANfdBvGIp1SDU1WVliAYBh528aOBZFG7XtI+3d7+pWVFL
         JfzUAJesEKOi+QYCPLoXHM7iStlS+JgLcrif0UZlgK9qfbD6m3H9wvz51VIbBpXGrHPn
         P0ubW216hkIT0rtVPHMavwdWCRi2j8W6O8Ei3ojdEtQnWV/oTfXigkHd65oONNykU91I
         /vkzz/a1ejmF4P7zYOBNTrh++xznalszt/kEJmrTN0/PS+Jdy1f6TB71Qhst7gaOkpzk
         Ld935w5Suo/Gz1Q3Qeg5NcZL2NEWoWAXTc2a2b33wQH8HCOQPlTrQvBzD4hPcWHoee9B
         VoRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=a/XNuiNwtu02wRy/TRgkyFviYDIYxqmuWsetEjULcyA=;
        b=e8upyCW/hr89GdSpyDaav42tabVso86ZbzVqz4E1PDlYEHCNOaULKPF+VVFrAIwhOx
         bMVMX4qriAJfXswf61widLWVw4zuowncmSpbYs0QiSlIejQcYcWkBrGw6OdV97yi0OIH
         EpAAtlrRb6NXXpbjpve393G8ARc42tCRGSPZIdmdETwFs3Xx6o1uubhHdT3jvcJCiJGB
         +lLmRK6S4At69DlJwM84CBsyYPpEuyyVvb31Qsiia52FfKAnbA0MGyBBMOfF/NegLAPI
         GllAxYxE3xGrnWlvmdu/cgPXGztnjAJOmpitV8fq5YzAKmkD7NOxE2K0YU6pUBkG4kKG
         vNzw==
X-Gm-Message-State: AOAM532UmJz7CAU/+vLtyXhxNU/r8kjwNdXSCElX7GWBBXQdX3grfzt6
        mD2it3PqvWx5lWgegxM4P+hOiw==
X-Google-Smtp-Source: ABdhPJw4ud5qguWt5MFUYQI9Ef4BnXs5p1195d0g+KmVLDjkH8eapfKBg2CmtI+UYIARcs9MLqHvfQ==
X-Received: by 2002:a05:6a00:d4c:b0:4e0:27dd:37c1 with SMTP id n12-20020a056a000d4c00b004e027dd37c1mr21536386pfv.86.1646051459367;
        Mon, 28 Feb 2022 04:30:59 -0800 (PST)
Received: from localhost.localdomain ([223.179.136.225])
        by smtp.gmail.com with ESMTPSA id f7-20020a056a0022c700b004f0e9d686dcsm13790001pfj.137.2022.02.28.04.30.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 04:30:59 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, shawn.guo@linaro.org, vkoul@kernel.org,
        linux-phy@lists.infradead.org, robh+dt@kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 6/8] arm64: dts: qcom: ipq6018: Fix qmp usb3 phy node
Date:   Mon, 28 Feb 2022 18:00:17 +0530
Message-Id: <20220228123019.382037-7-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the following 'make dtbs_check' warning(s) by
using phy@ instead of lanes@ and by moving '#clock-names' to
sub-node:

arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml: ssphy@78000:
 'lane@78200' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 66ec5615651d..ad7914e49532 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -674,7 +674,6 @@ ssphy_0: ssphy@78000 {
 			reg = <0x0 0x78000 0x0 0x1C4>;
 			#address-cells = <2>;
 			#size-cells = <2>;
-			#clock-cells = <1>;
 			ranges;
 
 			clocks = <&gcc GCC_USB0_AUX_CLK>,
@@ -686,12 +685,13 @@ ssphy_0: ssphy@78000 {
 			reset-names = "phy","common";
 			status = "disabled";
 
-			usb0_ssphy: lane@78200 {
+			usb0_ssphy: phy@78200 {
 				reg = <0x0 0x00078200 0x0 0x130>, /* Tx */
 				      <0x0 0x00078400 0x0 0x200>, /* Rx */
 				      <0x0 0x00078800 0x0 0x1F8>, /* PCS */
 				      <0x0 0x00078600 0x0 0x044>; /* PCS misc */
 				#phy-cells = <0>;
+				#clock-cells = <1>;
 				clocks = <&gcc GCC_USB0_PIPE_CLK>;
 				clock-names = "pipe0";
 				clock-output-names = "gcc_usb0_pipe_clk_src";
-- 
2.35.1

