Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4455F4B367C
	for <lists+devicetree@lfdr.de>; Sat, 12 Feb 2022 17:37:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237419AbiBLQhR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Feb 2022 11:37:17 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:45978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231560AbiBLQhQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Feb 2022 11:37:16 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4A3220F
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 08:37:12 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1091B402B4
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 16:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644683830;
        bh=tMqilUYIpgE4D+Oy8hol1pf8fg4uaneK2N51DubcZr4=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=TiRW7YRnNGf2WNlYqFkEI9zM+jgoTc4a5gPK1pQSH55ZdZOw8GRiz27Jkhp31nsrh
         5uAjjzhv/lF+uY4GcEweIVsqksr6y2Ec4PY4u6ls3ClJ36C9Pq0v6D7pZADmIa5ZtP
         Be1Cy8mZh+DeJZ0rxWwhwz0xzw4knFdQfROeTcPtmavSDg0BfJ8Epvd4thXv9wxedu
         SfsbfE5WXWCnGunbAfQOiFz8Gzt1w5+QOZl/ZvqtsuJRh1a1n6C1b/hoJ18MoYzD4H
         MZPhzvp3u7hydYvuEVdijUB1aCCM36EfpLDVqJLbmmO1k7pii+v+p2pCWNN8F2wFE3
         OBu7LkCF4vlQQ==
Received: by mail-ed1-f69.google.com with SMTP id f6-20020a0564021e8600b0040f662b99ffso7330746edf.7
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 08:37:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tMqilUYIpgE4D+Oy8hol1pf8fg4uaneK2N51DubcZr4=;
        b=JLM23k11s0HFgjHEJP0zmSMfl1ND3YFmTE0D3qY43tHz9UTudSLaJQxQAJgnPa8p/V
         FuyDVKcbEKSgn4kEvGBeognYMD+/V7GU+4hL+InXuq1jflZeCVnltirYaSy2BARY7x9Z
         3vVB5K4goJgW9F2GZRKwTm+yavPj5eYWb9uPBCiS3lgF1zlBqb4LVKteTNQO8aVTTQd+
         vb8CPWwyimir3g/PWf2bjFa8Yac7qZG7l/UUm9UGX/bsLqNN1TIiVN2UYEinGr1n6gPB
         3Fv5GqJjlbDLwvKBX9ZwDbgrus1ab0jqXtsckB2YiksiWSKnItlbVNM7e/OKcZcWVUoG
         SXuA==
X-Gm-Message-State: AOAM531kknbfhBhqr3nVkqDKORKoLIvf4QcP3dHfpfuWc6+txeHiDAtY
        GDi/xM+g+gehxoEkLEeZ/yjdK1F4LrF4K4G8oRDL61GCV3sExcBRiXEGJInwtmXvhfZ3MJzyzKB
        D3TxYzB7yDvJxht0Ho676DJM9Dw7CyMxJYjekP6A=
X-Received: by 2002:a17:907:c07:: with SMTP id ga7mr5546529ejc.536.1644683829513;
        Sat, 12 Feb 2022 08:37:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxD2vBUSSwJtNtb2tnnNYmZ8ce5zaQGnbpfOOmEuusMoNeqmKg6uKEeUXp4CHd4UHdvHqCobg==
X-Received: by 2002:a17:907:c07:: with SMTP id ga7mr5546511ejc.536.1644683829366;
        Sat, 12 Feb 2022 08:37:09 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id x10sm2494443edd.20.2022.02.12.08.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Feb 2022 08:37:08 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-phy@lists.infradead.org,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-kernel@lists.infradead.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        linux-samsung-soc@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Vinod Koul <vkoul@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Joonyoung Shim <jy0922.shim@samsung.com>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Inki Dae <inki.dae@samsung.com>, linux-kernel@vger.kernel.org
Cc:     stable@vger.kernel.org, Sylwester Nawrocki <snawrocki@kernel.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: (subset) [PATCH 01/10] ARM: dts: exynos: add missing HDMI supplies on SMDK5250
Date:   Sat, 12 Feb 2022 17:37:03 +0100
Message-Id: <164468382250.54495.17179167915023420156.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220208171823.226211-2-krzysztof.kozlowski@canonical.com>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com> <20220208171823.226211-2-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 8 Feb 2022 18:18:14 +0100, Krzysztof Kozlowski wrote:
> Add required VDD supplies to HDMI block on SMDK5250.  Without them, the
> HDMI driver won't probe.  Because of lack of schematics, use same
> supplies as on Arndale 5250 board (voltage matches).
> 
> 

Applied, thanks!

[01/10] ARM: dts: exynos: add missing HDMI supplies on SMDK5250
        commit: 60a9914cb2061ba612a3f14f6ad329912b486360

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
