Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F4936EA7AC
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 11:57:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230401AbjDUJ5m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 05:57:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231488AbjDUJ5k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 05:57:40 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26BBEAD05
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 02:57:39 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-507bdc5ca2aso2455836a12.3
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 02:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682071057; x=1684663057;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2sdrGRE8+WnATFy0L39mQj79u+T6Dn1Nw+JFSzAY4wU=;
        b=CVBrM28NPE/4FV5I8Q4d2i8LYorPHJKLVZl/sUMlU3vjEDvlL7D5GYNcRNn+JYCbT2
         z6z1E+6ggtW3SLxAjWU48p/As3g7MTxAlCjRkyhYTAb8m7/kWzDbe8enUPriPedPkf1V
         nCtJglssbHKwl+OEP16gVt/GL7YC6BSRL14W+2FIDuo+N7hR1vXG/Dn+zZWQ5DT8u/9C
         2Jweltuc0sQ6uHCnh802+AKtUENkOWRomiIM3nqO8UU7oqrqg+V1DsFNWO61wNBUL3mj
         jx1LoIDqsDIxT9k1v074HB/fqB5uzxNCiaBT8UfeYDPwUko/cn6MSwsxCdzsj5VJrBaA
         ZWsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682071057; x=1684663057;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2sdrGRE8+WnATFy0L39mQj79u+T6Dn1Nw+JFSzAY4wU=;
        b=cijyoTOwjM5M1p0EbVnkxhcR9oDN2tw/y0Gekre8QrToOKuEx1SLF17ZnKprEZJBGN
         qIKhowqc9Bi5MSZ7fr09Ar7gljl3fErnFCq73Z8tOR5HHFxHm7kvMKYE8PGf65qOxND3
         F/ThoYKN/3dpp9nwQZLFJGiB2vjd2aHcZ1JORxswxLWa8YvuN43TjQ4FUgfY9HQFz99I
         5haWrw7z21uiYmJ52Bl01p8zHctVjRtzTDAl6ugSnKWzrFOM1lIUxcp4zA2lTBmgsm9U
         YxLStb+fj1jeSJF0F0aigsvmKWftmQG3dIfQ2EgIY8ND/xGDC5W55a1EOi6fBCda0weD
         uKvw==
X-Gm-Message-State: AAQBX9eS8kW0WCq+xa4uvJ+Z0Ssq0snalpvVU4jr3tMO0i8DcZtAob7z
        q+IgZ0rhhZv8BQnjEk8JlsmKIw==
X-Google-Smtp-Source: AKy350YmcWp8tFwu5qt9suYWIaYyG/1BqynUl7SFPoNpPmFfp+HCZlqmYb6I+HuLn0jEMi6EyLmSgw==
X-Received: by 2002:a05:6402:ca:b0:506:8884:7f5 with SMTP id i10-20020a05640200ca00b00506888407f5mr4132743edu.41.1682071057681;
        Fri, 21 Apr 2023 02:57:37 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:668b:1e57:3caa:4d06])
        by smtp.gmail.com with ESMTPSA id f7-20020a05640214c700b004fa380a14e7sm1686062edx.77.2023.04.21.02.57.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 02:57:37 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     replicant@osuosl.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Bakker <xc-racer2@live.ca>,
        Pawel Chmiel <pawel.mikolaj.chmiel@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/4] ARM: dts: s5pv210: align USB node name with bindings
Date:   Fri, 21 Apr 2023 11:57:19 +0200
Message-Id: <20230421095721.31857-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230421095721.31857-1-krzysztof.kozlowski@linaro.org>
References: <20230421095721.31857-1-krzysztof.kozlowski@linaro.org>
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

Bindings expect USB HSOTG controller node to be named "usb":

  s5pv210-torbreck.dtb: hsotg@ec000000: $nodename:0: 'hsotg@ec000000' does not match '^usb(@.*)?'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/s5pv210.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
index cbc108217483..fbe7f3d17f41 100644
--- a/arch/arm/boot/dts/s5pv210.dtsi
+++ b/arch/arm/boot/dts/s5pv210.dtsi
@@ -401,7 +401,7 @@ sdhci3: mmc@eb300000 {
 			status = "disabled";
 		};
 
-		hsotg: hsotg@ec000000 {
+		hsotg: usb@ec000000 {
 			compatible = "samsung,s3c6400-hsotg";
 			reg = <0xec000000 0x20000>;
 			interrupt-parent = <&vic1>;
-- 
2.34.1

