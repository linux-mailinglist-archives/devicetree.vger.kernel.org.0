Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 309DF6D349B
	for <lists+devicetree@lfdr.de>; Sun,  2 Apr 2023 00:08:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230248AbjDAWIY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Apr 2023 18:08:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230213AbjDAWIT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Apr 2023 18:08:19 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3705F27819
        for <devicetree@vger.kernel.org>; Sat,  1 Apr 2023 15:08:17 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id by14so7465849ljb.12
        for <devicetree@vger.kernel.org>; Sat, 01 Apr 2023 15:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680386895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wo7hNFgWkmnMOkJb7IUde00I0wylcKYMGhkL0Te7EUM=;
        b=SH+EbcUlX4yL03lNwa4vuXBYV37S+JaguNgM4CWXCzaodw49NgcKRERthNX8HgTzE9
         WJVIDOAG2U3NgYVm4gA0WAmQvpPcM9HZ3fcwBSuOU1ogH9/4DPcdxTUHVd8bncop2rft
         WpN88qD9XPZz7ocoQQGYE7wxTuuhSxS3UD3d4fwliaiikxL9U+0BOJbaBblHY4eQaWUi
         MbrZ/ZJ0NB97C4RMlJWWiISDRckPLqowcHD7/DiS4/vMoHhglfo6+tLUk+hOWmXederL
         LuK+OAh31toQhdA3qPRTwDx8bP143+EIoWOsKk3kPLNvyTlW5Q3rhywwhZlPmzNBEKf4
         hcLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680386895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wo7hNFgWkmnMOkJb7IUde00I0wylcKYMGhkL0Te7EUM=;
        b=lPQcIIgriEJI9sKA+TqIR7udsvuhuX6IvcJ5j2s3rgGzrYH1Agm3gl5vff1XzUD9Uq
         qLQ/NSNGA8MDA8OUOy+Q6XRxsOR1ob8F1WL19O9UvDwTy0ian+sRL05WlaQXoKoTo3Pj
         Sx2p5v3ALh+twi8DGi5MWl9UD4og7jZVEyqfh/LXfikWJlN7gAAQlXeM3W/2kmhffynU
         Drzhfxnaveo4ypxuqohCS1ka/u0YEY7lk5c+5UufolaXacKIGORH7ax7QmfqnxdOhhsZ
         q72CdFxIAjVKELufgRbOq7j8nfk6Kj7IenWWYBtmEBLhqyJFvJLM73Ny+rKw7qPiGP92
         M3KA==
X-Gm-Message-State: AAQBX9fUuAP7ZloXhdLD973/tqsJTJ1vix8gAYQdoH7RnFIE8cxHjtFD
        U2Pd6pbJzj/v73qus+pHP2+ZIQ==
X-Google-Smtp-Source: AKy350ZsWyAGhQPrVhlRvpsC6hpOup3F5JMBatVQQTkgFICDuU3e6rzjpfCJlvPcsMxpArvm7ghfLQ==
X-Received: by 2002:a2e:b0d3:0:b0:2a2:e84c:bff9 with SMTP id g19-20020a2eb0d3000000b002a2e84cbff9mr9128136ljl.29.1680386895307;
        Sat, 01 Apr 2023 15:08:15 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k17-20020a2e9211000000b0029bd4d0d3f2sm997590ljg.33.2023.04.01.15.08.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Apr 2023 15:08:14 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org
Subject: [PATCH v2 06/22] arm64: dts: qcom: pmk8350: rename pon label
Date:   Sun,  2 Apr 2023 01:07:54 +0300
Message-Id: <20230401220810.3563708-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230401220810.3563708-1-dmitry.baryshkov@linaro.org>
References: <20230401220810.3563708-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To reduce a possibility of the conflicts, rename pmk8350's pon_pwrkey
and pon_resin to contain the PMIC name too.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmk8350.dtsi                   | 4 ++--
 arch/arm64/boot/dts/qcom/sm8350-mtp.dts                 | 8 ++++----
 arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi | 8 ++++----
 arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi | 4 ++--
 4 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/pmk8350.dtsi b/arch/arm64/boot/dts/qcom/pmk8350.dtsi
index f26fb7d32faf..455ffffb5f5c 100644
--- a/arch/arm64/boot/dts/qcom/pmk8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmk8350.dtsi
@@ -25,14 +25,14 @@ pmk8350_pon: pon@1300 {
 			reg = <0x1300>, <0x800>;
 			reg-names = "hlos", "pbs";
 
-			pon_pwrkey: pwrkey {
+			pmk8350_pon_pwrkey: pwrkey {
 				compatible = "qcom,pmk8350-pwrkey";
 				interrupts = <PMK8350_SID 0x13 0x7 IRQ_TYPE_EDGE_BOTH>;
 				linux,code = <KEY_POWER>;
 				status = "disabled";
 			};
 
-			pon_resin: resin {
+			pmk8350_pon_resin: resin {
 				compatible = "qcom,pmk8350-resin";
 				interrupts = <PMK8350_SID 0x13 0x6 IRQ_TYPE_EDGE_BOTH>;
 				status = "disabled";
diff --git a/arch/arm64/boot/dts/qcom/sm8350-mtp.dts b/arch/arm64/boot/dts/qcom/sm8350-mtp.dts
index d21d2aacf201..152601832cbc 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-mtp.dts
@@ -285,17 +285,17 @@ &mpss {
 	firmware-name = "qcom/sm8350/modem.mbn";
 };
 
-&pmk8350_rtc {
+&pmk8350_pon_pwrkey {
 	status = "okay";
 };
 
-&pon_pwrkey {
+&pmk8350_pon_resin {
 	status = "okay";
+	linux,code = <KEY_VOLUMEDOWN>;
 };
 
-&pon_resin {
+&pmk8350_rtc {
 	status = "okay";
-	linux,code = <KEY_VOLUMEDOWN>;
 };
 
 &qupv3_id_0 {
diff --git a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
index 89382ad73133..e28f49e31b9f 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
@@ -618,17 +618,17 @@ vol_down_n: vol-down-n-state {
 	};
 };
 
-&pmk8350_rtc {
+&pmk8350_pon_pwrkey {
 	status = "okay";
 };
 
-&pon_pwrkey {
+&pmk8350_pon_resin {
 	status = "okay";
+	linux,code = <KEY_VOLUMEUP>;
 };
 
-&pon_resin {
+&pmk8350_rtc {
 	status = "okay";
-	linux,code = <KEY_VOLUMEUP>;
 };
 
 &qupv3_id_0 {
diff --git a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
index 67538b5a557e..99e9b776b93d 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
@@ -684,11 +684,11 @@ &pmk8350_gpios {
 			  "PMK8350_OPTION";
 };
 
-&pon_pwrkey {
+&pmk8350_pon_pwrkey {
 	status = "okay";
 };
 
-&pon_resin {
+&pmk8350_pon_resin {
 	linux,code = <KEY_VOLUMEUP>;
 	status = "okay";
 };
-- 
2.30.2

