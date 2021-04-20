Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 082B5365DB8
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 18:50:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233247AbhDTQu2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 12:50:28 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:49801 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233227AbhDTQu1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 12:50:27 -0400
Received: from mail-ej1-f72.google.com ([209.85.218.72])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lYtZT-0003Vt-C8
        for devicetree@vger.kernel.org; Tue, 20 Apr 2021 16:49:55 +0000
Received: by mail-ej1-f72.google.com with SMTP id f15-20020a170906738fb029037c94426fffso5039743ejl.22
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 09:49:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Fj7Vif2aTzH3tZdsi6YgQzN1WxIkWtk37rnugc0OEF0=;
        b=C8brKVZlCVSkwMP3a0tMdjnkzhL4Xc/ticCTSOFQ9Nj0pnPT79euzoc1e1V2mxY4ld
         590hyM88ObKE3P4g64omeKuvhHh9yUmm1M6iUtk1hzzmfOAc4CvvmW/Df0GdaG7RfWRI
         N2+nvrXs6FdE6yNEGblHD5tLCAzppGJHvQRG1HUudHu+CgmZJ9riGFFrivsXZ3zJokk8
         cqRZbHAcGTUjbgZwaQv2XXqwI9dBL0pJK3aN8BKP6yMu+MoNvOOjM0tazhFC6E38QDLW
         fN4riGDprKmo0+CXI3focoXJKLG90QwAP0+BQpZhke/lrMtRyTn03Mn1+GygdMURh2x4
         2gcA==
X-Gm-Message-State: AOAM532pjck2yj+6vQpTfAy1PL82thtkl4q/f9Cxa8hXd9cG5DxfOFLS
        haqT5DROUC+yboJQ/+Ao6M1E5Ryq9NBsWhSFseaVWIWx+UXuFs3OEjFsMdP8lKaA0TJ24hBdJaN
        Wp6q5JtaPriSpN23St6bgFUdQ3s4nILYLavr7rVQ=
X-Received: by 2002:a17:906:b6c5:: with SMTP id ec5mr28557654ejb.290.1618937395091;
        Tue, 20 Apr 2021 09:49:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwSRr6NSrHQp8U2jeiaffvf8WYW9iKm2uFgtdWnQa2quGs+NQghxGhwm2wVUg9G15AZRlNR6Q==
X-Received: by 2002:a17:906:b6c5:: with SMTP id ec5mr28557643ejb.290.1618937394964;
        Tue, 20 Apr 2021 09:49:54 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-180-75.adslplus.ch. [188.155.180.75])
        by smtp.gmail.com with ESMTPSA id c12sm18252873edx.54.2021.04.20.09.49.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 09:49:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 04/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Odroid XU
Date:   Tue, 20 Apr 2021 18:49:36 +0200
Message-Id: <20210420164943.11152-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
References: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RTC on Maxim max77802 PMIC can wakeup the system from suspend to
RAM.  Add a generic property for this.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5410-odroidxu.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/exynos5410-odroidxu.dts b/arch/arm/boot/dts/exynos5410-odroidxu.dts
index 949c0721cdb4..884fef55836c 100644
--- a/arch/arm/boot/dts/exynos5410-odroidxu.dts
+++ b/arch/arm/boot/dts/exynos5410-odroidxu.dts
@@ -190,6 +190,7 @@ max77802: pmic@9 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&max77802_irq>, <&pmic_dvs_1>, <&pmic_dvs_2>,
 			    <&pmic_dvs_3>;
+		wakeup-source;
 		#clock-cells = <1>;
 
 		inl1-supply = <&buck5_reg>;
-- 
2.25.1

