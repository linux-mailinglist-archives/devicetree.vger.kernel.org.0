Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7D4677E0E3
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 13:52:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244831AbjHPLwP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 07:52:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244892AbjHPLwF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 07:52:05 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35C24110
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 04:52:02 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3fe12820bffso58619185e9.3
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 04:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692186721; x=1692791521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UG3UnUv+VxY4mzDZ/Pj2e56inNw78lJ/+YPxFNE8oEM=;
        b=pTuFYy01fv3gPStTKioRX2KGpRMXW3ygQoftVRHmywG+XbtE0grN+oYQ6Qnxi07Yt3
         e1o9GbzvyH04KW10PcVwkvwCzJqMWWwUZAA61dxr1rMJ0TxqpG42rSPzfa4WupzSJbq1
         Zl6jswGi5H4JOCaOYFykGj3cKjLC+oci/J8vDF+x86rEc1qYx26vEk3EMmNagnnT4MQ+
         ta50RrQNAaZ6e5IDl3ONPVvWkwZai68GzhVMS2tIvYUw9MUGGDIs1igmZLCV/XMyOGoL
         OJZrOFJhKPLyfzbq1akXyE/fdBJpz5HQIPpeu9sD6UhnSdfBgpn1yy5RQaAugA/pW7g2
         ZWuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692186721; x=1692791521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UG3UnUv+VxY4mzDZ/Pj2e56inNw78lJ/+YPxFNE8oEM=;
        b=PV7QlMEIgC1/idNJ8rUXswQcIHWligNdiuoYVkFGIY+nqwlwY4Lsb+koKaMN9B3ZdD
         LYn0H1O7rr3msm08d+DBc1c216NWmjr4XN+hMTLZt0XYYn5CAE71M965Q1YM6r6cW3uA
         aoQr4Ij1XYd7t9aFXdI5sFwSekYqMzwgMSK709oTOIIz9/2WkNBnGcD2eHuShCzsrq2o
         vDeBnrs+2ZDZXWwmBxWSWsebcJu5VA6j/3XtqxIG5clFzh0SWgMn6egyddV1l2/NHw4L
         bS/BgBIGhxPSR32pB9hqk/fgpwseV2u1/6ud9t9b5/8NE1DEyUBEjG14/lqDsmc4V2hI
         qy1Q==
X-Gm-Message-State: AOJu0YwExzIGU8dblkWxNNm+Koi9ln0vEdbTnz2JSLrg2pa7elcgRDW8
        VB5tLUfHJJa75MVdXGzwvsmihw==
X-Google-Smtp-Source: AGHT+IFyTvlUB4U2wDMd7NVyiATimwhhBvORx06S9Mezb0gzh/QfZPTD4kRABBihqRNDsXJL86uOwQ==
X-Received: by 2002:a1c:ed13:0:b0:3fe:111b:7fc4 with SMTP id l19-20020a1ced13000000b003fe111b7fc4mr1285938wmh.21.1692186720686;
        Wed, 16 Aug 2023 04:52:00 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id fk3-20020a05600c0cc300b003fc05b89e5bsm21280663wmb.34.2023.08.16.04.51.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Aug 2023 04:52:00 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        sboyd@kernel.org, luca.weiss@fairphone.com
Cc:     bryan.odonoghue@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 5/7] arm64: dts: qcom: qrb5165-rb5: Switch on basic TCPM
Date:   Wed, 16 Aug 2023 12:51:49 +0100
Message-ID: <20230816115151.501736-6-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230816115151.501736-1-bryan.odonoghue@linaro.org>
References: <20230816115151.501736-1-bryan.odonoghue@linaro.org>
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

Switch on TCPM for the RB5. Here we declare as a source only not a sink
since qrb5165 doesn't support powering exclusively from the type-c port.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 624d6ffc2f12f..55389f8903b5c 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -9,6 +9,7 @@
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/sound/qcom,q6asm.h>
+#include <dt-bindings/usb/pd.h>
 #include "sm8250.dtsi"
 #include "pm8150.dtsi"
 #include "pm8150b.dtsi"
@@ -1340,3 +1341,22 @@ &pm8150b_vbus {
 	regulator-max-microamp = <3000000>;
 	status = "okay";
 };
+
+&pm8150b_typec {
+	status = "okay";
+
+	vdd-pdphy-supply = <&vreg_l2a_3p1>;
+
+	connector {
+		compatible = "usb-c-connector";
+
+		power-role = "source";
+		data-role = "dual";
+		self-powered;
+
+		source-pdos = <PDO_FIXED(5000, 3000,
+					 PDO_FIXED_DUAL_ROLE |
+					 PDO_FIXED_USB_COMM |
+					 PDO_FIXED_DATA_SWAP)>;
+	};
+};
-- 
2.41.0

