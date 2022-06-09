Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78F77544ABD
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 13:43:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244404AbiFILmw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 07:42:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244495AbiFILmY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 07:42:24 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B75BA1ECD69
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 04:40:53 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id y19so46905033ejq.6
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 04:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ouHToTpfN91IdC1bQjCsmRZ9s0XMaKvgoUPDfBZdkoE=;
        b=MCGCVjufFqOOIqY2BmXcaAlOQZP/Mb+gEcACSVAlis2Z8u5cPYXb0vv1bolsxVRWIL
         6w8c7VAOzqydEgwsZrxcNAjPTgKFSWbtgFo5K/dU3ikxMhoSakVBi5ZsZVu88h6PZ8vV
         eKJFs1KM9Pric7/nas8TK64Mibp6DgyMO00AQS6rB5QI624a/23Ajww+GB6jBy3Z+464
         m3h1BxP0wtfBG6hxyUXwFl0qgLRXBJZ4O/hZ6axe/6wPj8C8SLqLPdRYU/5qLfc4LnRx
         pKqCTW5/szu1KTxaulfufe8/WxKqGAiDvLzN13ijGS245X3U28yqx5qxu8HiWnb3U8jz
         5YSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ouHToTpfN91IdC1bQjCsmRZ9s0XMaKvgoUPDfBZdkoE=;
        b=wa4bSJOnSk4NzQ1ca3DWzLobX32ODT33hxmjxXwlPYxT112aONdNwVVelSOkCu6113
         ghOi2nZtSmRzmBQPi24zsAunFTaJvyvscmcfXQ0eGzNE+q3lCy6zkrxCIZf4u7t4W51a
         jyeyr0XIQPeTwoHkNlQ0JZ0/pz6tcz0tsyg54KCkJGTEQesqFGrO762Rx7U6WU6Spn7X
         pF7id7F1O6VK6yJUDyqeUoqDuhtemIRUlgwrxZlk415Tyz8KGjzKVFBFfKL7mO7yMXf6
         qi4xZgkJQVcg0url2vn4XSueTkPsJeqJiZGykOKlh185N89VHhXUE7llvl3oj5QLm/XF
         kx9g==
X-Gm-Message-State: AOAM533cLCnV3JFrm2JeJQ2p3QrLq0zClvkILv6utE54c5wg/CBLmTXy
        FgH3+XQP7IWLtsSGP1EIKNpsfw==
X-Google-Smtp-Source: ABdhPJzz6M1UXqHNUIFcQq/P9/vNHhMGDrGeRXnd7+DWHIroLqIpwMzDeGqSSb7yKePjKhWbv85fhQ==
X-Received: by 2002:a17:907:3f97:b0:711:d61d:df9 with SMTP id hr23-20020a1709073f9700b00711d61d0df9mr16406402ejc.644.1654774852403;
        Thu, 09 Jun 2022 04:40:52 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id bk2-20020a170906b0c200b006fef557bb7asm10498662ejb.80.2022.06.09.04.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 04:40:52 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 40/48] ARM: dts: animeo: align gpio-key node names with dtschema
Date:   Thu,  9 Jun 2022 13:40:39 +0200
Message-Id: <20220609114047.380793-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
References: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The node names should be generic and DT schema expects certain pattern
(e.g. with key/button/switch).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/animeo_ip.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/animeo_ip.dts b/arch/arm/boot/dts/animeo_ip.dts
index 7da718abbd85..3fa3db2d9d02 100644
--- a/arch/arm/boot/dts/animeo_ip.dts
+++ b/arch/arm/boot/dts/animeo_ip.dts
@@ -168,26 +168,26 @@ tx_red {
 		};
 	};
 
-	gpio_keys {
+	gpio-keys {
 		compatible = "gpio-keys";
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		keyswitch_in {
+		key-switch-in {
 			label = "keyswitch_in";
 			gpios = <&pioB 1 GPIO_ACTIVE_HIGH>;
 			linux,code = <28>;
 			wakeup-source;
 		};
 
-		error_in {
+		key-error-in {
 			label = "error_in";
 			gpios = <&pioB 2 GPIO_ACTIVE_HIGH>;
 			linux,code = <29>;
 			wakeup-source;
 		};
 
-		btn {
+		key-s {
 			label = "btn";
 			gpios = <&pioC 23 GPIO_ACTIVE_HIGH>;
 			linux,code = <31>;
-- 
2.34.1

