Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C408B74B0F4
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 14:32:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232592AbjGGMaq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 08:30:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230007AbjGGMam (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 08:30:42 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92BD9268E
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 05:30:35 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4fba03becc6so3791994e87.0
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 05:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688733034; x=1691325034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0PTCa9Eb+3TnyEnviBdJNY98MQJTj8XpgBrb8rcKVOo=;
        b=woMXTtK1rBMkAjJbab8TJIgbHj8vq+4z+J84OGBnj9JrOSWWqKgjZzgE0ii4vjqZrr
         9Hh8nlo16hJcahweXCGGFi5+tO9a1TJ1Wq6imVF9EqxdobtY9TqAt0o1iDzzas0EGDAz
         LSQ+G78WvJxFv8JBGdBtGjKTDp/eFmokhnI4Tr30g9eRFDDv9muaJc90aHfZSVdB4z9N
         S0T6+9DAUVMcI7fkzRXoNXhb0tOOcZMsMjPw3bTYH2HMYplCtHbofkKCpcIxdj2fq4yc
         I3p3+VyuUu7HJUCG6Z2G/MtKerQaoLtC++L0SrmplmN5IqhmeMx94XAnFHiYI/GuM+5c
         MjUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688733034; x=1691325034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0PTCa9Eb+3TnyEnviBdJNY98MQJTj8XpgBrb8rcKVOo=;
        b=JatgVznt8bhrTRTPzxGx/sFpdpSduU9KU6KA8m/iKI7xBQBPvl4gxlAbajCCv2vkTT
         4VVXDHBhe32G581cpYEOPqTUzDlywL0GFrbqLMlp4M2NqKbO7vecm1+y3yIZlqNrWcFM
         FQiVB4M4V3AZIAk9DyHwOh0AKAEIGtqYR9TfsAvqvUQG3vKTSUSQiS8dmwy1TG2vvATr
         r9wZKU2FELDxPT/M5vcwjqDbhKDTzBXrUHtgOG2AKJk9KEei1G7zP9QbDseHO/7g9mqc
         LXdY/iRw06vL0kC5kG1XTcih+qR7wZXjyTGykOvzgMcSgUp2xzbXmWF0O3qsFw3PPL+M
         OUsg==
X-Gm-Message-State: ABy/qLZxs4q7/xSebuesFjV1Tf/eI89FvIMjZ1TkZB1J6ziGM5nlnOPA
        7azIOEfiG7zc8TcKDtEV3jAphA==
X-Google-Smtp-Source: APBJJlEVWz936J/Qpk9Z39PvdPUeaI0iNevQYNquvaUyh5Nu/7wyfP3QStK7pRROcgVaI9lWpWnNMQ==
X-Received: by 2002:a05:6512:3d87:b0:4fb:95b0:1423 with SMTP id k7-20020a0565123d8700b004fb95b01423mr3015421lfv.4.1688733033921;
        Fri, 07 Jul 2023 05:30:33 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id l5-20020a2e8685000000b002b6ee99fff2sm756803lji.34.2023.07.07.05.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 05:30:33 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org
Subject: [PATCH v2 7/8] arm64: dts: qcom: sm8450-hdk: define DIE_TEMP channels
Date:   Fri,  7 Jul 2023 15:30:26 +0300
Message-Id: <20230707123027.1510723-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230707123027.1510723-1-dmitry.baryshkov@linaro.org>
References: <20230707123027.1510723-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Declare the DIE_TEMP channels provided by PMICs. Use them to provide
temperature reading for the spmi-temp-alarm thermal zones.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 43 +++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
index dabb7e872f38..d07e402eaba3 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
@@ -6,6 +6,10 @@
 /dts-v1/;
 
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+#include <dt-bindings/iio/qcom,spmi-adc7-pm8350.h>
+#include <dt-bindings/iio/qcom,spmi-adc7-pm8350b.h>
+#include <dt-bindings/iio/qcom,spmi-adc7-pmk8350.h>
+#include <dt-bindings/iio/qcom,spmi-adc7-pmr735a.h>
 #include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 #include "sm8450.dtsi"
 #include "pm8350.dtsi"
@@ -588,6 +592,45 @@ &pcie1_phy {
 	vdda-pll-supply = <&vreg_l6b_1p2>;
 };
 
+&pm8350_temp_alarm {
+	io-channels = <&pmk8350_vadc PM8350_ADC7_DIE_TEMP(1)>;
+	io-channel-names = "thermal";
+};
+
+&pm8350b_temp_alarm {
+	io-channels = <&pmk8350_vadc PM8350B_ADC7_DIE_TEMP>;
+	io-channel-names = "thermal";
+};
+
+&pmr735a_temp_alarm {
+	io-channels = <&pmk8350_vadc PMR735A_ADC7_DIE_TEMP>;
+	io-channel-names = "thermal";
+};
+
+&pmk8350_vadc {
+	status = "okay";
+
+	channel@3 {
+		reg = <PMK8350_ADC7_DIE_TEMP>;
+		label = "pmk8350_die_temp";
+	};
+
+	channel@103 {
+		reg = <PM8350_ADC7_DIE_TEMP(1)>;
+		label = "pm8350_die_temp";
+	};
+
+	channel@303 {
+		reg = <PM8350B_ADC7_DIE_TEMP>;
+		label = "pm8350b_die_temp";
+	};
+
+	channel@403 {
+		reg = <PMR735A_ADC7_DIE_TEMP>;
+		label = "pmr735a_die_temp";
+	};
+};
+
 &remoteproc_adsp {
 	status = "okay";
 	firmware-name = "qcom/sm8450/adsp.mbn";
-- 
2.40.1

