Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 257054B3E3A
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 23:58:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238664AbiBMW6N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 17:58:13 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238691AbiBMW6M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 17:58:12 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBD5354BE3
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:05 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id jg20so8969287ejc.3
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mEM/mvQEL3zjEdFb22DMMHdYfLIwHBpNKdV0Ft1/aHI=;
        b=KJ2PfrdzA2hlEiS454+5HYcEmvdgnChEsYzsPj+mFjH9tsCDMONumeMapzYWcgTaN9
         /xmjT42z2PLt9DWorIJLDZYg3e9kVTtKw9UppByjuURbjNWOT6G2GAZp5xKRHN3oqJ18
         h0bnUKQ2Nk1ckDyu0r6WUTaJYltYlLv0aOT88P/RRT3TejTSGxUxbAjbFdM1COJvxMvx
         jogod+8y82x2GSbkZPLFLxCwIlPXkXle/d9xum+IR5an3UtihO/NOXPBBGADywVA4z9j
         6tgRiNOkqLxxkRQh50++zZjscOsO5eKhw14COjFM/AFm6dtIvF7ziyrJAGLTHnze5weK
         4AUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mEM/mvQEL3zjEdFb22DMMHdYfLIwHBpNKdV0Ft1/aHI=;
        b=W9DymY95/fAMnfyV3bTglHHuG6bCTeUU2mnIQ7j3ylHSzEjuGaWwZscZQxGh4QA1bE
         EhtzsqEQyeb9uCcSuSIbUisrAhtz4+ZQla7d+igQPvYCLhTsbkK2oGPYt8PO86sFrJJc
         n7lZi4SM83E9B37+U2nbTYjlqqHXVA8maxeZRi1ZYgaNNzokdtdNSF36WZWlwbTAdTRj
         SV2ANcNT/1GDNpw9NXU3a3qpbeO1vTWubr60RR4NBE/xYqYqBMC5OiNlCmLhbZh6+yOv
         g0nfiTBFRgqzkvmFniswXlXy4Mz4mJ/p6bLSGiEa/nthPdWLTsp3Y1p67axyLFuCJ/qW
         F5mA==
X-Gm-Message-State: AOAM530wHGC2lAQ9dZtdmF04CXntKhO3iFZROzM738mkz0vqxDStI3nL
        /FX3x75I0xuSobKKDPaOYwM=
X-Google-Smtp-Source: ABdhPJwCgZztscaP4sLV3Dk4BcM1aLuuic7x/8LM7HHpdPWnRbFq1/EdtLx7GUpE+9RNfzh5gq2UwQ==
X-Received: by 2002:a17:907:a42a:: with SMTP id sg42mr9454249ejc.723.1644793084435;
        Sun, 13 Feb 2022 14:58:04 -0800 (PST)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id g14sm3189163edb.55.2022.02.13.14.58.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 14:58:03 -0800 (PST)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v4 05/15] ARM: dts: bcm2711: Use proper compatible in PM/Watchdog node
Date:   Sun, 13 Feb 2022 22:56:37 +0000
Message-Id: <20220213225646.67761-6-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220213225646.67761-1-pbrobinson@gmail.com>
References: <20220213225646.67761-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

A new compatible string was introduced specifically for BCM2711, so make
use of it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm/boot/dts/bcm2711.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 338fd91ec209..171fc5d2acef 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -107,7 +107,7 @@ dma: dma@7e007000 {
 		};
 
 		pm: watchdog@7e100000 {
-			compatible = "brcm,bcm2835-pm", "brcm,bcm2835-pm-wdt";
+			compatible = "brcm,bcm2711-pm", "brcm,bcm2835-pm-wdt";
 			#power-domain-cells = <1>;
 			#reset-cells = <1>;
 			reg = <0x7e100000 0x114>,
-- 
2.35.1

