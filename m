Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52F0A365DC3
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 18:50:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233305AbhDTQuh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 12:50:37 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:49826 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233306AbhDTQug (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 12:50:36 -0400
Received: from mail-ed1-f70.google.com ([209.85.208.70])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lYtZc-0003YT-A9
        for devicetree@vger.kernel.org; Tue, 20 Apr 2021 16:50:04 +0000
Received: by mail-ed1-f70.google.com with SMTP id m18-20020a0564025112b0290378d2a266ebso13439529edd.15
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 09:50:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ox2bZeNVgpS1SkdFcOmweP3XNPduD7g1GALJyeZlfYk=;
        b=e+/7X2tR4PZ6r/y23tcXxDYNvOr9QvrYcg3izHWG7myMfvLAeS2XF0Pd2JCS/VEQhz
         VDPbV9hM4Qg7QDZDjzvi/ogDAStL2bc4ny/SLUOIS4SAekVwmLYtE+Gc13xGpV+ds9QG
         hfsKVIH2x+0QdHDPZr7oX8X27WD2MZHexwmT19QMDZFajmlfHCfk2rxOiOLd7oBdrqzV
         4SPHYie0DzqOEII7IDBVL8YAiwAMAe/9cJ9EsX+a1cXZ4blOnLXrIc4dnBGlmBBU4yOH
         txLkheOYA6f8q5EgEwOZSyvY9p6OCuBNHDICBzqZbuDOfyQR8WRBkWAcv69m7WeiZHKH
         H1iQ==
X-Gm-Message-State: AOAM531n5dTX3cuR8Xykl+edNmhVA7j/dNLs0ExJ5Ieto1T62RFO+5zn
        IZs1X22bNQAUYASP9mKkLMRlz65SASANxlVQqtl3g1bh7HeUy5AC1Fw6Gt9ZDk5R9FtJ2JzJIv1
        n+lMO3ikAEVBSbvlLWf60mT2NESoDq0ttpGwbKAc=
X-Received: by 2002:a17:906:4154:: with SMTP id l20mr28695052ejk.509.1618937404023;
        Tue, 20 Apr 2021 09:50:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy6d/waBt2sVLq9uOF/lRJOJSgWQN2YdHM4Z7ZbxFFY9PB7veMrUXGjUS9WeWx6EgSJnxtcVA==
X-Received: by 2002:a17:906:4154:: with SMTP id l20mr28695045ejk.509.1618937403896;
        Tue, 20 Apr 2021 09:50:03 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-180-75.adslplus.ch. [188.155.180.75])
        by smtp.gmail.com with ESMTPSA id c12sm18252873edx.54.2021.04.20.09.49.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 09:50:02 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 07/11] ARM: dts: exynos: enable PMIC wakeup from suspend on P4 Note
Date:   Tue, 20 Apr 2021 18:49:39 +0200
Message-Id: <20210420164943.11152-7-krzysztof.kozlowski@canonical.com>
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
 arch/arm/boot/dts/exynos4412-p4note.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/exynos4412-p4note.dtsi b/arch/arm/boot/dts/exynos4412-p4note.dtsi
index 9e750890edb8..22c3086e0076 100644
--- a/arch/arm/boot/dts/exynos4412-p4note.dtsi
+++ b/arch/arm/boot/dts/exynos4412-p4note.dtsi
@@ -325,6 +325,7 @@ max77686: pmic@9 {
 		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-0 = <&max77686_irq>;
 		pinctrl-names = "default";
+		wakeup-source;
 		reg = <0x09>;
 		#clock-cells = <1>;
 
-- 
2.25.1

