Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87AC475DE73
	for <lists+devicetree@lfdr.de>; Sat, 22 Jul 2023 22:16:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229846AbjGVUQ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Jul 2023 16:16:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229804AbjGVUQ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Jul 2023 16:16:28 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 744BF1FDF
        for <devicetree@vger.kernel.org>; Sat, 22 Jul 2023 13:16:25 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-997c4107d62so444803666b.0
        for <devicetree@vger.kernel.org>; Sat, 22 Jul 2023 13:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690056984; x=1690661784;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=22S5ZsP6aUTYCVscJMLeCJZnNpGh+kjGFevs0ee9dAQ=;
        b=GdcIopZT1Ubb31DIRUvWziH+QEzLqJ4k7y+f0FizH8694GYdyRgSIJwOEKvs4LRpfE
         YfTqsXZ85xiH6OhczhfMyk5KsspNBGeVrYu8T7kZKgk4vO3TZRqqus8it86ge9kP9/ls
         +xxT2tji7cwqDFc/GGXUTN1TCU6Zgj3KMTAhxp6vLSwN43cbbCXUWrN8/dC9jfgKxfut
         ZPouIIvSVy34tHK6RI7gE9a3ZR5AamMT8unk5oDe9jgcMpYA6hBe2mm+yJhQ2vmDi+g0
         HWyfoglWlXjRZHC4BCeFtShHyoJNuFgSNvIVD0YIRiPYC9yVOLDoDBr0tPt0WsJ56weo
         VPNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690056984; x=1690661784;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=22S5ZsP6aUTYCVscJMLeCJZnNpGh+kjGFevs0ee9dAQ=;
        b=ZigZ+i1qgYIEckUWY7nQytifdCDfoxDfoEnLPZwfv6VuzGpoyFEGNj64my7XV/Psyi
         +u7rAg6eolKelWykPXd77H0IvWTEpIpXW8IjLLwHGYqlgnw6f5wBhILSPvGyALaji7Af
         iTEQt+1RMDZ5I6TgHaUXGuX1L/lRROmgEXRJX4B0E3kyG0HBo7IIYdvj3+JmYoE2h1ym
         asx2lPMs/HjXyBx9mp6n+wlDM+t77sWsFaxxe9hfA+1jOoeISJ4p+PzEuPPf9nHU07yE
         lFIgqtKDRIJMRmN/5PLcowKpWBLtFVTxiVHqEpoUm1S3wKLkHXw1QGY9chvEvnEahLRs
         pcQQ==
X-Gm-Message-State: ABy/qLbh0DighqssIb17ngx3RYQP6H5me6yZZyGYsk0Ii9v7PR9vYvdW
        XzjI501NtlIUKR3NzvoscEoCdg==
X-Google-Smtp-Source: APBJJlHjpnxaktmWMV8dpQg70mraF0bMrm6rPEWeHLNPmD8JLn1qYm8w2zLqN9IGXe2PwpZRYF+9og==
X-Received: by 2002:a17:906:10cd:b0:982:cfe2:32fe with SMTP id v13-20020a17090610cd00b00982cfe232femr4903374ejv.63.1690056983603;
        Sat, 22 Jul 2023 13:16:23 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id p26-20020a170906a01a00b00992f81122e1sm3951920ejy.21.2023.07.22.13.16.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Jul 2023 13:16:23 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: usb: samsung-hsotg: remove bindings already part of dwc2
Date:   Sat, 22 Jul 2023 22:16:20 +0200
Message-Id: <20230722201620.35489-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

samsung,s3c6400-hsotg compatible is already fully covered in dwc2.yaml
bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/usb/samsung-hsotg.txt | 38 -------------------
 1 file changed, 38 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/usb/samsung-hsotg.txt

diff --git a/Documentation/devicetree/bindings/usb/samsung-hsotg.txt b/Documentation/devicetree/bindings/usb/samsung-hsotg.txt
deleted file mode 100644
index 0388634598ce..000000000000
--- a/Documentation/devicetree/bindings/usb/samsung-hsotg.txt
+++ /dev/null
@@ -1,38 +0,0 @@
-Samsung High Speed USB OTG controller
------------------------------
-
-The Samsung HSOTG IP can be found on Samsung SoCs, from S3C6400 onwards.
-It gives functionality of OTG-compliant USB 2.0 host and device with
-support for USB 2.0 high-speed (480Mbps) and full-speed (12 Mbps)
-operation.
-
-Currently only device mode is supported.
-
-Binding details
------
-
-Required properties:
-- compatible: "samsung,s3c6400-hsotg" should be used for all currently
-    supported SoC,
-- interrupts: specifier of interrupt signal of interrupt controller,
-    according to bindings of interrupt controller,
-- clocks: contains an array of clock specifiers:
-    - first entry: OTG clock
-- clock-names: contains array of clock names:
-    - first entry: must be "otg"
-- vusb_d-supply: phandle to voltage regulator of digital section,
-- vusb_a-supply: phandle to voltage regulator of analog section.
-
-Example
------
-
-	hsotg@12480000 {
-		compatible = "samsung,s3c6400-hsotg";
-		reg = <0x12480000 0x20000>;
-		interrupts = <0 71 0>;
-		clocks = <&clock 305>;
-		clock-names = "otg";
-		vusb_d-supply = <&vusb_reg>;
-		vusb_a-supply = <&vusbdac_reg>;
-	};
-
-- 
2.34.1

