Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1AC1638C6D
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 15:41:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230016AbiKYOlX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 09:41:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230073AbiKYOlV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 09:41:21 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAC2831DE7
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:17 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id a15so5400292ljb.7
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9d/lVbmC1cvz3REBQB8hM0WM6JqOpFAcj+RWh1vkxOI=;
        b=w2tEjvdiIQbSm2Urj8qvn/+jL5LMwp6MtDcc5YaY+6xqQyvbEy9535/yqICrGfe+3u
         4fXLDZaxeFgzRQbtDLDmtiy6I1Ko5FrKMlxBZ077hsXJZRf9bQPF7pUk6KBBx1I6vrJr
         0yf+RkdrJq5o3WYpDKM5YUKAOJN27pzVJ8RhJPHLdrC8otv1dbX4GAMC+bYmDXzqRpIQ
         kRYSubqzOo8DlM8IUB/wJyyfDrcj2gGk0WsJGkT3TqhThYob9IjronMRNyPYFxpnKkPY
         o6wX9PUfknjpbKG0TcymL6N8ihnPD2hTkZN6397XG6wLiDJ0tNbdHumk/c7RbZKLepbG
         yb4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9d/lVbmC1cvz3REBQB8hM0WM6JqOpFAcj+RWh1vkxOI=;
        b=55Ix05nBPN22zgX6CL7vXiRGdahSiEcHGL/hR11diKAYqZ0ac0Dbp/DxB1NM7Uc8B0
         iy4gfXWe9iFWwO54h/J1rMKb70L9e/m2MUVM8pe05NbRAO0B2svWZ21z2F/vFL7I6uvB
         TjrqORgkC6zH2ZiymEbQQthWCSiSshrvq8ngT5K6jjKNmXFzsjgTze6Yh9uDMdQtGCun
         Z3rVF5v7OA4UG06X7RRUo+Z/1UikLyxCdSWvkAxaoGD+VSXwJXpIWxkxKd4xMYG6bO9Q
         fQHr0oU3sDRcyR6IcPy6zRh99fsVQy0qHVxvgLZhs0hA2qPpnOSM/qP13i+YkMacVueC
         67Mg==
X-Gm-Message-State: ANoB5pkcEPXW5rFpp28GDbYsWYaefDO6POZRq+aGxsRD43bh/a9+9BIm
        gQE4Obigi05VCAe3MD/59EtMlg==
X-Google-Smtp-Source: AA0mqf5jhzvf0bArQGolL6sb6ozCtzxAaLwhKN0FAZFcF+FPk/qrgENKUMKDXmcxaF/scLYE0uD9ig==
X-Received: by 2002:a2e:aa94:0:b0:277:871:5712 with SMTP id bj20-20020a2eaa94000000b0027708715712mr11815701ljb.129.1669387276333;
        Fri, 25 Nov 2022 06:41:16 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q21-20020a056512211500b00492dc29be7bsm548568lfr.227.2022.11.25.06.41.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 06:41:15 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: ste: align LED node names with dtschema
Date:   Fri, 25 Nov 2022 15:41:14 +0100
Message-Id: <20221125144114.476849-1-krzysztof.kozlowski@linaro.org>
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

The node names should be generic and DT schema expects certain pattern.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/ste-href.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/ste-href.dtsi b/arch/arm/boot/dts/ste-href.dtsi
index 8f1bb78fc1e4..e716121a78ce 100644
--- a/arch/arm/boot/dts/ste-href.dtsi
+++ b/arch/arm/boot/dts/ste-href.dtsi
@@ -92,20 +92,20 @@ lp5521@33 {
 				clock-mode = /bits/ 8 <2>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				chan@0 {
+				led@0 {
 					reg = <0>;
 					led-cur = /bits/ 8 <0x2f>;
 					max-cur = /bits/ 8 <0x5f>;
 					color = <LED_COLOR_ID_BLUE>;
 					linux,default-trigger = "heartbeat";
 				};
-				chan@1 {
+				led@1 {
 					reg = <1>;
 					led-cur = /bits/ 8 <0x2f>;
 					max-cur = /bits/ 8 <0x5f>;
 					color = <LED_COLOR_ID_BLUE>;
 				};
-				chan@2 {
+				led@2 {
 					reg = <2>;
 					led-cur = /bits/ 8 <0x2f>;
 					max-cur = /bits/ 8 <0x5f>;
@@ -119,19 +119,19 @@ lp5521@34 {
 				clock-mode = /bits/ 8 <2>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				chan@0 {
+				led@0 {
 					reg = <0>;
 					led-cur = /bits/ 8 <0x2f>;
 					max-cur = /bits/ 8 <0x5f>;
 					color = <LED_COLOR_ID_BLUE>;
 				};
-				chan@1 {
+				led@1 {
 					reg = <1>;
 					led-cur = /bits/ 8 <0x2f>;
 					max-cur = /bits/ 8 <0x5f>;
 					color = <LED_COLOR_ID_BLUE>;
 				};
-				chan@2 {
+				led@2 {
 					reg = <2>;
 					led-cur = /bits/ 8 <0x2f>;
 					max-cur = /bits/ 8 <0x5f>;
-- 
2.34.1

