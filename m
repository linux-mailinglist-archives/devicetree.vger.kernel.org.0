Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7D9054D695
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:58:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350364AbiFPAzn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:55:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350086AbiFPAzM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:55:12 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0772F580F9
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:38 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id v17-20020a17090a899100b001ead067eaf9so401250pjn.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CXB5XzjU8LfwcLqwKO65LrYsijml7F+eyLiUznyo7HA=;
        b=VGry34Lsq0AAS5nS8T6G1tLJmFhnHD7ECJLqZEOUaJy7QdnDMbPqUOUZY6b0P6If+x
         3Uol647tBlTWP6/ZisPA7IHqknVh+L9peADwDRasaWhMrymZ41xMQwCp6s3Y4WwGB5pG
         Ds/a0MWQIUGMskAyAgZW3yACJAm/N0IzCY2sK5fuOPhKxxqhXCucmeW2oGgcCCuy8BxZ
         z+xri6fR8xTTHBaWhZj6XAfXbG8wl4u/ET6YjeKflaW24AurN7ZA/63448M5zw62FM3j
         +mRfFSzgTFX2ghXYud3l1uu4BGvm2tF6mzs61wuv5+waU2zF0CTi0+D8HNccvczicN5y
         e/qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CXB5XzjU8LfwcLqwKO65LrYsijml7F+eyLiUznyo7HA=;
        b=D5/9EVXSgMzlwK/Q3lP04rGX1wCYKo/ciNcuiuULRgM2e0fV/1Slo/8Rs0LH6KhshS
         5dcynGWmLqSXyZlixjkWzYHM+m0puWLdH9fOxeFEYuX9azHXSJnLrZk3HUEjkYxvE9iJ
         Lh1q8E0A7wzDR67dxpDeT3h/KffonUTEahZcdKWImz+nngxIwkrvOul0mpoolD5xz9Wy
         k/9Z5XLrpx3oCk2Qe7T8McrdO3mbba8quZffdsWDsMpEe6zGsdDfEv7EOnSAEIY3n5cz
         WEWic6So1esq6tCf9VekA7fr5L0K1SKB6E8W/AYfL09GE0LMIUonVeszrl5PkzCwdlka
         O+1w==
X-Gm-Message-State: AJIora+YD9epFySVVN0aM+zeUSjfjLV7ZprLnxo8yhKyVnxc6LGTNDBV
        K0MsT09LLvXnclyX5osrQcDYNQ==
X-Google-Smtp-Source: AGRyM1tTJuVv6wY6oC6Dqloj1ueiXM7oVUn01PuF4hqwTjmcDmQnxyteBUfMI5SU0Y3/qkOFQiy+jw==
X-Received: by 2002:a17:902:f54c:b0:163:f64a:612c with SMTP id h12-20020a170902f54c00b00163f64a612cmr2228151plf.22.1655340876407;
        Wed, 15 Jun 2022 17:54:36 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016760c06b76sm233660pll.194.2022.06.15.17.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 17:54:36 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 28/40] ARM: dts: rockchip: rk3288-tinker: correct gpio-keys properties
Date:   Wed, 15 Jun 2022 17:53:21 -0700
Message-Id: <20220616005333.18491-28-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
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

gpio-keys children do not use unit addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/rk3288-tinker.dtsi | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 9c1e38c54eae..09618bb7d872 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -26,14 +26,12 @@ ext_gmac: external-gmac-clock {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		autorepeat;
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwrbtn>;
 
-		button@0 {
+		button {
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_POWER>;
 			label = "GPIO Key Power";
-- 
2.34.1

