Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7637475005D
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 09:46:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231544AbjGLHqX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 03:46:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229660AbjGLHqT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 03:46:19 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2A6E1990
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 00:46:15 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-51fe00bee8cso401061a12.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 00:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689147974; x=1691739974;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VkQhsBhyouPRGGkx2Os6kmEjQJrOhH+54+849FheFKk=;
        b=W2xHs3pWDOEFfM8IKIBBY2fadazpwvsfVPb247EQrIF67SnS1GW3YVYZmHH5QjzyMg
         Baid2bTBC0t9imnegscXZ+eXs0fLTX2JkwgxEfEMFI8By5ytXGdz2rbSB9rv0x5Xpo9m
         nqI2ZUmvLmAck7o6/P2qatgsyDbvk81Fo3bd/bKvjowLumH7aaQgwENla82YdEpokEiP
         HnDPaNMq/5ct7HnpWuYJj6lGO/5C5hIVTkKAMWVW6o6mWz8tvz2A0Ic1HoAH114NVDo9
         kRBM9Jm/9jO+4OkS1XclH/12LgRl1hmQaAaUsQn/Lnys3UuIkz6B51wpEJtGRGg3BQV7
         xt+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689147974; x=1691739974;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VkQhsBhyouPRGGkx2Os6kmEjQJrOhH+54+849FheFKk=;
        b=PQhmOfXWPPUwxcJvGBxA4PX9oIffV0btYg6OqrLoniDkw7cTlO7ZniYb9UhXb/veko
         PlTexCt8CPZpPSW+aaOWHFLH6stfKyV9qf7KQlFa7ZU4h2acoDUjQ+EtFp8S3M1/CVac
         /BV/bwKln4DD2wK2WjyMKnRtGt6t0I+rSLIkO/rR7xkzwu75ivPjKe91mY0RR4QpJpnU
         dAWFj4mVrDBod/suJ5f9y69HxNKFBcrfSTFty/yjXP/e2qvEgNggo8XqZ9P+H+5XJMSQ
         zNIo9wRqQvVM2aSXfEz0fWEJEZANuSwnk+YJoofsB5twHvc7K4CTs1yvdJCYXYoZfsn6
         erxA==
X-Gm-Message-State: ABy/qLaeG5La8p5dZDu2cMKdFX0tv6qyEvunVp5yZYvon/vTlHm9bkHN
        IB7rruNUcW0Pr8uXRdEghIunwg==
X-Google-Smtp-Source: APBJJlEeXMefzjr/m4Nw5WK8HUu89TqyVraSow6vT9vuSwR1vo7ZNClAVgw81gr+2MpypfveDLHzHQ==
X-Received: by 2002:a17:906:253:b0:993:f349:c98c with SMTP id 19-20020a170906025300b00993f349c98cmr12271515ejl.4.1689147974422;
        Wed, 12 Jul 2023 00:46:14 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id h7-20020a1709063c0700b0098e42bef736sm2181819ejg.176.2023.07.12.00.46.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 00:46:14 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Manivannan Sadhasivam <mani@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: bitmain: lowercase unit addresses
Date:   Wed, 12 Jul 2023 09:46:11 +0200
Message-Id: <20230712074611.35952-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Unit addresses are expected to be lower case.  Pointed also by W=1
builds:

  Warning (simple_bus_reg): /soc/serial@5801A000: simple-bus unit address format error, expected "5801a000"

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/bitmain/bm1880.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/bitmain/bm1880.dtsi b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
index 53a9b76057aa..22a200fb07d2 100644
--- a/arch/arm64/boot/dts/bitmain/bm1880.dtsi
+++ b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
@@ -184,7 +184,7 @@ uart0: serial@58018000 {
 			status = "disabled";
 		};
 
-		uart1: serial@5801A000 {
+		uart1: serial@5801a000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x0 0x5801a000 0x0 0x2000>;
 			clocks = <&clk BM1880_CLK_UART_500M>,
@@ -197,7 +197,7 @@ uart1: serial@5801A000 {
 			status = "disabled";
 		};
 
-		uart2: serial@5801C000 {
+		uart2: serial@5801c000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x0 0x5801c000 0x0 0x2000>;
 			clocks = <&clk BM1880_CLK_UART_500M>,
@@ -210,7 +210,7 @@ uart2: serial@5801C000 {
 			status = "disabled";
 		};
 
-		uart3: serial@5801E000 {
+		uart3: serial@5801e000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x0 0x5801e000 0x0 0x2000>;
 			clocks = <&clk BM1880_CLK_UART_500M>,
-- 
2.34.1

