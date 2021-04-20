Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88DC8365DCC
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 18:50:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233357AbhDTQuo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 12:50:44 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:49838 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233344AbhDTQuk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 12:50:40 -0400
Received: from mail-ej1-f72.google.com ([209.85.218.72])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lYtZg-0003Ze-6y
        for devicetree@vger.kernel.org; Tue, 20 Apr 2021 16:50:08 +0000
Received: by mail-ej1-f72.google.com with SMTP id i10-20020a1709067a4ab029037c5dba8400so5057340ejo.8
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 09:50:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qfjGBaYEFblHkd553VwSn0+2ZqklK3J6fJwIYGGKLB0=;
        b=BxXjaqOE43y3b3/hov+qw9jHRkFv/ErwTGOrbuCkdAvFMYdQgHkyGk/Xny2m7wkD2n
         rXyOKY7Bup6X2tZOQtAgbWjWrwwk1JVmPieIb77qY9WtFKIRdJrI7sUyGikDxrKS3fch
         PzKmoHNr8CgxhCP+26663eFXYhHog7KGUAVdI8Cp8NuCFT41qJJcP3l7C3avws3ZOsGF
         w6vzstzVjChIamQAm1zzN/faNI4rFPZU97Ga3U8IME34LsQ96ogoOfTktGLVpxQ59qlI
         eWtSbgUXHtSkLjk9Cztqw+qEOlwyAog1nMrwIgdKffJQA7FP4tfsCaG04d2m3+04SL+u
         LOMg==
X-Gm-Message-State: AOAM531UcqWJw8MX9UZGm7YxcIMePBN4DN1x24Jk5KJ8nGCK2OT8jTkG
        3Dzicc7nqzFqwKaj2GAlMqmP8wxbjW6QTsNivsfNsrWQ56lf381IIR/cntJy3zh/yo6AU86U0Ci
        5Lf08QnuwXKeyn2aHTZtDN5WFwgQLQfB578CI1o4=
X-Received: by 2002:a17:907:78d0:: with SMTP id kv16mr28383295ejc.174.1618937407834;
        Tue, 20 Apr 2021 09:50:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzt3lRVGoh8cst179jB4h9NfUTzzv+DW0UzRFLMekwlH45M2Ca2I32/cl7/sLnXBL+g1VBbqQ==
X-Received: by 2002:a17:907:78d0:: with SMTP id kv16mr28383289ejc.174.1618937407728;
        Tue, 20 Apr 2021 09:50:07 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-180-75.adslplus.ch. [188.155.180.75])
        by smtp.gmail.com with ESMTPSA id c12sm18252873edx.54.2021.04.20.09.50.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 09:50:06 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 09/11] ARM: dts: exynos: enable PMIC wakeup from suspend on SMDK5420
Date:   Tue, 20 Apr 2021 18:49:41 +0200
Message-Id: <20210420164943.11152-9-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
References: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RTC on S2MPS11 PMIC can wakeup the system from suspend to RAM.
Add a generic property for this.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5420-smdk5420.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/exynos5420-smdk5420.dts b/arch/arm/boot/dts/exynos5420-smdk5420.dts
index d506da9fa661..a4f0e3ffedbd 100644
--- a/arch/arm/boot/dts/exynos5420-smdk5420.dts
+++ b/arch/arm/boot/dts/exynos5420-smdk5420.dts
@@ -132,6 +132,7 @@ &hsi2c_4 {
 	pmic@66 {
 		compatible = "samsung,s2mps11-pmic";
 		reg = <0x66>;
+		wakeup-source;
 
 		s2mps11_osc: clocks {
 			compatible = "samsung,s2mps11-clk";
-- 
2.25.1

