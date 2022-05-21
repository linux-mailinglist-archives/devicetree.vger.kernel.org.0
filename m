Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F25652FDB8
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 17:21:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351315AbiEUPVN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 11:21:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355384AbiEUPVE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 11:21:04 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FA9BB4B2
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:21:02 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id e4so11960884ljb.13
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=phP/wZufMo8JVf8iPWt10tc4R0N5kfJPhVoOuBiFZMs=;
        b=V502GxPHKjeBGjxktRxSiUkJ6hOnU7cOEk+GT8M8dINKLrCjHIrG0JJZmMJgpJGEKN
         94JAcGlJ5JMxzXkoXsHz0bWaoiOyGNquYSk8AWfhwJ8ES42KBqnUAeKPab+fdIU6L6k0
         izWpxPaedgA4p3WOGbd/CP1O2lopGdGNgBsddqzLpsuKO6UbnD2VSubcSGhvRqBWjhm0
         aGe/3I3mSyJwS7P9Rdx6NAJDYoOx1oGaUmiGo/zdMppHA06UpG+j62lLPOL6s143VJik
         kABZTltYeU+UNg6o0jI3oztjFu3OrGmbmuDGAPJQf8RpTaihFQKtomEu2B/lSF9Md5DL
         zSew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=phP/wZufMo8JVf8iPWt10tc4R0N5kfJPhVoOuBiFZMs=;
        b=Ar6JpUpHZA4ujgTkK8UJnsC8GBiId74ydB7POUseg1wOak8l5AOoaDjfJOFz1utNsm
         e6qOyL5eDQkbQf2+H4u28r1QtZvLihookaJ+JnPzwOcVI7cuctJHZfMbtfU4UOXThOuV
         gnaN3SUMsHjJ8snTqvFlVoKirdNsK08DX3Lelzrw3kuNJbhcRLFDi4isriTZuYX336JU
         ywz0vbMGcact6/QPEDIe2ZIJLJyrD774tWecISHYBRseo3L3LgcVpyuJWwjJFcB++DZQ
         Awua+NHbVwOm84xO3Wpx1JZ519/yX/5/FAXrgplR1RaOooHVDbybD2wX2AabkaYePE6V
         ugrA==
X-Gm-Message-State: AOAM531gFvcrfymyQZ3lA7SF0wu32kgrMpSyBYDB3ZYjRkhiPN+fNvxZ
        aUHMnyOzZqjpcUmTCfZKbrcKhA==
X-Google-Smtp-Source: ABdhPJwA8otOzQVgVWqZvVcI14RlgFPYZE2/PCKbNm3TcnGSyZ3/gtLxVp4OJ45gnAveej2OqGf/JA==
X-Received: by 2002:a2e:b61c:0:b0:253:e543:8602 with SMTP id r28-20020a2eb61c000000b00253e5438602mr975567ljn.353.1653146461692;
        Sat, 21 May 2022 08:21:01 -0700 (PDT)
Received: from eriador.lumag.spb.ru ([94.25.229.156])
        by smtp.gmail.com with ESMTPSA id k8-20020a2e92c8000000b0024f3d1daeccsm739933ljh.84.2022.05.21.08.21.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 08:21:01 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>
Subject: [PATCH v6 07/11] arm64: dts: qcom: sdm630: fix gpu's interconnect path
Date:   Sat, 21 May 2022 18:20:45 +0300
Message-Id: <20220521152049.1490220-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220521152049.1490220-1-dmitry.baryshkov@linaro.org>
References: <20220521152049.1490220-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

ICC path for the GPU incorrectly states <&gnoc 1 &bimc 5>, which is
a path from SLAVE_GNOC_BIMC to SLAVE_EBI. According to the downstream
GPU uses MASTER_OXILI here, <&bimc 1 ...>.

While we are at it, use defined names instead of the numbers for this
interconnect path.

Fixes: 5cf69dcbec8b ("arm64: dts: qcom: sdm630: Add Adreno 508 GPU configuration")
Reported-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 2b5dbc12bdf8..bcda3a1dd249 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/clock/qcom,gpucc-sdm660.h>
 #include <dt-bindings/clock/qcom,mmcc-sdm660.h>
 #include <dt-bindings/clock/qcom,rpmcc.h>
+#include <dt-bindings/interconnect/qcom,sdm660.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -1045,7 +1046,7 @@ adreno_gpu: gpu@5000000 {
 			nvmem-cells = <&gpu_speed_bin>;
 			nvmem-cell-names = "speed_bin";
 
-			interconnects = <&gnoc 1 &bimc 5>;
+			interconnects = <&bimc MASTER_OXILI &bimc SLAVE_EBI>;
 			interconnect-names = "gfx-mem";
 
 			operating-points-v2 = <&gpu_sdm630_opp_table>;
-- 
2.35.1

