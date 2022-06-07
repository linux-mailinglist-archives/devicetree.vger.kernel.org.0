Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 763B953F64B
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 08:39:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237129AbiFGGjW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 02:39:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237051AbiFGGjT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 02:39:19 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE8FFAFB00
        for <devicetree@vger.kernel.org>; Mon,  6 Jun 2022 23:39:17 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id q21so33164869ejm.1
        for <devicetree@vger.kernel.org>; Mon, 06 Jun 2022 23:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=loges8s8zoV1C9PFiO71uU1qlpSiYfV9MSsL7MBBWRw=;
        b=LjQdF1tKP1kQSL+husirj9ps8XjdG4g5cybME/kjkMYjlDiT1Cr034Q4FkeoHhhCQd
         2ZhUcIiSQvW1S+GqPeYk4whHbq3utWCf6jbt1PH6+T5TS8QQajLKNPNvpIMLgbmr0Vj8
         BDsCEOyhF+kuWbcZ4U8yLsUd6iO1oA2Ai+id7lHLfZGmP238HeZEplNoGU6ZIEk374iV
         ba3Gqcp/j3YLV2cq/ZlwCO/i/R4AvaSapwf6ny+/cuNGb+HLE9Xq3P5qFMLkfoGifyQX
         t4b8OsGm3Q61enqMs0j3EIblK83BLEi1hwJDiLWmjfFeLOfUq182eejFL38sX+sATHv9
         YOcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=loges8s8zoV1C9PFiO71uU1qlpSiYfV9MSsL7MBBWRw=;
        b=zj7448CTHJLVYFHuSVasqIW6/j8XPfRc20RDiQbtDZ9p3QYfv7l80bcgwSEKJ+OYrH
         V44x/pTP0A+9FwzRgdJRa0ORX/uRymrgPVxGHuvRnDw478mxS7ZzYqItRojKBrGobVMx
         rON/tDBxJElQa6I5+73AYlLsQIL7uqhYINa7onCaVHbm9XjxE7w687ItkeOw6HelAZLa
         9kiUpDWXp0aLlpR6MT6/HWHg6S3Hg3QIeMnx5X19+zGVMwwTwIgYqVwBQZBwwBzrt3Rc
         V1/RcVgWk29vrTkHxzT1TTe8B7Qa4p52gTjBfF8sBmvw17gA8x2ysHl6VSB/J9oG7Bhs
         7tkA==
X-Gm-Message-State: AOAM533HhsulHECH4CW1cZJVnO9xsjBKzhfQlsQvw5+tNDE6ETPBe9aO
        WZXhGXkdcahycXC4Z5oFuxUtRx+O+a8CQA==
X-Google-Smtp-Source: ABdhPJwd5sMXWXnHhxyv65OQ/SEnHwE8kGMI0uMl3SQbTKiwqhP+IINZDFnRlE8FgFVg7MdFxzEJmg==
X-Received: by 2002:a17:906:c838:b0:711:d49f:687c with SMTP id dd24-20020a170906c83800b00711d49f687cmr6629267ejb.668.1654583956240;
        Mon, 06 Jun 2022 23:39:16 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jo13-20020a170906f6cd00b006febc86b8besm7016888ejb.117.2022.06.06.23.39.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 23:39:15 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Alim Akhtar <alim.akhtar@samsung.com>
Cc:     Chanho Park <chanho61.park@samsung.com>
Subject: Re: (subset) [PATCH v3 1/8] ARM: dts: s3c2410: use local header for pinctrl register values
Date:   Tue,  7 Jun 2022 08:39:09 +0200
Message-Id: <165458395109.7886.17085666406343091963.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220605160508.134075-2-krzysztof.kozlowski@linaro.org>
References: <20220605160508.134075-1-krzysztof.kozlowski@linaro.org> <20220605160508.134075-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 5 Jun 2022 18:05:01 +0200, Krzysztof Kozlowski wrote:
> The DTS uses hardware register values directly in pin controller pin
> configuration.  These are not some IDs or other abstraction layer but
> raw numbers used in the registers.
> 
> These numbers were previously put in the bindings header to avoid code
> duplication and to provide some context meaning (name), but they do not
> fit the purpose of bindings.  It is also quite confusing to use
> constants prefixed with Exynos for other SoC, because there is actually
> nothing here in common, except the actual value.
> 
> [...]

Applied, thanks!

[1/8] ARM: dts: s3c2410: use local header for pinctrl register values
      https://git.kernel.org/krzk/linux/c/5dba27958273ffc0056795a479550957a134e981

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
