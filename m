Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86554677F5D
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:17:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232483AbjAWPQw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:16:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232561AbjAWPQT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:16:19 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 130D5298C5
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:15:56 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso8801684wmq.5
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gGUqtcmNGGztvKy8TuZII0s0MTFOqZc3N4jbaSIf+2o=;
        b=dwvgPSsjdf8g1GrtFnxAIKda9OCQI6LWpkmRo6/zItDkho5w2MOu4hV5mREnKFzGvh
         pdqSv3RZ8z2bHqDNBg849wGia61aaaHkStqkco6DTWlD3Ap0znF+f3MR7MK8wJV37tEM
         +vwuU1U4CmVMcwm2kL3XkDUOqCMjTMInVeaBCuah9jeYP6uYHM67GZXqBaIOSP7My4if
         FpFj1VJ1oOvIbd9p5WxwCJKpfG7fRvdyij7YOQKK0TaejMUiJU/tnzdYITc9hB9yoHng
         3iEXebpTv7/DTS3Fb2T92pvgdzWb3bVOixvdjgs0Oe9zRD8boOB2aOWjAT6xND/yKMBR
         aCJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gGUqtcmNGGztvKy8TuZII0s0MTFOqZc3N4jbaSIf+2o=;
        b=nOoRfUk01LhJnc6ajuZYUAUGPS3669ZwurJzCiAeTxtGecw/waATBbEZZMHpzgG3rU
         Ify7a7Ah/wslZOKe8+Tzr/k4vTm2gaprEiYIfX7Zt4bl+VXJyajfMlJaOhb+Dt+TSCwz
         MTDrZ7BiYjhchrBN2K2hubmpBLmooawsSDJZ4amkP0Atvea7p7qPj0rCjwtjsMz8choB
         NKcKVF1ZzwVOUngE/tP3S25po8eKEWcl+BJo3+nW719dVAgazeG8R5znRGLa10/gPnOZ
         lW+RnumNd5luyZbNy+YdDJ/vRByyO9WjhB4V98sBBlWxbZFuWq7mtA6yTfFjT2S4oDHK
         vBjg==
X-Gm-Message-State: AFqh2koelyoPCOXdEMz96+Uvu46j0cqhrNJDim/dxYKNViWM+xIIZlbg
        JNiYr7dYJ6CsJOkF6Bd2d3B02g==
X-Google-Smtp-Source: AMrXdXuIARF8OML/T3d/lgQDnJagf+bF82inqTGa1cD+hqeVTI3vNFzg75FfeKi0QxOMf6fNezyBkA==
X-Received: by 2002:a05:600c:1d8e:b0:3d9:efe8:a42d with SMTP id p14-20020a05600c1d8e00b003d9efe8a42dmr24300360wms.21.1674486949193;
        Mon, 23 Jan 2023 07:15:49 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id k21-20020a05600c1c9500b003db30be4a54sm11566727wms.38.2023.01.23.07.15.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:15:48 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Tsahee Zidenberg <tsahee@annapurnalabs.com>,
        Antoine Tenart <atenart@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: amazon: drop deprecated serial device_type
Date:   Mon, 23 Jan 2023 16:15:47 +0100
Message-Id: <20230123151547.369791-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

The device_type property is deprecated by Devicetree specification and
bindings do not allow it.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/amazon/alpine-v2.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/amazon/alpine-v2.dtsi b/arch/arm64/boot/dts/amazon/alpine-v2.dtsi
index 4eb2cd14e00b..dccbba6e7f98 100644
--- a/arch/arm64/boot/dts/amazon/alpine-v2.dtsi
+++ b/arch/arm64/boot/dts/amazon/alpine-v2.dtsi
@@ -159,7 +159,6 @@ io-fabric {
 
 			uart0: serial@1883000 {
 				compatible = "ns16550a";
-				device_type = "serial";
 				reg = <0x1883000 0x1000>;
 				interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
 				clock-frequency = <500000000>;
@@ -170,7 +169,6 @@ uart0: serial@1883000 {
 
 			uart1: serial@1884000 {
 				compatible = "ns16550a";
-				device_type = "serial";
 				reg = <0x1884000 0x1000>;
 				interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
 				clock-frequency = <500000000>;
@@ -181,7 +179,6 @@ uart1: serial@1884000 {
 
 			uart2: serial@1885000 {
 				compatible = "ns16550a";
-				device_type = "serial";
 				reg = <0x1885000 0x1000>;
 				interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
 				clock-frequency = <500000000>;
@@ -192,7 +189,6 @@ uart2: serial@1885000 {
 
 			uart3: serial@1886000 {
 				compatible = "ns16550a";
-				device_type = "serial";
 				reg = <0x1886000 0x1000>;
 				interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
 				clock-frequency = <500000000>;
-- 
2.34.1

