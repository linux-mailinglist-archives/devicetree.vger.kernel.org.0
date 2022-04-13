Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9E194FEFE0
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 08:34:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232226AbiDMGhP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 02:37:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232397AbiDMGhN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 02:37:13 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 501BE35A8A
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 23:34:53 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id bv19so1885549ejb.6
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 23:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=nAPSfxKFYbzSlQO1YgmCxQ11Ae6mhy3WoT1oFUto02E=;
        b=RFWwQzYacEUTTEqQGLsxA+Ud2lCdgCrY7vAxhwUMips25Af2dKt7eHuQauLyJdjHoX
         GTLKHoVca0RR950GmW8xn6mawSbhjN8upfn9zZ2exmWHCB0LPDly8eCPFJb+aIrvgURQ
         yA2EKyGs0PZe4SqLunDsRHKhPIOVFxSMg3xwk4SanOhs/DpBq/Yo0ylYzeZlqYhH52Xt
         VeM1Iu42qbYn5wODPdPNG4UGz2LzR1cPrZ85TEmFP4kyXtfjz/Wb05Ub6SjHTIMY8/jL
         e11bMBokHphVpsZ1fpqmmWm2rM2Z+3l6YsghGWPjDU4c/hafwm01Ozs47OHDGocZtpRO
         aEfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nAPSfxKFYbzSlQO1YgmCxQ11Ae6mhy3WoT1oFUto02E=;
        b=oSFwOix3/mYodPtAmBoJ5jPlaiXPm3DTZPqIfFKXRSCnSCug4GckjtWbFnTeXwqUxz
         QITzBKfsVL4v6lBH4sXe+3K9DFgBTwg9B++W2OWP6y0/tyBiBzpJrPmqNdUK5Opz7m2H
         IzJRK6yUuFSmrJewnBehvl4LOZ6OaQg3WGRbfCJ9UZzpzfnOAqv9GAdzrzTDcLhEzCeT
         goLqV9lizPkE6/9uomjgBJ92UVfmPAp2ZIVFrjFBCC2QKPuxo3MkjtxGESEJxXIdpkXI
         8np1Zc/AdLvyLs3n2VctcZgh6CWM6Pby+kwDv6vI09/Iz4Y53SmdXOIFngaz7/PSGr4d
         0nLA==
X-Gm-Message-State: AOAM533vjVtoOBqa9c/pK7O0KkclrPxiMM1SQbz/4cn6jSWvzE+Yz0i3
        6WkPXUrH8H28In5Us3biLqegvA==
X-Google-Smtp-Source: ABdhPJynIlqHTeT1hdcAvchmiziaZoMNQ8KGtRyiEG/USlc3UYYKVDAJtNMx6VbGdIDKLlHGckY+pA==
X-Received: by 2002:a17:907:3d8b:b0:6e8:73e0:ef96 with SMTP id he11-20020a1709073d8b00b006e873e0ef96mr16437593ejc.330.1649831691906;
        Tue, 12 Apr 2022 23:34:51 -0700 (PDT)
Received: from [192.168.0.201] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id s12-20020a508dcc000000b0041d807a04aesm794933edh.29.2022.04.12.23.34.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 23:34:51 -0700 (PDT)
Message-ID: <d3828250-70b2-ca8e-eaa9-0d49736321ba@linaro.org>
Date:   Wed, 13 Apr 2022 08:34:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v13 1/9] dt-bindings: arm: sunplus: Add bindings for
 Sunplus SP7021 SoC boards
Content-Language: en-US
To:     Qin Jian <qinjian@cqplus1.com>
Cc:     robh+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        tglx@linutronix.de, maz@kernel.org, p.zabel@pengutronix.de,
        linux@armlinux.org.uk, arnd@arndb.de,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
References: <cover.1649659095.git.qinjian@cqplus1.com>
 <15b487f197129c8fe382ea7e70e6420f31924e28.1649659095.git.qinjian@cqplus1.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <15b487f197129c8fe382ea7e70e6420f31924e28.1649659095.git.qinjian@cqplus1.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/04/2022 08:49, Qin Jian wrote:
> This introduces bindings for boards based Sunplus SP7021 SoC.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

This email bounces, so let's update to:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
