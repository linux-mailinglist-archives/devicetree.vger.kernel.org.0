Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B824E60CBBB
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 14:26:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231226AbiJYM0f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 08:26:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231217AbiJYM0e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 08:26:34 -0400
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com [IPv6:2607:f8b0:4864:20::830])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB84F11A94F
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 05:26:32 -0700 (PDT)
Received: by mail-qt1-x830.google.com with SMTP id c23so7331863qtw.8
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 05:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oUDb55F/wfKgAhE2ejE3CixOIq1tXHhPMaApHmafj2Q=;
        b=mc5CW/Wy/umHxhLgQjZyDuOSj4FMWvayMAg4Fz05HyEgTOV1I3xtPDntJqN3qECuAY
         mTWwp3gWzZUYduHK27vPviL8D9qjRYxf5bvSoe2skauZMjZMD5QSYufE+TkE79bheePI
         BYdpYkZjF4zgHQz82nq8idhex+dcPNESXtjeoB/ZPUISjMIuN7NmmYhrAkTgpwqhr3an
         oYkQIlBl1y5AHgMxt4md2zlTmTg0pyU2y9zLMtzuS2pD6GGaWjF/TYLqWQgOYpW3lrf/
         ybSzcaQYmuD73eMQaTYCIInP7K9wpcqdgl0iUsTt5MBsqL9QF6HJrZre/A4FRGiiy2Dx
         ULbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oUDb55F/wfKgAhE2ejE3CixOIq1tXHhPMaApHmafj2Q=;
        b=PfG2RwydyLJI6dSXZfpjWiGUbEgBIsGeW5Q8oEQ35eMghM9ExtQGC0S09f3gq6g/vG
         QYVC+seRjjWyBEM9PwGX2Jve7OzQZ0C7wLEpvnDEdAYIC176EIqWMVsBX8SzQakbWaus
         B09F3rdO0bWRHLM9rWm2C5qzNajaDaNYvTiWaabW4RS4AX4kCyt0KBhHk3pu/xXp/Aaz
         mkc9N8ij1+u/uH1iPwcO0dqtfhLWEBDR/GFMjY2YMy+iApeosSpNlRnIRRp+YBW+m/6V
         g+AB9Th+/Ri600rR9ey3IwFwh5qmSv7IrG9myJH+Br1+iMNWeQ5STPIuU8uHhhjWrc3A
         Piqw==
X-Gm-Message-State: ACrzQf1BvtzUmJ3/McNA7jp6LIuQTHbWbkFHbsLImPsvOApLu5T9zij/
        FJL3mVgv2IV9KXb37Ne3y6AR8Q==
X-Google-Smtp-Source: AMsMyM61ygt5D1dzc4qIV7FXHvxMV6ZkNXtAYZ84UiLNQnpIO0kLe8vSEVEg46x8MtbEqNw0Yxwkkw==
X-Received: by 2002:a05:622a:11d0:b0:39d:322:7c38 with SMTP id n16-20020a05622a11d000b0039d03227c38mr25465827qtk.291.1666700792138;
        Tue, 25 Oct 2022 05:26:32 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id f18-20020a05620a409200b006ce515196a7sm2005039qko.8.2022.10.25.05.26.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Oct 2022 05:26:31 -0700 (PDT)
Message-ID: <0175808e-2cd5-8689-1a94-172d67e4eb57@linaro.org>
Date:   Tue, 25 Oct 2022 08:26:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2 2/4] ASoC: dt-bindings: realtek,rt5682s: Add AVDD and
 MICVDD supplies
Content-Language: en-US
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>, Mark Brown <broonie@kernel.org>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Derek Fang <derek.fang@realtek.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024220015.1759428-1-nfraprado@collabora.com>
 <20221024220015.1759428-3-nfraprado@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024220015.1759428-3-nfraprado@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/10/2022 18:00, Nícolas F. R. A. Prado wrote:
> The rt5682s codec can have two supplies: AVDD and MICVDD. They are
> already used by sc7180-trogdor-kingoftown.dtsi, so document them in the
> binding.
> 
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> 
> ---
> 
> Changes in v2:
> - Added mention that property is already used in a DT to the commit
>   message

You already got an ack for it. Don't ignore it.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

