Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1215B373CEC
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 16:02:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233747AbhEEODW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 10:03:22 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:54841 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233710AbhEEODN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 10:03:13 -0400
Received: from mail-qk1-f200.google.com ([209.85.222.200])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1leI6S-0008T8-8a
        for devicetree@vger.kernel.org; Wed, 05 May 2021 14:02:16 +0000
Received: by mail-qk1-f200.google.com with SMTP id u9-20020a05620a4549b02902e956c2a3c8so1165095qkp.20
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 07:02:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Q9OdBSHulNH5gFLHkIOCDv8QntRXx2/eXhHIjzSoClg=;
        b=DLNWrny6ZF52Aa7ZDEg77kmkSAh8RUUfcKfCG8jg8YelCTzWEaIh+sO/IVVFiyWaXF
         TdB97xTcbm3zHCMB77HTQmsyjqFB7xPqbflElM1kppjahe6f90gk6r560GeQ/iExJR6L
         Xmiwksjzw8loKSjT0kJz3pS4Y4U9jrhFn4j9yO/dTFyHpgzT77tW9CFZt1VB1dLcgEPe
         C4oy0faPY80h+91Hj4AhFS/TLxB6x0xtinxdMcUJGKe9PPlG6plAMCnRYMbDNWzfb/IA
         hlOtLiGcULsZt9M8cWeeBEivdk+IvX2/oCBWAetQSnS6ICyhU3WjKeFblJFdWNcTob5S
         /Izw==
X-Gm-Message-State: AOAM530XOgKNxdG10J0+QXLukolSVtgcJzMEz4yWSuT2QnIYtvDU12LD
        /kafSkZlPHJ45DgEESD3/NB/E/uu8//pbRZjdL9lfvB4IuCc+/oydHl+5ny3ZevHqrUhOyc4Ld0
        ABJgmJsRAPJRzbywXeef1MLilQjc4f+dRn4IWHJQ=
X-Received: by 2002:a05:620a:2081:: with SMTP id e1mr18232291qka.44.1620223335448;
        Wed, 05 May 2021 07:02:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwFRA7bKadLLvqEd32kd6vTBdINVWvP6c1I10p6p624rchszik9cN6XscoMa8hghI9bn7rsqQ==
X-Received: by 2002:a05:620a:2081:: with SMTP id e1mr18232273qka.44.1620223335283;
        Wed, 05 May 2021 07:02:15 -0700 (PDT)
Received: from localhost.localdomain ([45.237.49.2])
        by smtp.gmail.com with ESMTPSA id 97sm5016632qte.20.2021.05.05.07.02.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 07:02:14 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] ARM: dts: exynos: fix PWM LED max brightness on Odroid HC1
Date:   Wed,  5 May 2021 09:59:40 -0400
Message-Id: <20210505135941.59898-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210505135941.59898-1-krzysztof.kozlowski@canonical.com>
References: <20210505135941.59898-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is no "max_brightness" property as pointed out by dtschema:

  arch/arm/boot/dts/exynos5422-odroidhc1.dt.yaml: led-controller: led-1: 'max-brightness' is a required property

Fixes: 1ac49427b566 ("ARM: dts: exynos: Add support for Hardkernel's Odroid HC1 board")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5422-odroidhc1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos5422-odroidhc1.dts b/arch/arm/boot/dts/exynos5422-odroidhc1.dts
index 20c222b33f98..d91f7fa2cf80 100644
--- a/arch/arm/boot/dts/exynos5422-odroidhc1.dts
+++ b/arch/arm/boot/dts/exynos5422-odroidhc1.dts
@@ -22,7 +22,7 @@ led-1 {
 			label = "blue:heartbeat";
 			pwms = <&pwm 2 2000000 0>;
 			pwm-names = "pwm2";
-			max_brightness = <255>;
+			max-brightness = <255>;
 			linux,default-trigger = "heartbeat";
 		};
 	};
-- 
2.25.1

