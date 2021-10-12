Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FC5042A44F
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 14:24:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236401AbhJLM0j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 08:26:39 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:48880
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236281AbhJLM0i (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Oct 2021 08:26:38 -0400
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 2D49C3FFFC
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 12:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634041476;
        bh=L8jClsyh1SUVJA0r9XU2zlulqfQRlXLTiZ22Cwei9Ro=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=hCbXjLb+bV6P1zeG/5eedN5ukhyKcnDusbWQkgUG91B7ppj70Kn86vcdE2le9N8rg
         kf2HPNBd5CxvNNI5Ky5RmJGMnhiDB91TpQMSt9/xLGhCdmflCYQJZhiPjLsE+uz1bS
         e6MTjH2v1dySdpQg6BTsElVkSnxsg45pufLdNL2h7shDP+RSdFMRrOZd+IzafUj2wz
         WAbV3IuuZn7VT92Usj2Do6l602AMvOiaGwqlnsjL1RWFjX5SzNp2/UhUz/llA9Ev3n
         rxf2qy69m0rkMQMG0kB+RE6fefi2mZ9eji1Nhm3XT3/JUgSF5ViKl3GOlB1BNHB+5n
         P77OAwM0Im06w==
Received: by mail-lf1-f69.google.com with SMTP id p42-20020a05651213aa00b003fd8935b8d6so5226519lfa.10
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 05:24:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=L8jClsyh1SUVJA0r9XU2zlulqfQRlXLTiZ22Cwei9Ro=;
        b=7cA5U3QdFpCddDdM8WsJEqayEsjcaT3q5uYFpyAM2dlTZkBPJkRXqWAXxNS8p4iGuD
         ySXu7hnyKjNmKLXcZi2GwdUnqcKWIom8VJ3Nys9HCz1iU48E4KabDi9rnimXl4FVYrV+
         9u4+u0KZAJouQsaHjTvg+RfKUnuWOA6YlE8hSsPhsp9O995HA0SaOnlaftyYtZkgTCty
         HsUAUTyQ61ctH37OjwsHdvEjtrTK7t11pqK0VeWpAlIFMCBKk2SsADFwxIzHv4R6dplU
         c3TUlacKjxDotjt4/1x8XU2miPhZu0LBPAvNgJVIL8J0bEcmTopXnLG5XjLnLBDKws5o
         JaPw==
X-Gm-Message-State: AOAM532dEZx+WALw8QM9YFeyCSTRNcsDcZFLdXESiRIIJGXhBcbJelLb
        TET/QkKp9p2SrauACPz5+20IDlv8qJg6ZziIMlRponNukP+u2ZEFra3SuEYSlir/WABdnEV6hed
        GdbcYrtK5+sbHqnX5hqUCMgfkgW8b0msQbRLBWNk=
X-Received: by 2002:a2e:9588:: with SMTP id w8mr2206414ljh.81.1634041475638;
        Tue, 12 Oct 2021 05:24:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy++vGK4BjPhT4cFirc9aNULQZ6xYYGmV0YyrKSwGQAib7q29vq4Xte62RvzQTSArC95xdUUw==
X-Received: by 2002:a2e:9588:: with SMTP id w8mr2206398ljh.81.1634041475396;
        Tue, 12 Oct 2021 05:24:35 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t22sm1116873ljj.61.2021.10.12.05.24.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Oct 2021 05:24:34 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Chanho Park <chanho61.park@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, Tomasz Figa <tomasz.figa@gmail.com>,
        linux-samsung-soc@vger.kernel.org,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: (subset) [PATCH v4 2/3] arm64: dts: exynos: add initial support for exynosautov9 SoC
Date:   Tue, 12 Oct 2021 14:23:58 +0200
Message-Id: <163404143358.133839.7339127354143983906.b4-ty@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211012002314.38965-3-chanho61.park@samsung.com>
References: <20211012002314.38965-1-chanho61.park@samsung.com> <CGME20211012002533epcas2p1ade9bfee49456149836f2ef1631d5626@epcas2p1.samsung.com> <20211012002314.38965-3-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 12 Oct 2021 09:23:13 +0900, Chanho Park wrote:
> Add minimal support for ExynosAuto v9 SoC[1].
> 
> - Enumarate all pinctrl nodes
> - UART with exynos850 compatible
> - UFS0 HCI + Phy
> 
> Like exynos850, this also uses fixed-rate clock nodes until clock driver
> has been supported. The clock nodes are initialized on bootloader stage
> thus we don't need to control them so far.
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: exynos: add initial support for exynosautov9 SoC
      commit: 31bbac5263aa63dfc8bfed2180bb6a5a3c531681

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
