Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4364347D105
	for <lists+devicetree@lfdr.de>; Wed, 22 Dec 2021 12:32:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244687AbhLVLcP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Dec 2021 06:32:15 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:54762
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244682AbhLVLcO (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 Dec 2021 06:32:14 -0500
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 78BDC3FFDC
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 11:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640172733;
        bh=FuPIM1jE2tm3DbiV/kB10h6tVDci7NzWCYK8hlw9B18=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=Ihw/JmAAkysyU3sCqLD3ofalgwV0uzCEmIwDUvdLJf0yEt5e3xtpPOgJuv7CuBo1t
         qKCPECuHHNLdDZ77F8cB4tAIFEfdoh/NLQAwRtoKwYPrnaZAWjZn8ClcWEPUvSAdIM
         orrK7cdA6MIDvn4WpoZqFPycIPbag03nNgb8FYS29U7bAXADEizShG5lygxeL6l+Uq
         SzLj2NAi6ADBynMSvkBF+XrxDpIqYQAeM32U1tYVe/VonTxQBL04oqhUIBjueVZ+sD
         JjKqdpJPIH+SJxGoz+C8PZLuGsE3cqp7uOvBfE75poV0/fUCZcTgyTfaeXw0hm9V89
         8Sz/g2k/ML+wA==
Received: by mail-lf1-f71.google.com with SMTP id g2-20020a19e042000000b00425cfac0e67so1099512lfj.10
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 03:32:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FuPIM1jE2tm3DbiV/kB10h6tVDci7NzWCYK8hlw9B18=;
        b=PBRDrQOvELAywh6kpR5dL/SagKUMocIM6gyFcFsGnYJt5AGb3XCBIfH1bNEzUBvVD3
         QAK+a2oXEvkdQZc4cbx43ZcrSzPJXPAFBmFmDV9pvwDtIcnz+hEa0zY8U99ttwLf+n0x
         Szzo8+FFsh8SXmyn/juxw7jJAgFg6ICYebY09Cxef27l3MIIny/hIEbSLpQUOkE9zEWc
         KtDiEhwUf77rIncLku0L/Ral//rzptZkl3j4aQEgE6e9daX/Y9CX/FPVraoX6HC68ScM
         cQveMm6MIi9xKAsXFQ/Y+eKPNMCoRNTvXY95oLKPaJvPop9SdWH+dVFImsbboW8cn0Dj
         0new==
X-Gm-Message-State: AOAM533jzbxh3Q1O9s5wL0I0Po8j2OnbTlUcizbyxMRW1Dd/XFk0I8gW
        sFdpsEXNmwU5p4vMnsGSpKaybamu+FUxHnPC7W/lDjuoX2noweuJ3zp/6KRdxLLQPEAy1Og/1u0
        K4z3oYGp3vHaD0zM2aPGyhC3Jo9mQjqZANa9F4W4=
X-Received: by 2002:a05:6512:3242:: with SMTP id c2mr2053245lfr.182.1640172732774;
        Wed, 22 Dec 2021 03:32:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxTQClBFH+V+bQmMAmrHl2mhT026gZtfmG+JyRmuVav1QUCt2b6jxUtWx3oqT6AcQedHKCs7g==
X-Received: by 2002:a05:6512:3242:: with SMTP id c2mr2053224lfr.182.1640172732615;
        Wed, 22 Dec 2021 03:32:12 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id e12sm188013lfr.179.2021.12.22.03.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Dec 2021 03:32:09 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Daniel Palmer <daniel@0x0f.com>,
        Michael Turquette <mturquette@baylibre.com>,
        devicetree@vger.kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
        Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
        David Virag <virag.david003@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        linux-clk@vger.kernel.org, Tomasz Figa <tomasz.figa@gmail.com>,
        Hao Fang <fanghao11@huawei.com>,
        linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Jaewon Kim <jaewon02.kim@samsung.com>,
        linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v5 0/2] arm64: dts: exynos: Add E850-96 board support
Date:   Wed, 22 Dec 2021 12:32:01 +0100
Message-Id: <164017271643.8698.16296972273474442218.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211221142417.19312-1-semen.protsenko@linaro.org>
References: <20211221142417.19312-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 21 Dec 2021 16:24:15 +0200, Sam Protsenko wrote:
> WinLink's E850-96 is a dev board based on Exynos850 SoC [1]. The board's
> design follows 96boards specifications, hence it's compatible with
> 96boards mezzanines [2].
> 
> This patch series adds the initial support for E850-96 board and
> Exynos850 SoC. Only basic platform components are enabled at the moment
> (like serial, I2C, eMMC, RTC, WDT, clock driver, etc). Right now with
> this patch series it's possible to run the kernel with BusyBox rootfs as
> a RAM disk. More features are coming soon.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: exynos: Add initial Exynos850 SoC support
      commit: e3493220fd3e474abcdcefbe14fb60485097ce06
[2/2] arm64: dts: exynos: Add initial E850-96 board support
      commit: a1828d772e0738c30a383a7d335aded2f2baf908

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
