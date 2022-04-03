Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6562D4F0A3E
	for <lists+devicetree@lfdr.de>; Sun,  3 Apr 2022 16:42:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357017AbiDCOoD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Apr 2022 10:44:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358194AbiDCOoB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Apr 2022 10:44:01 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7040396B2
        for <devicetree@vger.kernel.org>; Sun,  3 Apr 2022 07:42:07 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id l4-20020a17090a49c400b001c6840df4a3so6790680pjm.0
        for <devicetree@vger.kernel.org>; Sun, 03 Apr 2022 07:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=p5umN/eT2yUlngm37Zc5I2AOTVEAYdcyPGsqi0WLgoI=;
        b=Zx7R9Rp7/72eElz3mkRm7acwcHI7aWjNETem+EFTweD0U19lywnqYJWuuJnRSXV/eV
         kz2t5mBpUW7d+u0q5QYs4VYKlrChrUGuAP5QdLGcLSug3Ywsi5gdOGaX9Brh0/ulpCn/
         7gOHxhjAl4BYnxRm/QR6BN8glSQfz6I8tJTI/RSf5eIe1DLQqzttczmr4Msq/GHTN8gc
         RoCkLFNAcMkxhGclXdJOFHC7gAGvC13nj64l30h8VrduEVJvURlNMZjvfySn/RIYgkEm
         jh9Tx5vM3ajyT52cPSPRf52yZc9EQyfUgM4YB+KPEuE9jMBgyHVVk6T1v21nHwBInga5
         w3lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p5umN/eT2yUlngm37Zc5I2AOTVEAYdcyPGsqi0WLgoI=;
        b=wBEQpPJFEKS0d5bCBlXxeQeuewlK6nztgFSFIg13HCaGtvIgf9vyDsXBIMo8iTOa9+
         EWsiB8OHIP9OU91jDquDHpQ7mmVQ816BrBBiWo3LuC8/v2aiZvsxi8WQMJfmsm9WqrZB
         NCFSYBihO4MfLhGtDlRBJysitrPtuMAdBt83piBU7h1iCFVncepJ1haNb60pfyeZKZkU
         YeY7sj4UoJLSdlBux90BuQ0sYJTNE5yVriF6wp5djpKSTmFtTyb+IWN0LlHckBuSN/Rl
         x2VdJEJoAiEwZt/zAtbcoXfcH/BB8A8NgxUxNVu3OgdEFLUh0iQxguhCdoPI6BHxtHsI
         ppSA==
X-Gm-Message-State: AOAM533FlqYbsSGmLa8Dg/jk56GLQMwzNCcoG/i7hXnw+oO+UOBVAgVN
        QA77m+YA66+JXfTPdDAnOYZFAA==
X-Google-Smtp-Source: ABdhPJxiK259Rsez5AEKNCgwwGWfLwLJqqjZFy2P7C56o2s85y+ZZXJ+QGvNqQVOLEeIfTFmZVG1lg==
X-Received: by 2002:a17:902:f242:b0:156:8e7c:e21e with SMTP id j2-20020a170902f24200b001568e7ce21emr4568719plc.86.1648996927127;
        Sun, 03 Apr 2022 07:42:07 -0700 (PDT)
Received: from localhost.localdomain ([223.233.64.251])
        by smtp.gmail.com with ESMTPSA id 124-20020a621682000000b004f6a2e59a4dsm8815075pfw.121.2022.04.03.07.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Apr 2022 07:42:06 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        bjorn.andersson@linaro.org, Rob Herring <robh@kernel.org>
Subject: [PATCH 2/2] arm64: dts: qcom: sa8155p-adp: Add support for uSD card
Date:   Sun,  3 Apr 2022 20:11:51 +0530
Message-Id: <20220403144151.92572-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220403144151.92572-1-bhupesh.sharma@linaro.org>
References: <20220403144151.92572-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for uSD card on SA8155p-ADP board using the SDHC2
interface.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8155p-adp.dts | 68 ++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
index 8756c2b25c7e..b561a8139cb9 100644
--- a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
+++ b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
@@ -317,6 +317,20 @@ &remoteproc_cdsp {
 	firmware-name = "qcom/sa8155p/cdsp.mdt";
 };
 
+&sdhc_2 {
+	status = "okay";
+
+	cd-gpios = <&tlmm 4 GPIO_ACTIVE_LOW>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&sdc2_on>;
+	pinctrl-1 = <&sdc2_off>;
+	vqmmc-supply = <&vreg_l13c_2p96>; /* IO line power */
+	vmmc-supply = <&vreg_l17a_2p96>;  /* Card power line */
+	bus-width = <4>;
+	no-sdio;
+	no-emmc;
+};
+
 &uart2 {
 	status = "okay";
 };
@@ -390,6 +404,60 @@ &usb_2_qmpphy {
 &tlmm {
 	gpio-reserved-ranges = <0 4>;
 
+	sdc2_on: sdc2_on {
+		clk {
+			pins = "sdc2_clk";
+			bias-disable;		/* No pull */
+			drive-strength = <16>;	/* 16 MA */
+		};
+
+		cmd {
+			pins = "sdc2_cmd";
+			bias-pull-up;		/* pull up */
+			drive-strength = <16>;	/* 16 MA */
+		};
+
+		data {
+			pins = "sdc2_data";
+			bias-pull-up;		/* pull up */
+			drive-strength = <16>;	/* 16 MA */
+		};
+
+		sd-cd {
+			pins = "gpio96";
+			function = "gpio";
+			bias-pull-up;		/* pull up */
+			drive-strength = <2>;	/* 2 MA */
+		};
+	};
+
+	sdc2_off: sdc2_off {
+		clk {
+			pins = "sdc2_clk";
+			bias-disable;		/* No pull */
+			drive-strength = <2>;	/* 2 MA */
+		};
+
+		cmd {
+			pins = "sdc2_cmd";
+			bias-pull-up;		/* pull up */
+			drive-strength = <2>;	/* 2 MA */
+		};
+
+		data {
+			pins = "sdc2_data";
+			bias-pull-up;		/* pull up */
+			drive-strength = <2>;	/* 2 MA */
+		};
+
+		sd-cd {
+			pins = "gpio96";
+			function = "gpio";
+			bias-pull-up;		/* pull up */
+			drive-strength = <2>;	/* 2 MA */
+		};
+	};
+
 	usb2phy_ac_en1_default: usb2phy_ac_en1_default {
 		mux {
 			pins = "gpio113";
-- 
2.35.1

