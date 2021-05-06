Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9D0D375670
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 17:20:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235138AbhEFPVt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 11:21:49 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:41500 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235010AbhEFPVs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 11:21:48 -0400
Received: from mail-qk1-f197.google.com ([209.85.222.197])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lefo1-00037t-Ee
        for devicetree@vger.kernel.org; Thu, 06 May 2021 15:20:49 +0000
Received: by mail-qk1-f197.google.com with SMTP id e4-20020a37b5040000b02902df9a0070efso3677287qkf.18
        for <devicetree@vger.kernel.org>; Thu, 06 May 2021 08:20:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cQf4MjiqPeV3cfZrYpEWKZORZH0m9Y7Wed5/vpwhH/8=;
        b=e6X2vc1tXg18MavPDDoj8Q3APsX+7+czqVBZnluJwIoV6kY9xoKYqok9CHzJFS0+wa
         9TEvnQWKrVf2YLXiikGFLLbcIRND0N3yTvnQFpyi98RRT0hs7N2uhoItczU10/xjJl2I
         jctHew6ndTbydaQ5PKB1HK1uC5lFvna/ABosTehMPnNcvYnHIAlGtM31pxX7qlh6v3Tn
         1sKG+f5gWwhRPQD139UEDjjV/pUUclpsQMZpBJbnDUmOdgzRwO2oGvByiYrVLlwOlFHN
         nfOYQx9c3cgpXAR2YAj/qCGslGvj0iNtBySpvSASMdGFSdDcVw/X+BD+1Q4Oopy25FEx
         5ygw==
X-Gm-Message-State: AOAM533ruXLbyqLA+NE6piiQ13FI5hh9UukFKnbFiKpipo4cf3jtDHAT
        otR0DOlBWsM4VIkRyjDzKNk+Qr032KWdSr54pyTm6/61DugHn/fa02KWLuiyjEEHQAmYHNZBiD7
        DVUJ6qzJ2e7TYTqhLlEzAV7mZDDb5plA7OU2S3H8=
X-Received: by 2002:a37:6850:: with SMTP id d77mr4605620qkc.57.1620314448557;
        Thu, 06 May 2021 08:20:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwiaCcE9k/KLZzFM/F0Z3mcERK+7wGrNRw+WINMCIvWA+NLoEI5nNx/djusvRAdAwLVIH/T7g==
X-Received: by 2002:a37:6850:: with SMTP id d77mr4605603qkc.57.1620314448407;
        Thu, 06 May 2021 08:20:48 -0700 (PDT)
Received: from localhost.localdomain ([45.237.49.3])
        by smtp.gmail.com with ESMTPSA id 19sm2115882qkn.111.2021.05.06.08.20.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 08:20:47 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: s5pv210: remove unused Atmel touchscreen properties in Goni
Date:   Thu,  6 May 2021 11:20:44 -0400
Message-Id: <20210506152044.37579-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Atmel bindings and driver do not use custom properties like
x/y-size, burst length, threshold and so on.  The driver gets necessary
data from the device directly.  Remove unused properties to fix
dtbs_check warning:

  arch/arm/boot/dts/s5pv210-goni.dt.yaml: touchscreen@4a:
    'atmel,burst-length', 'atmel,orientation', 'atmel,threshold', 'atmel,x-line', 'atmel,x-size',
    'atmel,y-line', 'atmel,y-size' do not match any of the regexes

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/s5pv210-goni.dts | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm/boot/dts/s5pv210-goni.dts b/arch/arm/boot/dts/s5pv210-goni.dts
index 5c1e12d39747..c6f39147cb96 100644
--- a/arch/arm/boot/dts/s5pv210-goni.dts
+++ b/arch/arm/boot/dts/s5pv210-goni.dts
@@ -358,15 +358,6 @@ touchscreen@4a {
 		reg = <0x4a>;
 		interrupt-parent = <&gpj0>;
 		interrupts = <5 IRQ_TYPE_EDGE_FALLING>;
-
-		atmel,x-line = <17>;
-		atmel,y-line = <11>;
-		atmel,x-size = <800>;
-		atmel,y-size = <480>;
-		atmel,burst-length = <0x21>;
-		atmel,threshold = <0x28>;
-		atmel,orientation = <1>;
-
 		vdd-supply = <&tsp_reg>;
 	};
 };
-- 
2.25.1

