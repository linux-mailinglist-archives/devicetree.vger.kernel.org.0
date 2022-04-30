Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71F2F515CC4
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 14:20:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356756AbiD3MWr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Apr 2022 08:22:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355307AbiD3MWk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Apr 2022 08:22:40 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26CE16AA5D
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 05:19:15 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id bv19so19967721ejb.6
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 05:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=L79GI+mT0jZQe54/uvCkpP4Pnwj1w6LGRYKkkvxF96E=;
        b=HxLT770PhJNrsAs8v8YlsGWebhs8S4BnSmWMIFs/ZbsI/Jn27vYSQDk3FKthJXZ0Uf
         bjPaQEx33epDGBipq3j06t0haEkMh72jyofUPXvF2p6jmgtaXgeOgD3nsKWshfflrcOh
         MSAAWvW0nbpk8wEd6qv+ZkpfUfCvQtq8YPKL+WFrNi4N3X2BjNoZWNLodDXBM3eYySMv
         OYqBcpUOCwR9Z0U7Y5BgkFkN255uDGUl4TeNxDHVo3kkjwzeaiTmg12h6rXQYdTBz0jq
         oeUrJgwIHp1zXrcRdsBsE1qt2xOp/kLwKQ+hVSaEn5ssNWGiZloWqK1AqIB2EztwzrMT
         qrtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=L79GI+mT0jZQe54/uvCkpP4Pnwj1w6LGRYKkkvxF96E=;
        b=FmuotUAzyfUohRHJg4GX+A6sUr61KtxKNU7XpoVzMsu94UuhrvT9DzYJ6uxWefj4Nu
         AmJGVa48UQXUftXHNia940cpQwuUZCSKoYb+0RfgSGEc0/QYnzXeHp/vWLG1cfuqkuuG
         oUr7RAYTc4uvPwJHzsSbZYWfAQXMiqXHHaxlW3OtJbsMFGMPN8WSL0PQiR19yvLj1jiL
         uQYkv4b/Eyqn5o983QE0teNJj/HXMhYuh+AEGMTJyXQ/vcXpQ6kzzTVmTZh2RNZTzMNT
         l46tW4OSUgmp41p9pNOVnGAYBSlFP1YbHjNT1YeB0Sj9ZpRhJcVFwMj6YocCidvGQIp/
         MA6A==
X-Gm-Message-State: AOAM5305fNYm3zySleNfMRw8Bbdgks+ZoRA9l9Q6HCVUWbgO/eykDr84
        LZP96OIs9IpHjvJJhgaEhD1RFQ==
X-Google-Smtp-Source: ABdhPJxBWAy+KPw1btN/yoFrxMnEtYQn5s298QGNRXgo/AWBDYHHnv00Ytwh/0II49sGeZIR/EnulA==
X-Received: by 2002:a17:907:8a11:b0:6df:db0a:e5ab with SMTP id sc17-20020a1709078a1100b006dfdb0ae5abmr3728539ejc.528.1651321153664;
        Sat, 30 Apr 2022 05:19:13 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c26-20020a056402159a00b0042617ba63d1sm4059091edv.91.2022.04.30.05.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Apr 2022 05:19:13 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
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
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 4/9] arm64: dts: juno: drop useless 'dma-channels/requests' properties
Date:   Sat, 30 Apr 2022 14:18:57 +0200
Message-Id: <20220430121902.59895-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220430121902.59895-1-krzysztof.kozlowski@linaro.org>
References: <20220430121902.59895-1-krzysztof.kozlowski@linaro.org>
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

The pl330 DMA controller provides number of DMA channels and requests
through its registers, so duplicating this information (with a chance of
mistakes) in DTS is pointless.  Additionally the DTS used always wrong
property names which causes DT schema check failures - the bindings
documented 'dma-channels' and 'dma-requests' properties without leading
hash sign.

Another reason is that the number of requests also does not seem right
(should be 8).

Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/arm/juno-base.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 4f40a5c8f565..065381c1cbf5 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -829,8 +829,6 @@ dma-controller@7ff00000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0x7ff00000 0 0x1000>;
 		#dma-cells = <1>;
-		#dma-channels = <8>;
-		#dma-requests = <32>;
 		interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.32.0

