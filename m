Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 049C97338BD
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 21:02:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345814AbjFPTCq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 15:02:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344678AbjFPTCh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 15:02:37 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAAAC3AB0
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 12:02:34 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9786fc23505so144383466b.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 12:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686942153; x=1689534153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9vQ02kk0CK2h3ErJz8z6Ep1qcggcVyQJ1gM1c04hINE=;
        b=bGWtSoGLB1peMCBf52XlzDb7bvLB1AHniFb6nvOR5O1+k+2zikcMs6Hq5hILn+fH6q
         5r4KjKyryAbqrkDsa3atRIbiH3Ucj+xnbh+1XUQbzjeGzC8U5ORltaJ42Xgrz0k5cy1a
         tpvWKgU26po8JxYT4Zv4Cpns9u9qTBoYIRpj04dz3bqnwsJWEHygy3nims94pdAPZS3q
         6IfGccUw65KvKAwq+82Cx5AEULc06/Q4TwqJMAvAY5l4e7u3202StwutsRXDDZIPeDfc
         lTI4cvCxP7JG/cZV/0DmGq4J5KGwVNHDkJ51RTey+Iy29pTETrRe0rzYpoYabYAIgg3M
         Bdhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686942153; x=1689534153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9vQ02kk0CK2h3ErJz8z6Ep1qcggcVyQJ1gM1c04hINE=;
        b=AezH6NAuYh6/F48J8EZW6wo/2PSh2E4BAHLl+R1J/RTTL25xs7ula+mYC8zXPdo6l+
         jFoGwrvwpdvxJCHmvcXS1EOSMhT7B018A2HRvGZfIysCrOuzkUEeIWU1JtAL/xOhtV7y
         4R/xP4lqS/JA8ZkR/Ore9wePbUzb2wSMYoFJ3DivSW2c9ld9VZ0j7v+nPLSPW1Ga6Vog
         CAkJDpKWJ9bXwSSw5DDQwuIhGyT1gUiEGhYufz/Qwhy4zQDZ9lHfOMHGOsI2a3n31W/E
         CSuIPlW4rdN2vHofFO4GEjlP5i5DACck+R3ucgMt5T25NnuDGK5P6dmk8fPGfIp7qvEI
         vskg==
X-Gm-Message-State: AC+VfDzxWwXqRqJONKe9I5haxHM52fp0aRpB65+w9xgzb4hCPXBjJ3Pq
        TtjshPGEwiZrtg8UTVNfssAL+A==
X-Google-Smtp-Source: ACHHUZ4bfewyOsXoScTqh1DZ4woXYDf81koTRzGcqGD3KU4aZGRqveNO4jTOsKsSkWsDXTTW7YtC1g==
X-Received: by 2002:a17:907:3e92:b0:982:3d6a:89d with SMTP id hs18-20020a1709073e9200b009823d6a089dmr3140510ejc.75.1686942153456;
        Fri, 16 Jun 2023 12:02:33 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id q2-20020a1709060e4200b00982362776cbsm5637880eji.118.2023.06.16.12.02.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jun 2023 12:02:33 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] arm64: dts: qcom: sm8350: add APR and LPASS TLMM
Date:   Fri, 16 Jun 2023 21:02:22 +0200
Message-Id: <20230616190222.2251186-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230616190222.2251186-1-krzysztof.kozlowski@linaro.org>
References: <20230616190222.2251186-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add audio-related nodes: the APR in the ADSP (same as on SM8250) and
LPASS TLMM pin controller.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Bindings for SM8350:
https://lore.kernel.org/linux-arm-msm/20230616185742.2250452-1-krzysztof.kozlowski@linaro.org/T/#t
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 82 ++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 33b7ef8fd78a..9650cecb1370 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -15,7 +15,9 @@
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/soc/qcom,apr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/thermal/thermal.h>
 #include <dt-bindings/interconnect/qcom,sm8350.h>
 
@@ -1780,6 +1782,20 @@ tcsr_mutex: hwlock@1f40000 {
 			#hwlock-cells = <1>;
 		};
 
+		lpass_tlmm: pinctrl@33c0000 {
+			compatible = "qcom,sm8350-lpass-lpi-pinctrl";
+			reg = <0 0x033c0000 0x0 0x20000>,
+			      <0 0x03550000 0x0 0x10000>;
+
+			clocks = <&q6afecc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "core", "audio";
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&lpass_tlmm 0 0 15>;
+		};
+
 		gpu: gpu@3d00000 {
 			compatible = "qcom,adreno-660.1", "qcom,adreno";
 
@@ -3189,6 +3205,72 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 				label = "lpass";
 				qcom,remote-pid = <2>;
 
+				apr {
+					compatible = "qcom,apr-v2";
+					qcom,glink-channels = "apr_audio_svc";
+					qcom,domain = <APR_DOMAIN_ADSP>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					service@3 {
+						reg = <APR_SVC_ADSP_CORE>;
+						compatible = "qcom,q6core";
+						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+					};
+
+					q6afe: service@4 {
+						compatible = "qcom,q6afe";
+						reg = <APR_SVC_AFE>;
+						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+						q6afedai: dais {
+							compatible = "qcom,q6afe-dais";
+							#address-cells = <1>;
+							#size-cells = <0>;
+							#sound-dai-cells = <1>;
+						};
+
+						q6afecc: clock-controller {
+							compatible = "qcom,q6afe-clocks";
+							#clock-cells = <2>;
+						};
+					};
+
+					q6asm: service@7 {
+						compatible = "qcom,q6asm";
+						reg = <APR_SVC_ASM>;
+						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+						q6asmdai: dais {
+							compatible = "qcom,q6asm-dais";
+							#address-cells = <1>;
+							#size-cells = <0>;
+							#sound-dai-cells = <1>;
+							iommus = <&apps_smmu 0x1801 0x0>;
+
+							dai@0 {
+								reg = <0>;
+							};
+
+							dai@1 {
+								reg = <1>;
+							};
+
+							dai@2 {
+								reg = <2>;
+							};
+						};
+					};
+
+					q6adm: service@8 {
+						compatible = "qcom,q6adm";
+						reg = <APR_SVC_ADM>;
+						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+						q6routing: routing {
+							compatible = "qcom,q6adm-routing";
+							#sound-dai-cells = <0>;
+						};
+					};
+				};
+
 				fastrpc {
 					compatible = "qcom,fastrpc";
 					qcom,glink-channels = "fastrpcglink-apps-dsp";
-- 
2.34.1

