Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0FD5638C88
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 15:42:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230169AbiKYOmf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 09:42:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230172AbiKYOmC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 09:42:02 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C1BC4386F
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:42 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id a29so7205117lfj.9
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oT9bhK87PoOgc+UQN81Jxh3OJPRzTWLz+k1QQ++u5DM=;
        b=DGDj3a00luO5QD/2oq3vZVkAXSYF+M3uDqGG/5wG5ZOk4BHFJ/F61KE+o06ObuZ+mO
         9LGoMDia8S/pBPet9RvexMAxvHa3HE+HTxmKPP3wkA6zfJCxTBialemKCYxRTB3jb6la
         WgoxJdLwDgeX6Vp3gaJfqZXEIdGuaYnJch61IoPMzE+785dtXi285w9SWfFFYyaywXtj
         DUEW38nVprTLsSeaaHVMJDHF6jsSiQ8hBYRaVa+PqlmGA4V4SGQn9wX4JMMZYVf18oP5
         iZq1MHuBlNtrRWL1HNh0Gz/Q5+yvoggPqOE2U79e+4egkJiuAzEuw3MIl7lq8OdBNhmE
         R1mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oT9bhK87PoOgc+UQN81Jxh3OJPRzTWLz+k1QQ++u5DM=;
        b=GAhpga6hKBn/NzM7d8LUc4ZAlsK6MVEbw3KR1CqIuVAikA60VKiytdjpTfBf/3kmG3
         oL2X0bx6HDb4HjsVMOSPRlhmnfjJaCzCSHIaWrr/uH/oV1eYvGWISxgBZx2OjRnJNFTn
         kjIC86+kMxegY4rKpgzLPkRLMaGOQ5gS+9ELu2nY2+bnP0IDImPoV6rBqpndL03wUQ9B
         6o+5fIVFw5dxnHd3Y7ijnp4T378dmR5td2Qp77tlMyx171e9t6RF5LfuMl8i8Y/55aMG
         sS484BsSBAuWn+1W2JX9ZhhZyYT3He4gV/n9Zijq3h/mPFtOdzQJFBca58uTf7rxIn8e
         IzXA==
X-Gm-Message-State: ANoB5pndRw2k7IqC5258Ut3WuRFIsrJfjP6hrAKiGnqK04ZQOJm0xiha
        D03mb5Otj0EMSpA5rUYtYnuhJA==
X-Google-Smtp-Source: AA0mqf78JuJ3NaKsrAsCue8KFCzbl6OQek5fgSU+nZXWnFtNz5bZklzf7SZcA3XKLYSMmFMkma21Fw==
X-Received: by 2002:a05:6512:238d:b0:4ad:5f5c:2b31 with SMTP id c13-20020a056512238d00b004ad5f5c2b31mr12320259lfv.422.1669387299753;
        Fri, 25 Nov 2022 06:41:39 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id x13-20020a056512078d00b004aac3944314sm549069lfr.249.2022.11.25.06.41.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 06:41:39 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: mediatek: align LED node names with dtschema
Date:   Fri, 25 Nov 2022 15:41:38 +0100
Message-Id: <20221125144138.477198-1-krzysztof.kozlowski@linaro.org>
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

The node names should be generic and DT schema expects certain pattern:

  mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dtb: pwmleds: 'keyboard-backlight' does not match any of the regexes: '^led(-[0-9a-f]+)?$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
index dec11a4eb59e..77b96ddf648e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
@@ -13,7 +13,7 @@ / {
 
 	pwmleds {
 		compatible = "pwm-leds";
-		keyboard_backlight: keyboard-backlight {
+		keyboard_backlight: led-0 {
 			label = "cros_ec::kbd_backlight";
 			pwms = <&cros_ec_pwm 0>;
 			max-brightness = <1023>;
-- 
2.34.1

