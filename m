Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 714A253E7BA
	for <lists+devicetree@lfdr.de>; Mon,  6 Jun 2022 19:07:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232747AbiFFJWw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jun 2022 05:22:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232719AbiFFJWs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jun 2022 05:22:48 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BC3D9FE9
        for <devicetree@vger.kernel.org>; Mon,  6 Jun 2022 02:22:43 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id n10so27729715ejk.5
        for <devicetree@vger.kernel.org>; Mon, 06 Jun 2022 02:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fGRLkNVBEPkUsV8SPQw3ABXYbXe6EdbELeiUgQBePYA=;
        b=WqseQOMPYK8MtmeQ3Kkoko/rUiFzh3SL9nHcPLpjSaMGKNzUY/bM2kO9mccec2nndj
         Es30XiLV69voPXzf50v/7GMp9rUWP3Pmn2fTRfhsEUtifITso3/OqiGX26cC0IXP5aHs
         KMu01xOf5C8NqxPp2MX0t40HcFz7q2KGhudIgn55T4L7G6x3zgytSrPsGIHzs3Z60zvR
         l6oHPfEtUSmAkrvoNzPFz5stg4ygu7bta/LXDgO3rgOhVgRGktGoHfcynofGdrc+WQoM
         DDMS6/WctRgBCEUL4PYLpHEsHp94isQuIcHf3Wx2i5QlYQBZ+H4uVjiYyNtmcAcsmooo
         RTcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fGRLkNVBEPkUsV8SPQw3ABXYbXe6EdbELeiUgQBePYA=;
        b=36u2L1Dx8jZr1Ireu6X8VihIvFo3c7kR9lsnUk7HA5O1u8Ln6vSvsKg7tj0GavWt0N
         DN6qxwdgfwtU+oVW9C/qUHAIIv6oIzuCcqxvg832XeTHfxKFUZu+2XA2GI4yGLFEoLi5
         IplIbRRZBVr/IEwsKVFByYGWJo8M+LMh7dzR5iUO2KMrk0dgk8tqYNYX3+yOJFyArnFi
         xwOAwcObtNxOrPXQU/6oeinswaBaivvfby6vruqqRxOOssotxP36H8V0L6nOcZ0q+jUS
         nsMAKdxClLfyEzuAN88TSJKme+s72uKd2/AhcKxW4Mmd3lNhxgHVcHcl5c8cA+mezYx1
         ZCFw==
X-Gm-Message-State: AOAM5315NZS+GGNXXVXfUsqE4AEdxMIyNDe/BCM+kTa2w6ld+k9sKrAM
        gxvNRmG/7XedPmFj2BpdVVhiuQ==
X-Google-Smtp-Source: ABdhPJwB8O++kySo/b2d5bDo6PpURaIlpqQGd9zSK+XnslDqZS9WA2tu9uD1t37154fYUKza3+BAng==
X-Received: by 2002:a17:907:7f03:b0:6ff:4721:3c75 with SMTP id qf3-20020a1709077f0300b006ff47213c75mr20350547ejc.508.1654507362219;
        Mon, 06 Jun 2022 02:22:42 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u21-20020a1709064ad500b006f3ef214e14sm5956397ejt.122.2022.06.06.02.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 02:22:41 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Chanho Park <chanho61.park@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH v3 0/2] syscon reboot/reboot_mode support for exynosautov9
Date:   Mon,  6 Jun 2022 11:22:33 +0200
Message-Id: <165450734050.62970.8421607592750868580.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220523121244.67341-1-chanho61.park@samsung.com>
References: <CGME20220523121210epcas2p11d0b4f27edd5a403b2fd7d3833d577ff@epcas2p1.samsung.com> <20220523121244.67341-1-chanho61.park@samsung.com>
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

On Mon, 23 May 2022 21:12:42 +0900, Chanho Park wrote:
> This adds to support syscon reboot and reboot_mode for Exynos Auto v9 SoC.
> 
> Changes from v2:
> - Change license of samsung,boot-mode.h to (GPL-2.0-only OR BSD-2-Clause)
> - Add copyright of samsung,boot-mode.h
> - Change ifdef guard __DT_BINDINGS_SAMSUNG_BOOT_MODE_H
> - Remove brackets of the definitions
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: soc: add samsung,boot-mode definitions
      https://git.kernel.org/krzk/linux/c/95099951557c9eb2f180d6bcb9885eecaca97d24
[2/2] arm64: dts: exynoautov9: add syscon reboot/reboot_mode support
      https://git.kernel.org/krzk/linux/c/694d04a1d5449d948e438af1fd1d610d356bacc3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
