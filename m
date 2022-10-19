Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D39E604DB6
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 18:48:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229714AbiJSQsJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 12:48:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbiJSQsI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 12:48:08 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86E7F1C5A4A
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 09:48:07 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id r17so41335420eja.7
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 09:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NPE1WLTtmzYEcWs1OXz6Ce7ZBqPhhjbzmP6J9QZciy0=;
        b=G4GNgHZftQkToFnlexhVY1LW6r7JEdJwDvyl+5e5xD584J/U05N+4MlSp4m4jcjFiu
         uulqP11i+wDg4uc+ZJ+llJKgLAOc60GuWbf45VOUO0xB+WRQ2KOJVm7RIEDU6J7tS7Jq
         GpFSaim3gozuh9F+DHlm84+OaxzrQmt5oi3skTA7eB8MkBOo9mcmy3vfYBNkqX/mxhjp
         6NLQiXfsDF8vICoTYuZX/bZp57LmCfVoMU/TKTMe/Q1tg1JVYn50+pGGdtns8BFIm4Gs
         AhbhvBSV5EIqtZpC2ggv1FXxpp/D6Cq4ANx/KORaqFQkdktIo3WLB4OkoU/x0FskVZ4N
         JOtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NPE1WLTtmzYEcWs1OXz6Ce7ZBqPhhjbzmP6J9QZciy0=;
        b=Z8U0HMJHg4GGaxl8qTADY07Cn20kh5jiXQ0Vlh9fsI9s2b2+jUONcvqdr+X5I4C7SZ
         XFqKym5EUezPodXue+Ns5XZXYQ/FghsBfQdBKGkbIOYOn0FG5GjZy3bWo1SLjIIDDbEf
         9+dbweJaIm0wJsCDCQhci1gy4JGkT5qVRK6MqCtZPKdB9PzvxFk09bcvwcoEP13MX2B8
         NJuygNmU9U7kOLJO1Und8ixm5owYsyQ1JmaHIIBasNLvmxlAp5t8F3jXWd/FZQZmM2cU
         lnNZ3xeAFpY1N68d4DjaWVpW9TZ/45g40LJKJiBOhhvqeWLImhJAiXoNaQwfmP2m+PAB
         7HSw==
X-Gm-Message-State: ACrzQf1/nitZzZeuUJz6BI4zSxNQ90XGj8GIgEj2h1+Nzot9RoE9bKSb
        WlOKUoDYE/Hq3x/FLnbYT/k=
X-Google-Smtp-Source: AMsMyM4gcob5NLEjLSha74eHg1JG59rPuxxKsjcpE7czaRcravYnSuNImb81uyqqn4ivI9zUWCupNg==
X-Received: by 2002:a17:906:9746:b0:78e:11cc:3bb3 with SMTP id o6-20020a170906974600b0078e11cc3bb3mr7583026ejy.379.1666198086046;
        Wed, 19 Oct 2022 09:48:06 -0700 (PDT)
Received: from deskilmich.example.net (2-236-113-220.ip233.fastwebnet.it. [2.236.113.220])
        by smtp.gmail.com with ESMTPSA id rp7-20020a170906d96700b00730bfe6adc4sm9209984ejb.37.2022.10.19.09.48.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Oct 2022 09:48:05 -0700 (PDT)
Date:   Wed, 19 Oct 2022 18:47:02 +0200
From:   Michele =?iso-8859-1?Q?Zuccal=E0?= <ardutu@gmail.com>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] arm: dts: rockchip: add crypto node for RK322x
Message-ID: <Y1AqBnPSyu7PpiwP@deskilmich.example.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The cryptographic hardware of the rk322x is compatible with the one present in the rk3288.

Add the respective node to the device tree.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Michele Zuccalà <ardutu@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index ffc16d6b9..b381fc2a0 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -132,6 +132,17 @@ display_subsystem: display-subsystem {
 		ports = <&vop_out>;
 	};
 
+	crypto: crypto@100a0000 {
+		compatible = "rockchip,rk3288-crypto";
+		reg = <0x100a0000 0x4000>;
+		interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_M_CRYPTO>, <&cru HCLK_S_CRYPTO>,
+			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC>;
+		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
+		resets = <&cru SRST_CRYPTO>;
+		reset-names = "crypto-rst";
+	};
+
 	i2s1: i2s1@100b0000 {
 		compatible = "rockchip,rk3228-i2s", "rockchip,rk3066-i2s";
 		reg = <0x100b0000 0x4000>;
-- 
2.35.3

