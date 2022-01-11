Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 045DA48B879
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 21:19:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350819AbiAKUTR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 15:19:17 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:38590
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1346619AbiAKUSf (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 15:18:35 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A33CD40057
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 20:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641932314;
        bh=kQHLxaxxJLFmOGqzWUxDRLkwO6oKafieScmNTdNr7i4=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=BU1KhsIk5nEo9RDu85jhtRKVIOUZcVwAfYcZikRHouzX3zNAI/mePRVn4N37jbOm2
         rXdlhwhgMkKTTErl6AC136I5l0xWwXmCfRlnFqYlGfKfYinxzNouh1koeseUWLk9Wn
         0oIZd1rn0JCMutTg6ooQ0ElauVZg11pvDWynvoc9oCVADU1fqeodJAPYeEIOKXUiik
         P7OlHR04IpiTAkuvpscpqT8ov2xNhOIj1hSBFbx7rCTRaobmu+7Py/cGNWA6m5PLKO
         fp7ejRioH7Pkl6d+hxKGmzg1cGWxxmHD1DO5J3v+YOMtYjyL7zfhCcO38ZvaATeMnl
         VW11YM+ja5W9Q==
Received: by mail-ed1-f72.google.com with SMTP id g2-20020a056402424200b003f8ee03207eso204464edb.7
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 12:18:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kQHLxaxxJLFmOGqzWUxDRLkwO6oKafieScmNTdNr7i4=;
        b=6ZEk5VDc8yA/ZlBxFsco6z5DKakoeAs6hv5qnvDmp65CBLnrm2VqA8qQGNicAaUp9q
         petAtVELN7IedIMdL+HrLo3m36esD3kThhFDnUpePT0YGdhVYy+KXeOz74jIOAq/6ONg
         Gwuhxcz9VG1Mz9dN4CRIhecr1bHZl6jQtrWDUZI5irF6/OOhVHWl7VxA3WL4J/TLAv3o
         c2MuD+J/bq/8ufamy2YduQiDvHAMeaOFVLXYjR6F0K01wZXf/i4mTEqtk6O5z8y3iNjq
         zcHFLbD4QMEuBd/28Trt2CRLMY8yqZxi3mSAEHNcEMjXhTsgmciCtrdd1g2wPKJD8kG/
         +mdw==
X-Gm-Message-State: AOAM531QLz86grHpUMDfLxUaaz5U8jijubdctaGf9XJTid3Ah5Wqw0Cv
        Wkz+hl05QiYPgJxqIGkeqq1dvQfMYTUAemPdORz0kPPjVDzngoAGQvbawQ6pJRDCQvKCOWy+O2C
        0UjsmqDKwB/5ZJYTN70zAtfhbDcmnQfIvdQ6obw4=
X-Received: by 2002:a50:f086:: with SMTP id v6mr737734edl.94.1641932312220;
        Tue, 11 Jan 2022 12:18:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxJA2UIH8S5lzI4JycUQ9WDc6T41H+sPiiwxmzpWvqHdoH7V+UxlOdlH0f0srHDP5vkj+BfXg==
X-Received: by 2002:a50:f086:: with SMTP id v6mr737711edl.94.1641932312024;
        Tue, 11 Jan 2022 12:18:32 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id e4sm4030881ejs.13.2022.01.11.12.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 12:18:31 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Tomasz Figa <tomasz.figa@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Chanho Park <chanho61.park@samsung.com>,
        Alim Akhtar <alim.akhtar@gmail.com>
Subject: [PATCH v2 28/28] arm64: dts: exynos: use dedicated wake-up pinctrl compatible in ExynosAutov9
Date:   Tue, 11 Jan 2022 21:17:22 +0100
Message-Id: <20220111201722.327219-22-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220111201426.326777-1-krzysztof.kozlowski@canonical.com>
References: <20220111201426.326777-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Older Samsung Exynos SoC pin controller nodes (Exynos3250, Exynos4,
Exynos5, Exynos5433) with external wake-up interrupts, expected to have
one interrupt for multiplexing these wake-up interrupts.  Also they
expected to have exactly one pin controller capable of external wake-up
interrupts.

It seems however that newer ARMv8 Exynos SoC like Exynos850 and
ExynosAutov9 have differences:
1. No multiplexed external wake-up interrupt, only direct,
2. More than one pin controller capable of external wake-up interrupts.

Use dedicated ExynosAutov9 compatible for its external wake-up interrupts
controller to indicate the differences.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/exynos/exynosautov9.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
index de8fcb82eaec..807d500d6022 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
@@ -208,7 +208,7 @@ pinctrl_alive: pinctrl@10450000 {
 			reg = <0x10450000 0x1000>;
 
 			wakeup-interrupt-controller {
-				compatible = "samsung,exynos7-wakeup-eint";
+				compatible = "samsung,exynosautov9-wakeup-eint";
 			};
 		};
 
-- 
2.32.0

