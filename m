Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBBDA677F35
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:15:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232394AbjAWPP4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:15:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232452AbjAWPPm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:15:42 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FB8C298C5
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:15:18 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id h12so7126528wrv.10
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:15:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0/AFAxaUVW90EwIHRK/fHR8VzWpCXHY9x/uFxO/l4zg=;
        b=GH6fZJMPcm9XDpyHGslU2+Go/G+1fKYu/js6tsLtFcgv/IazjO/GFdPbkej1uy/05l
         lzN8+1utui8fSj6lszFXqfmW+Eove3MNgBLdhMZNTh2V1hy4XPCZeH9atCzn1OmZrAL1
         ppcIv47G/jNoOX8StZ/pEx6Lkm20mTtKc71+GRP8wu6JWBlsalD/q2Ah+Jxs2JdeRoED
         CXIOCxssqcyoz7bHBgiEIqzjde/3nqQ0+EMwdYvusXCG1u1p2LGfmny5e/aMBuQ2aV4T
         qJrTXfu4JMw+j6R/W7zXLMofQ5/GhcYJOPRrZYD5CjwyVWotwIWXAHgf2W8ropQA+3hi
         Ncqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0/AFAxaUVW90EwIHRK/fHR8VzWpCXHY9x/uFxO/l4zg=;
        b=KtiI0S6YousbVy21YTPeU4uqER2OFXi3b+WFhYjbdEO56poTfNwY0cqd6RLSKpToA8
         0ZOUhmOYbY79Zg/qdAeaUdMg3rmJ7u1kpzJT99/VVrQQEkFE/uXTOuEap84LBI1fFIzj
         kd3No3JGZLc/x1nx/DXXNQYElfpBP/BqCO13sAqlVZzdGAr+za/5ih3jEcAsA3WJYrVs
         JgXOT9tOQgQ2JTc2SWA6Ind3+O27UqJ9zGi0eazyQStIOBX5evZHQUqnCPXu6+JpU6Bp
         6EYkpBcOk5h5mw7njQchfDDw4UmunW3rca6fRF1xTnMA8mXS7u6AeN/eynPbLOpkrYvS
         tI1A==
X-Gm-Message-State: AFqh2krSu3qgAkee8is/HbN1wdYPN+b5O4yKLJ9jyuiyzpvStpDxxJvr
        0BKNXh3wDz9alhgnZvAieQuPmy5H30rAr4xD
X-Google-Smtp-Source: AMrXdXvWwXrdcX0b4tajiklkcWHpoFWBmu2la2SEN46UDjAYK93pylHn18TU66CJIDuMdbTU6vBrWw==
X-Received: by 2002:a05:6000:784:b0:2be:3ccd:7f2f with SMTP id bu4-20020a056000078400b002be3ccd7f2fmr15044328wrb.46.1674486916077;
        Mon, 23 Jan 2023 07:15:16 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id v12-20020adfe4cc000000b002bfad438811sm50228wrm.74.2023.01.23.07.15.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:15:15 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-realtek-soc@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: realtek: align UART node name with bindings
Date:   Mon, 23 Jan 2023 16:15:14 +0100
Message-Id: <20230123151514.369101-1-krzysztof.kozlowski@linaro.org>
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

Bindings expect UART/serial node names to be "serial".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/realtek/rtd16xx.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/realtek/rtd16xx.dtsi b/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
index afba5f04c8ec..bf4d9e917925 100644
--- a/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
+++ b/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
@@ -195,7 +195,7 @@ gic: interrupt-controller@ff100000 {
 };
 
 &iso {
-	uart0: serial0@800 {
+	uart0: serial@800 {
 		compatible = "snps,dw-apb-uart";
 		reg = <0x800 0x400>;
 		reg-shift = <2>;
@@ -207,7 +207,7 @@ uart0: serial0@800 {
 };
 
 &misc {
-	uart1: serial1@200 {
+	uart1: serial@200 {
 		compatible = "snps,dw-apb-uart";
 		reg = <0x200 0x400>;
 		reg-shift = <2>;
@@ -217,7 +217,7 @@ uart1: serial1@200 {
 		status = "disabled";
 	};
 
-	uart2: serial2@400 {
+	uart2: serial@400 {
 		compatible = "snps,dw-apb-uart";
 		reg = <0x400 0x400>;
 		reg-shift = <2>;
-- 
2.34.1

