Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 190816A91D5
	for <lists+devicetree@lfdr.de>; Fri,  3 Mar 2023 08:42:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229695AbjCCHmp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 02:42:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229580AbjCCHmo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 02:42:44 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC3C753290
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 23:42:42 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id g3so6931917eda.1
        for <devicetree@vger.kernel.org>; Thu, 02 Mar 2023 23:42:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677829361;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6NaYC7Z7KE3/xDS+ojWZnShCIrXPLH1EZcxegpj4uXo=;
        b=vRw8wJ2r4i7Z3/3FQ0GALVawwqYtGc5IZ3nkCeTKZwVvCJ93pC8TOrhqdS/aiSDqGa
         MDEEySc4FT8jD+H4FeVR1ZU1fmdhh5Ezx6susvVz5f0LEC9MWQSNzts23IizlW6LDRDk
         uAibihwPv3kGtZbFMyuYBpmULGzMsY5BNim0FTLQkSJY0q7VQ8TYL76kG7xy5r5U0C9+
         3JK+o8axtWR8oFBgB9y3Mu0LKtrfZjbPM1DSawcJMj8LZEqZ6LGoxS8FzGwfxM8RHpHE
         ijWPbrA27y6Mu4FFYtk8aztOvKlBsUYe6emc2JHIkURRoLWOZiyVIDTd2J+O5AazW4jh
         iA9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677829361;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6NaYC7Z7KE3/xDS+ojWZnShCIrXPLH1EZcxegpj4uXo=;
        b=jEW6BdMwaBCKxLhA9sNcKH5CnSUwA2ykQ/82Ycm7cZDjXIu4dJp4pAq62pVZwtnskr
         l3FlCm0Ilvwz0pGpS7g3tMFnOMkrrbSmSYRmUuAOdBmr/7CQhgUoEJ6+n0+2AyWRnq7M
         2P9MNftIvKh6sjDuIduD43/Lcx6zwp4+L/b46cU28j5g9Onbtz4tmpQSDR9Twu0oCUJd
         jcq+E7TodlMfnGc9+eFn5rmsuZrYMCJr01pbPGBHC2Z7/CedeWsyBHhSs/aHSzHgQctd
         +6Q6k2/DA4Wpea4fy7tTVYTHGHy7sqxRJuJtiu0H9U81nSqa4zRG0F3NQjdvqoOnxZWB
         N1lA==
X-Gm-Message-State: AO0yUKUGsEcZN6/9jYQE79kFCr29VriI5IMuLKtNZZ/Ao8sdVukPe0vl
        shOZd6kvJsAh1EVLEwhii5j5OQ==
X-Google-Smtp-Source: AK7set9XQN5XXL8B1oRWyaxYB8OqaN+rULhPoZWgFzO6jicJxzYWXiJ+BxcApbrfFSwmxpwqMut0ow==
X-Received: by 2002:aa7:c153:0:b0:4ac:b614:dcfc with SMTP id r19-20020aa7c153000000b004acb614dcfcmr1347767edp.9.1677829361326;
        Thu, 02 Mar 2023 23:42:41 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id rk9-20020a170907214900b008d2d2d617ccsm676760ejb.17.2023.03.02.23.42.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Mar 2023 23:42:40 -0800 (PST)
Message-ID: <54ee2141-f00a-3193-0821-2faaff826254@linaro.org>
Date:   Fri, 3 Mar 2023 08:42:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2] dt-bindings: display: mediatek: Compatible list
 cleanup
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Yassine Oudjana <yassine.oudjana@gmail.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Yassine Oudjana <y.oudjana@protonmail.com>,
        dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
References: <20230302141234.169985-1-y.oudjana@protonmail.com>
 <0969ff46-3fba-f679-7943-52da7528185a@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0969ff46-3fba-f679-7943-52da7528185a@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/03/2023 17:08, AngeloGioacchino Del Regno wrote:
> Il 02/03/23 15:12, Yassine Oudjana ha scritto:
>> From: Yassine Oudjana <y.oudjana@protonmail.com>
>>
>> Several DT bindings of MediaTek display blocks make unnecessary use of
>> "oneOf" and "items". Remove them and replace them with enums where
>> necessary.


>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
>> index 7d7cc1ab526b..52f233fe1c0f 100644
>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
>> @@ -20,9 +20,7 @@ description: |
>>   
>>   properties:
>>     compatible:
>> -    oneOf:
>> -      - items:
>> -          - const: mediatek,mt8173-disp-wdma
>> +    const: mediatek,mt8173-disp-wdma
>>   
> 
> This is present on all MediaTek SoCs - literally. The issue is that the driver
> currently does not support command mode panels for real, so this binding is...
> ...well, somehow in forgotten-land...
> 
> I would hope that command mode panels get implemented soon(er-than-later), but
> I'll leave the choice to you and Krzysztof - I'm only providing the information
> here. :-)

Yep, if you predict now that oneOf sooner or later will come back to
these, just keep it. Does not hurt much and later re-introducing it
makes patch much more difficult to read. Therefore I prefer to have
unused oneOf than later a patch which introduces new compatible and
re-indents old one (so unneeded diff changes).


Best regards,
Krzysztof

