Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0ED26ABE77
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 12:40:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230019AbjCFLkI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 06:40:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230381AbjCFLja (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 06:39:30 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52CAA29160
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 03:39:27 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id cy23so37063953edb.12
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 03:39:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678102766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UBm+LmDf7JpRpW0pbr+OMw7xDIF/iYcLmWDF8FxyxO0=;
        b=GJVkRcRVFuVw5MD5Efoncf6o7vTfmRPLCakX4v+i5vjiN17Ft9D0yPaa2IpKOMyR1/
         juIrjwqNf98Vx0tGf4RjhFNmMtpogZO/uo5hfBm8dUqojl69f2fF2Xvw99qeEHrkb5Jj
         Ooxzpoj8PIyeYhknWvm01h+gzVJ6dUliw6L5VwYS2FY4SNOxRxKUemnMXq02NTXmXiw+
         p2kiEiF8oIdwgH9J5/Ppwvx6GOy7gUWp3XDUz9aLtWx4se9fGyM3VJww4h+IBXzlkDaY
         lfCJTCwoMUI50cHEE7yU4gW9j3YnSkv7c0qP9dLMqYmjfz+0vyxlqWEhgRt6UKiHJyxE
         PWDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678102766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UBm+LmDf7JpRpW0pbr+OMw7xDIF/iYcLmWDF8FxyxO0=;
        b=Yd8T4oamh5KM420cZTv6oHcMf+pYjM+LtVM7d9o40d2xzJQ2ZVywhdId6glUhzep2L
         l5QBLDJIt421SUq998ISaEPPUNDP9mYjThWfdtjeY3b2l1LpTrn7WOfG0YTDSoFzLBGN
         5qBXprS+v4wvh2VK7UUVU0w1RiykNhJ4sCViSldAWMKmEQInLTxFx7j3s5dTA+ebycre
         Ii/iKtIqwI9yGrH/nh/0lj30TrreqbU5cAa51s3x297QLGwlGvWd8D8relE8T+IV0vYe
         tErbxAbX0qeFnL9fEQuivsDn0X0qY6hFah2C95DkFKzfmoZorS/Qnr68m/UABPWBduMM
         o2Ew==
X-Gm-Message-State: AO0yUKUI4s5+yluSsPzKwXENBkrI6KkObM3hpToqqUhzIdP2NYuFhQv6
        d4QMsAzttZtf/e0EhxOKMSFo6A==
X-Google-Smtp-Source: AK7set+3LJI+hqfpj9jjbS9NQiNFrIaeLnk+h9q8tvMSttpZOJ/9DU0LtZClQcEUdXH3HAVW+7D4LA==
X-Received: by 2002:a17:906:c001:b0:8b2:d70c:34ae with SMTP id e1-20020a170906c00100b008b2d70c34aemr10877241ejz.71.1678102765790;
        Mon, 06 Mar 2023 03:39:25 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d85d:5a4b:9830:fcfe])
        by smtp.gmail.com with ESMTPSA id ch10-20020a170906c2ca00b008cf8c6f5c43sm4411936ejb.83.2023.03.06.03.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 03:39:25 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org,
        Vinod Koul <vkoul@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc:     Henrik Grimler <henrik@grimler.se>, phone-devel@vger.kernel.org,
        replicant@osuosl.org, ~postmarketos/upstreaming@lists.sr.ht,
        Chanwoo Choi <cw00.choi@samsung.com>,
        =?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>
Subject: Re: (subset) [PATCH 8/8] arm64: dts: exynos: move MIPI phy to PMU node in Exynos5433
Date:   Mon,  6 Mar 2023 12:39:12 +0100
Message-Id: <167810274096.82312.3611753501270461912.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-9-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org> <20230127194057.186458-9-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 27 Jan 2023 20:40:57 +0100, Krzysztof Kozlowski wrote:
> The MIPI phy is actually part of the Power Management Unit system
> controller.  It does not have own address space, thus keeping the node
> under soc causes warnings:
> 
>   exynos5433-tm2e.dtb: soc@0: video-phy: {'compatible': ['samsung,exynos5433-mipi-video-phy'], ...
>     should not be valid under {'type': 'object'}
> 
> [...]

Applied, thanks!

[8/8] arm64: dts: exynos: move MIPI phy to PMU node in Exynos5433
      https://git.kernel.org/krzk/linux/c/2a9c708411834661e5b0ffb817a8f82f1a2f108e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
