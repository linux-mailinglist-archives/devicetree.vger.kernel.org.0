Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5466D733F25
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 09:24:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346009AbjFQHYA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 03:24:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346026AbjFQHX7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 03:23:59 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49527273C
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 00:23:56 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9786fc23505so208758166b.2
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 00:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686986634; x=1689578634;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BALn4nHogi6y1z9AsgAJfyJfiqRYd5zNLOOg/2ouMEE=;
        b=Pvs8K2tBZCKq86puKpfNu9DuFHOwzwnzM0AkGpGB6pqb1YGqDVE5HaLYwcE9GxXOr8
         7mK+wHtos/cgNov9LxIfRzmr2QhfAzxrrfLEKKkk5TQmQaxp7OmSTWLqUzR3aZHI3ztF
         RUzceXc2++ezngHE7crk5SbyZT09bnhLd4LqtZDL3IsHls2kr9ehhhEdqIZ0B34lPGxa
         5x6who3KtFWlgx4KYHeOkQD7VYzEbq6u5XuNV9QZHiVey57bnu5zHEPQ3okDBp+/MXHW
         uL/q6swS3iXrkijZrbm5ZqKurn4qrxG2hq8IaJk+mCkx6YhFOA4scwZEFmdEZ6T8NYBx
         M7FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686986634; x=1689578634;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BALn4nHogi6y1z9AsgAJfyJfiqRYd5zNLOOg/2ouMEE=;
        b=SNCb8WoTtOKuxXjaPevAG5LTVk0JDE/t8jQI1aMsm+uaMGYCGHvCxADsktw2k21NGr
         uRrg0OJVG24v1L22H+aW9VatHK9n5XI6huOlXX1eknCD0Ivdd0At8f9aGAuIqSFp5jTz
         imD+Ji0P8uHLOtQXxZbn5GL+RC2rA4/yQjVMUY8O2Os7ej0pyffOzBC3aMhXQp5M+tln
         T/5DCTAe268HTyL9m/rcOSSbO8yjvDSf9lDBQMr/qp1O/0xTpDXQOqufCzoXEehCKHwB
         QdyFzVH5bUdmZB8Rgn8QiDcFZdjuf16VQcu3T7hI3Ul385GSTlYMqYkLc9GuUAgTeI31
         Ou3g==
X-Gm-Message-State: AC+VfDx3N7OFGYDN48KZoxzxCZL+BLNHIKlqp+DyymGWJ5ArZ094y/qJ
        Ij6YAg8Ibj7KwqNTr0uuRw39kw==
X-Google-Smtp-Source: ACHHUZ5ovY+qgKcvWV4IQbsdgd8jq5luVgKcVljPQWxWlks0ogF6duEmiQCXpK/rXuL+OfgPJJQQ4w==
X-Received: by 2002:a17:907:803:b0:982:cfe2:32fe with SMTP id wv3-20020a170907080300b00982cfe232femr3721370ejb.63.1686986634584;
        Sat, 17 Jun 2023 00:23:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id kb10-20020a1709070f8a00b0098788eb2436sm386571ejc.41.2023.06.17.00.23.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 00:23:54 -0700 (PDT)
Message-ID: <444dd61e-cebf-8528-d6f9-87bfc9d9cef6@linaro.org>
Date:   Sat, 17 Jun 2023 09:23:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 5/6] LoongArch: DeviceTree for Loongson-2K1000
Content-Language: en-US
To:     Binbin Zhou <zhoubb.aaron@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
References: <cover.1686882123.git.zhoubinbin@loongson.cn>
 <99bdbfc66604b4700e3e22e28c3d27ef7c9c9af7.1686882123.git.zhoubinbin@loongson.cn>
 <20230616-projector-visible-4135a378fb56@wendy>
 <CAMpQs4K38C3URsBQ6YC0km5Fg21o4VuEqOe=f6emeutdoqKf_A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMpQs4K38C3URsBQ6YC0km5Fg21o4VuEqOe=f6emeutdoqKf_A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/06/2023 08:53, Binbin Zhou wrote:
> 
>>
>>> +                     ethernet@3,1 {
>>> +                             compatible = "pci0014,7a03.0",
>>> +                                          "pci0014,7a03",
>>> +                                          "pciclass,020000",
>>> +                                          "pciclass,0200",
>>> +                                          "loongson, pci-gmac";
>>
>> None of the compatibles from here on out are documented either.
> 
> These are required to be added according to DeviceTree Spec PCI [1],
> Linux does not use these compatible for now.
> Removing them really doesn't affect the driver, but to follow the spec
> and make sure every node has a compatible, I've left them all in.
> 
> Are they not required?

If it passes dtbs_check, they can stay.

Best regards,
Krzysztof

