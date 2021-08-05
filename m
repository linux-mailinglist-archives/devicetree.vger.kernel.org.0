Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D5483E0F23
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 09:26:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238638AbhHEH0V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 03:26:21 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:40648
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230446AbhHEH0V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 03:26:21 -0400
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id E7DD340641
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 07:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1628148366;
        bh=g9qBqxkhsVrwTaR51E6CfuBSIwrS5M1PgyyXHDx+vl4=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=Zz0+i8Bd+AmF4pBukb+CxwQJLKOss25NPFOCmXKuO2wva0uhFGZWm1Ee6HbTjoYHO
         jl0tE1acbR0dA8orYIPGDWIP3S9Ay+iG6hM7jVdAPDkfx0t4oI/+214MwsWoq+1Qtl
         Wd6S0/BqoMK2jm+eHfcP/qfsbXODwRCfzfEaCspiFUJSlFRugDtDv4WZZDZGtJDJ6a
         V50Qwp8NPruJNJ6SemuEDkIdRvHrbB4wmT7T2JO4IW6Sq7IqWeHbPs7YSw0kfEbjff
         ONwm4lTj6Sx5Ntc/jz5E+Yt/SDdZzRLxHU/0/hKzDLsaJMDWfJuCQ1YzpDKyy+SfOG
         xCpVmowKr8HYA==
Received: by mail-ej1-f70.google.com with SMTP id ne21-20020a1709077b95b029057eb61c6fdfso1703162ejc.22
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 00:26:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=g9qBqxkhsVrwTaR51E6CfuBSIwrS5M1PgyyXHDx+vl4=;
        b=iQM28xkg7/jDMpq+kU8KYQe6wcDFdmmV2TxVeps5+MbFuaRwZeadTBjliDHKKOpsWw
         rAfddoi14/ven4zDdzt//S37ZZtE465s1JHbTTbcJMTLRThQpGY1MMjYbrgDfwhFb3rL
         p23MhZX5u6vwAW72dtnVSbfgYkiTQIcKmk6wH5k0SgtfTJ5SuXd8U1pCS6F5KK6W+sAv
         XblQO/vcZkf68egCTU3+hqsd6362huSwLgjMPGmzS3msGmq6UYuTr9bS0g358zrrjZdm
         cwpRqMutYjOBLTYenEnSJ8xVhLVyACuUSIOPwdQuz8LfWsyEY1O/2hH8bnIGg+/Jbny2
         iPiA==
X-Gm-Message-State: AOAM5311vyPEGQ4h87d6r0M+wrZVqftynwhFMVAECdRuAtUPulB7Dvkm
        x7eR8qHligSkQSZkbPwVlYjdz9toi+9AJjoJfIZvaphVfg91sdfbuiAB1fy4EpIsPOGndO6suAX
        G+nHpkkSEmGAEVPbtKwTJutSjKQwEQNpaD0e4GR4=
X-Received: by 2002:a50:be81:: with SMTP id b1mr4735911edk.295.1628148365342;
        Thu, 05 Aug 2021 00:26:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw+pEeF0AYkyWCT4YC0tcD+JhvhWIIsPWvWkaXRRVc3F27jZY8cg94BFy4gyubfS81YcRMbvg==
X-Received: by 2002:a50:be81:: with SMTP id b1mr4735896edk.295.1628148365185;
        Thu, 05 Aug 2021 00:26:05 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id la23sm1399073ejc.63.2021.08.05.00.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Aug 2021 00:26:04 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH 1/8] ARM: dts: exynos: add CPU topology to Exynos3250
Date:   Thu,  5 Aug 2021 09:25:25 +0200
Message-Id: <162814831970.6166.12328372184939604484.b4-ty@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210731092409.31496-1-krzysztof.kozlowski@canonical.com>
References: <20210731092409.31496-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 31 Jul 2021 11:24:02 +0200, Krzysztof Kozlowski wrote:
> Describe Exynos3250 CPU topology.

Applied, thanks!

[1/8] ARM: dts: exynos: add CPU topology to Exynos3250
      commit: a2798e309f3c67ab69073582dc4b8102a9013e25
[2/8] ARM: dts: exynos: add CPU topology to Exynos4210
      commit: 900dd07d13e46b2937522ac7cc46a9ceb49284b6
[3/8] ARM: dts: exynos: add CPU topology to Exynos4412
      commit: 1fb5b5b0dc491613eaa42bc39457589bfcb2b2b9
[4/8] ARM: dts: exynos: add CPU topology to Exynos5250
      commit: fc6d5c9953757c61042676db9bb32ecd7af958f3
[5/8] ARM: dts: exynos: add CPU topology to Exynos5260
      commit: fa0c56dbc3a1b116d280c3a3a97052ea38e4ea2b
[6/8] ARM: dts: exynos: add CPU topology to Exynos5420
      commit: a73d3069f6f7717bbd31a2fcfe8ddb3d98076b1d
[7/8] ARM: dts: exynos: add CPU topology to Exynos5422
      commit: 6cad6db75231a18f25dc7d610d5a0683160ac545
[8/8] arm64: dts: exynos: add CPU topology to Exynos5433
      commit: 0cdcca7ec37cfe54cd2f0668eddcf5aef87a05e3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
