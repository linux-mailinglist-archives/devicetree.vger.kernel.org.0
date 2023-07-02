Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE55B744FFB
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 20:51:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230142AbjGBSvV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 14:51:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230120AbjGBSvU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 14:51:20 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAFD711F
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 11:51:14 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-51d7e8dd118so4652538a12.1
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 11:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688323873; x=1690915873;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kUArrzWup6JrvvSqAjaUzKmigM1dAz2lTPcX8aGzM1Q=;
        b=fuHuZrtq7Rk6ot6niUtMzmO0nFXuuu9bTnoZWakYg/huaE8jJypzI0y0WHUK3sBJkj
         I3dZgXoR7/Z1lykQxX0qwwfM13+D2CIY4tB2V18v3ORC6n6hdYee3+Okeo1AehVS+bIP
         BV8Tbf0pYz7iTXUsucHqeAZRJz1wSBIF/MqgOex08TJm4ZJEpcscgZFnUFZrF7NnBRnK
         dX8XMGiA7YI41cSKbEPFnFc6vPDSE4pj1Ql9ib6Esblb8fsoyrWbfexS9bCOp5gYskTn
         MAK6hysSLNUptwFJCoUauA2CqAUCuAV34FGgwPg03nUvf7kfRtIGsRIkKsWHGoKFjIa3
         9nYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688323873; x=1690915873;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kUArrzWup6JrvvSqAjaUzKmigM1dAz2lTPcX8aGzM1Q=;
        b=GmyOu2wDVg9iXvZ/ISiYp8LwPX0GkGDGG+W7veDa6uZ9ZLTeY0iA90TEsQaw7HY2th
         +6JnnJxgF4ZUKyX/ibIjDJjcNUzyytQp6NF+JAEsP4YUUtKXuf3FIMR4vX37VF7/J+3u
         o81p4klaf2nU4z/EXa3rFF5l9dkvasSDRVm3m3dZqaLcFNZqusykLs47w5mrmxTto6HE
         54yUfQ2QVGN8o/AHFAKzFMpQHE2kNVQDVNjAq6XVvz4gvIgK3wQMTcvj4IBTaz7c04n9
         m6Zmv9Rnokc1u5sR7w8IxTIvWj2e0savRkn7PPff16qhVvZ/VSOCpBnhoysWkBXTfn1I
         wDXA==
X-Gm-Message-State: ABy/qLa8PvrB9XpfKNYErXR+BuH45MQHKiCVH5AylPB2yq08Ww3LK9Ns
        WeoKYB7Fd9Yn3SzEfTXQxKh22w==
X-Google-Smtp-Source: APBJJlElY5BC7QKuuRUC0FQ8fzp0Wn5Oi3/6pmWrPZEp6ewUlyYHnh/Kj7odjoqAOAqVNGb0TqEQ2A==
X-Received: by 2002:aa7:c616:0:b0:51d:d2b9:54a0 with SMTP id h22-20020aa7c616000000b0051dd2b954a0mr5687792edq.2.1688323873297;
        Sun, 02 Jul 2023 11:51:13 -0700 (PDT)
Received: from krzk-bin.. ([217.169.179.6])
        by smtp.gmail.com with ESMTPSA id w15-20020a170906480f00b00992fafcb82fsm3121663ejq.24.2023.07.02.11.51.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 11:51:12 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Lars Povlsen <lars.povlsen@microchip.com>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Daniel Machon <daniel.machon@microchip.com>,
        UNGLinuxDriver@microchip.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ARM: dts: microchip: minor whitespace cleanup around '='
Date:   Sun,  2 Jul 2023 20:51:08 +0200
Message-Id: <20230702185108.43959-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230702185108.43959-1-krzysztof.kozlowski@linaro.org>
References: <20230702185108.43959-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/microchip/lan966x-pcb8290.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/microchip/lan966x-pcb8290.dts b/arch/arm/boot/dts/microchip/lan966x-pcb8290.dts
index 8804e8ba5370..3b7577e48b46 100644
--- a/arch/arm/boot/dts/microchip/lan966x-pcb8290.dts
+++ b/arch/arm/boot/dts/microchip/lan966x-pcb8290.dts
@@ -28,7 +28,7 @@ &aes {
 &gpio {
 	miim_a_pins: mdio-pins {
 		/* MDC, MDIO */
-		pins =  "GPIO_28", "GPIO_29";
+		pins = "GPIO_28", "GPIO_29";
 		function = "miim_a";
 	};
 
-- 
2.34.1

