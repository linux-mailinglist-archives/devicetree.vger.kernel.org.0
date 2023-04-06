Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C667F6DA1E8
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 21:47:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238199AbjDFTr1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 15:47:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237796AbjDFTrU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 15:47:20 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6707B8A4A
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 12:47:19 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id v1so40613063wrv.1
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 12:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680810439;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bXUDVofzbruFWvxInSCiMp68YTGp52NFTniah4vjDOg=;
        b=Qv+otAu1UfAjM8GTfhZEGFrwdb/8qT2pvcgo690fxcFpH1NtoSCCLqrLCH+95AK3G5
         dJ9eKBgEjSk78VYJTFtG5aL09U2/LBG2NT1RvXGLUqlmuLZTMmfa5deMmidpGId1PK0N
         gDBUxbLgfuUCKS8/uiFL73C3JsW/hfKHDkSJj3wmKtsOPyF/hyZXppammwV3RaSzQkfN
         KyKfIpMNCfEJ8uo448tqUTXAlL5VFaJ+L6DsDOIKIC3TUkSXx5uBI5j7fWRo20jfE6ZO
         HBForh6qpZNiT8uAi2dvGJubQVTkiiVEZzPXYxeENYMz63JRe9gKEzIs3Cg4MuJybc/F
         5HRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680810439;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bXUDVofzbruFWvxInSCiMp68YTGp52NFTniah4vjDOg=;
        b=zuW0AkDATKnI7kXI0TuVdY/5MyLn6kBDDUkLhDHp3dWcjVbyLt6gUmgkTIWr+CVbtE
         iF871KQ6jm4yY0LViX0PnY9HL575CkovCgtTdyML7GHeMSIsnkEQeUVHfOz0M6UIXHO1
         FB6vXCjmkw08CURYkH3cEgJBEUbzpQcqBcZKqm9THU+isCrWeuCzZC5Binxn7xF/C+Ky
         tdftqZFdqyxjZ+tCIw1ysuX30NMaUqodWMZ7VZpLMVb5cyDNb9vakGi5kdd6msyNfjKj
         WRpOLhye12t+nbFjylkpSUMy4t/soBfZVKczXGQOFU4lMTtAEi0h9IuA+zXgFMay3BCW
         Y7ww==
X-Gm-Message-State: AAQBX9f98kZ/9FjrbuPoMu8kwFLDVLOnWRROsR1Wj99vp+2OxO308ZbJ
        1SYJOLYMiZ5BwmkZDAOb8aplvw==
X-Google-Smtp-Source: AKy350YplvG0jP1fW81hi9f7EU3fuyxwRIfuj0elPEpyP0tkNZz4BYSplTmw7FvRhC7WQC6CNjZAWg==
X-Received: by 2002:adf:fe03:0:b0:2e5:26eb:bd1b with SMTP id n3-20020adffe03000000b002e526ebbd1bmr7466331wrr.58.1680810438846;
        Thu, 06 Apr 2023 12:47:18 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:4793:cb9a:340b:2f72])
        by smtp.gmail.com with ESMTPSA id k15-20020a056000004f00b002c71dd1109fsm2593323wrx.47.2023.04.06.12.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 12:47:18 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 5/5] arm64: dts: qcom: sa8775p-ride: enable UFS
Date:   Thu,  6 Apr 2023 21:47:03 +0200
Message-Id: <20230406194703.495836-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230406194703.495836-1-brgl@bgdev.pl>
References: <20230406194703.495836-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Enable the UFS and its PHY on sa8775p-ride.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index f238a02a5448..2bb001a3ea55 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -5,6 +5,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "sa8775p.dtsi"
@@ -20,6 +21,7 @@ aliases {
 		serial2 = &uart17;
 		i2c18 = &i2c18;
 		spi16 = &spi16;
+		ufshc1 = &ufs_mem_hc;
 	};
 
 	chosen {
@@ -426,6 +428,23 @@ &uart17 {
 	status = "okay";
 };
 
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 149 GPIO_ACTIVE_LOW>;
+	vcc-supply = <&vreg_l8a>;
+	vcc-max-microamp = <1100000>;
+	vccq-supply = <&vreg_l4c>;
+	vccq-max-microamp = <1200000>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l4a>;
+	vdda-pll-supply = <&vreg_l1c>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };
-- 
2.37.2

