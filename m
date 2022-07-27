Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4150E58243F
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 12:27:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230265AbiG0K1v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 06:27:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229768AbiG0K1u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 06:27:50 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D1503E749
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 03:27:49 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id e11so19327174ljl.4
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 03:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=qkg42MPLnTpziWzCq064IDe7/RZNLE51B/HaNedC/M4=;
        b=SErH2wgVr7T9GDatPTcAGAZhz0mCCIDjYaeT1K3DquTqiBRQmu4lOqJeXjmlf4wSwc
         vo8/3Z4LTpRrDQi979vWtmSglgPlMkYTcQ26vu31iDQG7PE27l5fRJrEEZsqAAMtFUDe
         iXDVwP4J6bkphFAXvEkQYAp03ToC7AmphB50IXsMAEXwZ5XhiVmExasmoijWUEaZWIRV
         K1+ysD5xk3yksGQvtDClqFQS3R2BSc+xsvNPOehhWWB0r/iXZ+PL0IqTaxloC1HtsCJa
         uv+oNZi1SruljFirJgGXd6CaNkfFaYXPhFUr0Yw7w50Oy41ws5vMMP6IFClvrHTfpY9U
         Rqtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qkg42MPLnTpziWzCq064IDe7/RZNLE51B/HaNedC/M4=;
        b=kFEoPVMScfgUKsF7HvjysG7Jjpc55GNUxAur+fsdG7pP7MALQixcrzNB8qckuGzHPj
         O58RtI71/6LHCs82Sx2y8/SmMGAEhyu/h2th/CoyF8XTFQy6/LRW/QbIKrBAg/fNWHLn
         DPyfrJsIwZya0gWBUTRaRMXUQsT7FzD3tNIl0Em5Pd5ua7pnwgRfrGHnE42TGz89vjJl
         ogJaWb4Kv/m1zVhJrkPO5VQgn3rId9+3BwzAzQIbG1Ns69+CtgHzJKTvyzon4Zp1vVEG
         OOdd9QIGkdXD0HeO6I/ZREUd/2+LGoj0kCDcjigW0eBqr9gv8JaPHo+FZLW/ByPnoGM1
         vJNg==
X-Gm-Message-State: AJIora+yHlH7Ra7tS21gfvBV2t829VWKuS5WqUp7ehxxPnqRAKIbGIKo
        akDeaRwlEtY3CamMCgOvBmTODA==
X-Google-Smtp-Source: AGRyM1smiFuUhec91Ofvzs2IHsiTsiuRW+1y4Zq7oAZXS2YflAQNU45FarTBw8uHHqUJXzX/uftelw==
X-Received: by 2002:a2e:7c15:0:b0:25e:33c:6a4e with SMTP id x21-20020a2e7c15000000b0025e033c6a4emr5397182ljc.483.1658917667213;
        Wed, 27 Jul 2022 03:27:47 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id r4-20020ac25c04000000b0048aace12740sm688069lfp.270.2022.07.27.03.27.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 03:27:46 -0700 (PDT)
Message-ID: <c980ea32-1a94-2120-c879-4825ade0a4e0@linaro.org>
Date:   Wed, 27 Jul 2022 12:27:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 2/7] dt-bindings: mediatek,mt6779-keypad: use
 unevaluatedProperties
Content-Language: en-US
To:     Mattijs Korpershoek <mkorpershoek@baylibre.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Fabien Parent <fparent@baylibre.com>,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
        Fabien Parent <parent.f@gmail.com>
References: <20220720-mt8183-keypad-v2-0-6d42c357cb76@baylibre.com>
 <20220720-mt8183-keypad-v2-2-6d42c357cb76@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220720-mt8183-keypad-v2-2-6d42c357cb76@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2022 14:56, Mattijs Korpershoek wrote:
> writing-bindings.rst states:
>> - If schema includes other schema (e.g. /schemas/i2c/i2c-controller.yaml) use
>>   "unevaluatedProperties:false". In other cases, usually use
>>   "additionalProperties:false".
> 
> All 3 properties from matrix-keymap.yaml are valid for the MediaTek keypad:
> * keypad,num-rows and keypad,num-cols configure the KP_SEL register
> * linux,keymap represents the (at most) 8x8 hardware matrix
> 
> Signed-off-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
