Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1EE974AB25
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 08:33:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231796AbjGGGdo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 02:33:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231691AbjGGGdm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 02:33:42 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6286B1FD8
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 23:33:41 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9939fbb7191so285123266b.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 23:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688711620; x=1691303620;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2gUQGEXg3NwnR1jgA5o6lKwJkp5ln8c5jv9qArkjhok=;
        b=sk8oCY0kkiy/wQ/T3PrdyQFle55qJrxLJxCZ13gyQrboPMWCk6ag5YJu24CBFoVacr
         E1FkxQTtKjBt5g4vZF9jTM4+MgIVlyTd64hzg21sNVcsIl62YD7WycredOLAT5i7L7If
         JTxIJmky9s2SSiiugSYOZVbgAVp9PlkQ0h6Slm7erVmqSxMTPkNvtCzufmFX+8UCHBkY
         qBG7dEUj9oHyRpcAFm5GbSMB2H673Cjbl6kWvdjfWNHKaXQFVPkK2urVkRfIuOV/ls28
         O034wkpRgYcMfqZ+fbyybp2R2I7/uyaBs2Ug1bVVPBFIFlpuEGAacghxN8nWmEMrhFUU
         NcnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688711620; x=1691303620;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2gUQGEXg3NwnR1jgA5o6lKwJkp5ln8c5jv9qArkjhok=;
        b=kjZOsIW0GhRFhrsNQg0YpJ85WJ44R1j1It6Ph9nBBpD2q5ajHjugOaWmhPqiAoe8gZ
         fpz3vUL6qSUBYAmVfPdCExco0RhdXzmgqNSQGhJzsHBs/7nQLzZDpyqJDPcQtHcCLQvG
         j7anIqA2XO3WDlXceXke0YqMs95h++ghH/hEONH08D3o1RlKUisD1GuQn2bnMykx1pQH
         BT4Edsbt4Eh7L2wRS4UbGajGaCfYg0xnrID7wKB1D1cCMrE+wHUNois9pEqSd0/hL/XL
         bO3ZshKVRSAXw5wlHayHTYBm/wbe7DFPwuIx0oXbya5EUZzpZrRcPhKdBbOjv1OYK29g
         l82Q==
X-Gm-Message-State: ABy/qLb1uEDf09tDjOo3SjQ5aE/Qq3/t4+pfj23Hfdf0+bCgYsJoobqJ
        BNIo1iktRtvA27agn1KMRxyw0Q==
X-Google-Smtp-Source: APBJJlH96voHWJqw+7toXEhMMh6gynJRIf12CWBLI1qv1yuI+YA1nsA1kJzUNcK9ofFPaNqH2e0hIQ==
X-Received: by 2002:a17:907:d15:b0:992:103c:43fa with SMTP id gn21-20020a1709070d1500b00992103c43famr7378130ejc.30.1688711619777;
        Thu, 06 Jul 2023 23:33:39 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id s24-20020a170906169800b0096f7500502csm1724803ejd.199.2023.07.06.23.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jul 2023 23:33:39 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v2 2/3] arm64: dts: rockchip: correct wifi interrupt flag in Rock Pi 4B
Date:   Fri,  7 Jul 2023 08:33:34 +0200
Message-Id: <20230707063335.13317-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230707063335.13317-1-krzysztof.kozlowski@linaro.org>
References: <20230707063335.13317-1-krzysztof.kozlowski@linaro.org>
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

GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
These are simple defines so they could be used in DTS but they will not
have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.

Correct the interrupt flags, assuming the author of the code wanted same
logical behavior behind the name "ACTIVE_xxx", this is:
  ACTIVE_HIGH  => IRQ_TYPE_LEVEL_HIGH

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Christopher Obbard <chris.obbard@collabora.com>

---

Changes in v2:
1. Correct subject and commit msg (active low -> high)
2. Add Tb tag
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
index cec3b7b1b947..8a17c1eaae15 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
@@ -31,7 +31,7 @@ brcmf: wifi@1 {
 		compatible = "brcm,bcm4329-fmac";
 		reg = <1>;
 		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "host-wake";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_host_wake_l>;
-- 
2.34.1

