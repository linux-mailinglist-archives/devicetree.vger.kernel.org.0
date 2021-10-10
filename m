Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61A1F428296
	for <lists+devicetree@lfdr.de>; Sun, 10 Oct 2021 19:17:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232353AbhJJRTc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Oct 2021 13:19:32 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:47200
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232464AbhJJRTb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 10 Oct 2021 13:19:31 -0400
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 186AB40012
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 17:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633886251;
        bh=u0/mmDKbEck8WeT+fwXTrJ3+XiT83o8RI6Fb1vkOIIs=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=raJkXc79xY6YBhrzXmFfp1WOp0xNQgC+HhfeSWsaBOxvGQ9c2inTNCaheCavbULcg
         +6k1TUF1ElhhJjm8eALNAvWMP2Q6zypgtNtxmMhO731UEt9X5xstj3hDwRU29jH16d
         e5N5l1Nshx9Nf/ckX9W//aCp44J4auDevn6UZC4fKpfXFFcpxBM3erd9JWkYrgK5iO
         nrm1L/8wQ4iy3fV0me2YZok0wCrj5VQ7cqwQwdo76lR6kDIUN5f2hAuy3vAt3qPVn9
         oeG/YYIVNRWaR6LtpmYEf6FWp+x6h3tvG+TgWTnJk6Fg5bu8k5bdQkKN+07Yufx6DX
         jp77JVRl5Vpfw==
Received: by mail-ed1-f70.google.com with SMTP id 14-20020a508e4e000000b003d84544f33eso13712458edx.2
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 10:17:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=u0/mmDKbEck8WeT+fwXTrJ3+XiT83o8RI6Fb1vkOIIs=;
        b=0glX171w/G++zKzZzr3lOIMlAwMbHvKFj6pFc5fulQORKYKrOB5t0vr9ayrxmdLjEd
         luQ8GcQnpfvzp7KKoYTtxWSPLiQr1l+9gQH1Btwc56rrZ9NHkHt54klCidh/GNGNOV9z
         q8hBPPsxhefGv2/+sfEuapvs8Xm6u2i5fLLtpa9nVgKGhfAtg3q9EGYBsEYnURtoTq9c
         E+5o/AaZncWnbAX4Zj6V6zVieD+genmqRZkBAOfOUd5SWNh7SeBc9Me4x9gaT4CJRy4I
         KF5O/TL/9PH6gG75e+YYRNhD8Z8Qz99ZshTHDjJGdA+WxB6iAwO2D/w7y46gHe/p3wu3
         EBTQ==
X-Gm-Message-State: AOAM533iaULkva1Mdyu4ZHLG6y79LREFwdeBbcgbT0xGlQ7QuKxHguEZ
        8ckQEA4DKp4B6gynLqPLLOKZ4AZRCk/7BhYsa2/Niw3lAYXufrtTsR1VWusrg/3WFxRzNLBDVhc
        5Js6OCyBrYMld0XbjRCTzv7eGXndizOK2vpdRAXI=
X-Received: by 2002:a17:906:3d72:: with SMTP id r18mr6466780ejf.525.1633886250843;
        Sun, 10 Oct 2021 10:17:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwULoe1r7gtplsH7VwMtTw7dZPaE/oWFm+Yvn4E8fkz/wvGMrgbSxgA6IUKhjcqCIHOcnMyWw==
X-Received: by 2002:a17:906:3d72:: with SMTP id r18mr6466764ejf.525.1633886250723;
        Sun, 10 Oct 2021 10:17:30 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p6sm2792009edi.18.2021.10.10.10.17.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Oct 2021 10:17:30 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Chanho Park <chanho61.park@samsung.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: (subset) [PATCH v3 3/3] arm64: dts: exynos: add minimal support for exynosautov9 sadk board
Date:   Sun, 10 Oct 2021 19:17:26 +0200
Message-Id: <163388622665.8712.16297389599779361113.b4-ty@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211010032246.146939-4-chanho61.park@samsung.com>
References: <20211010032246.146939-1-chanho61.park@samsung.com> <CGME20211010032456epcas2p15f951954f7bc7ca505806fdcea4e6390@epcas2p1.samsung.com> <20211010032246.146939-4-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 10 Oct 2021 12:22:46 +0900, Chanho Park wrote:
> SADK(Samsung Automotive Development Kit) is the development kit to
> evaluate Exynos Auto v9 SoC. It has 16GB LPDDR4 DRAM and two
> 256GB Samsung UFS. This patch enables only serial console and ufs0
> device.
> 
> 

Applied, thanks!

[3/3] arm64: dts: exynos: add minimal support for exynosautov9 sadk board
      commit: a89d8b5ce9af2128db074a5f0f5096b2716085aa

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
