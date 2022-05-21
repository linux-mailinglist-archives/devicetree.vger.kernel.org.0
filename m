Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BAC252FF54
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 22:27:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241941AbiEUU1X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 16:27:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236063AbiEUU1W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 16:27:22 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B53B5A2E2
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 13:27:21 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id i23so13041999ljb.4
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 13:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=U9PdDckJmi1oVgnqAHs65fK9dW8Ttr+vSEU5/XjZX/s=;
        b=I4MKNTRiptDN/MwfCs5Nxm62w3qTfT9xd6vvptezvqAnC9HH85bLPiv36CjRDl22DT
         YuoIsL4fYkW5dhFtpovSMzG6W94YI5K5REerwz3VE8MtFiG+r9ugADcQ0yobbOTbAj2A
         YfLGEMdAmPK2Kj7TOMgikVRNPxc1VMNtRbAVJrZ1x4S+onV+2cajiq/WPKhPH3ytMCfG
         VjT+okHmGZ6+2H2JI8GHmb3jMLxxqvLD6DuOjRS8skvYlBgOSELqjr0oAqnCjNry/Ahy
         khUEItifPlQUCkFWTFpr/ATf3Pc5ILmFc90CVgOwBnW8WVUCq+623yCXUn+qUcAQCZWH
         Dh6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=U9PdDckJmi1oVgnqAHs65fK9dW8Ttr+vSEU5/XjZX/s=;
        b=nVT7FDyT5hBvcMaA9XiElrVSzCX8URUCGA0uqLN7H2O6dCHAkfZ0AsfpxlgjXV5iCW
         afiDXLe3AzeGSDdT7DxsGjg6cxLr66g9o9bK7AsNB0m9vUlJRpjSw2S1a9sPetudZJP6
         CIGBK1Nkt2/selnX8nasugaWTYy/EVDOcyh2ne69a3nkufVU81xYX7lc+c/PKdV9BrB1
         6NzCRS/Pzb3iJvKE5f/cZONbqq0C6SRP0S6+FOHTUjKX9svIfnRCB8LH1R13TPVuAV1t
         Vjp8npiMoScAjGxrb6on+mr5zn8hkZNIMh1cJfuteNvE+emY5fG1WBBcoQ8Fbads7/My
         l12w==
X-Gm-Message-State: AOAM533zdHfCh+vqiA+6FZSEpsOWh8Po2hejt1vcI4z5fYmSd8ee7In8
        NHHbGlQTTTYJGi90vQ34zJVAGA==
X-Google-Smtp-Source: ABdhPJwV7Cg/tw7rUj54zU6Fp4ddrOligrCm9GeyxW7bC2pzD7ZSVTHQFdEtcbO51pB1z8zr8Vr8KA==
X-Received: by 2002:a2e:86c4:0:b0:250:9ab5:ed13 with SMTP id n4-20020a2e86c4000000b002509ab5ed13mr8998626ljj.381.1653164839710;
        Sat, 21 May 2022 13:27:19 -0700 (PDT)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
        by smtp.gmail.com with ESMTPSA id x1-20020ac259c1000000b004786291114fsm317773lfn.140.2022.05.21.13.27.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 13:27:19 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>
Subject: [PATCH v7 07/11] arm64: dts: qcom: sdm630: fix gpu's interconnect path
Date:   Sat, 21 May 2022 23:27:04 +0300
Message-Id: <20220521202708.1509308-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220521202708.1509308-1-dmitry.baryshkov@linaro.org>
References: <20220521202708.1509308-1-dmitry.baryshkov@linaro.org>
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
kernel sources, the GPU uses MASTER_OXILI here, which is equivalent to
<&bimc 1 ...>.

While we are at it, use defined names instead of the numbers for this
interconnect path.

Fixes: 5cf69dcbec8b ("arm64: dts: qcom: sdm630: Add Adreno 508 GPU configuration")
Reported-by: Marijn Suijten <marijn.suijten@somainline.org>
Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 11ec8b3cfe38..1c887b9055b3 100644
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

