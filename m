Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1493A365DBC
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 18:50:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233267AbhDTQuc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 12:50:32 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:49808 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233239AbhDTQua (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 12:50:30 -0400
Received: from mail-ej1-f70.google.com ([209.85.218.70])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lYtZV-0003WP-RE
        for devicetree@vger.kernel.org; Tue, 20 Apr 2021 16:49:57 +0000
Received: by mail-ej1-f70.google.com with SMTP id re9-20020a170906d8c9b029037ca22d6744so5008972ejb.0
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 09:49:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+QGIfs0xu2iWGBhjfxFAoqeLLE0TQoKKNcQGnUSArgQ=;
        b=JzFE89anGbQTajLl5WdQwmka/JhKoQfyvIfEo6M3pLIuqGws8uBm1AMvTwGSQh1WSv
         sEay2xS2uhJ55DX6NY5ZerMr6Q4jPWv7apFDjrpSfZKLh6F7A6sq2+/F2Ob8krLu/pZH
         KKWhxBSRUdNKS7e2JNXjlpmdnz3wjlyp8XQ4iMdfpS1VE+4ehxqYXac+Icpzv8rxRtip
         +15OfbUKky8RR/nZjbUCMIRUq/hBmpsn7zZrDpDyU1r2hQJ1ZbNAX8muNUsdGmJCKMhW
         OKLgFPCD90JxQgobkUl+wNySk3O2B7csguVL/6l4yxQoe+F4LSkNjUEO8GfzUHUgDqFP
         DTqw==
X-Gm-Message-State: AOAM530dIsm51sEnTFiE8jidJjAWmK25WHF/YnoZVZQBWDvdmRxcBcQN
        38I1+fSBecmvr6S5D1ks8j/LnNQF4fWc/c8CA3+q+LX5y3GhS3PcWaXQZTUq6vzYu4GpzCfHfgT
        Q1DU4RvrVMFfVJbz6/xVgRvikSSZtfmxBNtNGOKU=
X-Received: by 2002:a50:cc4b:: with SMTP id n11mr33958123edi.186.1618937397620;
        Tue, 20 Apr 2021 09:49:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzFpLXaO26NoPnHh4aEiGAmvUqWmrI333nb0Yo3aHX7WOiiVNvUBOWtMLlzw59fq5NlWZRiHQ==
X-Received: by 2002:a50:cc4b:: with SMTP id n11mr33958102edi.186.1618937397373;
        Tue, 20 Apr 2021 09:49:57 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-180-75.adslplus.ch. [188.155.180.75])
        by smtp.gmail.com with ESMTPSA id c12sm18252873edx.54.2021.04.20.09.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 09:49:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 05/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Midas
Date:   Tue, 20 Apr 2021 18:49:37 +0200
Message-Id: <20210420164943.11152-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
References: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RTC on Maxim max77686 PMIC can wakeup the system from suspend to
RAM.  Add a generic property for this.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos4412-midas.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/exynos4412-midas.dtsi b/arch/arm/boot/dts/exynos4412-midas.dtsi
index fc77c1bfd844..968c7943653e 100644
--- a/arch/arm/boot/dts/exynos4412-midas.dtsi
+++ b/arch/arm/boot/dts/exynos4412-midas.dtsi
@@ -668,6 +668,7 @@ max77686: pmic@9 {
 		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-0 = <&max77686_irq>;
 		pinctrl-names = "default";
+		wakeup-source;
 		reg = <0x09>;
 		#clock-cells = <1>;
 
-- 
2.25.1

