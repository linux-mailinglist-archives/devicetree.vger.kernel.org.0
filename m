Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66971365DD0
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 18:51:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233393AbhDTQuv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 12:50:51 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:49849 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233367AbhDTQuq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 12:50:46 -0400
Received: from mail-ed1-f69.google.com ([209.85.208.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lYtZl-0003aZ-S5
        for devicetree@vger.kernel.org; Tue, 20 Apr 2021 16:50:13 +0000
Received: by mail-ed1-f69.google.com with SMTP id t11-20020aa7d4cb0000b0290382e868be07so13440439edr.20
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 09:50:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TqJ62+H3p8lMBv0o+qNlrq3mJGwE89Butuxlq5byZWw=;
        b=jZehZjrpfn67hqyVQ6Jl2J58lkH0bKQkaW3juOBg4TevQTqfjv3OexHGyhEjDHXAjF
         Wk/UVyukGZYP9XvpAYoZOKT37nqWue+lTb4ZNwSGtjC0EtgQT+Y54dhMAZz2IZswwJxz
         R8KqJUkmhLOAiGw+HqfORTa9tgWHXBAOOyujXonP06KCG1AvTELfvEdK3EZzb8NW9Ni5
         dAgvpvAW67cBpCzbc7WijWlJo0FxUbmrlAe8756eMmaGEu8SWP+PihlizKg9vcR9TZzK
         kSgTO2FkjQDANneaR/7rVOx086onX3lanCKhjGCmLzAzltZoPrWdpxrd3EfhfoxAQ4pc
         zTXw==
X-Gm-Message-State: AOAM532yglxrzuFVCGW0O0WCTk2Jw2UsOn2yTtTS9B2qZ9Y2Qdh/EoLj
        tFdOrrIwQwjuJZiKWpgQbB6l6k4FTW2qmsMM30d5Oh4Xb+/AVwynqDeZAZlrCdGPEOIzdzW4Ays
        SmhtJqA2pkj9drfTucJi9ObjU3lcG0rVb/0BOd0Y=
X-Received: by 2002:aa7:cd8b:: with SMTP id x11mr4729067edv.87.1618937413136;
        Tue, 20 Apr 2021 09:50:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxDDo9ukF3fqdtjY4XRoahPeCfemNkf0eD5yfTKHEHt5tiIkyXvhXPIhPPUxhSQBt2RR4Vnrg==
X-Received: by 2002:aa7:cd8b:: with SMTP id x11mr4729052edv.87.1618937412975;
        Tue, 20 Apr 2021 09:50:12 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-180-75.adslplus.ch. [188.155.180.75])
        by smtp.gmail.com with ESMTPSA id c12sm18252873edx.54.2021.04.20.09.50.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 09:50:12 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 11/11] arm64: dts: exynos: enable PMIC wakeup from suspend on TM2
Date:   Tue, 20 Apr 2021 18:49:43 +0200
Message-Id: <20210420164943.11152-11-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
References: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RTC on S2MPS13 PMIC can wakeup the system from suspend to RAM.
Add a generic property for this.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
index 773d9abe3a44..cbcc01a66aab 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
@@ -391,6 +391,7 @@ pmic@66 {
 		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
 		reg = <0x66>;
 		samsung,s2mps11-wrstbi-ground;
+		wakeup-source;
 
 		s2mps13_osc: clocks {
 			compatible = "samsung,s2mps13-clk";
-- 
2.25.1

