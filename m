Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5419837A6D8
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 14:37:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231327AbhEKMiW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 08:38:22 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:51134 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231490AbhEKMiQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 08:38:16 -0400
Received: from mail-ua1-f72.google.com ([209.85.222.72])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lgRdM-0002gd-Jh
        for devicetree@vger.kernel.org; Tue, 11 May 2021 12:37:08 +0000
Received: by mail-ua1-f72.google.com with SMTP id v6-20020ab020060000b029020b473dd428so709268uak.16
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 05:37:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dESI6UIanP9SYP+dA0R2Z+/ifRMzMVAqstkYDnBKva8=;
        b=RHHMhNDR+3mvR4sUI2wmcMvoiCtnIo7nESLVxHTcpw//u4sGrEsjmyn3GQdyQf7z/h
         hPMe9yVyh4zV79b9OL2z5QNJ9feC8mng8une7RQkDOClt8bvUBuKmxRVutBSVNKAWOxN
         ZiuR3zezKy22Kb8Q3ZvGzZFRFX2slNy73QdAVA7cA+d7ZLk0ql7GzJ/V1ZhbfFHqXTl0
         dYLDAIRdDw9SNF/puyAzZhbQUjJPNt0GLexXyOQSdE8U59li3daSH8Gm6Ghc3NNa6QYf
         FERzZczhCslSgaMc/s4ZS1gUQy4RjHx3qLH+XM6j6eTnwCsy9pV93d92noo4iQJJ0Mtp
         ZY5A==
X-Gm-Message-State: AOAM530nOLpyRt24gvxFjfkglwhlnXwrYIN+4dBhZNcaX0ksx/qHLhEq
        PwKA9tulUQCJ7oBNzobkFMiDpT9rq1wfM4fQoUWqkR6l3GEm8hKjRwHYRb6Dv9x0ODVqcPgnChG
        QlyE7LdW5e6Y3erM89ORyAphw7eXwnKkMin3NtZM=
X-Received: by 2002:a67:c897:: with SMTP id v23mr24621292vsk.21.1620736626437;
        Tue, 11 May 2021 05:37:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzsstqrCGPGwKQw+E8kDi6fNgrHq+JiyfOabiP5XD6/NP0Hvfu2ryEsA4NoNofSlOZVMSQCBg==
X-Received: by 2002:a67:c897:: with SMTP id v23mr24621263vsk.21.1620736626294;
        Tue, 11 May 2021 05:37:06 -0700 (PDT)
Received: from localhost.localdomain ([45.237.48.2])
        by smtp.gmail.com with ESMTPSA id r12sm2039148uao.6.2021.05.11.05.37.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 05:37:05 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] ARM: dts: exynos: align Broadcom WiFi with dtschema
Date:   Tue, 11 May 2021 08:36:53 -0400
Message-Id: <162073661213.12308.14891342719817203465.b4-ty@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210505135941.59898-1-krzysztof.kozlowski@canonical.com>
References: <20210505135941.59898-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 5 May 2021 09:59:37 -0400, Krzysztof Kozlowski wrote:
> The Broadcom BCM4329 family dtschema expects devices to be compatible
> also with brcm,bcm4329-fmac:
> 
>   arch/arm/boot/dts/exynos3250-rinato.dt.yaml: wifi@1: compatible: 'oneOf' conditional failed, one must be fixed:
>     ['brcm,bcm4334-fmac'] is too short
>     'brcm,bcm4329-fmac' was expected

Applied, thanks!

[1/5] ARM: dts: exynos: align Broadcom WiFi with dtschema
      commit: cc29e39412b9a78b43f7dfa09d739f8ba9fa7984
[2/5] ARM: dts: exynos: replace legacy MMS114 touchscreen x/y properties in GT-N7100
      commit: 8bceb2a490bb8e1048e9c73520f49a65823108a4
[3/5] ARM: dts: exynos: fix PWM LED max brightness on Odroid XU/XU3
      commit: 75121e1dc9fe4def41e63d57f6a53749b88006ed
[4/5] ARM: dts: exynos: fix PWM LED max brightness on Odroid HC1
      commit: a7e59c84cf2055a1894f45855c8319191f2fa59e
[5/5] ARM: dts: exynos: fix PWM LED max brightness on Odroid XU4
      commit: fd2f1717966535b7d0b6fe45cf0d79e94330da5f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
