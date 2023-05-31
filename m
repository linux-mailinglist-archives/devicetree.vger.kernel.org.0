Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9EB4717FCB
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 14:22:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235414AbjEaMWh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 08:22:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235386AbjEaMWg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 08:22:36 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D3B4135
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 05:22:34 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f68fc6b479so58369475e9.2
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 05:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685535753; x=1688127753;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EhLfMSXbxmp9qPPD3GeAKDBquiRljuGLX+U4KtK6EsU=;
        b=FU1mPesDKnJW0djL4NLdL/1QCPV7dYpWsRaj83vHLhElHWWYw2os9ByJlRupxRK0/Z
         2d5qZ1FUidKh9FS763TJPjbhH0WzWonQjiYIzU5g46IFJk93AWJj+Fmv94dE4qKb0Q5K
         Ys1C/XiY7ZS2ZcQeqls0RT7aRcoeIDPEyJFocHeLtitntH9MubBszfOtJlfuNYWJTaMZ
         kMmFJxbLjtiLt9BlQgmjfUc/PD8ESnDga+hd/s04Mm7unqP7wawkd435fpS1r4op9sMG
         6zqe5K34URmE2loeccMEP6gSyovb7CbFoQwGdbNL/Cvx3GBR9fLRHaFgzRASakfJBp5H
         9Yfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685535753; x=1688127753;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EhLfMSXbxmp9qPPD3GeAKDBquiRljuGLX+U4KtK6EsU=;
        b=FCNjZ5EkR5YrTn1tHoohUAXopkkx/OEGDvDD6+XhfWHWW2sK5RENo+TfYhahqfrcAu
         4bmHKqehYxzqoW3wQ3aku99g9A+20EVB/u86aBT6WVCIU9n198S3j6rftN+FT7uFiInA
         ahVaekltxpE+ehDAb6GmgzsU2/Z9/4u9FD/pbTwXcu+Xq94wkTkQjB1u+IFkbeHgq/2T
         Q5vhi6ATOo8lgdfjfrXIfPKmILRUZESo0FzBWTjUMobTrkmKUPzYJNSpGyNaBmWfNAac
         BC3S1rq5/DavasQPFINyJuPwceuNQ/S9CtpaKNrHGFNiWMZPPnDgVBWBRAHF51i871w9
         tcfw==
X-Gm-Message-State: AC+VfDzcnCoXiFwzZpap2uN3krP1MXlF/ucqyhKfgp/JMH3WPVIZmnTP
        4pvLX8XyQiiwOAuhJd+2Cd1Y4SrmH6Ln6DxE0C8KNA==
X-Google-Smtp-Source: ACHHUZ7HlesifFDA/0oAwOGMqe7W7ZQgHKq/Oev+ZN68pepd5cKX7grW+tXRfYUNbjfStYooYBYhtQ==
X-Received: by 2002:a5d:6784:0:b0:30a:d450:8fae with SMTP id v4-20020a5d6784000000b0030ad4508faemr3680824wru.33.1685535752788;
        Wed, 31 May 2023 05:22:32 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id n7-20020adfe347000000b00309382eb047sm6637954wrj.112.2023.05.31.05.22.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 05:22:32 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 31 May 2023 14:22:25 +0200
Subject: [PATCH v2 2/4] arm64: dts: qcom: sm8550-qrd: add notification RGB
 LED
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230525-topic-sm8550-upstream-pm8550-lpg-dt-v2-2-a3b890604c49@linaro.org>
References: <20230525-topic-sm8550-upstream-pm8550-lpg-dt-v2-0-a3b890604c49@linaro.org>
In-Reply-To: <20230525-topic-sm8550-upstream-pm8550-lpg-dt-v2-0-a3b890604c49@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1149;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=jI2H0I/73ntY355iZoJ/p4DoFxC9y+9WLIkumJL3rCc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBkdzwFFCUag4UvZ25QRBLomkmBalzKUftQi7HUERIj
 WjwuYLGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZHc8BQAKCRB33NvayMhJ0UmHEA
 C7LCFlJ594H4aBUJPEan21hzkMLg9cJoghJXKGUnSRxsvo+Byn+VVbo6B4vo93AprHm/2tGxGTSbQK
 H9Z0A6u/0PVI4NQiu/EnP9mRzj5m8s2iVgjvqamhx4jImPrB1B6UDuzJNi7lA7tMnb8qbNejyd3Qme
 yTl+GK93yTl7NvT8xWrAQl0UEiV2MjCm0AfEKRp1FS9rjA8QtjTm6j03d3pTkLF1yG2xwbVqdYhZV4
 jG8dMNrx9X21yfGrZ1u4XDmLUUyxpPlH0yr6Oa7LMG4i4RMzp8nB5vd58qE2wGa+l0r9HtkeYO36s2
 OcpDqz9/bURGVYXHh4a/+hs/TIZ0rbQYfxv2MCir+juTWuQ6RUYGOn4cTqxQd0NHckVlra0gWGv4Mx
 szgga3CLoQFHnbIJWDoZJy9MaizgVaQGMxvpgPpROCXC2hJGONkcOlNNpkEdU6D24jJJ7Ut6vkUvE4
 wnC3DYB0EfU4wh9l1l8bfV5xrcAMX7dzNwlXzaWeR1g9eM4JYIAMSTPgApFqnzsVrjNWj3kseIt7kD
 A+trQc4ToEYibxYvh2TnP/Rdvy1O6VpOmpHC/moUZhmSotoVYE/Qe+mctiLjmhL06pnyNVzcOES5Fv
 VF/1jWLmSdKPs+D6JqUu33dlR9x953zcgw2lcj8B5X6UgEQZo3XMoo0Fhmbg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The QRD features a notification LED connected to the pm8550.
Configure the RGB led controlled by the PMIC PWM controller.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 8669d29144bb..efff15225e67 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -516,6 +516,33 @@ led-1 {
 	};
 };
 
+&pm8550_pwm {
+	status = "okay";
+
+	multi-led {
+		color = <LED_COLOR_ID_RGB>;
+		function = LED_FUNCTION_STATUS;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		led@1 {
+			reg = <1>;
+			color = <LED_COLOR_ID_RED>;
+		};
+
+		led@2 {
+			reg = <2>;
+			color = <LED_COLOR_ID_GREEN>;
+		};
+
+		led@3 {
+			reg = <3>;
+			color = <LED_COLOR_ID_BLUE>;
+		};
+	};
+};
+
 &pm8550b_eusb2_repeater {
 	vdd18-supply = <&vreg_l15b_1p8>;
 	vdd3-supply = <&vreg_l5b_3p1>;

-- 
2.34.1

