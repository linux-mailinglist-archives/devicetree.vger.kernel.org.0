Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90BFE68330E
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 17:53:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230366AbjAaQxX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 11:53:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229871AbjAaQxW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 11:53:22 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 286E31BAEC
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 08:53:20 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso11109713wmq.5
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 08:53:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bhqd6GaMITBFWsSZxAFgSD/pVcPeYfxigZYKMLZTsVo=;
        b=i9i3CPsz3L3rpqSUAW3pyNW8xK3QlaVCRlZmBfCSGLi8GBvgwncZ7dveHHpsz8lPRD
         mMhJlTJeBeXOqQ7lZSVG/9qIHj7us7FR/puBjT4U/9WZVEuuE4vwpdAjJptwTpUANKjX
         1qbINfj79rNUa7GkxWhtgZNM5f6sIaItYWXxB8+CG2It22ZUyxu5oPRSDlJSCtdrwCL4
         cKRuEz/E4MGaLxhn313/llcXOoMKKNVTM13ObIwCCx1RZYTAuqZXESRcz5RVO3kH9nOy
         EgrJUZ+1bKGKd1L3DNS2ZdYPYM5hJWAbSKow/AR7npIddv5hzoZ9+/wOqauugcRJjTAD
         9GLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bhqd6GaMITBFWsSZxAFgSD/pVcPeYfxigZYKMLZTsVo=;
        b=NQMr+HdqBTNVzoH5MmDyBNyPjGKzMZ1b1dcfoAGkPVKQMop5Icah3GQHxJlx2yEB6V
         ZKthNjyeQzrTTfSN+0GYTD2UaVItxyQDqxQX0E9QpBVcXd9hGIU7MtjyE41ZIG47patU
         cagxu32D20ilafnkMK3KswKO3KoGb4CfGfQa8lIzm5qaevse0iXNiAHuOjro/bcl8mt9
         p9eMFE5fYZML4cB4jfc2YxThepqLtIchl1IysHV9kEz4ZUbO8LikhoDow4RwjmQzLa30
         NFn6lIxUvmOdtTQIaUt0aHPsentJ34iIQ0ye9pPzUj3KlgsvtWWmigCvmOjRoO5yENVH
         seHg==
X-Gm-Message-State: AO0yUKUJa6x9NGHgVpZvfy8WvGa/Mhtqu4ZVp7Ns5t0XE7Yoh/eVsx1N
        gCJFDBfyKloDOJR+BAAhBXFQxA==
X-Google-Smtp-Source: AK7set+bIUfS0fpz76LjE4PV/djVbuOCT4BlmSf/Rro7gzNlxehxQ5YrL1YdpvbOcZrodSqxeHRxEw==
X-Received: by 2002:a05:600c:3b91:b0:3dc:5823:d6c0 with SMTP id n17-20020a05600c3b9100b003dc5823d6c0mr9404040wms.6.1675183998748;
        Tue, 31 Jan 2023 08:53:18 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id r38-20020a05600c322600b003dd19baf45asm4052329wmp.40.2023.01.31.08.53.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 08:53:18 -0800 (PST)
Message-ID: <35a4d692-e4f3-e5c7-2d33-2d5e15694c33@linaro.org>
Date:   Tue, 31 Jan 2023 17:53:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v12 2/6] dt-bindings: thermal: mediatek: Add LVTS thermal
 controllers dt-binding definition
Content-Language: en-US
To:     Balsam CHIHI <bchihi@baylibre.com>
Cc:     daniel.lezcano@linaro.org, angelogioacchino.delregno@collabora.com,
        rafael@kernel.org, amitk@kernel.org, rui.zhang@intel.com,
        matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rdunlap@infradead.org,
        ye.xingchen@zte.com.cn, p.zabel@pengutronix.de,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        khilman@baylibre.com, james.lo@mediatek.com,
        rex-bc.chen@mediatek.com
References: <20230124131717.128660-3-bchihi@baylibre.com>
 <20230126161048.94089-1-bchihi@baylibre.com>
 <5ec49108-6ad8-daf7-54ec-104f0923a31d@linaro.org>
 <CAGuA+opQboxH8qoNv4GG+raX=ZZAyRVLC9VLjVCzbT_cUQWWTA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAGuA+opQboxH8qoNv4GG+raX=ZZAyRVLC9VLjVCzbT_cUQWWTA@mail.gmail.com>
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

On 30/01/2023 11:40, Balsam CHIHI wrote:
>>> diff --git a/include/dt-bindings/thermal/mediatek-lvts.h b/include/dt-bindings/thermal/mediatek-lvts.h
>>> new file mode 100644
>>> index 000000000000..902d5b1e4f43
>>> --- /dev/null
>>> +++ b/include/dt-bindings/thermal/mediatek-lvts.h
>>
>> Same filename as bindings.
> 
> fixed.
> rename :
> include/dt-bindings/thermal/mediatek-lvts.h =>
> include/dt-bindings/thermal/mediatek-lvts-thermal.h

Missing coma, so mediatek,lvts-thermal.h


Best regards,
Krzysztof

