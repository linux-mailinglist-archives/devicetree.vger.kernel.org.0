Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 595863F762E
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 15:43:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240301AbhHYNob (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 09:44:31 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:35882
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239453AbhHYNoW (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Aug 2021 09:44:22 -0400
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9292C4079A
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 13:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629899015;
        bh=skl+DRiXkNysfO8pcQNyeLlyFZw5ntPUibqnPCDAM3U=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=iNOt7udhk/TcPcnXRCrcag/nIHDyPhszuqjBxBS3RNX8wpv3oITNBzzdD/MWu3OWQ
         3kcVha4beXy8+ofCQ/llg66SFoyy2Zzk3NiLLpT315JXb1RVvPS98TgGG8AxMRy1jx
         5JXijaN7p6JeBDyNbY9F+QcjutEO0F3QyGqaGFjU7nWPDEzqRntckCvOBxCqGAlNR5
         skvFwgvlOUxzUiLdvWT60UCCiUCdHbB86+/pVzv0WHkMif4k2gFMw2DZ/FcYhubu3c
         SE+7Y7mhdK3qRBLr+vFapYs1dauLrgbEWLqFD3WpzfsVgIzevRKuBlFgiVQMEX6OPE
         JzQGcUezwD8Tw==
Received: by mail-wm1-f69.google.com with SMTP id h1-20020a05600c350100b002e751bf6733so1874653wmq.8
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 06:43:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=skl+DRiXkNysfO8pcQNyeLlyFZw5ntPUibqnPCDAM3U=;
        b=keuFRu7m34pEu8KdHCs++HSlAlvzC1AW0UlUPJ5WmUWmWqs1XRsrArKHzmc+xJCusA
         oaAXVrhtWfm84ZQr/f2NvdLkoIBcLOG1K00qcN53OzO3cZ+X2K/R8Yrb3g4/2g8J42fJ
         dpYry87MzZIV/NvDuxasDzB+afWAtkBRCICfezyhitEGdBBUN/aqYpbKq1Y5VfMb8Egc
         K1WVG4r0vwnhsIsNsDwtfty68zYJuWOpjYrPFdGBoisBSq9/52sSZoEMuLl8Be3RF5RU
         0BotxOPPgQnhO+m2uil9X9kBfxb5fRHrG/ioJcHhk2Nc9+orjWKbQDHfrK8rNtyAMHou
         i8WA==
X-Gm-Message-State: AOAM533fB/5FVBUTt5QA3OhY5zckvPaaCSJpWAFbjprRdiX+42OpqX0Q
        dSPuw/Z3o28/Q4i4RpMYT+aOoJwNKEnyOjMhn5TZ3IbnNaSi5gtICH87zEru6ZtxArkE9DEuzOS
        ifcyM132x95xnkENFSmC6hUN20YmJfkxpPf+xVhE=
X-Received: by 2002:adf:e887:: with SMTP id d7mr24689370wrm.79.1629899015398;
        Wed, 25 Aug 2021 06:43:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyuhNGgwvNYoo0GmQ6L5/SlgHG39BAbAF1TxdBcudJBAkgJcJdjgsnDBKXIrzEA7Y3mZjl6Iw==
X-Received: by 2002:adf:e887:: with SMTP id d7mr24689355wrm.79.1629899015263;
        Wed, 25 Aug 2021 06:43:35 -0700 (PDT)
Received: from localhost.localdomain ([79.98.113.172])
        by smtp.gmail.com with ESMTPSA id w9sm5238954wmc.19.2021.08.25.06.43.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 06:43:34 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Sam Protsenko <semen.protsenko@linaro.org>
Subject: [PATCH v3 8/8] MAINTAINERS: clock: include S3C and S5P in Samsung SoC clock entry
Date:   Wed, 25 Aug 2021 15:42:51 +0200
Message-Id: <20210825134251.220098-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210825134056.219884-6-krzysztof.kozlowski@canonical.com>
References: <20210825134056.219884-6-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cover the S3C and S5Pv210 clock controller binding headers by Samsung
SoC clock controller drivers maintainer entry.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 MAINTAINERS | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a8e1e5d10d1f..eb4ada858826 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16496,6 +16496,9 @@ F:	Documentation/devicetree/bindings/clock/samsung,s3c*
 F:	Documentation/devicetree/bindings/clock/samsung,s5p*
 F:	drivers/clk/samsung/
 F:	include/dt-bindings/clock/exynos*.h
+F:	include/dt-bindings/clock/s3c*.h
+F:	include/dt-bindings/clock/s5p*.h
+F:	include/dt-bindings/clock/samsung,*.h
 F:	include/linux/clk/samsung.h
 F:	include/linux/platform_data/clk-s3c2410.h
 
-- 
2.30.2

