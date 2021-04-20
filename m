Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1777F365DCB
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 18:50:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233344AbhDTQuo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 12:50:44 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:49841 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233266AbhDTQun (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 12:50:43 -0400
Received: from mail-ed1-f71.google.com ([209.85.208.71])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lYtZi-0003a2-Ug
        for devicetree@vger.kernel.org; Tue, 20 Apr 2021 16:50:11 +0000
Received: by mail-ed1-f71.google.com with SMTP id n18-20020a0564020612b02903853320059eso4422830edv.0
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 09:50:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Fn7WNZfjW0ssAzIaE1Bkd1jfIrVSqjALIl9VWkYNFrI=;
        b=ucW5+MtZHX23sK7oMlM+A02KGHrUEIOtsSTCWXVN5XREyhOru+HQ35dMk3v7sxXu8w
         XbsCZzasM9EZJ06tRsHIsoB6oLOyMLC8SgcvM41p5gbaNTmgV10eg7M2QBBZqaesugf3
         NNpX7x91eYch82fOCxJDVuL/ei2JdDJsPdVT+TuZ1uqAwlMqdRqhJ5Z6MEJuhczJSThQ
         peyHFJ4IKYnXr4mcDzUzW3gWrE+RilQzjuN0y6HnCa+KZkvjZG+V4rmGpvo4P0XjInZ+
         MJhubigwIwR7ZZ69HN0SagSlantbMR0PGGnUqF3vn+KDZq9CbWjcYhZ89/6heKkfbKvM
         GRCw==
X-Gm-Message-State: AOAM530b0cUq0v7s3FtswbjnXqXF1d6vbJ6PbgraTndZWQbbMkEbFki+
        K7H43uoQxDGTT0ioYwbj1jaB/EJ/kfxrsXVHgM/MSAPnSpOZDGEUzcwR5CRXAolXNfJpTF2KS82
        Q+d/9Kec+coug8ODAtXrx0sMPzl2crqkdsk6d25M=
X-Received: by 2002:a17:906:ecb8:: with SMTP id qh24mr29480540ejb.162.1618937410727;
        Tue, 20 Apr 2021 09:50:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzQSsSBBW1PF+n0XJ+szv31xF4/G4mzXij8EuyYawNnaIWsWmfuu6kMMnZ5Oveq3ByZm6pv8w==
X-Received: by 2002:a17:906:ecb8:: with SMTP id qh24mr29480531ejb.162.1618937410609;
        Tue, 20 Apr 2021 09:50:10 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-180-75.adslplus.ch. [188.155.180.75])
        by smtp.gmail.com with ESMTPSA id c12sm18252873edx.54.2021.04.20.09.50.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 09:50:09 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 10/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Odroid XU3/XU4 family
Date:   Tue, 20 Apr 2021 18:49:42 +0200
Message-Id: <20210420164943.11152-10-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
References: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RTC on S2MPS11 PMIC on Odroid XU3/XU4 family of boards can wakeup
the system from suspend to RAM.  Add a generic property for this.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index 6d690b1db099..e7958dbecfd2 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -512,6 +512,7 @@ pmic@66 {
 		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&s2mps11_irq>;
+		wakeup-source;
 
 		s2mps11_osc: clocks {
 			compatible = "samsung,s2mps11-clk";
-- 
2.25.1

