Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65C8837A6F2
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 14:40:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231422AbhEKMly (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 08:41:54 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:51220 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231262AbhEKMly (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 08:41:54 -0400
Received: from mail-ua1-f71.google.com ([209.85.222.71])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lgRgt-0002wi-4h
        for devicetree@vger.kernel.org; Tue, 11 May 2021 12:40:47 +0000
Received: by mail-ua1-f71.google.com with SMTP id s15-20020ab0372f0000b02901f51394a2a2so2438391uag.2
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 05:40:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PrBBhJGbjsmhZDFF8O0bml8Qz0d11xqc/seGdEasPHw=;
        b=qW5CT5YpQbLUE799AEQvcdTC45Y6pWymQkkHCLlWZWKe8oqoXzMdZ/zXeuMHeBWupU
         /xZR3xKIHGpTCSaubj119DbdYT4J69NnFsXx4e8O334urcn/QJ0njUIIOHguVFSqvL42
         hrymmN0b2XDZzMrZYIKWZPl1g4QCZpoQsKKEWJDyFJvLMsL56UPxiW8UKzNVRJWw6z0G
         cjNFx8rCsD55c2J8K/YxyPCrX1vPx+0Jt8faBlcLfMF9esL1tBpewSkgxS6FXLjmv9tR
         pMNKmmUoF9wEB3nFXKIW1x3fxSf658A0UF3p2MQf8Xz3dAghy8lwn+FarYadXuBNCsPi
         0ptw==
X-Gm-Message-State: AOAM531RrEVg4sacXX0A+tH8ZzucKeEEiH90umXWGf71PPoMwoNARYPM
        Q0bnTWeoLsQJU76VG7jfxex+k3lQVFSZBT22TGKqRfAGpAUKhVdq9acxIbgYFVtclimtYhRA2ZD
        YriBswtD2ne3i9JaBZsNO5JG+7ds8x4T/FkCddpA=
X-Received: by 2002:a67:bc5:: with SMTP id 188mr23940527vsl.50.1620736845801;
        Tue, 11 May 2021 05:40:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzpsSzE8+yaLV7z21WTm61RVHBgd5GIuSd1bUacFjdwJg53yKaDkNu4i27PfGrQ9TJS39xBtQ==
X-Received: by 2002:a67:bc5:: with SMTP id 188mr23940505vsl.50.1620736845580;
        Tue, 11 May 2021 05:40:45 -0700 (PDT)
Received: from localhost.localdomain ([45.237.48.2])
        by smtp.gmail.com with ESMTPSA id t18sm2204204vke.3.2021.05.11.05.40.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 05:40:44 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Itop Core
Date:   Tue, 11 May 2021 08:40:35 -0400
Message-Id: <162073682206.13221.757844834039243258.b4-ty@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
References: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 20 Apr 2021 18:49:33 +0200, Krzysztof Kozlowski wrote:
> The RTC on S5M8767 PMIC can wakeup the system from suspend to RAM.
> Add a generic property for this.

Applied, thanks!

[01/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Itop Core
        commit: a1972739c01612adee6bb0a0306ea29be0bb4955
[02/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Origen4412
        commit: 765210e19859fcd83dad26441a5c499c0fe27e28
[03/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Arndale
        commit: 0272619bde229386edf9f1358470e265628d1653
[04/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Odroid XU
        commit: 760ebb8a2529f92f772424c7ddc385a07a9e90a0
[05/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Midas
        commit: 7f23ea1265c3dc2cd5824f67498078fa23ede782
[06/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Odroid X/U3
        commit: 1178f7127a4679db9b70eb16737627f764d7a9c5
[07/11] ARM: dts: exynos: enable PMIC wakeup from suspend on P4 Note
        commit: 9614ae53753003e7a4ecf800db3da189c0f0acd5
[08/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Arndale Octa
        commit: 1d4203b1fa02fca97ca97484f2a43da187112ad1
[09/11] ARM: dts: exynos: enable PMIC wakeup from suspend on SMDK5420
        commit: a145cc05cb2ccbdde2621c91c7d56c3435d3a125
[10/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Odroid XU3/XU4 family
        commit: e4c9b60b271ce428d97577502be9393bdc46dd94
[11/11] arm64: dts: exynos: enable PMIC wakeup from suspend on TM2
        commit: d3f713e6b3ccb1bf8306aaff8b11fd30844db0cf

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
