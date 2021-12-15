Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16BB9475D4A
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 17:23:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244732AbhLOQWI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 11:22:08 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:55196
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244707AbhLOQVz (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Dec 2021 11:21:55 -0500
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 30C943F1D7
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 16:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639585314;
        bh=UQpra13r/imnuYK+P2IbZ5XGTwYfQ/5zZ4iMI2bSBTk=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=GzvKAZkxxlYT7X3R+dnU2AfMFq4aLyoUrAhWiZuPlL8LbER8dJ1ovWIpXAspMWd8o
         UZJGf3ZiHuC5FIf5gDhPzkHhlHZBjSjWxyQBMzPYSVvwzkgbLiOg8Ap5PlfM3PWyXB
         k2xgcFSajHtDtD3WVaEX2md89HCTUnYj5jLq1da7jXkLlyYek1VYouq5IOdFPGv2K6
         Fof3EE9rZ3g2rjAb96R1dyniMoMPmHiphZGoIow8Q2jeXOdPEKxvbNG10yzmy9jLK1
         jgpkUgtU3xEpTxjhH0QhM0OAZzasyQryEwnWVCDXJorvLQCNTOE/0AL85E5if6AByC
         Eibke0aUZnPrQ==
Received: by mail-lf1-f72.google.com with SMTP id u20-20020ac24c34000000b0041fcb2ca86eso7561065lfq.0
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 08:21:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UQpra13r/imnuYK+P2IbZ5XGTwYfQ/5zZ4iMI2bSBTk=;
        b=iy3xPDutd4rJ2f4jNfUUzmhX13oNviYkxlJlFkt7qZHqoMjaoszJ2Qq8KEL9XSkJ3J
         Ac8pF9+QlZ5H45rc/H7aZ57DGR1gmskzIDCg7GdYt4D63EJPFWvxohc5cL9iFHr21PD9
         S0wyMh6h+cckJ5w0MuC1LVhUNI+EbonM31wBLS4bwEgiodAKAdQZGaVwfC9tNjxyp4iz
         CmcXMR/oOf4IthWLGGjdEwg/1DjI8p6U7gVRAaITk2T9vfUGLTTbWLtHpQax4nZ1W+xQ
         43o1WGiJptPYhRHa/QUvw564X4gH+BuuCL37klUfa6ZICyn7BmAZJkgIXz+w3fk984yc
         dmow==
X-Gm-Message-State: AOAM532BEyHYbE/tG+j2Pzn1Zfy8IJz3ucxMnZB52hFt3Q9SjNdHOKlk
        K1tcKDEGDb098P+EOBz++ip/k/00ETT2x9JHGLA3vJTRzhiPmbQ0WpJLhyFiKIVy1GXO3qI4hOB
        7zpLbn+17ah32BRY8F8JgeylYr1FRAK16VjAmivg=
X-Received: by 2002:a19:d61a:: with SMTP id n26mr10578620lfg.313.1639585313506;
        Wed, 15 Dec 2021 08:21:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxxRxyxjrUFbKudwdQ61hGbDEEI0JDnv9cU9sfFXGEl6TAeZSdjkJkyUrkdyqRBNhl+99x1pw==
X-Received: by 2002:a19:d61a:: with SMTP id n26mr10578610lfg.313.1639585313346;
        Wed, 15 Dec 2021 08:21:53 -0800 (PST)
Received: from localhost.localdomain (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id l4sm507392ljg.60.2021.12.15.08.21.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 08:21:52 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     David Virag <virag.david003@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        linux-clk@vger.kernel.org,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        Tomasz Figa <tomasz.figa@gmail.com>,
        linux-samsung-soc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v4 3/7] dt-bindings: arm: samsung: document jackpotlte board binding
Date:   Wed, 15 Dec 2021 17:21:16 +0100
Message-Id: <163958527260.183299.17749602272220762675.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211206153124.427102-4-virag.david003@gmail.com>
References: <20211206153124.427102-1-virag.david003@gmail.com> <20211206153124.427102-4-virag.david003@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 6 Dec 2021 16:31:17 +0100, David Virag wrote:
> Add binding for the jackpotlte board (Samsung Galaxy A8 (2018)).
> 
> 

Applied, thanks!

[3/7] dt-bindings: arm: samsung: document jackpotlte board binding
      commit: c96ebc5fde274edcc02543dcfb6a1ee097f98070

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
