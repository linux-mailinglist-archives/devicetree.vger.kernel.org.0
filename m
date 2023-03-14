Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95F286B8D7F
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 09:37:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230045AbjCNIhZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 04:37:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229810AbjCNIhX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 04:37:23 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 928F26EB9C
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 01:36:56 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id x11so15754555pln.12
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 01:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678783016;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cwg0+pc4VJIZQKpAb9ycTGvEjiL1waHTH3VXicqsNeI=;
        b=pY2vopgApgdQt20d3yifwoFEoSz4wuPe5QsNVvKjzL4ZpWdZNeInUI2u93jz0BmK6H
         M9LNjXOjtm1iaMt7LC6g/jVR9Az2roFdkbTRIbM6du1SKM/tCXtjUO7OAOtbV8pp6h6j
         7sm+EpX51RBno2SH7w9d9MiRmTxtgDVkI20dlh42GlEu2LZTzXJuRSIky+M5V8nfYFh/
         iNuDrcGoxcFDlcmAb389B7uuLdDWU+J2BSUhVBmR0PsmGsG8lidJJ/fc7vtR3b9VGViu
         vj0Rzkim9M5DNCGvBCfddn1UH/AHWDCU9Rt/JsK9jgIW7WWI/SLMcnjEGPpIsG8B/7Ww
         0tig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678783016;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cwg0+pc4VJIZQKpAb9ycTGvEjiL1waHTH3VXicqsNeI=;
        b=VgzO6Yu6cdsbjUgyexEeaTcZjl0a7c2H4FDOLlSqXbbJpkDjJNVrpY/FHHjvXuCtlI
         U9YJoqzjNJdBEPe35aL0EWI6rxxsbJBSJ1iEN7APFAlUlzOcASUGPF0t4T3BrvgdSsvy
         bKVJNYPknceyte0SaNASVsZNtrG2cLbTvit8PRl/h51FnVVG/bsY+YoDV8oPjeFQbOxZ
         mHK63/2KyDCXpOiSSwaqE/MnCWmN0mo42H1PbCYrAH4ShZ10p/GvrPew839qe2GVdTC5
         +LTEngd0H/jzPEkao3MfjZ5IyKH2TOQt4t2efX+LOaKnSHj+AzTTDS9HS/ZPrNmF/IXk
         Z32g==
X-Gm-Message-State: AO0yUKXJ1fmV8ciNKK/g9MaLUXXBEpLuq62RYeChsv/SMaLZ+qo5pLNZ
        1+YpwbZ3Zpx5PgNV6LtoXJSWZQ==
X-Google-Smtp-Source: AK7set903v2pArVCSsm9DYD0vaK8Vr37dTPMz+M1YunNub0SaZRTnVV3O7y5OLtjxAH2lYTnt6bzMg==
X-Received: by 2002:a05:6a20:4f10:b0:d3:d236:f5b7 with SMTP id gi16-20020a056a204f1000b000d3d236f5b7mr7756130pzb.26.1678783016070;
        Tue, 14 Mar 2023 01:36:56 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c5e:4a3e:15d0:d540:3861:ef0e])
        by smtp.gmail.com with ESMTPSA id g3-20020a631103000000b00502ecb91940sm1020980pgl.55.2023.03.14.01.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 01:36:55 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski@linaro.org
Subject: [PATCH v4 2/2] arm64: dts: qcom: sm6115: Move USB node's 'maximum-speed' and 'dr_mode' properties to dts
Date:   Tue, 14 Mar 2023 14:06:33 +0530
Message-Id: <20230314083633.1882214-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230314083633.1882214-1-bhupesh.sharma@linaro.org>
References: <20230314083633.1882214-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Normally the 'maximum-speed' and 'dr_mode' properties
of a USB controller + port is dependent on the type of
the ports, regulators and mode change interrupt routing
available on the board(s).

So, move the same from the sm6115 dtsi file to respective
board file(s).

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts | 5 +++++
 arch/arm64/boot/dts/qcom/sm6115.dtsi                | 2 --
 arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts   | 5 +++++
 3 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
index fa57f4bf58256..3f39f25e0721e 100644
--- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
+++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
@@ -229,6 +229,11 @@ &usb {
 	status = "okay";
 };
 
+&usb_dwc3 {
+	maximum-speed = "high-speed";
+	dr_mode = "peripheral";
+};
+
 &usb_hsphy {
 	vdd-supply = <&vreg_l4a>;
 	vdda-pll-supply = <&vreg_l12a>;
diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index f477c7f5ad761..d38d0efceb88c 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1122,8 +1122,6 @@ usb_dwc3: usb@4e00000 {
 				snps,has-lpm-erratum;
 				snps,hird-threshold = /bits/ 8 <0x10>;
 				snps,usb3_lpm_capable;
-				maximum-speed = "high-speed";
-				dr_mode = "peripheral";
 			};
 		};
 
diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
index 4a7194acb44a6..c20266c11fd89 100644
--- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
+++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
@@ -277,6 +277,11 @@ &usb {
 	status = "okay";
 };
 
+&usb_dwc3 {
+	maximum-speed = "high-speed";
+	dr_mode = "peripheral";
+};
+
 &usb_hsphy {
 	vdd-supply = <&pm6125_l4>;
 	vdda-pll-supply = <&pm6125_l12>;
-- 
2.38.1

