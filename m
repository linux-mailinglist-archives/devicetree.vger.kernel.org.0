Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 788F55EA558
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 14:01:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239182AbiIZMA7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 08:00:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239436AbiIZL64 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 07:58:56 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A268259248
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 03:52:44 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id q17so6929660lji.11
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 03:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=zT9HYnywBLKAnKj+znnUDQxqf7HMsI+nwdK6gxUUKog=;
        b=nnwMFktu6Mzy49U0FD2s+8Z4fRTD91ziKmoRUTM3H8NByk5c+iYEF0H4nly5PKKAJb
         0XtvTB7/iX2VrdGEwfRbKXNtxvUNNjB6xgsiE9VDMW1oBRgxhUHWCq8hM45Foj+QhCBQ
         kSsS991r9ijmdvr9hIQC+sF9wYUtp8jF8Un3uyxpZHaQNGzN46RKUIkM8cElkzXObzsB
         w2kEtScKAqxKrvXJoZcEsSdTgDIgyYlBpS2gZVdM4VXrV1LDTF56yoV0csuBPC5u0z6o
         9kjVOu7hzVAnlG9iXluVY8vuelDtrdIk/3wxbptt5McOENOmIAftdbKRioqC162s1cfE
         SsFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=zT9HYnywBLKAnKj+znnUDQxqf7HMsI+nwdK6gxUUKog=;
        b=1PaBkoacrwYoEG6Pqjn2CqdLZj9o9/cdUTfggrzgpbpFdfGbw7wEifyRSaT67q7HR5
         qliDL6s+9ktHDMda0URo42vcBci7cUcY73oJ2t1mzY9G3i39dZV1rL2LhUisC0GOFFsX
         nqpMpWLAUBxjQs4UmckStR0ovJ1Wp0hkGQiP1H56BzruItTky078gWyyOU7/8rdNsmw3
         F65MlQngVnWgo5J0sxLyksP+p8Hi7v8Oy94g00YJ+k2W9KU9ITl3oycFQTNShCHtAPgp
         fvJDOJ2Jj+hNSLOF+eBfnq9pMyQU7iBSE0Fi7vwM9gGLnmfqR0vczpFDjtc58ef+H8c3
         EwrA==
X-Gm-Message-State: ACrzQf2MmY4LeSwbt9Lhlw8DIPKgOBPdS3WqwLPO1qiynTQ8sQnawYIb
        XcmsAWLdUclx5+2QAVCLH/qk/bOp1qkJ+Q==
X-Google-Smtp-Source: AMsMyM4CI56MoPkBYHfKNTWWd82vbJ9ouSxHTzz89N+BnGbFsWbsGBpY753rS4H1VwrtNhHaGqKUAA==
X-Received: by 2002:a2e:a801:0:b0:261:91a3:bc44 with SMTP id l1-20020a2ea801000000b0026191a3bc44mr7213846ljq.497.1664189049185;
        Mon, 26 Sep 2022 03:44:09 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id y1-20020a05651c020100b0026c423959desm2313408ljn.25.2022.09.26.03.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 03:44:07 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Russell King <linux@armlinux.org.uk>,
        Kukjin Kim <kgene.kim@samsung.com>,
        Tomasz Figa <t.figa@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
        arm@kernel.org, soc@kernel.org
Cc:     Gaosheng Cui <cuigaosheng1@huawei.com>,
        Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH PULL 2/2] ARM: s3c: remove orphan declarations from arch/arm/mach-s3c/devs.h
Date:   Mon, 26 Sep 2022 12:43:54 +0200
Message-Id: <20220926104354.118578-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220926104354.118578-1-krzysztof.kozlowski@linaro.org>
References: <20220926104354.118578-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
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

From: Gaosheng Cui <cuigaosheng1@huawei.com>

s3c64xx_device_spi1 and s3c64xx_device_spi2 were removed by
commit f1ba938e4f98 ("spi: s3c64xx: Delete unused boardfile
helpers"), so remove the declaration, too.

Signed-off-by: Gaosheng Cui <cuigaosheng1@huawei.com>
Reviewed-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Link: https://lore.kernel.org/r/20220914034615.1240860-3-cuigaosheng1@huawei.com
---
 arch/arm/mach-s3c/devs.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/mach-s3c/devs.h b/arch/arm/mach-s3c/devs.h
index 02b0c5750572..991b9b2006a1 100644
--- a/arch/arm/mach-s3c/devs.h
+++ b/arch/arm/mach-s3c/devs.h
@@ -33,8 +33,6 @@ extern struct platform_device s3c64xx_device_onenand1;
 extern struct platform_device s3c64xx_device_pcm0;
 extern struct platform_device s3c64xx_device_pcm1;
 extern struct platform_device s3c64xx_device_spi0;
-extern struct platform_device s3c64xx_device_spi1;
-extern struct platform_device s3c64xx_device_spi2;
 
 extern struct platform_device s3c_device_adc;
 extern struct platform_device s3c_device_cfcon;
-- 
2.34.1

