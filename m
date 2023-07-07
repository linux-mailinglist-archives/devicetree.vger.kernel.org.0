Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E703774AB27
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 08:33:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231833AbjGGGdp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 02:33:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231781AbjGGGdo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 02:33:44 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5C4D1FC9
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 23:33:42 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-51d7f4c1cfeso1976691a12.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 23:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688711621; x=1691303621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2rZJMXQqBbYtG35iaT5k3WfIhsJUmOKUvW8i0uD8NBI=;
        b=R6ZFDYFtiyI8QhUOPF6/ZqW8UzJswYZ0EN+ADhSd2YTyJsje3D0PZj3nDoKg+IU2g6
         oePk+WhsqDnjZIloNBJmSLMHqjTh7jSs/l2GuCbZETzeD4fx6VwJvnlNXfHHZ8GGPRsD
         5ICdV+l8u7Nf6IaA+Rsx6fDrSi/rctd28Y6urlyxFCJiagJlNi87Cr3wP6dis1J8wMc1
         eTAl9POvBZ3rb38PLgSDNFPh8k2X3OUDM+GRlL4FpHdIPiyxXES1wcNDdpM0Btn4wxCt
         QIB9RujK6e936OkZFLvYEedcYoGVRECEYmBhWA9J2y9lkb4N+5Iey2L4FSf/Pl1ycqFq
         inwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688711621; x=1691303621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2rZJMXQqBbYtG35iaT5k3WfIhsJUmOKUvW8i0uD8NBI=;
        b=TNPfU81uRKlqKSig9wJoG8DjxfsKVM5gOEbzubGXRS1IUtWW1SMxK1J3YRPYqQcGNC
         hMqaunZgFZ97IK96kZbDs9mPoOibgYRWAOymUXjWub99w0OJrPLMS4jOphleN+diJKFy
         7lV/K7PWr15BH8q/LmNHOLcxLyQL+JoHBiSIItrmNZpoRUR3vcpXt3JFAuJ5RvhmbNei
         vWRFf6SC6gGN/o6vCPQ4/WS8+eRFqkFTvl63v9Qk0cEohN2FYip6aXCsfRNgF+JfWz1Y
         14CiLiWPqdkLmZYZKHkXPonXlBQTmKKFhB3V+XFZzuo4PDGiQx3bV+tOVkmDCvlm+G7c
         JG0A==
X-Gm-Message-State: ABy/qLap29pGWMDZf810v2Eaxr14KMYcahPQiDw3+z4wRn6Gu6qIZ373
        +v12LIi0Q52ZL/91Ug2JvVKl4w==
X-Google-Smtp-Source: APBJJlFbgp3bzMYcY5DMSqClEkgQHsd57Rd5nfrMO9olrSVVPArWA9IWaAqP0FBML7kLKVnjeSzKyg==
X-Received: by 2002:a17:906:d7b1:b0:98e:1b9b:aef7 with SMTP id pk17-20020a170906d7b100b0098e1b9baef7mr2683392ejb.64.1688711621156;
        Thu, 06 Jul 2023 23:33:41 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id s24-20020a170906169800b0096f7500502csm1724803ejd.199.2023.07.06.23.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jul 2023 23:33:40 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH v2 3/3] arm64: dts: rockchip: correct wifi interrupt flag in Box Demo
Date:   Fri,  7 Jul 2023 08:33:35 +0200
Message-Id: <20230707063335.13317-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230707063335.13317-1-krzysztof.kozlowski@linaro.org>
References: <20230707063335.13317-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
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

---

Changes in v2:
1. Correct subject and commit msg (active low -> high)
---
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
index 322f3e809f15..0c18406e4c59 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
@@ -416,7 +416,7 @@ brcmf: wifi@1 {
 		compatible = "brcm,bcm4329-fmac";
 		reg = <1>;
 		interrupt-parent = <&gpio2>;
-		interrupts = <RK_PB2 GPIO_ACTIVE_HIGH>;
+		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "host-wake";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_host_wake_h>;
-- 
2.34.1

