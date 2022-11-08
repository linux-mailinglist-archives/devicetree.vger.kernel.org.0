Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B074F621C66
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 19:48:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229624AbiKHSsI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 13:48:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229629AbiKHSr2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 13:47:28 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A18966D4FD
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 10:45:47 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id s24so22435827ljs.11
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 10:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3e6QncWTy31SeZzrKp3BM9xfjQuTeL4ug6X1SKAB58I=;
        b=l83pZfR138xW1ghdoQBLShkjnrHEYOZ+/YAfQvh6C8XlXQyTAk+SziN94SNcug+i2p
         o2z6nvk+aAyhmhtDOsD+klANLcUF/pJ8r2WkWAar8c+IwCKGLk6YL3vYsKsQ6qfKrVHb
         /cWj8hQFdb9fZ6N6wh6WvJhOo7DUJGexMsav+Hh0FaP/kHKxc23LeFkTP77OnVGpt7WI
         Pa/qZ5vYhNdzyT0/lDKhxvlg+Dy0RUlrxrR1mSxvBwpFk0o7btdNJh/jTM+XL9O+8JtH
         wgpV0OO7zsVBdQc0J07pSf/28tIIbJrBA0I+aiR7pdAyCNsJaMjTvjH3CVNQ5PxR9yXX
         n2bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3e6QncWTy31SeZzrKp3BM9xfjQuTeL4ug6X1SKAB58I=;
        b=TiJsx7EmNlioJAPt9YlucpoWfdlzZi0B+C8AAsTmsRBbRsgZ4VUixt3U0CBptRHO4H
         PJdcGpQMIn7bvKOD/rEU1+fAxS+m2UnZ+sa2Pqtjgbiw2A8AaP+7tfaVa55YxJVAD4Mx
         bo4tFVqWCm6PnjG/A9i6qm/rKZiXceACrpAJgdHCXss5MXRyw6sYvXK3YEQXLTontJnh
         hkzYF5ZiteGWupowGvGqwdmIWOOp2chrahNcTGPrsJ0JMBShUbyEBGGIKis/q8+esTcD
         uQpL/LQze37LBzJL38QubJKGEvS0zgZat6OieYGj2VOlsAkrybbbhnbjxVadncx491Y0
         C20w==
X-Gm-Message-State: ACrzQf3dJ+23bq58EWqWhFzU5FRQRQoXNWbUzUkhsNEghBpjKNOHx0Y2
        jmMmr/7m+ImodFTs2ZQkeTaj9w==
X-Google-Smtp-Source: AMsMyM7UVukGV22YXmPhyF1UptjxIvF6mnZh8WAYY5M611O5TuOuK2luIkIv3JEZpf8m1bJY5/OpjQ==
X-Received: by 2002:a05:651c:23a5:b0:26d:cf5f:6a22 with SMTP id bk37-20020a05651c23a500b0026dcf5f6a22mr6918637ljb.508.1667933136214;
        Tue, 08 Nov 2022 10:45:36 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id be13-20020a056512250d00b004a8b9c68735sm1890611lfb.102.2022.11.08.10.45.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Nov 2022 10:45:35 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] ARM: dts: qcom-msm8960-cdp: align TLMM pin configuration with DT schema
Date:   Tue,  8 Nov 2022 19:45:29 +0100
Message-Id: <20221108184529.26857-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221108184529.26857-1-krzysztof.kozlowski@linaro.org>
References: <20221108184529.26857-1-krzysztof.kozlowski@linaro.org>
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

DT schema expects TLMM pin configuration nodes to be named with
'-state' suffix and their optional children with '-pins' suffix.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8960-cdp.dts | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-msm8960-cdp.dts b/arch/arm/boot/dts/qcom-msm8960-cdp.dts
index 3a484ac53917..9a3a510f88ca 100644
--- a/arch/arm/boot/dts/qcom-msm8960-cdp.dts
+++ b/arch/arm/boot/dts/qcom-msm8960-cdp.dts
@@ -60,33 +60,32 @@ &gsbi5_serial {
 };
 
 &msmgpio {
-	spi1_default: spi1_default {
-		 mux {
-			pins = "gpio6", "gpio7", "gpio9";
-			function = "gsbi1";
-		 };
-
-		 mosi {
+	spi1_default: spi1-default-state {
+		 mosi-pins {
 			pins = "gpio6";
+			function = "gsbi1";
 			drive-strength = <12>;
 			bias-disable;
 		 };
 
-		 miso {
+		 miso-pins {
 			pins = "gpio7";
+			function = "gsbi1";
 			drive-strength = <12>;
 			bias-disable;
 		 };
 
-		 cs {
+		 cs-pins {
 			pins = "gpio8";
+			function = "gpio";
 			drive-strength = <12>;
 			bias-disable;
 			output-low;
 		 };
 
-		 clk {
+		 clk-pins {
 			pins = "gpio9";
+			function = "gsbi1";
 			drive-strength = <12>;
 			bias-disable;
 		 };
-- 
2.34.1

