Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE9E349736B
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 18:10:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233929AbiAWRKn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 12:10:43 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:43058
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231420AbiAWRKn (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jan 2022 12:10:43 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A3ADF3F17B
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 17:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642957842;
        bh=oATqwnnt1psqOh66KQd7jqPYNnGRg6p0+5NzS2CTiIc=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=Hj/JFfC886d/d7CHa/VgQL+DY7TcpnX1xprqOnsHzTbXCwfrh30HPjIUjAuPmEDe5
         44DW+y4x5l/bJEMKNuR0m51k1YM5I67DoNA6bdPP8tOfg5tXOBCSsmMjtIDvFz7Jye
         OKfTjRZD9qvor4qotMZvbrUCfX8qYr9qb0sIdMRgY47h1dgKECBz8nwiGTBpS5wbVd
         zu9LqOroW4aWj3ImyFEjmwt26m9W/kkStFrAERDmW8kOu+6T9rd//hk8S+bo+JItv9
         awWnU8dy8kNWTLXBp0X57vrJBriWBuKeBaB5NNJGB5LmT/ROTb/8ql10HAC3UrfSSc
         xcAqczkwT5wgQ==
Received: by mail-ed1-f72.google.com with SMTP id i22-20020a0564020f1600b00407b56326a2so1491801eda.18
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 09:10:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oATqwnnt1psqOh66KQd7jqPYNnGRg6p0+5NzS2CTiIc=;
        b=W3KrJlI2ylXCJ7l/DQdAcUAPuUcaG9+7UZoDbxcTU2YoiCcU6+0FsuyyBNTFcTLwzU
         6+QsUHXJGALur/4k2QESqY+nyJe0CIeY8yJLvcvQTXhpllwB6iD3L1RwNG7NVkutMRvf
         ct2HB7f4aC57/SPyEO1Gbn7o34ukaKKNKHKe7fdP6gR2LJcN3nzqITFKglD999P8Z7lg
         d7elBOJFTgYBdZTk40oTTyBOoyxIE/32NqIL096+JFY2oplkKJRfO4+UPPRuP2eC8FKf
         DUq/MjiRDFBPM1GA6tMVUPBGySPoECbGG3ZJb+tKH5Eh+QPubBff3d1ssRZLCTwxoD28
         FPLg==
X-Gm-Message-State: AOAM531Ef4rlMSjDz9rfQasHurVO3eo/klcq/YRw50AEjkEVdlFme/Zb
        yMNVyP7+paHQB9YtuL75ssNFwXHU3VWdtyeht1Mt0NBh0opYH0O6iYflwS7FGOn3zPxypl6KbVT
        POT65AsE0i28Ja8Zr9CIoTAD4L//ZhqdtNVfnkoE=
X-Received: by 2002:a05:6402:27c7:: with SMTP id c7mr12386191ede.374.1642957842417;
        Sun, 23 Jan 2022 09:10:42 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxYzOwXpiIcmy0TMEcsWeUpUssbAvC3Y0LO9o1XWtKWmkgSFkP1GQNwRqbSopfXFwEGiLHajg==
X-Received: by 2002:a05:6402:27c7:: with SMTP id c7mr12386176ede.374.1642957842232;
        Sun, 23 Jan 2022 09:10:42 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id l2sm5208665eds.28.2022.01.23.09.10.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 09:10:41 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Stephen Boyd <sboyd@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-samsung-soc@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        linux-clk@vger.kernel.org,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 2/8] ARM: dts: exynos: add necessary clock controller inputs in Exynos5260
Date:   Sun, 23 Jan 2022 18:10:35 +0100
Message-Id: <164295777264.25838.15093344260237063219.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220102115356.75796-2-krzysztof.kozlowski@canonical.com>
References: <20220102115356.75796-1-krzysztof.kozlowski@canonical.com> <20220102115356.75796-2-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 2 Jan 2022 12:53:50 +0100, Krzysztof Kozlowski wrote:
> Exynos5260 bindings require to feed clock controllers with certain clock
> inputs.  The IO clocks are expected to be provided by the board.  The
> PHY clocks are usually followed by mux which can choose between the PHY
> clock and main 24 MHz oscillator, so skip defining them and just use the
> latter one.
> 
> 
> [...]

Applied, thanks!

[2/8] ARM: dts: exynos: add necessary clock controller inputs in Exynos5260
      commit: 9eb8090f95e2ef8d19ebce6a77e87b26b56fc831

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
