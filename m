Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89C3549B998
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 18:06:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242648AbiAYRFi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 12:05:38 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:50788
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1376331AbiAYRDO (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 12:03:14 -0500
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B18973FE09
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 17:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643130191;
        bh=rw3iKwjHVF1T+M8vGLUxyKNks1I9pnaON9d7P08zG0k=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=cTm+Bsvs5cdjF6YbRi8GGCFZzHHJPieTzdu5pRTe08/BOS9qGDfaBYv7CXqcKsRH2
         2EnGDxjYAv5zhOt1GdefRhbNgIukaC9iRamVesqG9khJvYIimQszWcwFCv4cVZmlQH
         YGxBNGRBzLrMC2gBEkVu2GCi/QaQZRc1q7s3WxpVEKT5DmorMTtQzP2rKVc6oMihQx
         ZMHY23fH92+2acs7Q6LRGgy4g4DwSR1FuvRdApQVExL0+JT3JcawBFIj2QGHiVNri/
         z5wuC2H/mZWoxXRRWQdH5yVGBxEhFpfy244/apAaOLrkq1EHqRlujvqe7vum9ZyTRr
         HGgEcdSy+F4Iw==
Received: by mail-wm1-f72.google.com with SMTP id s190-20020a1ca9c7000000b00347c6c39d9aso1772138wme.5
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 09:03:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rw3iKwjHVF1T+M8vGLUxyKNks1I9pnaON9d7P08zG0k=;
        b=uhmR+aSVrFmLz4aaSU0rA/1Yg23dd8kxy+p3IBskrBEGw3lgua+sTKRfRorXgb1mxw
         CoZ51AWMrSXhU1QnfWi14dNtRFmWY2mBC1v98s4S3qSRoaA8QmNuSF4r4GfX96wVoDtu
         +d8RH2fe3HEuumM3FUOXhk+EGLkEW448eRxaIdDaMyZUcuiUxxQdMLCDAxETFXWYzPPe
         gXLqKVi33UY7UPDF3ttGiVyuFw/guG8McI8JcYKJYgmG2IBj/5ZkRSRdmpGlmR/gjwHG
         4R8ANXr0KcR2hPpkdhTqHxti4cimQGX6Iu+Txif9q2qmZG6Giv9KpJzQJz9z/CLfbsQq
         AxKg==
X-Gm-Message-State: AOAM5318vNmbFAMhYBH+y83OVJQaLnr07iOTKqHzDKFz0hoUO/2QSQBE
        51ptDMhfHq1bqaaxQrZOCTnSTzt2TAU6RaYtMjLp2aYf7ErUUK7Tkp4GogZ0OeRxhHxyUB7gncV
        N2xYkCZQYl75w6lgOsfo2MimOxrj+fVBJey6OqXo=
X-Received: by 2002:a05:600c:1912:: with SMTP id j18mr3688446wmq.155.1643130191213;
        Tue, 25 Jan 2022 09:03:11 -0800 (PST)
X-Google-Smtp-Source: ABdhPJytGJ9TI5VtzIsjGQXHuW43/peZ43AFiVhcRxKrAIWgj3XRztUpx3XwN+qMJZWd1jMpp/rqWg==
X-Received: by 2002:a05:600c:1912:: with SMTP id j18mr3688422wmq.155.1643130191014;
        Tue, 25 Jan 2022 09:03:11 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id i3sm17162548wru.33.2022.01.25.09.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 09:03:10 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        Henrik Grimler <henrik@grimler.se>, virag.david003@gmail.com,
        m.szyprowski@samsung.com, cw00.choi@samsung.com,
        ~postmarketos/upstreaming@lists.sr.ht, alim.akhtar@samsung.com,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        devicetree@vger.kernel.org, semen.protsenko@linaro.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: Re: [PATCH 0/2] ARM: dts: exynos: Add support for Samsung Klimt WiFi
Date:   Tue, 25 Jan 2022 18:02:29 +0100
Message-Id: <164313008959.78836.16815768434682839337.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124131241.29946-1-henrik@grimler.se>
References: <20220124131241.29946-1-henrik@grimler.se>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 24 Jan 2022 14:12:39 +0100, Henrik Grimler wrote:
> Klimt WiFi has product name Samsung Galaxy Tab S 8.4" and was released
> in 2014.  It has similar hardware to exynos5420-chagall-wifi and the
> two devices can hence share a common base dtsi.
> 
> Same issues as for Chagall Wifi applies: CCI has to be disabled and
> only 4 out of 8 CPUs are brought up at boot (see
> https://lore.kernel.org/r/20220118185746.299832-4-henrik@grimler.se).
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: samsung: document Klimt WiFi board binding
      commit: 8d4d0d7c43e6f87df02a0acac206b50c265962d1
[2/2] ARM: dts: exynos: Add support for Samsung Klimt WiFi
      commit: 21fc732222559c7b5a8731571d30501d5fcb631c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
