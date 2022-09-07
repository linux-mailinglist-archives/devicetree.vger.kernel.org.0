Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 551305B0367
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 13:52:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229772AbiIGLwy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 07:52:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229976AbiIGLwy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 07:52:54 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4CFC696D4
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 04:52:52 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id q21so7798505lfo.0
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 04:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=cdVqHqPCKx36tLKOaUP1rRot7WAowoU5bcxA52fdRL8=;
        b=FQjJxM11DO5lE8Hh/L7toy34lHsPwqSnGDxUK6itZXBy1miZ6JVV5oANyYfK5icS49
         WYFepCZozX/1VLGNgbiTpqOh0nK8sDxCI1+dD+t+07HK5n+HkmyaBtdR0yI8DgKFATPR
         rz9Xos18Zb70XBjfXCdLsGf/Y9trnlyvPulbbsAZQqxu4AMMvApddBCTwnsqcpQNjcMH
         3Tjj2KZvoqhc8M7avrNu6uMAIDel2gOScH71YAmmx8pEZbbQlg9jLdJmFUrERB4RfAL+
         2IBvWQcNc2Mmp4md5+vhdU5jIByHMmWfAiqR13TxFSLzY3Q2pnsQjwl8zPMHE5Dchvaq
         7h7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=cdVqHqPCKx36tLKOaUP1rRot7WAowoU5bcxA52fdRL8=;
        b=DeAayWccdO2XSUC7e7+ZrYi+LCLi6XBBd/+RFKksVluyVUapqe5XwNj1H7xplx3mNT
         vmSj/9Wpp/X5Jr3PR/leF9pacnb6rlp+BMJXJfwUMn2NIaQm2gR9BLID1FcktlL5pft/
         K/cgYiQigbH1LMO6hdwixa1mSx88xqbGL57M77G82Qq7BhIPH5YXUmwQtlqWnDpVEdDz
         AmUr+mSj7oj6Wf0aLAna2IqxNc8pRz1KGT1dC8g5BYMA/0Bh0tq8bZMRzT3FPVfJntE+
         tgJlBry7SBvcy4LKs7t8gy1nremyLWrb7aibcQYidnrSlk+d76k0Fi1Nwjdim86oz9li
         pcoA==
X-Gm-Message-State: ACgBeo1RbCwp7e74MLZ9/6Tp/3Lki2/XfE67L662rbSIxrah+EjZRef0
        /4+3PyL+vCTXZIARjzb8sx42Zg==
X-Google-Smtp-Source: AA6agR5yuHKYZVas1pQBmyY2r8bGC0yIVaTwFxz+W5feeOYS2XO8hONK2cT5Joj8q2U8PP1XAbib/Q==
X-Received: by 2002:a05:6512:169c:b0:492:ca5c:eb23 with SMTP id bu28-20020a056512169c00b00492ca5ceb23mr1052420lfb.646.1662551571123;
        Wed, 07 Sep 2022 04:52:51 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g1-20020a0565123b8100b004947a12232bsm2383321lfv.275.2022.09.07.04.52.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 04:52:49 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        inki.dae@samsung.com, linux-samsung-soc@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        sw0312.kim@samsung.com, alim.akhtar@samsung.com
Cc:     robh@kernel.org
Subject: Re: [RESEND PATCH dt v2] dt-bindings: media: samsung,exynos5250-gsc: convert to dtschema
Date:   Wed,  7 Sep 2022 13:52:42 +0200
Message-Id: <166255155746.50111.6462325647652564835.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220830180927.16686-1-krzysztof.kozlowski@linaro.org>
References: <20220830180927.16686-1-krzysztof.kozlowski@linaro.org>
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

On Tue, 30 Aug 2022 21:09:27 +0300, Krzysztof Kozlowski wrote:
> Convert the Samsung Exynos SoC G-Scaler bindings to DT schema.
> 
> Changes done during conversion:
> 1. A typical (already used) properties like clocks, iommus and
>    power-domains.
> 2. Require clocks, because they are essential for the block to operate.
> 3. Describe the differences in clocks between the Exynos5250/5420 and
>    the Exynos5433 G-Scalers.  This includes the fifth Exynos5433 clock
>    "gsd" (GSCL Smart Deck) which was added to the DTS, but not to the
>    bindings and Linux driver.  Similarly to Exynos5433 DECON change [1],
>    the clock should be used.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: media: samsung,exynos5250-gsc: convert to dtschema
      https://git.kernel.org/krzk/linux/c/1d27e716805c6d8784122ab3d4ea4fc591c340e4

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
