Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF4506ABE6B
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 12:39:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230325AbjCFLjb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 06:39:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230347AbjCFLj1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 06:39:27 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8565229422
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 03:39:23 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id ay14so33512818edb.11
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 03:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678102763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HzWGqAjLpHlD5u9jCAHG+a2PbEWqmZpag0JMmVH0IbQ=;
        b=i8hXqbKI/U0F9gdOtmUtiK/N5On7BfXK0q3TX/+n0ooQTDCLoftkzAu+ZYJIlGWAXZ
         LA3DhgOeIkx/4Ne0fDXzrCk3MsXepbwqhyB0Y3ZIqkZa6BBKZUvY5fqTna0G99v8YYYL
         Xr/Tb22i5suo7j8jSYlfSRzxZoqDQtO1Y2I9JlG696MYLI2H0fWjthTNAcoKMlJRZn85
         y0chlJ2hRuT+ytvlxtIPb5xH8R29AzUW+xYYtlkjELG4RarfpzqxH0pLlRN9IFGHcW5h
         iK/6bEv/oKK3se0hGd7eJQivdgZSuqwrE6ndvg+/y4Cw6t+dPgEPRbNpmwSJmvi6+YQC
         dGgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678102763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HzWGqAjLpHlD5u9jCAHG+a2PbEWqmZpag0JMmVH0IbQ=;
        b=PdMt0hWgu2plgcCbKYBp+cbaaSC5Ehk7hGtEvdKE6EKcCk/d2eTvC4z9G5K/9S7fZH
         t2NAGmypcT7BDWVDNHCqXQgOe82gNWGBtb+DSjBih5CDInFwhH+STIPsoqxd+O6taBE8
         dB/dc8dt7I0RqLXoVBh+R4Dbc0rpJyPb/VMmxjap5NjF8VY7nY6R9WLcEl6IAqNVZc0U
         fMH+cywQwqK8bUz4WfHn2AJzRWfkIFgx4UxQCtgdzVFBD/zpBOAa17GkAVhycW2h0O6O
         bEyD6j9UoxjiJCTfFg9OgbH+1VyV8TCkDHaPi4j15C7biWlHnV8nrsAUEKYecXSNmasj
         4Cjw==
X-Gm-Message-State: AO0yUKWcUR4if74RPL5yE3ruv1xSwFwFQahlLcTa41QAHeGcUY8chdpO
        fUdgwJHD3xLrpNVknp7xtpVerw==
X-Google-Smtp-Source: AK7set/fIAy5r7sbONvLExQKUO7U8NmLEBitXQ6a20ZCy6KaPV7F32QpdGzQxjxOW3bBkjExKFtH6Q==
X-Received: by 2002:a17:906:dac9:b0:8aa:c090:a9ef with SMTP id xi9-20020a170906dac900b008aac090a9efmr13185992ejb.55.1678102762984;
        Mon, 06 Mar 2023 03:39:22 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d85d:5a4b:9830:fcfe])
        by smtp.gmail.com with ESMTPSA id ch10-20020a170906c2ca00b008cf8c6f5c43sm4411936ejb.83.2023.03.06.03.39.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 03:39:22 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Vinod Koul <vkoul@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc:     Henrik Grimler <henrik@grimler.se>, phone-devel@vger.kernel.org,
        replicant@osuosl.org, ~postmarketos/upstreaming@lists.sr.ht,
        Chanwoo Choi <cw00.choi@samsung.com>,
        =?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>
Subject: Re: (subset) [PATCH 6/8] ARM: dts: exynos: move DP and MIPI phys to PMU node in Exynos5420
Date:   Mon,  6 Mar 2023 12:39:10 +0100
Message-Id: <167810274096.82312.8759303246779473962.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-7-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org> <20230127194057.186458-7-krzysztof.kozlowski@linaro.org>
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

On Fri, 27 Jan 2023 20:40:55 +0100, Krzysztof Kozlowski wrote:
> The DisplayPort and MIPI phys are actually part of the Power Management
> Unit system controller.  They do not have their own address space, thus
> keeping the nodes under soc causes warnings:
> 
>   exynos5420-smdk5420.dtb: soc: dp-video-phy: {'compatible': ['samsung,exynos5420-dp-video-phy'],
>     'samsung,pmu-syscon': [[11]], '#phy-cells': [[0]], 'phandle': [[16]]} should not be valid under {'type': 'object'}
> 
> [...]

Applied, thanks!

[6/8] ARM: dts: exynos: move DP and MIPI phys to PMU node in Exynos5420
      https://git.kernel.org/krzk/linux/c/972b567075845a55d525f1ed5d7cd7b6d524afdc

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
