Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BF8550DAB1
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 09:56:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232527AbiDYH6x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 03:58:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241604AbiDYH4z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 03:56:55 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABF4A2718
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 00:53:46 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id k27so2188115edk.4
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 00:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=OiK9CfJmGobcKXoR/dSPps5LgKGx0NOgsw4L8/dJuus=;
        b=ExJdKICN8IBJk5lwYIf06MEy9FFprcu4zkW60YPGX6p5vrEl4y6eoYg//8OShTJ+EV
         5BFiUh4ElVofGoJWGYwh6kAvauwtOVwvj1bDQ5fpxQnxbYMtLCsUEdQmRehE4BfbOeJO
         I1lk1lxK2gfmG2JOlToGQc1nJE9kMgWwVwFFjuiYBYkEN/mrljIFDlkA6OMxU8B+ENxH
         dNI7FczHVKl4YnTIdMlFeQ0rHuynNZ3HngnLGBF4KLOoY5HM6LObpbIyn39YSvbyh8Fk
         64NwKlZRZ/m3/4z/hhD9OWrOHzRaF9f3kUGQgW/xlqw0/HzZ84G4/2AoqlLbTdzXAAhT
         fE7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=OiK9CfJmGobcKXoR/dSPps5LgKGx0NOgsw4L8/dJuus=;
        b=jvrNtdNpts2UkjOk2N2Aa4IwNuuI7WK/STXEci1LEPRV1NDZ1Rof8R66PhG44MAJDu
         tWMxwlfALpLlufZnD2feG5cnMNKIRMldqYSRbui3WDn1jA01t7+ruKQNwHPQyXOBgCLJ
         Voor/qcMYnQoKDFpRff1Wh74hDFLcnIHj85anpfyRSFb7fHzir3JoriB3s9nlfWC6Q2S
         NGqTlYCkpYBP9EMp7i6e+jIhX/33fO0bimYozHfZYjdwKd4KL4LQh8HGG4VPBvdor3Qs
         o/L+RFKw73S+jjcjEFFheJMST07A0BVvKTC1AIbCfuS2D7ir6R7WlafuatzBcxBeF7U7
         LRBQ==
X-Gm-Message-State: AOAM5308qOCs5p5UL7OZihobp5MQ4PCQuwep2qCGL5ISRN1fw+AgVcS8
        zgvogA0hFx+4to8VwhgHB/nFCg==
X-Google-Smtp-Source: ABdhPJztHTkEpB7MVHqX/Ny1SZCOSlStNRQ6mr3ZjdYNdrfB6wI15Hl3ZlezTmilaoywtLjJooZh9A==
X-Received: by 2002:aa7:da43:0:b0:425:cd4c:e43f with SMTP id w3-20020aa7da43000000b00425cd4ce43fmr10883182eds.106.1650873225101;
        Mon, 25 Apr 2022 00:53:45 -0700 (PDT)
Received: from [192.168.0.239] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id t19-20020a508d53000000b00425c9fd2b10sm3129190edt.68.2022.04.25.00.53.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 00:53:44 -0700 (PDT)
Message-ID: <5175fe30-0449-ac5f-7e37-53c07adc433a@linaro.org>
Date:   Mon, 25 Apr 2022 09:53:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/2] dt-bindings: watchdog: mediatek: Convert binding to
 YAML
Content-Language: en-US
To:     "allen-kh.cheng" <allen-kh.cheng@mediatek.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, nfraprado@collabora.com
Cc:     Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        srv_heupstream@mediatek.com, Chen-Yu Tsai <wenst@chromium.org>,
        Ryder Lee <ryder.lee@kernel.org>
References: <20220422121017.23920-1-allen-kh.cheng@mediatek.com>
 <20220422121017.23920-3-allen-kh.cheng@mediatek.com>
 <e2e4ead0-d8eb-1302-93e9-f330807d811e@linaro.org>
 <b850f88f5044eb6cd57bec4fb864e5670618c9e7.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b850f88f5044eb6cd57bec4fb864e5670618c9e7.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 09:37, allen-kh.cheng wrote:

>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>>> +
>>> +    watchdog@10007000 {
>>> +        compatible = "mediatek,mt8183-wdt",
>>> +                     "mediatek,mt6589-wdt";
>>> +        mediatek,disable-extrst;
>>
>> Did you test your bindings? Does not look like. Please run
>> dt_binding_check (see writing-schema for instructions).
>>
> 
> Yes, I have run dt_binding_check.
> 
> But example is from original binding txt file.
> 
> Is it ok I can write a new expample?

Yes, please. Correct the example in the conversion so it is
reasonable/proper.


Best regards,
Krzysztof
