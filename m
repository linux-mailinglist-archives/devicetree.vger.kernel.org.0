Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47CDE511ED6
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:37:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241059AbiD0QCL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 12:02:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241052AbiD0QCI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 12:02:08 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7092B15047E
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 08:58:51 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id j6so4260101ejc.13
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 08:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FfoH2+93jiElrAWTEZ/Q7dNpBENcDt+C1xVnkM3EKH0=;
        b=aDxm4D43Uhl3iOHQUzXpfXWzGb/UigzhcXaNFnpII0mJc39so3qCwm2fE5v0WlaCD1
         iiIj7mXuxl4vLl08tsVAqb/yQ99Klv17DSS7v7YSY4w2lb1yBRsC2I/fP6jw8WqGAfZ2
         9J8C7/bMPTWUvJQ3sZMvRdZB+a0hYWKNNqhZr1/SBBMSuCfk1CeJmmSw2ig3d93qNqA4
         3I2FntpgkthKFxff1hXUqb6Dk6gPxhaB/FDmqprkDCYz8qeQ3gaJdJ2FmYwFbS3XRpm8
         QIn+rk0OPEFC2T214H3rCJtJgot3GfT1DL/ZKf9SnboOT3JXtXcounnPp1EufD15JqJc
         Nnkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FfoH2+93jiElrAWTEZ/Q7dNpBENcDt+C1xVnkM3EKH0=;
        b=qu+b0W/dOu86IERNIX4PtliD5hei4rEu0fmCbVMHlVaOWQkadK5pJple1H57MIgulF
         6qXQWjzMtikBlkD6PZ/Ex9czgvxT8Jc8lmJkU1sgvbmlhCHhquvzbqT6Kn4hoZRM9Gci
         nv9kjufefx46JkVGn3Fog2MgSrL2e/wPpy84Ub4F0xGJVwC32Lmr3qSIx/qdSxC3hAhv
         V2MXeFRDiO6T0DMrJyBIdW05hi+vO3W2lpjBowHDvc+tzSpn/6f/Ov1Ej7BCRgxz96pF
         1UCOPvSaUCW1iYGY66uB1cWZ4+IM+AD/ZQXgwhhE5mqEPKKToOeBdvSnz7/WjP+f2CX+
         6lcQ==
X-Gm-Message-State: AOAM532QulQUle0BcDI3qklj+hVDiO8q/VdbqYrmyRZNFlA3BNYu0DTG
        Erw9Ys7J8LsroXdbJ9gUysJgew==
X-Google-Smtp-Source: ABdhPJxkTC6bstznqDirh3yOz28YdsL99Ic+MVOKQR7saWm8FlFuBZI4c+b5iie8jou2S74gwAsutg==
X-Received: by 2002:a17:906:730b:b0:6f3:a3bc:b69e with SMTP id di11-20020a170906730b00b006f3a3bcb69emr11977792ejc.377.1651075127531;
        Wed, 27 Apr 2022 08:58:47 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l20-20020a1709062a9400b006ce71a88bf5sm6931993eje.183.2022.04.27.08.58.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 08:58:46 -0700 (PDT)
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
Subject: [PATCH 01/10] ARM: dts: zynq-7000: use proper 'dma-channels/requests' properties
Date:   Wed, 27 Apr 2022 17:58:31 +0200
Message-Id: <20220427155840.596535-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220427155840.596535-1-krzysztof.kozlowski@linaro.org>
References: <20220427155840.596535-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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
 arch/arm/boot/dts/zynq-7000.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/zynq-7000.dtsi b/arch/arm/boot/dts/zynq-7000.dtsi
index 47c2a4b14c06..40c60a2b6d2c 100644
--- a/arch/arm/boot/dts/zynq-7000.dtsi
+++ b/arch/arm/boot/dts/zynq-7000.dtsi
@@ -343,8 +343,8 @@ dmac_s: dmac@f8003000 {
 			             <0 40 4>, <0 41 4>,
 			             <0 42 4>, <0 43 4>;
 			#dma-cells = <1>;
-			#dma-channels = <8>;
-			#dma-requests = <4>;
+			dma-channels = <8>;
+			dma-requests = <4>;
 			clocks = <&clkc 27>;
 			clock-names = "apb_pclk";
 		};
-- 
2.32.0

