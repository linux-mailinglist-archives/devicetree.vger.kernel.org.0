Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDECE6D9C3B
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 17:26:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239748AbjDFP0L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 11:26:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239467AbjDFP0D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 11:26:03 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEA209EC5
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 08:25:54 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id h25so51307431lfv.6
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 08:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680794753;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=On6mduEQURdcWxUOcUqkEV7MHdztcoXcc+xqiYQXjuU=;
        b=BGIXEp5g/nl2qiBEokqx89t+0+XYV9ayZg6eeQ53isBQwoSGuQ4SWzUaePmCVIRII9
         V0sh8vaQGjE1UxKsRVQzOHVtOK3jVwVWd/+rG8PwVLXHy/ZriP6Vwh0rophX2ENQ2PZ5
         vmgfMvkw27GckReQ3NLbDWZYpgQRa1VbC7DHYwWpa7UAe5lk2IiHA+1mMUMNxaH+BUoi
         hyVxYb+iDeEdJ2ze9XeetcVaCOzmdXNKAPK8Qpm/JU82FWQnswDVivwY2dmuRHaRpdM0
         p28xM6YcayrtLtTHdMWdmNXXbrw70iF4GUo+uUP82Ws9zJePkv6OBzPONkmUaOGSjrUC
         sgoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680794753;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=On6mduEQURdcWxUOcUqkEV7MHdztcoXcc+xqiYQXjuU=;
        b=wQoeO+xPn0UtO/ixuKn+/UdN9bTqbAz7l58m6rNBjA6rVD2kpIR4ZyqdqpYf0ja28F
         4PxBYo2bPRGUfUNfEqYLr90bJuWMbEMjZ2RbgOtP21wTwJJfRboIeAAC1Peuf8PP4toV
         bQIwq82siiEoqfQ+xoZ9tHwyUq3Pv0TxYzLZukdXQH0VNx7QS4BzVXN2kIUK48ax/w16
         FDZcae+/N0fbOZ0dVQpmXKjdILdJlXDyxBp66X7dNvlLCUE8K7SxGRHa++ykMuP8W44l
         Tto2gvVAf+Dss1G9WADsBYROrKKF96XNO06Sj5ocP4YNmkcQysC3qIy5D3kVz6ClUxew
         aqKA==
X-Gm-Message-State: AAQBX9c7arJyQadKhc6bOCfHRHSCZHHkdHUHS1I7QYZYYqvFeyVWBIxp
        U88qwZhC06WjbYYeJzozpjlCbYy67o2ma38dw/I=
X-Google-Smtp-Source: AKy350ZBRiTMscsl7g5+5MdBLoRCrnS9PioSamfVmtT5Z0rijz0Xlf3ziSYIxeurOY/YsH3bCvP+Hw==
X-Received: by 2002:a19:f602:0:b0:4b4:e14a:ec7d with SMTP id x2-20020a19f602000000b004b4e14aec7dmr2729448lfe.17.1680794752929;
        Thu, 06 Apr 2023 08:25:52 -0700 (PDT)
Received: from [192.168.1.101] (abxh37.neoplus.adsl.tpnet.pl. [83.9.1.37])
        by smtp.gmail.com with ESMTPSA id h4-20020a197004000000b004cc9042c9cfsm300103lfc.158.2023.04.06.08.25.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 08:25:52 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Thu, 06 Apr 2023 17:25:50 +0200
Subject: [PATCH 1/4] arm64: dts: qcom: sm6115-j606f: Add ramoops node
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230406-topic-lenovo_features-v1-1-c73a5180e48e@linaro.org>
References: <20230406-topic-lenovo_features-v1-0-c73a5180e48e@linaro.org>
In-Reply-To: <20230406-topic-lenovo_features-v1-0-c73a5180e48e@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kees Cook <keescook@chromium.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1680794750; l=824;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=rvm75cGvZ9z/bLkN6BF718+f+ov1sAVJupa2vpB7OuE=;
 b=Hdq4DplYj4C4ORBq/RAiWdOH1xYuyTPYBl0RFUj2466LiFVOhH6Qh3xU6Sf8fF9fI4y8mXJGKXzq
 GnAtgebcAemuO/60/C5uvZ3i2m7zOC11Mbh/VkGgxZvrI7gA1bok
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a ramoops node to enable retrieving crash logs.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
index 10c9d338446c..fd064899791c 100644
--- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
+++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
@@ -52,6 +52,17 @@ key-volume-up {
 			wakeup-source;
 		};
 	};
+
+	reserved-memory {
+		ramoops@ffc00000 {
+			compatible = "ramoops";
+			reg = <0x0 0xffc00000 0x0 0x100000>;
+			record-size = <0x1000>;
+			console-size = <0x40000>;
+			ecc-size = <16>;
+			no-map;
+		};
+	};
 };
 
 &dispcc {

-- 
2.40.0

