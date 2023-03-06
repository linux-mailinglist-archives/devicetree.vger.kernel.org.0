Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CF396ABE61
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 12:39:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230301AbjCFLjU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 06:39:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230261AbjCFLjT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 06:39:19 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C736183F3
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 03:39:17 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id da10so37281768edb.3
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 03:39:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678102756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uD+gKOTlisWqbX4YKUyXQX4gDjOd8MtUQxrSJXNw98U=;
        b=r7rDQAvErMdY8A+AQnN2XTRPKVJ8b4eMcd94U9sj/lyrs2ic/vvCCMPTbzoPJCPs7Q
         DyqHfbVjhwHlWY0IgnQitSQjHGoJQNfW6fhAzesIHjbbbDIvFuxFydilLmKkPPYN2zjs
         DY38dr6Woo+60B4sV9irnwwz7zKzU3eirVCXoGZDttBdJ+f2L5DDXWxB4fcPBzjbOGzI
         ZnaIBV+qEgfJ2F1qUefANJpHxY2aPCzfbkNfqYZuXc08NRA1zX8U1LR2/QjsmfsynW/k
         lyyVN1ErmLaqFpLuCtullH0HHQpCZfteeS035x9UrQtqtr6f0xr6Wo6PTPI4EClS9Yq3
         tZvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678102756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uD+gKOTlisWqbX4YKUyXQX4gDjOd8MtUQxrSJXNw98U=;
        b=qvmAywgpxLVUoG+91Qxj5oPuPJ1+DOLqu5Hd2i8YzLMGKtuldekMU3Pz7wVqkxHsrL
         gyReF49rP3o+pLoIk9KPsZMc0N8a6+LlRHihN4WvS+x7uIwlQ1pmb0VmTt9KLLHC6xzC
         0EUbEwsZpaIXC861zSHrerZNe6OWRV1i4iiQ8aWP9EDA/xK9gALW8Jkf4zPYzZv+fJh2
         FBCFiACfRBVnx/jneabX632fN8K7Tu+IkZJIwU2xwhjdzv7PvO6/mnCBFKrvBlNU7w/L
         Jp65O1I52/PA0YiaW1I+4gf5GmQ+9SMRNudKL0XnBT12VMCtC66Je8DKUk4zzkSJ5qlI
         nbKg==
X-Gm-Message-State: AO0yUKWnp1FekiTyOTl7eXKify/3hO7LUyVP2xVzd4kUqB9muOkb94CA
        GaZpCIizBGnJ4P4owsRho2vD3A==
X-Google-Smtp-Source: AK7set+sFMmcDPkskPxCXy6G8zA5q6jemr0axTswBrYfY0RXFc+dKP+O5UvEWbFfzVe6lwKRfe5LqA==
X-Received: by 2002:a17:907:a429:b0:88b:23bb:e61f with SMTP id sg41-20020a170907a42900b0088b23bbe61fmr13435029ejc.25.1678102756328;
        Mon, 06 Mar 2023 03:39:16 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d85d:5a4b:9830:fcfe])
        by smtp.gmail.com with ESMTPSA id ch10-20020a170906c2ca00b008cf8c6f5c43sm4411936ejb.83.2023.03.06.03.39.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 03:39:16 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Mateusz Krawczuk <m.krawczuk@partner.samsung.com>,
        Tomasz Figa <t.figa@samsung.com>,
        Kukjin Kim <kgene.kim@samsung.com>,
        linux-arm-kernel@lists.infradead.org,
        Kyungmin Park <kyungmin.park@samsung.com>
Subject: Re: [PATCH 1/2] ARM: dts: exynos: correct whitespace in Midas
Date:   Mon,  6 Mar 2023 12:39:05 +0100
Message-Id: <167810274095.82312.16691571188955561484.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230212185818.43503-1-krzysztof.kozlowski@linaro.org>
References: <20230212185818.43503-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 12 Feb 2023 19:58:17 +0100, Krzysztof Kozlowski wrote:
> Correct indentation and whitespace in Exynos4412 Midas board.
> 
> 

Applied, thanks!

[1/2] ARM: dts: exynos: correct whitespace in Midas
      https://git.kernel.org/krzk/linux/c/2beafeafeb4edce6540c37bc2117ea6e21c86d6a
[2/2] ARM: dts: s5pv210: correct MIPI CSIS clock name
      https://git.kernel.org/krzk/linux/c/665b9459bb53b8f19bd1541567e1fe9782c83c4b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
