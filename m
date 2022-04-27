Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B3F35120EA
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:39:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242637AbiD0QUZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 12:20:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243196AbiD0QTL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 12:19:11 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF09F2117CB
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 09:15:33 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id kq17so4423289ejb.4
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 09:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3OS/b7QEPllq3BIYgS2/Shs51nbXZ23JbFURSkhEpp8=;
        b=gpCYO1nGXIOSpx6PvS4uCMzNFQpwWb7Suc0nEV+AWiiAkTmcfS2NML1B+aoR+hcGXL
         ZKzI9H2s3nHON/G7KRLPavAoJo3eTcZIB+6OO1mfwh6dIg1hH2CvxTW52hUfuR4ilV4B
         fkZm+I51kFE8Fa29XS7fziDUhG6CGPiGncqDwtERYHHnpyZOwIiSVzNQLdxaXJ1Zuw8Y
         bifM0AhDbGTriUN8S6dhbcRJheL/FlxGRHfQvmf6929fWsfFCg2CyNNa1m72Mt+sl/gX
         PvrGlhTKAqJuDF2jgx+EOAKHqpY4iUal4v2gtrBO+WDp2TLcVPAZ8nq/IbfirhL1okev
         HRcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3OS/b7QEPllq3BIYgS2/Shs51nbXZ23JbFURSkhEpp8=;
        b=owJ1Dt/dGbeOKobcQz2IITu/P22Qm+0HKODOFF7SdBOmcHdJjb/A2zJhyh/vkUqRqE
         y1NJHcSOyqjrugAvawtjySYKf4uuSU/GeZaoqPpQTGbkl9QnDD+fovmSViSOe3M+vh2Y
         fe9F+cFIAp+MO+8MHTi5WJMSOa4/8qQeTIls/sC1eyKJi+NQZ7zSNsj6iUFEwZc1sUux
         UTaJfB8aab5zbNYnvvG9xSvsvfFonaS2eQ/KFygBdD5P7uCh8gXWEGE6M/qFnlrDs1oX
         fgXP+a5xgK237D+VVVJu2aSfN6lAFap2E/CqhzXjZfJJ957hJ9LmJ4bG2iBuNFOhgy4R
         VigA==
X-Gm-Message-State: AOAM533xHoSwbZMzpWHQ+XkQQ7lxU5AsHn56B9bLA0Y1pzIcwUCTmc5Q
        oCSa81NMNud3Ll7g8K5YdZEDww==
X-Google-Smtp-Source: ABdhPJxiXIehiQaBDpfXJpnDBoW5bJylGl7VO6kcxOhn9/c1Lz5IZ4VA7YXIH1dAzDS613Am43Wu+g==
X-Received: by 2002:a17:907:4c8:b0:6f3:beac:260c with SMTP id vz8-20020a17090704c800b006f3beac260cmr5814886ejb.321.1651076110315;
        Wed, 27 Apr 2022 09:15:10 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id r19-20020a17090638d300b006d6e4fc047bsm7095015ejd.11.2022.04.27.09.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 09:15:09 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Daniel Mack <daniel@zonque.org>,
        Haojian Zhuang <haojian.zhuang@gmail.com>,
        Robert Jarzmik <robert.jarzmik@free.fr>,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/4] ARM: dts: pxa: use new 'dma-channels/requests' properties
Date:   Wed, 27 Apr 2022 18:14:59 +0200
Message-Id: <20220427161459.647676-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220427161459.647676-1-krzysztof.kozlowski@linaro.org>
References: <20220427161459.647676-1-krzysztof.kozlowski@linaro.org>
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

The '#dma-channels' and '#dma-requests' properties were deprecated in
favor of these defined by generic dma-common DT bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/mmp2.dtsi   | 2 +-
 arch/arm/boot/dts/pxa25x.dtsi | 4 ++--
 arch/arm/boot/dts/pxa27x.dtsi | 4 ++--
 arch/arm/boot/dts/pxa3xx.dtsi | 4 ++--
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/mmp2.dtsi b/arch/arm/boot/dts/mmp2.dtsi
index 46984d4c5224..1a49b58e8048 100644
--- a/arch/arm/boot/dts/mmp2.dtsi
+++ b/arch/arm/boot/dts/mmp2.dtsi
@@ -275,7 +275,7 @@ dma-controller@d4000000 {
 				compatible = "marvell,pdma-1.0";
 				reg = <0xd4000000 0x10000>;
 				interrupts = <48>;
-				#dma-channels = <16>;
+				dma-channels = <16>;
 				status = "disabled";
 			};
 
diff --git a/arch/arm/boot/dts/pxa25x.dtsi b/arch/arm/boot/dts/pxa25x.dtsi
index a248bf038033..0d2d09cad059 100644
--- a/arch/arm/boot/dts/pxa25x.dtsi
+++ b/arch/arm/boot/dts/pxa25x.dtsi
@@ -38,9 +38,9 @@ pdma: dma-controller@40000000 {
 			compatible = "marvell,pdma-1.0";
 			reg = <0x40000000 0x10000>;
 			interrupts = <25>;
-			#dma-channels = <16>;
 			#dma-cells = <2>;
-			#dma-requests = <40>;
+			dma-channels = <16>;
+			dma-requests = <40>;
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/pxa27x.dtsi b/arch/arm/boot/dts/pxa27x.dtsi
index ccbecad9c5c7..68b940fabe5f 100644
--- a/arch/arm/boot/dts/pxa27x.dtsi
+++ b/arch/arm/boot/dts/pxa27x.dtsi
@@ -12,9 +12,9 @@ pdma: dma-controller@40000000 {
 			compatible = "marvell,pdma-1.0";
 			reg = <0x40000000 0x10000>;
 			interrupts = <25>;
-			#dma-channels = <32>;
 			#dma-cells = <2>;
-			#dma-requests = <75>;
+			dma-channels = <32>;
+			dma-requests = <75>;
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/pxa3xx.dtsi b/arch/arm/boot/dts/pxa3xx.dtsi
index d19674812cd2..f1fa7f54a398 100644
--- a/arch/arm/boot/dts/pxa3xx.dtsi
+++ b/arch/arm/boot/dts/pxa3xx.dtsi
@@ -122,9 +122,9 @@ pdma: dma-controller@40000000 {
 			compatible = "marvell,pdma-1.0";
 			reg = <0x40000000 0x10000>;
 			interrupts = <25>;
-			#dma-channels = <32>;
 			#dma-cells = <2>;
-			#dma-requests = <100>;
+			dma-channels = <32>;
+			dma-requests = <100>;
 			status = "okay";
 		};
 
-- 
2.32.0

