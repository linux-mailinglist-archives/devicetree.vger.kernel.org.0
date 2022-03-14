Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD03B4D8BA5
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 19:20:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243745AbiCNSV0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 14:21:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243742AbiCNSVZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 14:21:25 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89C8F35DE9
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 11:20:15 -0700 (PDT)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9C73D407F2
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 18:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647282013;
        bh=XM2s1gZCmvaiMC5hvavtavOjROhOMhICf68KJhjCzDk=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=WjrhbdT84DwLi29gzhwugjsMVHF06Hh6hLevicjaY0xi0IIR0OH9VnoBJE1o9c+BS
         PkVY91g61JDzuxCcbMAW2eApO0HplRmusYeQrCxc75kauldkqdGTdUARR+pR7i6spW
         WEErprheQq6cxmMocuqGQb+vR+tnDALl8erTpWUWPUKjlHnJ0I/A1lZc6sgj//sgSa
         9E/y5sH986mOkpJQBCFYYWpdCQu1QkjUjUk1edNgXiluPoBuRkukeyRSquoG9R63Qm
         fUw4+oLwG4iAwPSpdDJZG3okUoRnJ8OC5zoUEPLQfekXeuNs8KHVmLJw1U3du9ZhwU
         fn67kOQOxcURw==
Received: by mail-ed1-f71.google.com with SMTP id l14-20020aa7cace000000b003f7f8e1cbbdso9223516edt.20
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 11:20:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XM2s1gZCmvaiMC5hvavtavOjROhOMhICf68KJhjCzDk=;
        b=DJhDW1+bGF5SbtmxwzILPF0wAbTJbEL4LmWaNApxh+xKoIUOdCBv8fqlXNAtzoPyP5
         KVBCHD1cD2OWKCTVdDFKKIgsCC+f97LKqrnYwuvOiWAj7rj4VEZ+wnsw6BlrXPM7VeIO
         BgcDIchBM7elk1j3k6mKNYvlmLV+HNBkRL7nvGaN6nhvmFoZeHIwwRY1rGPEqfKLn/Jk
         qXkjY816fzRrgbrObrXasmMrl+jNJKrDfazccrudQnGCxpCzAlRH99If+KCLfWT33O2W
         nOxkqXDzXn7TC/k5bSIKqsADa0utqXdZRHYdTdIXuzn3qnXYf5cCAmm6GCMyedIro8uP
         tpbQ==
X-Gm-Message-State: AOAM531aonPn2rvNWdyFhkTFftMuKwEP9/kLNZ33MlVPvmMrMSnhQZLT
        u5PVhvtUiCIPq9pVNNvX/PrFeR9xmpLg0Mj2PDRzNdRsJIc4EwT+MlCk3uO6Jr+RAzh504abx5R
        TIgTfTakS3I/w1ufHlvrBa6uLxQOny/VDMTivpnI=
X-Received: by 2002:a17:906:a08b:b0:6b9:2e20:f139 with SMTP id q11-20020a170906a08b00b006b92e20f139mr20617741ejy.463.1647282011620;
        Mon, 14 Mar 2022 11:20:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz5tg2FLtKp4Xqd7L0LVthZGXx0d5/uGsjTyL2DgIGrjaZnaYsMA1POfB2dWcScokMBvI7Axw==
X-Received: by 2002:a17:906:a08b:b0:6b9:2e20:f139 with SMTP id q11-20020a170906a08b00b006b92e20f139mr20617734ejy.463.1647282011472;
        Mon, 14 Mar 2022 11:20:11 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id i25-20020a50fd19000000b0041614eca4d1sm8566449eds.12.2022.03.14.11.20.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 11:20:10 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 2/5] ARM: dts: s5pv210: align EHCI/OHCI nodes with dtschema
Date:   Mon, 14 Mar 2022 19:19:45 +0100
Message-Id: <20220314181948.246434-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220314181948.246434-1-krzysztof.kozlowski@canonical.com>
References: <20220314181948.246434-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The node names should be generic and USB DT schema expects "usb" names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/s5pv210.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
index 353ba7b09a0c..a7aca54832d9 100644
--- a/arch/arm/boot/dts/s5pv210.dtsi
+++ b/arch/arm/boot/dts/s5pv210.dtsi
@@ -427,7 +427,7 @@ usbphy: usbphy@ec100000 {
 			status = "disabled";
 		};
 
-		ehci: ehci@ec200000 {
+		ehci: usb@ec200000 {
 			compatible = "samsung,exynos4210-ehci";
 			reg = <0xec200000 0x100>;
 			interrupts = <23>;
@@ -444,7 +444,7 @@ port@0 {
 			};
 		};
 
-		ohci: ohci@ec300000 {
+		ohci: usb@ec300000 {
 			compatible = "samsung,exynos4210-ohci";
 			reg = <0xec300000 0x100>;
 			interrupts = <23>;
-- 
2.32.0

