Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17A524FA9B4
	for <lists+devicetree@lfdr.de>; Sat,  9 Apr 2022 18:46:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242765AbiDIQsM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Apr 2022 12:48:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242736AbiDIQsL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Apr 2022 12:48:11 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 545211E521F
        for <devicetree@vger.kernel.org>; Sat,  9 Apr 2022 09:46:03 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id b19so17126392wrh.11
        for <devicetree@vger.kernel.org>; Sat, 09 Apr 2022 09:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dObP7sYfmP4NvOZF50OF7Jr64Zlh1L7RQKYVLyq7PFo=;
        b=v+qTGBzGuWMVP7Q+S2lhobkI1xemM1eMXL0uu2SzjV7FJjCYo/28I0W2nXJWjbg4ur
         WjmSq4CDRar5Q7zHjw9Vvucq9w48HfIn23ReY3ZCDDMoSB547I2b8pHlK6yyZTIvg3o9
         YJqvFOkNjX9OILxj+VFvMCMAND9drl21K25Ix1rlkaOdBlNmVd7ayJB9h93HteqD6XQ6
         HK29JyikwYikrsImwho4DrMKC3LSpy4/hyV3hOEdexgTGAKMdftj8zhAB9lpkvRRyZob
         uaHeK51ikxNPNsO7offHqmXhFuK17ZSCOJINK0OkkoHCcxyVXCh3cGEbF6mFTT60DmZN
         BvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dObP7sYfmP4NvOZF50OF7Jr64Zlh1L7RQKYVLyq7PFo=;
        b=CjbLvn+jLWXSDR7QMZILY2SAZgl6dx1R0CZDUSR3qWZ6S/XnzuIJLZ2rOWujtVE8ab
         +TxOQaoiFa1o/Kq7W2K58Q9N7Wx5DxBl73f+bRI8Gvw3O+I/7IIw/B5SUKuG8O3mfy0g
         PDUksgGEHKAnMVgjNsb38g2VTz+O2loJqNZiWjT38nN1fDLhvyg7ZTkI+DwTbIf4nvO1
         TS8ILerwdOynWvRSyzIlIzmnQSluHo9QDGqVIauLzKu9Vqd+cwSJOhJbsolrQPMxpOaK
         S0q9Xx6A9WYJkGb66r0LR2C6BGKPhBd5ZnxQ1cwlTBT1vqW14Ef0rX2XchczWlyro/rb
         HVZw==
X-Gm-Message-State: AOAM530ZQQ1SmphRk9e0pUgm4zP8jtAcmqwQ8rytWivAEIW/FD2n1nQq
        YeaIDcooGGxWgkIzj+LLJGaIPA==
X-Google-Smtp-Source: ABdhPJwlXLuZICtAkTbRsfr1pVS+OW695Vibuos5Zxj/CSke62Iicc2PLzfyRbYyEPwoByb4PvD0bQ==
X-Received: by 2002:a05:6000:510:b0:203:e469:f0a3 with SMTP id a16-20020a056000051000b00203e469f0a3mr19104276wrf.710.1649522761790;
        Sat, 09 Apr 2022 09:46:01 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id j3-20020adfd203000000b0020616cddfd5sm13901357wrh.7.2022.04.09.09.46.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Apr 2022 09:46:01 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     dmitry.baryshkov@linaro.org, jonathan@marek.ca, hfink@snap.com,
        jgrahsl@snap.com, bryan.odonoghue@linaro.org
Subject: [PATCH 3/4] arm64: dts: qcom: sm8250: camss: Add downstream camera pin definitions
Date:   Sat,  9 Apr 2022 17:45:55 +0100
Message-Id: <20220409164556.2832782-4-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220409164556.2832782-1-bryan.odonoghue@linaro.org>
References: <20220409164556.2832782-1-bryan.odonoghue@linaro.org>
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

There are a number of pin mux descriptions for the CAMSS block which are
defined downstream.

