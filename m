Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF8CC41D907
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 13:47:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350546AbhI3Lth (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 07:49:37 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:34958
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1350526AbhI3Lth (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 30 Sep 2021 07:49:37 -0400
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id C607A402CE
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 11:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633002473;
        bh=30GqHbSX7U2pH06RCxY6mnA48AnbCVjiQKTx0BVxwMQ=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=GF1oVo95HPyh6ET4npF5hWXNwBnHNiM7AbRwEZN4YJ8n5ePccKjlFp/Zv6z0QB1wq
         v7eWuQZITb7DrNn0140mv0ZQ9E7MDefd/nYP0xqIWJ0nc2mnFvVDrcLfeIqroQItud
         qJqInNRtzT/PWzXv5sK0uZwU69ijwCGJ7ckh++Shz2xtRriq9x4eZJYE55dCJ6v1ru
         v+5fu+rmjl5PU8z9cqbsNBfiLhBLpuAQTe0YmFM5H5Mqlzrh4sFHje2NMGSt74Fcae
         cFHQ3NxOzkbSGxOaRv9vteARB/3v1gVNdLL/uw/If20Hpc1HiLhaxhhjksxSEvAq8P
         UeItdgbDwWrIA==
Received: by mail-lf1-f71.google.com with SMTP id g9-20020a0565123b8900b003f33a027130so5341569lfv.18
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 04:47:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=30GqHbSX7U2pH06RCxY6mnA48AnbCVjiQKTx0BVxwMQ=;
        b=EEoTxS8i8oY94ZcccNBjus4buha7mtBk/QS/aB1zBz2iIaSAP3x4QvUfrVYpQ5Y5A/
         XoAcLQVRm9XT9oWc8lfmCd52oLUqrROVHIgw40jk6cYYoJwpdLXcP67YiGZhIySCV8ga
         604tKBUvW6a+Qe4OTMNm3Jlpix8TmvW9lWmsqQlB8lLM7n8kJpHQ3eJa78gcbhWHxpzr
         WOjj2GV1qa39veFOEXdyp9ve1zI/8Xl3UuJzrlmUgq34ptOBcvZ+bN0mlYzW7cX4j5Da
         21mZekgXV4kenyW6Mhmyqh1hX143rMxfqQpJt9kLuKAI9R9GVPNFukPRb4sTMmfMlECL
         nqFw==
X-Gm-Message-State: AOAM533SqyE/I1Fvm7TVeGMkh+x1IrVPdeui4dMo+HxEtbGp1FWAB/66
        4rr+rOU3EDcC8WWqIhqeZ+zPrkprAVDPVjkGMLxplGD2g5vntvD7muUHNwWMqwIsuixtFJ+GIdO
        vNarP8oHjpAUVrDpcfgMguQ0ffptSqIZH69sb4Pc=
X-Received: by 2002:a19:7b16:: with SMTP id w22mr5325756lfc.197.1633002473166;
        Thu, 30 Sep 2021 04:47:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyzlYjPDEr1fFxHxvIWWfISigHa9YDy7HSM5ztq/2c2pZmcQ6QQFrEh17DWNlIWhli5i28q7A==
X-Received: by 2002:a19:7b16:: with SMTP id w22mr5325730lfc.197.1633002472978;
        Thu, 30 Sep 2021 04:47:52 -0700 (PDT)
Received: from localhost.localdomain ([193.178.187.25])
        by smtp.gmail.com with ESMTPSA id w19sm311349ljd.110.2021.09.30.04.47.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Sep 2021 04:47:52 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-kernel@vger.kernel.org, Tomasz Figa <tomasz.figa@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Mark Brown <broonie@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Lee Jones <lee.jones@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Chanwoo Choi <cw00.choi@samsung.com>
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>
Subject: Re: (subset) [PATCH 11/12] ARM: dts: exynos: remove unneeded DVS voltages from PMIC on Arndale
Date:   Thu, 30 Sep 2021 13:47:15 +0200
Message-Id: <163300242600.178519.8912702221291105624.b4-ty@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210928084949.27939-12-krzysztof.kozlowski@canonical.com>
References: <20210928084949.27939-1-krzysztof.kozlowski@canonical.com> <20210928084949.27939-12-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 28 Sep 2021 10:49:48 +0200, Krzysztof Kozlowski wrote:
> The S5M8767 PMIC does not require anymore a safe DVS voltage, if the DVS
> GPIO is not enabled.  Although previously bindings required providing
> this safe DVS voltage, but since commit 04f9f068a619 ("regulator:
> s5m8767: Modify parsing method of the voltage table of buck2/3/4") this
> was ignored.
> 
> 
> [...]

Applied, thanks!

[11/12] ARM: dts: exynos: remove unneeded DVS voltages from PMIC on Arndale
        commit: 1d775cc371620caa12cb404771edbab944b1caba

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
