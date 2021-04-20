Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6516365DC0
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 18:50:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233291AbhDTQud (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 12:50:33 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:49818 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233237AbhDTQuc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 12:50:32 -0400
Received: from mail-ej1-f71.google.com ([209.85.218.71])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lYtZY-0003Wr-2e
        for devicetree@vger.kernel.org; Tue, 20 Apr 2021 16:50:00 +0000
Received: by mail-ej1-f71.google.com with SMTP id r17-20020a1709069591b029037cf6a4a56dso5057763ejx.12
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 09:50:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SZDfcyCZwVylLX5TsAAAA/wUyySKv8eKHfB4MShW5ZM=;
        b=AoLEc9gYweqtLviQOH3EHcc68H1Qj9Pn8IUQkMR/U+n/1QaVaMHTvGQFg3GBGwfBUb
         e5E8LTlRVSRvaFfLUDR7y2F5gOPZIqn8N3uj+Dqq992hddvH4pnKRWzl9eNgzS5WhWQ+
         hMr7WN5U209C/3HfatSCEz9IcChjEIoecP3s4I1/yIwLvYLpKyv21TYsivcKAug9l9E/
         t4Ys6ZaEp1CWlE0OVqsgfEKW7/K55zncPb1kBmn3qKXcpwszmqBt/ROYrCpp6gKO1Ph1
         CDq45RYAnnerLLCbBFpJJoVAwc/tSf5fH/gYDcbxUSwDKD+HWVdogWpTHFO2mqej7WvI
         4vwg==
X-Gm-Message-State: AOAM531Fl1iVp7xLYBHvyiCo9zlhfoEURx9WTFXAfsOT7FtFyPi0rHD1
        9tF2C7HqDbfb8INT6uUcGSZ4u5ogFfHmPdzA4CBysoL2Ix68VM4HK+7PyOiX/l2b5ZMenyIEnL2
        LkN3WMlVhcH5iycA1silotlocEwReTesyBbAdvu4=
X-Received: by 2002:aa7:c7da:: with SMTP id o26mr33442343eds.244.1618937399814;
        Tue, 20 Apr 2021 09:49:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxvd13jGax0cMnNAZv3uD8tJgdViFUxJlK5G4XxKdlgdYp76PfhEquTOjft8MVprNuWSmmdKw==
X-Received: by 2002:aa7:c7da:: with SMTP id o26mr33442335eds.244.1618937399717;
        Tue, 20 Apr 2021 09:49:59 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-180-75.adslplus.ch. [188.155.180.75])
        by smtp.gmail.com with ESMTPSA id c12sm18252873edx.54.2021.04.20.09.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 09:49:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 06/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Odroid X/U3
Date:   Tue, 20 Apr 2021 18:49:38 +0200
Message-Id: <20210420164943.11152-6-krzysztof.kozlowski@canonical.com>
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
 arch/arm/boot/dts/exynos4412-odroid-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/exynos4412-odroid-common.dtsi b/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
index 5bd05866d7a3..5b1d4591b35c 100644
--- a/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
+++ b/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
@@ -282,6 +282,7 @@ max77686: pmic@9 {
 		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&max77686_irq>;
+		wakeup-source;
 		reg = <0x09>;
 		#clock-cells = <1>;
 
-- 
2.25.1

