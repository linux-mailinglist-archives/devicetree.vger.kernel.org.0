Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C962F6ABE6E
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 12:39:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229896AbjCFLjd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 06:39:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230374AbjCFLj2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 06:39:28 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D35E229168
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 03:39:24 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id ec29so6367472edb.6
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 03:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678102764;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4VTlImCQ0Akzg12jCam2LM0sLRJaXIwXOB8ngPColRs=;
        b=C0p1w2VxYFJQy2xArnQJo875OA3dC5rIxQ+gKWjT0frGVkreQMk7ilWePjnd8al29U
         cFXMaSJQQP360MuKqMJWXzeRpIHoy2FfhWvwta/SdGdcF7ZCZt5EYKGksw9uFSnFpu5d
         5vHy+KVTCeJTp25KdwtLX/Icrdd5+OC4R3hdXpmXpGOMblPg1eLEaNaH+YXV93Pjt5/B
         /BfflBy+5YJ3UQcvXZvT/ibNaeZzgepQbkmQcNgsntV0+fV16GbZlm7ilWxIlK1013AQ
         lfFkYElDgG4mIPfH1fPgrbPlj1ZFcdr0QItIQxgr5wwlJH5Oyy9vW/p+7yN9J0J9l1Rr
         XpzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678102764;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4VTlImCQ0Akzg12jCam2LM0sLRJaXIwXOB8ngPColRs=;
        b=dnljfiSvWfbhNPE7TgX/Izdiw72o/OJ71A2T0WWRN8A4cJJlmoxtI//UcBhxUxmV4j
         8uKwtJzQSUTqsfs5mJZ5qVmcCUCYg+KYoxdQXe1oeQQTQMpS9KcBQJUdwlSZcmmsLtYX
         sXeMB8DAY6n79wMeO67tXwZ8+VirtYfoGd1hCQxvNus39ILvwjc9gbbjIP8yZFrtTH4v
         agXDVpyp7OfQ2grTazQ+zCkwPlgUIdDT5aBq2CHHMN/nfJ8jNL3+NAjg8Cy+5dZKLJDD
         9XVu0nVQuRfJwEn5bfcNGU4VMJ0I0WBcubc4sZTncqm2xgpmPjJhRI1ZRxkk8OB7LHUD
         7msQ==
X-Gm-Message-State: AO0yUKVLxM+ZYhNVrpDwyVjpFWSXUfv6mHhRnqhZLbIP356o+/WxK/p/
        9V1UFMXZVRCVy/lSUgcvyfJ0lw==
X-Google-Smtp-Source: AK7set+FO8FZ6QKY7FQYoVxuyaNpT1+xnfN48dmf38sSux0CqMYcn/v9N/3hy+fOOX4q5fiOunJDkw==
X-Received: by 2002:a17:906:5daa:b0:8f4:5bda:b755 with SMTP id n10-20020a1709065daa00b008f45bdab755mr7780540ejv.4.1678102764409;
        Mon, 06 Mar 2023 03:39:24 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d85d:5a4b:9830:fcfe])
        by smtp.gmail.com with ESMTPSA id ch10-20020a170906c2ca00b008cf8c6f5c43sm4411936ejb.83.2023.03.06.03.39.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 03:39:24 -0800 (PST)
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
Subject: Re: (subset) [PATCH 7/8] ARM: dts: exynos: move DP and MIPI phys to PMU node in Exynos5250
Date:   Mon,  6 Mar 2023 12:39:11 +0100
Message-Id: <167810274096.82312.14858691013742983476.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-8-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org> <20230127194057.186458-8-krzysztof.kozlowski@linaro.org>
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

On Fri, 27 Jan 2023 20:40:56 +0100, Krzysztof Kozlowski wrote:
> The DisplayPort and MIPI phys are actually part of the Power Management
> Unit system controller.  They do not have their own address space, thus
> keeping the nodes under soc causes warnings:
> 
>   exynos5250-arndale.dtb: soc: video-phy-0: {'compatible': ['samsung,exynos5250-dp-video-phy'],
>     'samsung,pmu-syscon': [[20]], '#phy-cells': [[0]], 'phandle': [[24]]} should not be valid under {'type': 'object'}
> 
> [...]

Applied, thanks!

[7/8] ARM: dts: exynos: move DP and MIPI phys to PMU node in Exynos5250
      https://git.kernel.org/krzk/linux/c/6dc01bc640b1278f225ed73b891645202be72b55

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
