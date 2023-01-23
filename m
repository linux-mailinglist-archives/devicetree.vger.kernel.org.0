Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB292677F44
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:16:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232442AbjAWPQW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:16:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232424AbjAWPPy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:15:54 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 433002916C
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:15:31 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id t5so11149805wrq.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=247W0z7EVjcoIvXF9MFKBtHP4NsoMxpTMHNu5CrTCnw=;
        b=dwIhNLKEVnN2vZGmvsVLZNwhLs6y7HGDlxWmUPVoqU52zA+l4xmxYzaO8GYCxKac3G
         vxNk/xkVX89PpNkC88Z5CXg99XGAKM/8X9YPf5U2Qafp4rwnOvN/xextptmcgxXdIQZF
         vvOgENdmRmZ4T0O/uNt2AFrDOxMKtzkSymUgv5QbjJkmi3gKiAzshTH260GR9H39fkrW
         1fcgAMu4g3W71/k2hKRW+wXlYFwwfprFhhAwJkdLhesfutnejGDvWQtvOEO9ILQ9fygG
         UZOQJu+XeIWkOMJsL5lTk+asfctMzwBAYHfZZ0sOEXjhuhX5ni1nbGD8GATOK59gsHtl
         9Cdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=247W0z7EVjcoIvXF9MFKBtHP4NsoMxpTMHNu5CrTCnw=;
        b=M69kE4zGuXnQwKTfrJTcMbpfF7Y5JH1fQpvyf+grs+kM4H9HKDfMHAEzoCD8dEVhns
         mo/bgL+nIrmru5tORe83CflVAZhHvipsB2+sxTACsSg5fiNuWYRtvvS0l77CSUH0HFJ8
         Ts+oJty9dvdPduJzMqUsZuGxMedW4+vUICRmlLOX6E2aEXOVhKLK8r5I0z09b9Hv1qgV
         HQFGaeB1COeIbIoKt0vRHAKNuAW7Zd5XFs/ZXBAosyxfWXbJw7rzLTaIT0MJaw54tTzI
         YA7X1+vY6WB+RLoW4m22fPkbjI49ktRJpsEOH6Wu3NJ8ksXpoYtDmAiP1gy2aM0A2HmE
         ZIHQ==
X-Gm-Message-State: AFqh2kpmV7GvX1AEEieVFWzZkAZR3w8qwWnZoJSmNiFqo0QCPHUgl7Fl
        HJQD5oNlfQyD/gdC5aBGlhtSeg==
X-Google-Smtp-Source: AMrXdXtT4PHdnWlwwEO4Hcb/PYxUULSqgOTcyt+FOjsxEVAXfSPC2tsNl+RVCfLMVLco2lH0GTd69A==
X-Received: by 2002:a5d:6f03:0:b0:29a:c631:e761 with SMTP id ay3-20020a5d6f03000000b0029ac631e761mr24358886wrb.43.1674486928973;
        Mon, 23 Jan 2023 07:15:28 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id c8-20020a5d4cc8000000b002bdeb0cf706sm23196690wrt.65.2023.01.23.07.15.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:15:28 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Baruch Siach <baruch@tkos.co.il>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: cx92755: align UART node name with bindings
Date:   Mon, 23 Jan 2023 16:15:27 +0100
Message-Id: <20230123151527.369285-1-krzysztof.kozlowski@linaro.org>
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
 arch/arm/boot/dts/cx92755.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/cx92755.dtsi b/arch/arm/boot/dts/cx92755.dtsi
index d2e8f36f8c60..227675fbe820 100644
--- a/arch/arm/boot/dts/cx92755.dtsi
+++ b/arch/arm/boot/dts/cx92755.dtsi
@@ -107,7 +107,7 @@ uc_regs: syscon@f00003a0 {
 		reg = <0xf00003a0 0x10>;
 	};
 
-	uart0: uart@f0000740 {
+	uart0: serial@f0000740 {
 		compatible = "cnxt,cx92755-usart";
 		reg = <0xf0000740 0x20>;
 		clocks = <&main_clk>;
@@ -115,7 +115,7 @@ uart0: uart@f0000740 {
 		status = "disabled";
 	};
 
-	uart1: uart@f0000760 {
+	uart1: serial@f0000760 {
 		compatible = "cnxt,cx92755-usart";
 		reg = <0xf0000760 0x20>;
 		clocks = <&main_clk>;
@@ -123,7 +123,7 @@ uart1: uart@f0000760 {
 		status = "disabled";
 	};
 
-	uart2: uart@f0000780 {
+	uart2: serial@f0000780 {
 		compatible = "cnxt,cx92755-usart";
 		reg = <0xf0000780 0x20>;
 		clocks = <&main_clk>;
-- 
2.34.1

