Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F494788954
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 15:57:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245343AbjHYN5E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 09:57:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245412AbjHYN4p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 09:56:45 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B5BD2697
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 06:56:18 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso119188966b.1
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 06:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692971777; x=1693576577;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hHx2EuAJD3oOyacRfgtS/t2Wtta1guele0wgkpACM9c=;
        b=SZjqeWI+pAoJy4ty5S0NtVjewTId/aQ/O4WyEsWukGcJgclyIwscVFejTkhcr8LAjV
         ZSqgFD0DrjCcypzg5k5Mdc3asdgDFgAFCfmLsiJBhwUV2e6jUfg5gwnf0I9U4SGbZqdX
         OPtvR/01c1x9CzblstmhxwBwQVh2RmlW+27hbCgjxgV8oLlGczUdrYfI6jc/xYnyNmXt
         a7gDzoors6egBL9HJ2by+3kb6Sk0zRSd7pvD/pvv7+bnX2M0KDdz+r9aBuhosfpabX8B
         TUWK7IaAiWKXJ/vapo5QDZNUhAhfOH8Utjg4ypelditoLvajyHsq5YPgiV2ZkiRJiH1E
         9m1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692971777; x=1693576577;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hHx2EuAJD3oOyacRfgtS/t2Wtta1guele0wgkpACM9c=;
        b=G4JQvxJvXhNXgm1k4GAmF3FCf9aZ7N623Wf5Dk2B5LvhQkzMTGfSjVllPJnbgijYjE
         ZULgAX8h1a4sHPiA5iTmOYjFt68dQz1Dhu6FIcnaE7GDB91CCYAEAsHgMKZKqEvYsMMG
         2tHiuj/fDzEhONbaXg7PBF5Ylpz8uY7FU3zXl4JEnnK4iBkaGpvi9OX5DbczIocrhgE/
         G3LlvgZ7QUgKKLiujBlAPsTahaviqdT5JQJ3YpmXHjBWjqux+jCxxPfcoMYpPLsu7CBY
         8wgsiFGfAtui/HPOY6MKUfV8tAKhcDpw7XFEs3wkeitieViJBAjkqd8pO+QWKoPnu32z
         g2Qg==
X-Gm-Message-State: AOJu0Yy+OHGvLNg7pme0ejL1JligRXlReDGyfIUjlQ5I9Of9jqRgk6b1
        drZNKOxwTezJq+lUPgztosidng==
X-Google-Smtp-Source: AGHT+IFE7cDuyIdDGc6j7eX19XjifX/KkDvRVTVpDR0onh51fNA9TA04g5R4C8by8Ey/SdUzp5D58A==
X-Received: by 2002:a17:906:224c:b0:9a1:bd33:4389 with SMTP id 12-20020a170906224c00b009a1bd334389mr6915720ejr.74.1692971777091;
        Fri, 25 Aug 2023 06:56:17 -0700 (PDT)
Received: from krzk-bin.. ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id mh2-20020a170906eb8200b0099b76c3041csm991608ejb.7.2023.08.25.06.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Aug 2023 06:56:16 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ARM: dts: qcom: sdx65: fix SDHCI clocks order
Date:   Fri, 25 Aug 2023 15:56:13 +0200
Message-Id: <20230825135613.282505-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230825135613.282505-1-krzysztof.kozlowski@linaro.org>
References: <20230825135613.282505-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bindings expect clocks to be in different order:

  qcom-sdx65-mtp.dtb: mmc@8804000: clock-names:0: 'iface' was expected
  qcom-sdx65-mtp.dtb: mmc@8804000: clock-names:1: 'core' was expected

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-sdx65.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
index a1679f9f8f1e..9d9ac4e23831 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
@@ -461,9 +461,9 @@ sdhc_1: mmc@8804000 {
 			interrupts = <GIC_SPI 210 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "hc_irq", "pwr_irq";
-			clocks = <&gcc GCC_SDCC1_APPS_CLK>,
-				 <&gcc GCC_SDCC1_AHB_CLK>;
-			clock-names = "core", "iface";
+			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
+				 <&gcc GCC_SDCC1_APPS_CLK>;
+			clock-names = "iface", "core";
 			status = "disabled";
 		};
 
-- 
2.34.1

