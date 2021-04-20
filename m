Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16BD1365DB4
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 18:50:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232473AbhDTQuY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 12:50:24 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:49793 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232767AbhDTQuX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 12:50:23 -0400
Received: from mail-ed1-f69.google.com ([209.85.208.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lYtZP-0003V8-Dm
        for devicetree@vger.kernel.org; Tue, 20 Apr 2021 16:49:51 +0000
Received: by mail-ed1-f69.google.com with SMTP id m18-20020a0564025112b0290378d2a266ebso13439215edd.15
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 09:49:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WtF7drMW/C8jMVcOqQFPcpIF1FOocl5b39ThslsHgGk=;
        b=jjXZBfFYtqz3hWJFCW7WQCThfIXv+pPFIRv6F12Ga1TiXCHm63bhpbeSXv8bocFGD+
         wE3TLGBJRxF2onBair8JgTv10ijDGXMWZUwgiyG9tKNCidJwJMp9CD8W6RP2LD2sIivY
         iYCKB2SHtflt0Id63Cp8/paziBWwfV28xwTPJHgD/j1dvSYBqBzz/PuZx1y7HxnFxk0b
         PTGMCvgFiFgIoJKCl+4vgIR2C6iUWRVQ3oO/ruCvEb0DjR28wZ97vdbucNKPwt+cX0tp
         1RwUb9lTlc9TZ1CIcBOxI/9zsfq8p0iTlodTMwDfPCU82hTFb4Pg4FU4k4nFVHJuJsEs
         10xA==
X-Gm-Message-State: AOAM533RBIyfxBYDbjZuyQvnjQVemxpr4exrzBte1u81RFHJSSkuRnks
        bArMg6LPaJ4iMEH9EhKxV7+FU2PgSK7DRtvK66yTcY+AO3/21D5vgGUJYURXXcR1nkGpPn5seKb
        DeYZ2+56IKJdQqH8HO5YZBo/0NnoPJJY9y7sntR4=
X-Received: by 2002:a05:6402:2216:: with SMTP id cq22mr5290226edb.265.1618937391135;
        Tue, 20 Apr 2021 09:49:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwVvPEaItX2UDL57iBqC4tjCH7fETaHnfGtmtZl/hJ8UxEg3LymZw2SkKopQjwT2bKj34XsiA==
X-Received: by 2002:a05:6402:2216:: with SMTP id cq22mr5290217edb.265.1618937391035;
        Tue, 20 Apr 2021 09:49:51 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-180-75.adslplus.ch. [188.155.180.75])
        by smtp.gmail.com with ESMTPSA id c12sm18252873edx.54.2021.04.20.09.49.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 09:49:48 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 02/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Origen4412
Date:   Tue, 20 Apr 2021 18:49:34 +0200
Message-Id: <20210420164943.11152-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
References: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RTC on S5M8767 PMIC can wakeup the system from suspend to RAM.
Add a generic property for this.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos4412-origen.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/exynos4412-origen.dts b/arch/arm/boot/dts/exynos4412-origen.dts
index e1f6de53e20e..5479ef09f9f3 100644
--- a/arch/arm/boot/dts/exynos4412-origen.dts
+++ b/arch/arm/boot/dts/exynos4412-origen.dts
@@ -144,6 +144,7 @@ pmic@66 {
 						 <1200000>, <1200000>,
 						 <1200000>, <1200000>,
 						 <1200000>, <1200000>;
+		wakeup-source;
 
 		s5m8767_osc: clocks {
 			compatible = "samsung,s5m8767-clk";
-- 
2.25.1