Bring in the definitions now. Subsequent changes will optionally activate
those muxes for different sm8250 based boards.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 471 +++++++++++++++++++++++++++
 1 file changed, 471 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 3d6c617de045..91ed079edbf7 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3687,6 +3687,477 @@ tlmm: pinctrl@f100000 {
 			gpio-ranges = <&tlmm 0 0 181>;
 			wakeup-parent = <&pdc>;
 
+			cam_sensor_mclk0_active: cam_sensor_mclk0_active {
+				/* MCLK0 */
+				mux {
+					pins = "gpio94";
+					function = "cam_mclk";
+				};
+
+				config {
+					pins = "gpio94";
+					bias-disable; /* No PULL */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_mclk0_suspend: cam_sensor_mclk0_suspend {
+				/* MCLK0 */
+				mux {
+					pins = "gpio94";
+					function = "cam_mclk";
+				};
+
+				config {
+					pins = "gpio94";
+					bias-pull-down; /* PULL DOWN */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_mclk1_active: cam_sensor_mclk1_active {
+				/* MCLK1 */
+				mux {
+					pins = "gpio95";
+					function = "cam_mclk";
+				};
+
+				config {
+					pins = "gpio95";
+					bias-disable; /* No PULL */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_mclk1_suspend: cam_sensor_mclk1_suspend {
+				/* MCLK1 */
+				mux {
+					pins = "gpio95";
+					function = "cam_mclk";
+				};
+
+				config {
+					pins = "gpio95";
+					bias-pull-down; /* PULL DOWN */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_mclk2_active: cam_sensor_mclk2_active {
+				/* MCLK2 */
+				mux {
+					pins = "gpio96";
+					function = "cam_mclk";
+				};
+
+				config {
+					pins = "gpio96";
+					bias-disable;		/* No PULL */
+					drive-strength = <2>;	/* 2 MA */
+				};
+			};
+
+			cam_sensor_mclk2_suspend: cam_sensor_mclk2_suspend {
+				/* MCLK2 */
+				mux {
+					pins = "gpio96";
+					function = "cam_mclk";
+				};
+
+				config {
+					pins = "gpio96";
+					bias-pull-down; /* PULL DOWN */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_mclk3_active: cam_sensor_mclk3_active {
+				/* MCLK3 */
+				mux {
+					pins = "gpio97";
+					function = "cam_mclk";
+				};
+
+				config {
+					pins = "gpio97";
+					bias-disable; /* No PULL */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_mclk3_suspend: cam_sensor_mclk3_suspend {
+				/* MCLK3 */
+				mux {
+					pins = "gpio97";
+					function = "cam_mclk";
+				};
+
+				config {
+					pins = "gpio97";
+					bias-pull-down; /* PULL DOWN */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_mclk4_active: cam_sensor_mclk4_active {
+				/* MCLK4 */
+				mux {
+					pins = "gpio98";
+					function = "cam_mclk";
+				};
+
+				config {
+					pins = "gpio98";
+					bias-disable; /* No PULL */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_mclk4_suspend: cam_sensor_mclk4_suspend {
+				/* MCLK4 */
+				mux {
+					pins = "gpio98";
+					function = "cam_mclk";
+				};
+
+				config {
+					pins = "gpio98";
+					bias-pull-down; /* PULL DOWN */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_mclk5_active: cam_sensor_mclk5_active {
+				/* MCLK5 */
+				mux {
+					pins = "gpio99";
+					function = "cam_mclk";
+				};
+
+				config {
+					pins = "gpio99";
+					bias-disable; /* No PULL */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_mclk5_suspend: cam_sensor_mclk5_suspend {
+				/* MCLK5 */
+				mux {
+					pins = "gpio99";
+					function = "cam_mclk";
+				};
+
+				config {
+					pins = "gpio99";
+					bias-pull-down; /* PULL DOWN */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_mclk6_active: cam_sensor_mclk6_active {
+				/* MCLK6 */
+				mux {
+					pins = "gpio100";
+					function = "cam_mclk";
+				};
+
+				config {
+					pins = "gpio100";
+					bias-disable; /* No PULL */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_mclk6_suspend: cam_sensor_mclk6_suspend {
+				/* MCLK6 */
+				mux {
+					pins = "gpio100";
+					function = "cam_mclk";
+				};
+
+				config {
+					pins = "gpio100";
+					bias-pull-down; /* PULL DOWN */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_active_rear: cam_sensor_active_rear {
+				/* RESET REAR */
+				mux {
+					pins = "gpio93";
+					function = "gpio";
+				};
+
+				config {
+					pins = "gpio93";
+					bias-disable; /* No PULL */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_suspend_rear: cam_sensor_suspend_rear {
+				/* RESET REAR */
+				mux {
+					pins = "gpio93";
+					function = "gpio";
+				};
+
+				config {
+					pins = "gpio93";
+					bias-pull-down; /* PULL DOWN */
+					drive-strength = <2>; /* 2 MA */
+					output-low;
+				};
+			};
+
+			cam_sensor_active_rear_aux: cam_sensor_active_rear_aux {
+				/* RESET REARAUX */
+				mux {
+					pins = "gpio92";
+					function = "gpio";
+				};
+
+				config {
+					pins = "gpio92";
+					bias-disable; /* No PULL */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_suspend_rear_aux: cam_sensor_suspend_rear_aux {
+				/* RESET REARAUX */
+				mux {
+					pins = "gpio92";
+					function = "gpio";
+				};
+
+				config {
+					pins = "gpio92";
+					bias-pull-down; /* PULL DOWN */
+					drive-strength = <2>; /* 2 MA */
+					output-low;
+				};
+			};
+
+			cam_sensor_active_rst2: cam_sensor_active_rst2 {
+				/* RESET 2 */
+				mux {
+					pins = "gpio78";
+					function = "gpio";
+				};
+
+				config {
+					pins = "gpio78";
+					bias-disable; /* No PULL */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_suspend_rst2: cam_sensor_suspend_rst2 {
+				/* RESET 2 */
+				mux {
+					pins = "gpio78";
+					function = "gpio";
+				};
+
+				config {
+					pins = "gpio78";
+					bias-pull-down; /* PULL DOWN */
+					drive-strength = <2>; /* 2 MA */
+					output-low;
+				};
+			};
+
+			cam_sensor_active_3: cam_sensor_active_3 {
+				/* RESET 3 */
+				mux {
+					pins = "gpio109";
+					function = "gpio";
+				};
+
+				config {
+					pins = "gpio109";
+					bias-disable; /* No PULL */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_suspend_3: cam_sensor_suspend_3 {
+				/* RESET 3 */
+				mux {
+					pins = "gpio109";
+					function = "gpio";
+				};
+
+				config {
+					pins = "gpio109";
+					bias-pull-down; /* PULL DOWN */
+					drive-strength = <2>; /* 2 MA */
+					output-low;
+				};
+			};
+
+			cam_sensor_active_4: cam_sensor_active_4 {
+				/* RESET 4 */
+				mux {
+					pins = "gpio130";
+					function = "gpio";
+				};
+
+				config {
+					pins = "gpio130";
+					bias-disable; /* No PULL */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_suspend_4: cam_sensor_suspend_4 {
+				/* RESET 4 */
+				mux {
+					pins = "gpio130";
+					function = "gpio";
+				};
+
+				config {
+					pins = "gpio130";
+					bias-pull-down; /* PULL DOWN */
+					drive-strength = <2>; /* 2 MA */
+					output-low;
+				};
+			};
+
+			cam_sensor_active_5: cam_sensor_active_5 {
+				/* RESET 5 */
+				mux {
+					pins = "gpio131";
+					function = "gpio";
+				};
+
+				config {
+					pins = "gpio131";
+					bias-disable; /* No PULL */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_suspend_5: cam_sensor_suspend_5 {
+				/* RESET 5 */
+				mux {
+					pins = "gpio131";
+					function = "gpio";
+				};
+
+				config {
+					pins = "gpio131";
+					bias-pull-down; /* PULL DOWN */
+					drive-strength = <2>; /* 2 MA */
+					output-low;
+				};
+			};
+
+			cam_sensor_active_6: cam_sensor_active_6 {
+				/* RESET 6 */
+				mux {
+					pins = "gpio114";
+					function = "gpio";
+				};
+
+				config {
+					pins = "gpio114";
+					bias-disable; /* No PULL */
+					drive-strength = <2>; /* 2 MA */
+				};
+			};
+
+			cam_sensor_suspend_6: cam_sensor_suspend_6 {
+				/* RESET 6 */
+				mux {
+					pins = "gpio114";
+					function = "gpio";
+				};
+
+				config {
+					pins = "gpio114";
+					bias-pull-down; /* PULL DOWN */
+					drive-strength = <2>; /* 2 MA */
+					output-low;
+				};
+			};
+
+			cci0_default: cci0-default {
+				/* SDA, SCL */
+				pins = "gpio101", "gpio102";
+				function = "cci_i2c";
+
+				bias-pull-up;
+				drive-strength = <2>; /* 2 mA */
+			};
+
+			cci0_sleep: cci0-sleep {
+				/* SDA, SCL */
+				pins = "gpio101", "gpio102";
+				function = "cci_i2c";
+
+				drive-strength = <2>; /* 2 mA */
+				bias-pull-down;
+			};
+
+			cci1_default: cci1-default {
+				/* SDA, SCL */
+				pins = "gpio103", "gpio104";
+				function = "cci_i2c";
+
+				bias-pull-up;
+				drive-strength = <2>; /* 2 mA */
+			};
+
+			cci1_sleep: cci1-sleep {
+				/* SDA, SCL */
+				pins = "gpio103", "gpio104";
+				function = "cci_i2c";
+
+				drive-strength = <2>; /* 2 mA */
+				bias-pull-down;
+			};
+
+			cci2_default: cci2-default {
+				/* SDA, SCL */
+				pins = "gpio105","gpio106";
+				function = "cci_i2c";
+
+				bias-pull-up;
+				drive-strength = <2>; /* 2 mA */
+			};
+
+			cci2_sleep: cci2-sleep {
+				/* SDA, SCL */
+				pins = "gpio105","gpio106";
+				function = "cci_i2c";
+
+				bias-pull-down;
+				drive-strength = <2>; /* 2 mA */
+			};
+
+			cci3_default: cci3-default {
+				/* SDA, SCL */
+				pins = "gpio107","gpio108";
+				function = "cci_i2c";
+
+				bias-pull-up;
+				drive-strength = <2>; /* 2 mA */
+			};
+
+			cci3_sleep: cci3-sleep {
+				/* SDA, SCL */
+				pins = "gpio107","gpio108";
+				function = "cci_i2c";
+
+				bias-pull-down;
+				drive-strength = <2>; /* 2 mA */
+			};
+
 			pri_mi2s_active: pri-mi2s-active {
 				sclk {
 					pins = "gpio138";
-- 
2.35.1

