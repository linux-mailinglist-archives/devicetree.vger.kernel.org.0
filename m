Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA74B717FD5
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 14:22:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235797AbjEaMW4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 08:22:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235609AbjEaMWq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 08:22:46 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1930132
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 05:22:35 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3f623adec61so59676475e9.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 05:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685535754; x=1688127754;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uZLxHN4/85FsrUuSH7fzNkpsMyxXQWHxC0w3tNmAnDA=;
        b=mthT71hKG3hZFEDADTRTEsUJ0o0NfMUF8QOXn3ntdTAdDpCyS//BNoktzkzobOR1xU
         kOEKF4zJMhiqc4GXYikFQHY2ma8ZI+UEAKUsDpaUt0HRXW4hRFAy1IT16okrYYA+fCuU
         rt7QCCRPnyYAj5vNpeZtWsuCkQazPFIcEmNK7eHp8nFJxA6cMudp4EM8GF+GhESzk/Xc
         1/w3n8FTr/44q7J2MlRiO0hUR1sC9hV9eCnpCI2l9YVud3UfZHeXnhxVbePFZsz+Zead
         A0GkBkXmZXlAnAVZ6/IsVNmpevJ2RDjkvvToG4vQ8oVUnwDyK3gUUCAda9d4KlPVQujC
         1v6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685535754; x=1688127754;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uZLxHN4/85FsrUuSH7fzNkpsMyxXQWHxC0w3tNmAnDA=;
        b=UmBKTb1QnZIuJ0MciZi4QhmiVB+80XslpuQJIQ/cxjzyc+1V4z+sjVN1XtPlZ8mfsH
         OECBEtLtHnvRYEU9DWqB6oT/jRvnLF7ycJ/yC4s1vEkTZJPfP4tkGq7STi6KCK02X9yi
         pUNlvnKOly8ZdF4Zxkzu0Wi9gzWmeu84lYLez4SBuo2/rWKqaUU9jcu0djno/Jum6MgO
         WOw7ZzNL0S2AsKP+4XuDM/EnelqD6+1KMuShwFKl6IujocntuZmGZaHEkaPPx66Rl9cI
         SnyxwCd4kFMaIqaB2rVGkvObzgoVAEFDWvN685W6ZMm4grhefuk40vkt+1tTuSojGCa4
         bcUA==
X-Gm-Message-State: AC+VfDyvBAs2LUg/NiKO7FvsZlW4/IE0r8jKwoSM2zzlT8UqSO7Ag1Jo
        kAqPo8zYHwqJAK1LI45VjtkGMABIHFdNF4OvmipJvw==
X-Google-Smtp-Source: ACHHUZ51TDkyhW4bgzCatV2IPkgH94Vq9JYP+CjcwlXjdu9itjXEX++6qmDxAq6iPa3Ae1KW+zW2nA==
X-Received: by 2002:a1c:4c03:0:b0:3f5:f83:4d84 with SMTP id z3-20020a1c4c03000000b003f50f834d84mr3956709wmf.31.1685535754388;
        Wed, 31 May 2023 05:22:34 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id n7-20020adfe347000000b00309382eb047sm6637954wrj.112.2023.05.31.05.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 05:22:34 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 31 May 2023 14:22:27 +0200
Subject: [PATCH v2 4/4] arm64: dts: qcom: sm8550-qrd: enable PMIC Volume
 and Power buttons
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230525-topic-sm8550-upstream-pm8550-lpg-dt-v2-4-a3b890604c49@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1688;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=RVdi1nIavfz7tOjlwuhCm5MfjtOvr8cbNFJXUJmOQJM=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBkdzwGUyspXhIpUA1IPRyQWk4AycaXRDC6D3CzxgZx
 ublLygGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZHc8BgAKCRB33NvayMhJ0eNzEA
 CXmzRLRyPRWUd7l9IZ6ihfRBp+SHExqiJRBDoO+JbBs431Lw1cLAvn2o0GYbzfoscn36IBRPS3UHKN
 Co10dLCZly4Y6wOdu/h7tuFY6jygnxdO53AKIZe8npBEG2V51aK1n0dl/vQKnNc0WlWTK/n6OeMFyd
 RcZFtDaRr8bHTqhoifV3hNmK36HTZ9wE/kXuISRiU45oSZleltjeXFgLlg6qx9i6Elnt+nqfFm3c/L
 nVrjIE6+MP+a9hcdYIutHkMewkCHu6QQLVRf8IhLRAIcusOw5DiWoNQIUEGhSy0YK01AFUGVQ81yRp
 wVCNoKtMtvb616iv1g/+blIKqKUZlLrTdrBVyAokT2kUvsdlQnuPqrJEhFsJUSVnulcYwUCGMnF1V2
 +g0w/V47442vHUjmy178KK0/P1lrVqaO8JaAiz3oOGuoobHocHOO1TUtR95yb6sWadJg56KJTyE9Ot
 9Snl874g608UpF6K1wQoqShpOMhdmrG7cIqGJl6cYJFfOClnOgZYxODgV0jaLGkt2ncXiPe7PS/yff
 xjUsoOKRWizoUhmGJxf8KG9hC+Yr7vQ3RmhfnOsUcSCyL+0I2vwQ3PjTGfYbcgrEkUVFD9YSLEiohr
 NI31HXOVqWo8KU741I6NP5+0X3OoPNVGKhOUU4VEg+B2NvVlJK4ugw7KQCkw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Volume Down & Power buttons are controlled by the PMIC via
the PON hardware, and the Volume Up is connected to a PMIC gpio.

Enable the necessary hardware and setup the GPIO state for the
Volume Up gpio key.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 36 +++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index efff15225e67..24fc368de97b 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -54,6 +54,22 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&volume_up_n>;
+
+		key-volume-up {
+			label = "Volume Up";
+			linux,code = <KEY_VOLUMEUP>;
+			gpios = <&pm8550_gpios 6 GPIO_ACTIVE_LOW>;
+			debounce-interval = <15>;
+			linux,can-disable;
+			wakeup-source;
+		};
+	};
+
 	pmic-glink {
 		compatible = "qcom,sm8550-pmic-glink", "qcom,pmic-glink";
 		#address-cells = <1>;
@@ -516,6 +532,16 @@ led-1 {
 	};
 };
 
+&pm8550_gpios {
+	volume_up_n: volume-up-n-state {
+		pins = "gpio6";
+		function = "normal";
+		power-source = <1>;
+		bias-pull-up;
+		input-enable;
+	};
+};
+
 &pm8550_pwm {
 	status = "okay";
 
@@ -548,6 +574,16 @@ &pm8550b_eusb2_repeater {
 	vdd3-supply = <&vreg_l5b_3p1>;
 };
 
+&pon_pwrkey {
+	status = "okay";
+};
+
+&pon_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+
+	status = "okay";
+};
+
 &pcie_1_phy_aux_clk {
 	clock-frequency = <1000>;
 };

-- 
2.34.1

