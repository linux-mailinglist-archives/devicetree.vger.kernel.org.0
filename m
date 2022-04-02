Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 012844F0578
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 20:40:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245175AbiDBSmR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 14:42:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245503AbiDBSmP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 14:42:15 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8830A48307
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 11:40:21 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id d29so2543153wra.10
        for <devicetree@vger.kernel.org>; Sat, 02 Apr 2022 11:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ijNe1gxoWsdrm+oek0ryQTviG9eFIwp156wwm7qwtvc=;
        b=QS57J11MUObITJ/vb9ovmNk0WG+DE1ZiMHHrwzVn0L2+b3vWZbAdRPZKPO7QLNSryu
         74b2HkwUaAtJAXHQaNbyH9Fh/ShNoJlA72t3i/FbErVQW9i4Dq2UalFgTV9NweJ2iFzc
         RtX63MdnCFOSKl+SbJzkjE5ACUMiPdghrsg/r4rMKjuAKkNe0JzzmEM8N5o9Q2sDvEqB
         akXw3sqnQwcXtXAe/TxkDeZ9hZQPKzyZhasp1AL31VsrszzKzRz6dROhSVyt3Eqs6vYK
         MWpYs03DXewtA7kWsHMUb9i/WkZ4EW6v+KLQHE+VY870v3Lh5wnZ60KxejWuqsuOCiC5
         5GWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ijNe1gxoWsdrm+oek0ryQTviG9eFIwp156wwm7qwtvc=;
        b=jMSZ5+VsPy9JO+Z9kr/i4x/ULYln25DuOyCDDbMlWeosHx9QYeHoq4lrUbO7PpmQbX
         K0xceeO4DM/y/0t3xh8OkDWf5K6+AxhjHlI1jBwubC3ipe1HZqy/bQxkLLa2dbyDz6D7
         WdVOlA2m/yekP9DvtUpnxhqCGmcgfmL2jgy12MGGIcFZeuuf/HaH7u+frGB5nC6QGGyU
         xyD1ooMfEIO/0AFno0kyWg04XrqgEImwELvEKYBtjLx14HKe0/4HE10+nzYcsqJR5ZYH
         +LBQZenjmaV+5nZTNw0qid0G1XzMPGv03lHFfsAXcWVO2CqZ6IvGRw25PiRPIJOiPvQD
         quKA==
X-Gm-Message-State: AOAM5313J/Fx8r+EZVbUM6TWcX1UK+DrBrz4Bh/ygaX3dUCMekpPZOnp
        bPZ7p8nJ+G9irivJdoyan+ONsw==
X-Google-Smtp-Source: ABdhPJz9FA9JH2oOZCCYSONJ4CImbDLu4orm9k5IKhU9oR6fOzWRHx/mRp4fuOLIRLmBLVfIjeMIUA==
X-Received: by 2002:a5d:6b0b:0:b0:1ef:d826:723a with SMTP id v11-20020a5d6b0b000000b001efd826723amr12091241wrw.420.1648924820081;
        Sat, 02 Apr 2022 11:40:20 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id m20-20020a05600c4f5400b0038b5162260csm6760502wmq.23.2022.04.02.11.40.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Apr 2022 11:40:19 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
        linux-spi@vger.kernel.org
Cc:     Kuldeep Singh <singh.kuldeep87k@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 3/9] ARM: dts: qcom: ipq4019: align dmas in SPI/UART with DT schema
Date:   Sat,  2 Apr 2022 20:40:05 +0200
Message-Id: <20220402184011.132465-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220402184011.132465-1-krzysztof.kozlowski@linaro.org>
References: <20220402184011.132465-1-krzysztof.kozlowski@linaro.org>
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

The DT schema expects dma channels in tx-rx order.  No functional
change.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Dropped Kuldeep's ack because of changes - more properties changed.
---
 arch/arm/boot/dts/qcom-ipq4019.dtsi | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-ipq4019.dtsi b/arch/arm/boot/dts/qcom-ipq4019.dtsi
index a9d0566a3190..1f6c4ab7f37e 100644
--- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
@@ -253,8 +253,8 @@ blsp1_spi1: spi@78b5000 { /* BLSP1 QUP1 */
 			clock-names = "core", "iface";
 			#address-cells = <1>;
 			#size-cells = <0>;
-			dmas = <&blsp_dma 5>, <&blsp_dma 4>;
-			dma-names = "rx", "tx";
+			dmas = <&blsp_dma 4>, <&blsp_dma 5>;
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -267,8 +267,8 @@ blsp1_spi2: spi@78b6000 { /* BLSP1 QUP2 */
 			clock-names = "core", "iface";
 			#address-cells = <1>;
 			#size-cells = <0>;
-			dmas = <&blsp_dma 7>, <&blsp_dma 6>;
-			dma-names = "rx", "tx";
+			dmas = <&blsp_dma 6>, <&blsp_dma 7>;
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -281,8 +281,8 @@ blsp1_i2c3: i2c@78b7000 { /* BLSP1 QUP3 */
 			clock-names = "iface", "core";
 			#address-cells = <1>;
 			#size-cells = <0>;
-			dmas = <&blsp_dma 9>, <&blsp_dma 8>;
-			dma-names = "rx", "tx";
+			dmas = <&blsp_dma 8>, <&blsp_dma 9>;
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -295,8 +295,8 @@ blsp1_i2c4: i2c@78b8000 { /* BLSP1 QUP4 */
 			clock-names = "iface", "core";
 			#address-cells = <1>;
 			#size-cells = <0>;
-			dmas = <&blsp_dma 11>, <&blsp_dma 10>;
-			dma-names = "rx", "tx";
+			dmas = <&blsp_dma 10>, <&blsp_dma 11>;
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -382,8 +382,8 @@ blsp1_uart1: serial@78af000 {
 			clocks = <&gcc GCC_BLSP1_UART1_APPS_CLK>,
 				<&gcc GCC_BLSP1_AHB_CLK>;
 			clock-names = "core", "iface";
-			dmas = <&blsp_dma 1>, <&blsp_dma 0>;
-			dma-names = "rx", "tx";
+			dmas = <&blsp_dma 0>, <&blsp_dma 1>;
+			dma-names = "tx", "rx";
 		};
 
 		blsp1_uart2: serial@78b0000 {
@@ -394,8 +394,8 @@ blsp1_uart2: serial@78b0000 {
 			clocks = <&gcc GCC_BLSP1_UART2_APPS_CLK>,
 				<&gcc GCC_BLSP1_AHB_CLK>;
 			clock-names = "core", "iface";
-			dmas = <&blsp_dma 3>, <&blsp_dma 2>;
-			dma-names = "rx", "tx";
+			dmas = <&blsp_dma 2>, <&blsp_dma 3>;
+			dma-names = "tx", "rx";
 		};
 
 		watchdog: watchdog@b017000 {
-- 
2.32.0

