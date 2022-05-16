Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20B15528477
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 14:49:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242982AbiEPMtB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 08:49:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242619AbiEPMsv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 08:48:51 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1E65393E0
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 05:48:49 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id kq17so28457684ejb.4
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 05:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XOIsMkVmGezvt0k2UbO/nvlinQdml5F2/hETUMz5pr0=;
        b=gQeT7fNxv1xTox6fLGdVHDt29rB58Z5yXSFzAznvZOJ9pYu7+s6rZhKxCKhJ0p3p7V
         lO4Rnk553EHNk34QcoDWjHZW0kuEXdwAuQ8rhpmBri7GwGHNlLMzTxNT6FOLEVTIvX34
         yDBuZ1SYKFKU7cn8/8JGvzefgF3B+kK45zpzzTQFOyt+g7gwYlOlLZ50ZxVnLS9uav5V
         Fxgb6flNjPHDGmEpoMYa4JzZIFmRJBqrtvXZXItKiQLKjZ55XrfSuNEBSGVJkA2C/VMk
         jHLEXk2igoGFNcp6u6rLUt5MWq+yWpEWZlK/gpKnY5M2leQ4wkXf95jyW/p2dyqiY27W
         vDwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XOIsMkVmGezvt0k2UbO/nvlinQdml5F2/hETUMz5pr0=;
        b=I2F368YGgvTAFcFt843Q3rTEl8XuvHr9qStuRPtSt8PQIc+32Q7CCk/mGrDtEPAV27
         SI+eb/CPeAoz2c5zgVKkfdCrK44xCLvkhFKCVWlwz8LioF8ojDEPnVf2uxz7p3VoHXc9
         CmYetuvFW7EBkAY7o6I0IWbb+F4mKYBUmfdmXHmb3qWFhW9C7JMoUy+JhfMTAYYvU5Ej
         5i8M3EmHY89R/onk6hsLqKaJ9TuS0D9LzVIW2uv/rq6Iv4StiSSD0LtYLcrKnFE8TcWQ
         tTXAPz/djshr9mHG4VyKYEyjBAJhFOpJAntBcq9kIyPOqsqKCwwIATngCO0BH3W2IyaY
         kunQ==
X-Gm-Message-State: AOAM532npIsLOJzpkctwXGC8+3/So+WakMGPk5smEwGj876sv2xk2pTJ
        dvHeL1iLNCHZDAetX/juDF9J1g==
X-Google-Smtp-Source: ABdhPJzZLLWyWwN17/gsmp3IByCaASEp5VfudNyT7/mbBFClrbAA7Ruebh76N6Ws2GicRR6tPQYtcA==
X-Received: by 2002:a17:906:7315:b0:6f4:c84f:9eab with SMTP id di21-20020a170906731500b006f4c84f9eabmr15064528ejc.759.1652705328285;
        Mon, 16 May 2022 05:48:48 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-98-105.xnet.hr. [88.207.98.105])
        by smtp.googlemail.com with ESMTPSA id e10-20020a056402330a00b0042617ba6386sm5093331eda.16.2022.05.16.05.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 May 2022 05:48:47 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, kostap@marvell.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Robert Marko <robert.marko@sartura.hr>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 07/10] arm64: dts: marvell: rename temp sensor nodes
Date:   Mon, 16 May 2022 14:48:25 +0200
Message-Id: <20220516124828.45144-7-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220516124828.45144-1-robert.marko@sartura.hr>
References: <20220516124828.45144-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rename the temperature sensor nodes to use "temp-sensor" which matches
their device class instead of IC specific naming.

Remove the status = "okay" which is not required as its default anyway.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index b89c7455612d..f21a855fc608 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -152,14 +152,12 @@ &i2c1 {
 	scl-gpios = <&gpionb 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	sda-gpios = <&gpionb 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 
-	nct375@48 {
-		status = "okay";
+	temp-sensor@48 {
 		compatible = "ti,tmp75c";
 		reg = <0x48>;
 	};
 
-	nct375@49 {
-		status = "okay";
+	temp-sensor@49 {
 		compatible = "ti,tmp75c";
 		reg = <0x49>;
 	};
-- 
2.36.1

