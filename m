Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 570533F284B
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 10:22:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231843AbhHTIWk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 04:22:40 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:52470
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230490AbhHTIWj (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Aug 2021 04:22:39 -0400
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3B00540622
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 08:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629447721;
        bh=zRZhmaoGMcaJaPICPE6TccctvOp1vsbXc3aVSfmVIbE=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=rQ5892GPZwMMlIScCxglwlow4m5iWOwPyDRePbhoKAJBA5N9dOjvC548BxOv1XXHn
         W6L/xrFInO71zOfuKeWKlV+zQzL8i2wd0Jegoolx3Iocd1MmcqIPjymFPheH1OLA6o
         7REIDM1iwCIpQ8G6HPAbJVg/ohRvED4FaOLPaqb6JjwoNDXh7k9PwblQxvJ8zDK32y
         9Sy6EoGPuDTiM7bnmkhXOsi6oXezDC/1sYe4HKvJhToNBOeL3766Ofs5UftZ3HkJGR
         ow++oBty9iyZvikMtmw/njHFOwgA2CbF4R+icZzIovccYHhs7vD671lIA0EYLfc21V
         XmO4ggVZMrb0w==
Received: by mail-ej1-f71.google.com with SMTP id bx10-20020a170906a1ca00b005c341820edeso459000ejb.10
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 01:22:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zRZhmaoGMcaJaPICPE6TccctvOp1vsbXc3aVSfmVIbE=;
        b=qSL7nlLTZ8tXJCYQraFOg34Rzl8Rdvbdp321rwCPk74lTBDjOMkhiIzj8RsKX+vlYd
         PlDZi51aBTXSbJZi9OnShy0oB+TS/g96kS4fxMb1HstTCnLrd9OXyfaxoY8g+NhlLMvJ
         aaLulgj1ngVe6aHR/hRNk4ZSjqynP1dSwPObRrYuOfAKFOGSyJ44lcQ3g593an3P4oo3
         BzHyfTJnXA4xNjgaAIoyKhPtMEt8Pe+o6e9axr2hkdyC2yhkPpOK78a7dx9lRqsZSJvi
         UqtdxWF4rLgNc/KrirUKAotyZiQgbI8RtsTSt2OLbdAgbhzoJk9ERFbMgwj2eFq5WjF3
         9VGg==
X-Gm-Message-State: AOAM531u6PpL0X8m6DesKwEzv4TFD0lwlZeGV53SipqeC/2HXWqF0H/g
        bVWpIT117hjUYKXVjIrsd2uWDoQtreJ/rOqwjlJNJeIgOwpOoxPvs5xiDlwr8f0cPajEcbyMCcX
        im9Sz1fRPMqyqYtfIfbazEmjfiRkysKBvhrTPcFc=
X-Received: by 2002:a17:907:6289:: with SMTP id nd9mr20169703ejc.384.1629447720946;
        Fri, 20 Aug 2021 01:22:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwAyekGLASdxDEafoqSUOhMjIYn/jPWLNXMGYNah6D8jucmIcX+tfF1GfJUYM85M9JtgxJDSA==
X-Received: by 2002:a17:907:6289:: with SMTP id nd9mr20169697ejc.384.1629447720841;
        Fri, 20 Aug 2021 01:22:00 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id m18sm3162922edr.18.2021.08.20.01.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 01:22:00 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: exynos: add proper comaptible FSYS syscon in Exynos5433
Date:   Fri, 20 Aug 2021 10:21:49 +0200
Message-Id: <20210820082149.84613-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210820081458.83406-1-krzysztof.kozlowski@canonical.com>
References: <20210820081458.83406-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The syscon nodes should come with specific compatible.  Correct theh
FSYS syscon to fix dtbs_check warnings:

  syscon@156f0000: compatible: 'anyOf' conditional failed, one must be fixed:
  ['syscon'] is too short

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/exynos/exynos5433.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433.dtsi b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
index ebd5091d68b4..4422021cf4b2 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
@@ -1132,7 +1132,7 @@ syscon_cam1: syscon@145f0000 {
 		};
 
 		syscon_fsys: syscon@156f0000 {
-			compatible = "syscon";
+			compatible = "samsung,exynos5433-sysreg", "syscon";
 			reg = <0x156f0000 0x1044>;
 		};
 
-- 
2.30.2

