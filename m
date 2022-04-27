Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC1BB511D7D
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:35:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241497AbiD0QCm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 12:02:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241360AbiD0QCb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 12:02:31 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B261E162F36
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 08:59:01 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id j6so4260840ejc.13
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 08:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eKvDuuB9QgS27uH7omTMpe+GPkov4ZRdj/Xw46TVghk=;
        b=Xj4JuGcggLnu/0KkPElctnR4Our3/z/gp+RPHn3BZYUOLqE4ghTux4rLELcw722Rxq
         Z3J4uXVYrZHPx3n6yNtdGJsn2QgJ4sF3j5ltEMKJCoKumElPOl1yGzHujd4fXNrolRIo
         f3pnaY+xyxM6XMfo26fNrK6k8J7DBYllNHEEf7YXbKzPTat0ealbgKQxyj9BRJ20EKA7
         P5RcEJJE3B+3Ej10xzgHR2jJg+C6UPQ9LWd2hzDKdJOzdhK48w8IJIaJqJYZMYenBJxQ
         sZkrmkRERanjdlFvTGQ+qmtvEE0V3LnjT0liVNOVsfQnclVRMF2OMnt1lQ13PpCfhZzT
         EYWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eKvDuuB9QgS27uH7omTMpe+GPkov4ZRdj/Xw46TVghk=;
        b=TggP74nzwXVxrwj51sLbKqeh5wkHXsgZ3wLPaOWwVo9OsvS3VSlndtbx9MrtJl+rHr
         kCIa1fLJNovyH5eBoD0Wk39efufhVj03LXRFYhjIaMmQSOMHiJ0LL+dR4bKwZQTHVtI/
         /rQO0n6y/7PUabZTWXnTpStQjD5WITbwkxoGjZXsu4sc8R2x3+1sFWTTW+mFToBTzXI4
         uomBhz6eFxzix3DQopu844BYwenrKrpsi47wJnImptgTFQkTID/k9+rB4kINEPyFqb9e
         3A6hezXrDk2q05dJGrLjwc8p1wRGyvaNKN34nvUY55viNbCoElVSaFNK3e+yyiX1bNo7
         oPJA==
X-Gm-Message-State: AOAM530ojWlVtT8M/aqanPx3pyL73nitO6ykIg3r4Ll3gGSg7y5WRJgU
        xPnzux9D5hykPsE1xGvX/kaSSg==
X-Google-Smtp-Source: ABdhPJzUU6FhLxV2t/BOpMHiXfLyUyiy2Pp2RkecMzFq2opxeB5FMpvjvc+/h+NzLAfoXNvF4CQQNQ==
X-Received: by 2002:a17:907:7eaa:b0:6f3:bb9a:7f39 with SMTP id qb42-20020a1709077eaa00b006f3bb9a7f39mr6900446ejc.233.1651075136200;
        Wed, 27 Apr 2022 08:58:56 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l20-20020a1709062a9400b006ce71a88bf5sm6931993eje.183.2022.04.27.08.58.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 08:58:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom Kernel Team <bcm-kernel-feedback-list@broadcom.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH 07/10] ARM: dts: s5pv210: use proper 'dma-channels/requests' properties
Date:   Wed, 27 Apr 2022 17:58:37 +0200
Message-Id: <20220427155840.596535-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220427155840.596535-1-krzysztof.kozlowski@linaro.org>
References: <20220427155840.596535-1-krzysztof.kozlowski@linaro.org>
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

pl330 DMA controller bindings documented 'dma-channels' and
'dma-requests' properties (without leading hash sign), so fix the DTS to
match the bindings.

Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/s5pv210.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
index ac281f42e8f5..f6988ba3393d 100644
--- a/arch/arm/boot/dts/s5pv210.dtsi
+++ b/arch/arm/boot/dts/s5pv210.dtsi
@@ -125,8 +125,8 @@ pdma0: dma-controller@e0900000 {
 			clocks = <&clocks CLK_PDMA0>;
 			clock-names = "apb_pclk";
 			#dma-cells = <1>;
-			#dma-channels = <8>;
-			#dma-requests = <32>;
+			dma-channels = <8>;
+			dma-requests = <32>;
 		};
 
 		pdma1: dma-controller@e0a00000 {
@@ -137,8 +137,8 @@ pdma1: dma-controller@e0a00000 {
 			clocks = <&clocks CLK_PDMA1>;
 			clock-names = "apb_pclk";
 			#dma-cells = <1>;
-			#dma-channels = <8>;
-			#dma-requests = <32>;
+			dma-channels = <8>;
+			dma-requests = <32>;
 		};
 
 		adc: adc@e1700000 {
@@ -526,8 +526,8 @@ mdma1: dma-controller@fa200000 {
 			clocks = <&clocks CLK_MDMA>;
 			clock-names = "apb_pclk";
 			#dma-cells = <1>;
-			#dma-channels = <8>;
-			#dma-requests = <1>;
+			dma-channels = <8>;
+			dma-requests = <1>;
 		};
 
 		rotator: rotator@fa300000 {
-- 
2.32.0

