Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E476537153
	for <lists+devicetree@lfdr.de>; Sun, 29 May 2022 16:23:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230296AbiE2OXR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 May 2022 10:23:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230268AbiE2OXQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 May 2022 10:23:16 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B8C45A0B8
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 07:23:15 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id f9so16618631ejc.0
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 07:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=UJb4UDxzCMKxbf1CmD5HDQoIHrHBHy8/Ie4zmOsAWXA=;
        b=FT84ta8Yc+hWvvT79Z/EotgnhlCoMR/OVwCUPIcEFFM9M4v1BVvGqveMxavRNr5CmD
         /6Zt4vFAjSX9EqtxuLO9e3G1siSkcdvv0zot9hpX1hZA6Dzia+4OTFEP73ZZb0gR3xcg
         2dzF/atPOO9BE18dUZ2nhoQfJ555/XxBWRQhdjYf44S60Cn94N67QQ2d4MPTFeL8hta1
         gGJlEqXS525lItHW2cEshkDPK59W624fuOQi/w95SBBtEfxmg/bFtL72TDdF7Bzs9ac4
         +bA2xtkFxrw4UPjRvWnPJ9No/zNPHLyhcbO8Q1R5jOgzK/CPFyc1vrZeOYVuFZT4j95b
         NuRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UJb4UDxzCMKxbf1CmD5HDQoIHrHBHy8/Ie4zmOsAWXA=;
        b=1rS91WvP+hdyHLxdWWin5UjQ+z2ONeXTg/gpe7fmNA2+IKGdIlKrT1Ga14f3+oA5bx
         BwuHjrq2jLRKyudcYtUVjIJ4DbvCotSzSRHmYnQ99D2KpQVAwAgKruqPIvEx8lhdjmvO
         3Mw5Hg1shrTqLcQsAqXWzgq+asRrnKCzuS6/Ob5Z4Rgui8iAGb2Fk5Dty3i2mfXbJPyz
         Pi4We6pBbjQk3uN4Ug44+QKHL10D0z7/hxUY3C/szxzOnv0Usx3oxqF5AxjMquCpHxw/
         Wkiux+wfYmOS3xX8bhHOs637St3F7tFpkNBM3aQEV9rNpQJQrmQL/6oeXUfnGKsDWYbj
         JsQQ==
X-Gm-Message-State: AOAM530bnKcd5xj9MFotDT7KTusN6kY+7P1tWP7Y0vMkFSX1XBrQ2jnD
        rSgPNENTL62qKkiKgrx8QCnd2g==
X-Google-Smtp-Source: ABdhPJw+XHJUIyCFpb2k4yaW9AsZyRMrdw/FOfP9vthEhZF1TwTLqKEs+OUv+NI5FuJxjhuKSVnhnQ==
X-Received: by 2002:a17:907:6e11:b0:6fe:feaa:bb04 with SMTP id sd17-20020a1709076e1100b006fefeaabb04mr26911341ejc.187.1653834194008;
        Sun, 29 May 2022 07:23:14 -0700 (PDT)
Received: from [192.168.0.177] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u10-20020a17090657ca00b006f52dbc192bsm3201856ejr.37.2022.05.29.07.23.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 May 2022 07:23:13 -0700 (PDT)
Message-ID: <66d655bc-f08c-c6ea-8fc6-260f215a8b4c@linaro.org>
Date:   Sun, 29 May 2022 16:23:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add PinePhone Pro
 bindings
Content-Language: en-US
To:     Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
        Ondrej Jirman <x@xff.cz>, Martijn Braam <martijn@brixit.nl>
References: <20220529031705.278631-1-tom@tom-fitzhenry.me.uk>
 <20220529031705.278631-2-tom@tom-fitzhenry.me.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220529031705.278631-2-tom@tom-fitzhenry.me.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/05/2022 05:17, Tom Fitzhenry wrote:
> Document board compatible names for Pine64 PinePhonePro.
> 
> https://wiki.pine64.org/wiki/PinePhone_Pro
> 
> Signed-off-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
