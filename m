Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AE685F11FF
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 20:53:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232452AbiI3SxC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 14:53:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232406AbiI3Sw4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 14:52:56 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ACAB166F12
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 11:52:54 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id o7so931845lfk.7
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 11:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=UxhvfBri17tgzxPDNor2R82KHsJcsSTRPUPam2eYO4U=;
        b=vr/fEPnwvDBIr0s+dfHijyzUeDGkoANjKcwrKLjFy9We+amgp9/Na3x3BGpi/TWr4r
         /GK+oDnkqGNBLORxjuO+2n7VQhSG3HSce6W3DQjYtE33c1rouGLd/j2Zir9U9dYgAlpi
         Yk41aFukzriF93RB1SX9QwhsKaUy/NyxwuJvnBs6Txqefp07OF+uNVlOF0XQi1FWlKEQ
         7S4NUbwsfW7B3T2u7q61VKjyL2Vz6YCLzCbVR0m+Md27H2wrg8sO3++or9XYV4BZ+qYK
         mXNw+p2zKm1jMQWRAUXP+w6rzAFjPokKyhn9ZKIjQ+h2SZCXEYOP5Mtm1VcTh1yXh0tk
         GPCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=UxhvfBri17tgzxPDNor2R82KHsJcsSTRPUPam2eYO4U=;
        b=WXGjtDk4ot0ZLnlyc0QcIsrLgEUsH7irFA22Rlg1oNzrW8rXa+2fnhAF+Ikyjb0Txm
         YvspD8QLnh5qZIrElkdEBkaRTwL7oNsyTcXlg2RcIJBBuwP5+r0InS8XUQWIocuVDAxZ
         7sOUWKmGdvRzE08bqrbeb2M2T7wj8BgU9op6ATV6YbBVht1RfWeK79QqrBGxaKden1nF
         vbubphTTiheW+hV6STK2rPVdM0qhzKHQQKZ7RTvv1b7imDcdD4AKIsU0JbhR/AwPHbOU
         etz2fw9oi5u5RAB7uHdzpf3lj41K/bUrzRoCIpIkPV7Jg30HjEq8ZoLZYaUY2ax//RyE
         A88g==
X-Gm-Message-State: ACrzQf2LFmZMOrrZPh5WKqFWqmnEIamfX1nsliZfMM12Qj0GShalXJmq
        GIIOIVwJv1+d5MaUebVEI8jnQg==
X-Google-Smtp-Source: AMsMyM6xKhYelgRiFragQYuAJZ5Tg3ukuXHh+hRr6wejDLFrBmR7O6mTLZzkGMP1Eb4LH6BGlTC17w==
X-Received: by 2002:ac2:5cb9:0:b0:498:eb6f:740d with SMTP id e25-20020ac25cb9000000b00498eb6f740dmr3504395lfq.106.1664563973366;
        Fri, 30 Sep 2022 11:52:53 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i8-20020a056512006800b00492cfecf1c0sm374703lfo.245.2022.09.30.11.52.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 11:52:53 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 22/23] ARM: dts: qcom: msm8660: drop unit ids from PMIC nodes
Date:   Fri, 30 Sep 2022 21:52:35 +0300
Message-Id: <20220930185236.867655-23-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
References: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On MSM8660 the PMICs are connected using SSBI devices, which do not have
any addressing scheme. Drop the unused unit ids from PMIC device nodes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8660.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-msm8660.dtsi b/arch/arm/boot/dts/qcom-msm8660.dtsi
index 4b0f58c417d5..60edb4bd5bbb 100644
--- a/arch/arm/boot/dts/qcom-msm8660.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8660.dtsi
@@ -338,7 +338,7 @@ qcom,ssbi@500000 {
 			reg = <0x500000 0x1000>;
 			qcom,controller-type = "pmic-arbiter";
 
-			pm8058: pmic@0 {
+			pm8058: pmic {
 				compatible = "qcom,pm8058";
 				interrupt-parent = <&tlmm>;
 				interrupts = <88 8>;
-- 
2.35.1

