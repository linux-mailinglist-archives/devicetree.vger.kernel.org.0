Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DBB877E0DF
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 13:52:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244839AbjHPLwQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 07:52:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244901AbjHPLwG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 07:52:06 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C141E1FD0
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 04:52:04 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3fe1e1142caso63200865e9.0
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 04:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692186723; x=1692791523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kTUJIqUuvJpBEpmv4Fc4n2cbYwvZtXF9XlgfvfufwVo=;
        b=T3sdARg0nYPapz3ox/SJbjs2LShMs9XEyARdb+QyUWd1UaYcM5eLoV1P1oxiBRlB/z
         LLoMQySwr5gu01MKqJr2HUKh/Kc3DttbYXwisck//WgPQjHh5BaJksHur1qIRtVtEnCQ
         gLsYnda5WjlUSAS5lLg0dX731KJUZQInbP06EefR8cEnv8elAqE/YgONzDk9JSYlaIDv
         1X/GK/IYFMYZb1jYYRjMvgo+CjMKhbXvftEqRB7szZrHhZGD30ja5/ssagQwE8c+Ladz
         l155JlTy5TWUxlQqx8yikXnqWdSI3PINEJfqw14z/6NKceGeaNOXz1Kzkk/A76m5dpMd
         o72g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692186723; x=1692791523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kTUJIqUuvJpBEpmv4Fc4n2cbYwvZtXF9XlgfvfufwVo=;
        b=jcuRJ7/bKtj8x2vQoIjHwl50hXuOhkp9pMYdQvSdyB5fsBgRJcwHOeD23FmpBhAYEj
         vBUK9JB88JrmbM39j6TdCYBVSc/J2dKvXCeVpGmKooKdAMHkfOMBr8q1QdPQprGkQApJ
         1hI/VIV8zqA7EmOKguPoMFiwG0dclJlPT27yDbkrSK4G05BxkAfWKsDBC22ZV0kWzV90
         JV6MUEniCBcsDtUtfkEMdRVmjdNJJo8AX8gMKtm3XKE1beUqCHkBy82yCUiNhBdCX8yr
         QH39KJoHjKareomDbREvPO1W3QMSca4rnDxUITF+fgjdZGGN5L9H/6KLNjwh/W8kAxit
         a9og==
X-Gm-Message-State: AOJu0YyXmz0VTTlB0EVWtZozt+x+4vUFIDFQqehTW2HdMKJeyCk0VchG
        25bjVASutCrZNAZfbzT438RodQ==
X-Google-Smtp-Source: AGHT+IHvnASHedvOmPzr/nGlmoJv0wA6pOFu6rLk5qzIr/3ZASVR4rjqKOHbS4uv69pak+c2ma/oww==
X-Received: by 2002:a05:600c:1d06:b0:3fe:26bf:65ea with SMTP id l6-20020a05600c1d0600b003fe26bf65eamr1244603wms.29.1692186723184;
        Wed, 16 Aug 2023 04:52:03 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id fk3-20020a05600c0cc300b003fc05b89e5bsm21280663wmb.34.2023.08.16.04.52.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Aug 2023 04:52:02 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        sboyd@kernel.org, luca.weiss@fairphone.com
Cc:     bryan.odonoghue@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 7/7] arm64: dts: qcom: qrb5165-rb5: Switch on TCPM orientation-switch for usb_1_qmpphy
Date:   Wed, 16 Aug 2023 12:51:51 +0100
Message-ID: <20230816115151.501736-8-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230816115151.501736-1-bryan.odonoghue@linaro.org>
References: <20230816115151.501736-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Switch on USB orientation-switching for usb_1_qmp via TCPM. Detecting the
orientation switch is required to get the PHY to reset and bring-up the PHY
with the CC lines set to the appropriate lane.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 12 ++++++++++++
 arch/arm64/boot/dts/qcom/sm8250.dtsi     |  1 +
 2 files changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 3e34f4e2af14a..b878d765f8c42 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1290,6 +1290,11 @@ &usb_1_qmpphy {
 
 	vdda-phy-supply = <&vreg_l9a_1p2>;
 	vdda-pll-supply = <&vreg_l18a_0p92>;
+	orientation-switch;
+};
+
+&usb_1_qmpphy_out {
+	remote-endpoint = <&pm8150b_typec_mux_in>;
 };
 
 &usb_2 {
@@ -1374,6 +1379,13 @@ pm8150b_role_switch_in: endpoint {
 					remote-endpoint = <&usb_1_role_switch_out>;
 				};
 			};
+
+			port@1 {
+				reg = <1>;
+				pm8150b_typec_mux_in: endpoint {
+					remote-endpoint = <&usb_1_qmpphy_out>;
+				};
+			};
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 733de2fd5e753..fe29b3da90c19 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3620,6 +3620,7 @@ ports {
 
 				port@0 {
 					reg = <0>;
+					usb_1_qmpphy_out: endpoint {};
 				};
 
 				port@1 {
-- 
2.41.0

