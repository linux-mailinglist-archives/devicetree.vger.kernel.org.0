Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCBD453FB5C
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 12:34:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236617AbiFGKeI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 06:34:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241085AbiFGKeD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 06:34:03 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5963666683
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 03:33:59 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id w27so22346899edl.7
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 03:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=u0O6Mf/UrJOEwrZeCEjj2knBSzB2PFx6iqji2ENZg2g=;
        b=IwaL9rxfFfdPgnr716/ClY4yXQUUDH+uGY2IGB7VYY4T6TmoZ9e3dj41Pf3yv+UH30
         6GxlHtJohRz8MIjhHcA96j8p6DHYgRQamw2QqKo9R3otjgIF+F4TbIyQUWtobrbhk82I
         TWFHf8z20fnuPgDEyb7UnQU8J3horlfb8lt/l4ajrLq/6Ra42wfSNfrDqe1bE4BAKKNQ
         emqvW4/GRdXQQZDW9hCKQEGifgsONTnUxg2rE1jQQWYOgj+mZtsabKoYJPdYlxLDNC+7
         OqiOjNsCQX7ioLA89ptRvowvloU3F1siqN+wQdOlIMvucfQddlmx7CHKhmJLbFdB2VU5
         MyrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=u0O6Mf/UrJOEwrZeCEjj2knBSzB2PFx6iqji2ENZg2g=;
        b=rIS34C4WvYl6UGlX+68GAS5cZ6vmrV/aSi7HN0dQ8yD+P9cbBrqcbnvyYhr2y2gulr
         grxEfnVkC4VQC0JeoHtIhtsHfWEd1ASa1ogxb8xAsmpTfR4azBT6pgkTO9ugbX5iu+QT
         3ZcWF+bjE0D0HLqth/JwPikuKA5nou1X59D7DybyDRJvyIcY9u/gIaq4bXfgfPEbT8FI
         Q6H5iQw9gUc2h3y3DKwo9p2yADA7byHy0S+VE/1IBpJaFrHtn9MieLU5Uo5yb5KZZxEU
         Pfnx2K3glb1Sun5W/9Tvf36d6bcrpQ9bvUO+J/I6EbMErkA5ED+dn9BmfRSM7bfRMEdT
         u97g==
X-Gm-Message-State: AOAM532SO/TYRFobKfco8HBk33eTmIQhv18kQOZ6Xm4O5hphMG6kmMMd
        bDjE7vacu3V9yovnBXAEw3Te5g==
X-Google-Smtp-Source: ABdhPJwKvkIDwyyhRdK6kIRYwjZd0OU/0w4Gl5DsX+c1Rallj5Buyt2b3KcIY8pvxUpT9+V6ZnSKKw==
X-Received: by 2002:a05:6402:34d6:b0:42e:2a6a:5dc4 with SMTP id w22-20020a05640234d600b0042e2a6a5dc4mr25257043edc.361.1654598038899;
        Tue, 07 Jun 2022 03:33:58 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id x4-20020a1709065ac400b00704fa2748ffsm7505359ejs.99.2022.06.07.03.33.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 03:33:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 09/10] arm64: dts: qcom: sc7280-herobrine: add function to LED node
Date:   Tue,  7 Jun 2022 12:29:30 +0200
Message-Id: <20220607102931.102805-9-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220607102931.102805-1-krzysztof.kozlowski@linaro.org>
References: <20220607102931.102805-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add common LED property - the function - to LED node.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 9cb1bc8ed6b5..b5e31d908938 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -15,6 +15,7 @@
 
 #include <dt-bindings/input/gpio-keys.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
 
 #include "sc7280-qcard.dtsi"
 #include "sc7280-chrome-common.dtsi"
@@ -301,6 +302,7 @@ pwmleds {
 		keyboard_backlight: keyboard-backlight {
 			status = "disabled";
 			label = "cros_ec::kbd_backlight";
+			function = LED_FUNCTION_KBD_BACKLIGHT;
 			pwms = <&cros_ec_pwm 0>;
 			max-brightness = <1023>;
 		};
-- 
2.34.1

