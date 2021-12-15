Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34E53475BB8
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 16:19:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243893AbhLOPTm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 10:19:42 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:46760
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243888AbhLOPTm (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Dec 2021 10:19:42 -0500
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8F1BF3F177
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 15:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639581581;
        bh=YsgM5wVM9boJb3f4RQ+uT9iXUGMe1XTlP9oHfwmk45A=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=da8DrCSKINZY/HNf9Gvm61nO1yqjgrZw8eZ3TGBy7b4NGX3XNiippjrtFY1FhTKll
         FL8kY0vpY34za/7RRAeM7Afs05x0DuYofo5sZ7Sr4Lf1FjHIJZzvj5HJZ8QocYEYRJ
         YTYg3nyz2HRK8/VyR6k7RwgBe6XJMFd/C9RqCtakTZ1tBkb6WnpFwwSC5dF9n9WCcJ
         N5h0eCBsa7BIrMxltNq3+ZvLdzqoCjw7TckKQVPhNJb+aL2ixZiH6aKZOnSpvnVPvu
         hDyDUnpncF/xAUS8hOmu2LB9CGk9ekU/kLweCFWesjfUcYYTslc5ITEKh+Oc9RS3VF
         9G3H3Q7x/v6ZA==
Received: by mail-lj1-f199.google.com with SMTP id bn28-20020a05651c179c00b002222b4cc6d8so6500668ljb.0
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 07:19:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YsgM5wVM9boJb3f4RQ+uT9iXUGMe1XTlP9oHfwmk45A=;
        b=NEaK40uWAZtljSDEHeEaHrOB1gCE2P9py1WWVj9keJD6Rb7GGlpOjVSy5DazjPPryy
         fQrc1Z736y8yGByYz8b4VIDpAg3HIyrqI14qQ2l8CxVwT7lhp4gZiMET7hGM9MftMJlc
         TN30ZP0xdjuQeMBJaHuoqLDg53yBZ7u5+aIv00un63k0rhekuPGSl5QOWRUEsM7B6F3E
         I5vYnXmStxi0UowsaX8RnYBsXSYeR8quFnSu1Hml3T6nHIGNPi+aSoddkLRKVEES4koU
         UiKlcTavn1oXSvtyWRDxqZ79CsvBMsW7WtDFopJ1SWoeT3nEowzEw2VHNNm/AwLboSuF
         jGIA==
X-Gm-Message-State: AOAM533NWHLejXnE0OksN5RZDJjByzCHc5XW8h7U2PYWT6GrWsvYcKsM
        FoTEJBmJ4SU/ty69xe3ag/6Hc7PI2eUX+H1SIh0/ysazlBEUzvG2sIxh72wcCojg5bBcFk1aqwe
        +XN6MmglXlJz4jaiJIVmBBy6APEJg0BQunZwGICk=
X-Received: by 2002:a2e:a69f:: with SMTP id q31mr11141856lje.236.1639581581036;
        Wed, 15 Dec 2021 07:19:41 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx2IsUQ0xYTrqnY6XxwscM20tZetyuhv4/dvH5xU4yzBjcJu2+c20b2h6TUw6oAw3b4SkqOpg==
X-Received: by 2002:a2e:a69f:: with SMTP id q31mr11141835lje.236.1639581580840;
        Wed, 15 Dec 2021 07:19:40 -0800 (PST)
Received: from localhost.localdomain (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id k14sm364798lfu.210.2021.12.15.07.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 07:19:40 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: soc: samsung: keep SoC driver bindings together
Date:   Wed, 15 Dec 2021 16:19:04 +0100
Message-Id: <163958149735.164220.7940374210521750754.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211213112057.16709-1-krzysztof.kozlowski@canonical.com>
References: <20211213112057.16709-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Dec 2021 12:20:57 +0100, Krzysztof Kozlowski wrote:
> Recently added Samsung Exynos USI driver devicetree bindings were added
> under ../bindings/soc/samsung/exynos-usi.yaml, so move there also two
> other bindings for Exynos SoC drivers: the PMU and ChipID.
> 
> Update Samsung Exynos MAINTAINERS entry to include this new path.
> 
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: soc: samsung: keep SoC driver bindings together
      commit: 69bac8e4260865ab56d565593c44a519291f36ff

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
