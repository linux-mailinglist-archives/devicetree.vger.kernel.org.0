Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B2A1638C85
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 15:42:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230219AbiKYOmV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 09:42:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230238AbiKYOl7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 09:41:59 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27748429AB
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:38 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id j16so7172946lfe.12
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HIqedhY263uumnwVyOOhrtbKH4I7pBieIt5aXa4in8I=;
        b=rtCle6yXSQ1vc79vQfcEo7qSwkQJAaqu97WYmhx1iX+Tnj/GINRpXx5t5BjZ5SjT8A
         6OxZEd1mCf917izBaE7s4dM5w3/IMbtMK7rf8btUHiQf1lxlV5z652yDV5o8MphaD7L0
         1aD2Av7fkpUOHJV4BsAhA9NjCSfaXBumgJabTLlZKaX9TFJ6m+AZs6c4vbUyvW3pw2Xw
         9PC3xptehntMbVBlMmJRxeAPfnXgpmnZTNySYxnoPszFbAoMgeLsJH+tvOCqxlA6trIn
         wHOn2m//QtGboF6TDiD3DRwbmoJP3DdmRXgrwTtoWCjuhj6/VIorb9vhi+GnJV9GmI6y
         YjFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HIqedhY263uumnwVyOOhrtbKH4I7pBieIt5aXa4in8I=;
        b=UDLq0DVSLpelbPGu0mea/ZFVrQsil/S47SMJArbraIUe2qgjDnvyfmZXTvksJMptPA
         F9vK64PksFs4ow4XcZPlSrX2lYqgPb/EeSCXsgfiCIcoXPdI7OyhluZslC4um2+c4EH/
         Kgyz4E/UubHxVB1tm4iaQ68MT++VBZ+1LZ5ccGYj2sMfL1TRf+JsENkSTIWd+tETOIEE
         NEOxan/kBXVzQuqWLcZkByXf2diNRzgv8mcy4ZQ5yyOZ/cq6Xh8njvl7CKOEDSxCAlFf
         1gxQrZNdAQ0khKPynVNUxPTyxrsb/HjVbdKtir4xiB69uQpUvHfPJPGONaUkmDDrMHq0
         n+6Q==
X-Gm-Message-State: ANoB5pk+aOjmmHyBygiY8Z9ZAdYp1G8E1qSkHnrVfFsfx440bmcAo45g
        dZtjPKsCCgrFFX4N5deqBdjmTQ==
X-Google-Smtp-Source: AA0mqf72cxvboIAASK/RuclKKNxPm778/B5Antl3QBSn/POsWaypdmwLLblOtiUoMO96NMWHFNtmyQ==
X-Received: by 2002:ac2:4a6d:0:b0:4b1:5efe:895f with SMTP id q13-20020ac24a6d000000b004b15efe895fmr12343962lfp.337.1669387296527;
        Fri, 25 Nov 2022 06:41:36 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t9-20020a056512030900b00494618889c0sm551512lfp.42.2022.11.25.06.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 06:41:36 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: rockchip: rk3328: drop unused LED mode property
Date:   Fri, 25 Nov 2022 15:41:34 +0100
Message-Id: <20221125144135.477144-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

GPIO LEDs do not have a 'mode' property:

  rockchip/rk3328-roc-pc.dtb: leds: led-0: Unevaluated properties are not allowed ('mode' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index aa22a0c22265..5d5d9574088c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -96,7 +96,6 @@ power_led: led-0 {
 			linux,default-trigger = "heartbeat";
 			gpios = <&rk805 1 GPIO_ACTIVE_LOW>;
 			default-state = "on";
-			mode = <0x23>;
 		};
 
 		user_led: led-1 {
@@ -104,7 +103,6 @@ user_led: led-1 {
 			linux,default-trigger = "mmc1";
 			gpios = <&rk805 0 GPIO_ACTIVE_LOW>;
 			default-state = "off";
-			mode = <0x05>;
 		};
 	};
 };
-- 
2.34.1

