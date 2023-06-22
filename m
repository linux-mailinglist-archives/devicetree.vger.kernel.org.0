Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02E787398BE
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 09:58:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230459AbjFVH6h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 03:58:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230471AbjFVH6f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 03:58:35 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CADE26A8
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 00:58:07 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3fa74d06d72so1790125e9.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 00:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687420680; x=1690012680;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=weePZo2zFiE1c/nJhnfk4JFnGH64Gz6Yvqf1fESw1ac=;
        b=PLM8iwwESi07p0yZx5lFaNw4yGWTGoYM82f1gaojuXj/qwK5z+RK9XmyCs+mpAdrdp
         5vWNDYJb4DHmsK2nfO35Cl7j5tIAvOLDKDBWVXNgwWTX6qYVZTg56rS4icALbipfq3NX
         yKnUt1xuv53c/zAs7GpH9lzL4iSuqUJ/IMmEWlU3zVHUGxL3j/nJGdKj55wyB3TEHguA
         vONsKLL3gpd8jjYYIAI7bYfWxNt5JGVyIMORSgfZqRHooB/gRy4A3LpP+4evw+1NoK+G
         0kzzWn7sbsxf4MV8wBJjjob0CZXeS5aZ+x5iMKroIuW8h5+zqJVpS2N02tB2/ZMQkPeN
         SGwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687420680; x=1690012680;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=weePZo2zFiE1c/nJhnfk4JFnGH64Gz6Yvqf1fESw1ac=;
        b=hxB1eFkGEQWdGd/pDdF5XtreI/ZAquNTuJnASRayHoyZIxa/JiGg4qLM5t80/XruWt
         M1Ck72C3NErUQrA+DLpnC8bl7damDe5LxHVpEccUO7kX1oBMWj8oU8o34eKbmzYFWMl1
         VN98nCW9QrYB6Ul4daOwlLM+QYlMx7Bsz5mTpatoYUYL5ybL4SQ7yDggsvx7xX/cFzSn
         fHUgVKRrdEwhmI6z2RsEYuOrgbLwhU/NJCeFmsviJVHAK5traKrlrSqHYUbZXDwwu/Sp
         1GMUUPepLhK8UgJiaDHCTuEkqHi8tYhS7t4q9VVbLEYcxltjw1FbuhCIzwrirxLfH1Af
         gYdg==
X-Gm-Message-State: AC+VfDwFLlyGIqYAWBO8FA1+Me1QYpr8j/6kZev56IHAZeOGFL3r1AsY
        7rrEE2OVaua+vk8qonhmLk++aA==
X-Google-Smtp-Source: ACHHUZ7TmMn+YQuTcEKH98tBPOxg4bhk+YwRYQAPrfkx54ogpouJkCuAeRIJ3oZpyLhmOi+R4GPJdQ==
X-Received: by 2002:a7b:cb9a:0:b0:3f9:a6f2:8656 with SMTP id m26-20020a7bcb9a000000b003f9a6f28656mr8069188wmi.35.1687420680068;
        Thu, 22 Jun 2023 00:58:00 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id u23-20020a05600c00d700b003f78fd2cf5esm7000683wmm.40.2023.06.22.00.57.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 00:57:59 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Marc Zyngier <maz@kernel.org>,
        Heiner Kallweit <hkallweit1@gmail.com>
Cc:     "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <e06e9f26-cf55-5596-c799-d698e9d7b409@gmail.com>
References: <e06e9f26-cf55-5596-c799-d698e9d7b409@gmail.com>
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: Convert Amlogic
 Meson GPIO interrupt controller binding
Message-Id: <168742067914.2178283.17483117281702993338.b4-ty@linaro.org>
Date:   Thu, 22 Jun 2023 09:57:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, 12 Mar 2023 22:29:07 +0100, Heiner Kallweit wrote:
> Convert Amlogic Meson GPIO interrupt controller binding to yaml.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.5/drivers)

[1/1] dt-bindings: interrupt-controller: Convert Amlogic Meson GPIO interrupt controller binding
      https://git.kernel.org/amlogic/c/6b0139b372d40bd5dafc140b6618b57d13211168

These changes has been applied on the intermediate git tree [1].

The v6.5/drivers branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil

