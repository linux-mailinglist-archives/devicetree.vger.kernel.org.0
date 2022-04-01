Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DF054EFB58
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 22:20:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232720AbiDAUVz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 16:21:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352106AbiDAUVW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 16:21:22 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AC96DD0
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 13:18:35 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id k124-20020a1ca182000000b0038c9cf6e2a6so2178019wme.0
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 13:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Te9hYO9YZcBZwbAvVyltxpv/8oWnq+ebPbFSU+ms3XE=;
        b=kYaQkzXlrUl/GeXdh2ja+IJnTXgTt9vr39v0ACWppltl2of4ARaWH5Sdc7lA6+G8It
         +1l+tqqE4lLFy52g4PSpAXb21P3P+gSKKhXzOKvU0v3PRLXcp+ICJ41tFTtSWrE4HfWJ
         P0hD5tgea7xJKJvZvAga4d01UQsjKxFQjeki4LGXOIQiq/F31eeUXBuiC2yMUiSkYf6Y
         g6SqEzI1Ara4MAPQZjfeU5HsuC0mhRc8gsr87BQ3a7FD1PEi3PWL8olqr+0Xoq6Gc+sm
         /7CbRNuW+5FojFEHQ7UVF/XjR5eLgd0mSmIw/qq6RAs0zfESJMC9N4k5awwaj3GznQ6M
         heGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Te9hYO9YZcBZwbAvVyltxpv/8oWnq+ebPbFSU+ms3XE=;
        b=JUzCoV1yty+sd7tct8i7nXFvrqrvh3Zxmapoal9uzEo2GHXAhSAW/DN2o0VUVcfQFU
         eKI7DSzzc37205NyS6GWTfku8d0Bj/DmhzQDE5ZcOGoGv3/UyiCUl/uS8RTKanlRR3wz
         IvehN/fTznuXZk8Tva7uPOHIP9HrLOCuBriv3WqGlLYaaK0xL/XgiJkEQh3ZLLwjcJqJ
         B+wO3efSQBjjCPT9i1eiNZFNiXbBNUK2r8GtRavAFsvv3eAcaMJiZ7GveDxHHSl7cQds
         ZN3x7HKXMr4Y13xEpGi5Hw+pgXhOMhZjU5jPBdTPYtnCOcOY+nXDZiNZbfC6mhzIntu9
         a4sw==
X-Gm-Message-State: AOAM532jAWadC1802bqw/gZeOGrtq0EhJ5NqJqT0fgjFLgKlIkI3Q43p
        MRIqMxgsXDtbGI22JohOLpnDoQ==
X-Google-Smtp-Source: ABdhPJxdHOjOzDXGrlocz4uXluHwgPsZ16qcP0nDaXk1Xo6D0gpcFlPR+Qz9YjXxabmjgLAGrxk/Fg==
X-Received: by 2002:a05:600c:510e:b0:38e:346f:8a46 with SMTP id o14-20020a05600c510e00b0038e346f8a46mr9870650wms.153.1648844313554;
        Fri, 01 Apr 2022 13:18:33 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 13:18:33 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 31/33] arm64: dts: rockchip: add rk3328 crypto node
Date:   Fri,  1 Apr 2022 20:18:02 +0000
Message-Id: <20220401201804.2867154-32-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

rk3328 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index b822533dc7f1..e83e0bf7e517 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1007,6 +1007,16 @@ gic: interrupt-controller@ff811000 {
 		      (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 	};
 
+	crypto: crypto@ff060000 {
+		compatible = "rockchip,rk3328-crypto";
+		reg = <0x0 0xff060000 0x0 0x4000>;
+		interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_CRYPTO_MST>, <&cru HCLK_CRYPTO_SLV>,
+			 <&cru SCLK_CRYPTO>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO>;
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3328-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.35.1

