Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E66B85F50E7
	for <lists+devicetree@lfdr.de>; Wed,  5 Oct 2022 10:33:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230053AbiJEIdl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Oct 2022 04:33:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230073AbiJEIdU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Oct 2022 04:33:20 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F255753AD
        for <devicetree@vger.kernel.org>; Wed,  5 Oct 2022 01:33:19 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id bp15so11067335lfb.13
        for <devicetree@vger.kernel.org>; Wed, 05 Oct 2022 01:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=BI/g3/3re7PwEaGDnKo+G+NvZHj3bqwKKnku8VbtDtM=;
        b=Z86dXzqXz+SYjj1zXzoiabUQmRtiMe4sKp3h5T+0uCEFsi0dEW55EjHuqLpPqUbY61
         YhiSb/eLKCxkiYbCH2qEdaIs1AV08DbREtuaAM+Jpj9F4hL7bbTtpUEoydWxXaTP0m78
         Izm26WpMP48l9FzkGjRjrMLb3OHM7wRQFV0V80IMXtVf9W67gdi2xq+drYSImnCMVB8g
         JoGY2s+rYp3Z2uCVOEz/kM+B0XDYhC8gDtGsXCmOeJjgxD8n2tB2G1hgl8E5Bah/xilr
         EfPqcWI5EyzLZWyg0gb7ip+KCg2nspD9z6H5b6E0ku0NpWBQ5i34JKchjgIbTrrL6o4T
         vFeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=BI/g3/3re7PwEaGDnKo+G+NvZHj3bqwKKnku8VbtDtM=;
        b=2jFwxZd8CX7Ni1O4HBwlzFH2SurAG+/FUR8Rtm1hcarHAtuWWxUpv3KSzoieZGLGGJ
         6Q/8IiylWYkEx9OBB2KYfD2K5V2G3KwneV1K01k740N31H6upH+JDqscjiOjHH+zBmQX
         /EHH6SuR36ehw43iSXJRujUewiFX4JV017xJBk1SSSnk37jKq+uT/WnYDfQHYWDIkqgm
         zL0ajDmAZ9yMBjdTpd3XPVLInU+keD+dO5t3CXFcr8ZIkBXHBRPhoQc3F4D8mfgio+WT
         kamC/CYVU66XBXBKg04UrSVrAKf9chH/nYmc5xlAxoJ9wg3vuKaWdd+1WVhMBnlOKS7d
         f1LA==
X-Gm-Message-State: ACrzQf19MIrQq+RunvuylNj5LTuydW3697yfiF9W/TzorOXN9P4ERCUn
        5sqdrU34ZquKPYGhet1FSDFkYQ==
X-Google-Smtp-Source: AMsMyM4cmOaxSLZB4Iospm4+LkqtiHdTJ1Zl+MLkRRS3nkF+D/K4wCCkbK3vJDkF+MbZZN6M9SmbZQ==
X-Received: by 2002:a05:6512:10c1:b0:491:4104:cf92 with SMTP id k1-20020a05651210c100b004914104cf92mr10906519lfg.211.1664958797623;
        Wed, 05 Oct 2022 01:33:17 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p20-20020a2eb7d4000000b0026c5dce1f9dsm1480903ljo.106.2022.10.05.01.33.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Oct 2022 01:33:16 -0700 (PDT)
Message-ID: <9004b427-66b7-f783-9258-4f6b893899ef@linaro.org>
Date:   Wed, 5 Oct 2022 10:33:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2] dt-bindings: mfd: mt6370: fix the interrupt order of
 the charger in the example
Content-Language: en-US
To:     ChiaEn Wu <peterwu.pub@gmail.com>, Rob Herring <robh+dt@kernel.org>
Cc:     krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        matthias.bgg@gmail.com, sre@kernel.org, chiaen_wu@richtek.com,
        cy_huang@richtek.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <9dda705a8d67826306f6c6129722d3ad8edc96fc.1664816175.git.chiaen_wu@richtek.com>
 <CAL_Jsq+YeZRizJFYuU7RPTcFRe1cDjLgsTidisJ_P5PNC4eKiw@mail.gmail.com>
 <CABtFH5Ld91S65RiDu4iSpFhAMiFWaQdj-yDRM79=WUkArpA0JA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABtFH5Ld91S65RiDu4iSpFhAMiFWaQdj-yDRM79=WUkArpA0JA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/10/2022 10:14, ChiaEn Wu wrote:
> On Mon, Oct 3, 2022 at 11:34 PM Rob Herring <robh+dt@kernel.org> wrote:
>> This doesn't fix all the warnings. These still remain:
>>
>> /home/rob/proj/linux-dt/.build-arm64/Documentation/devicetree/bindings/mfd/mediatek,mt6370.example.dtb:
>> pmic@34: indicator: 'color' is a required property
>>         From schema:
>> /home/rob/proj/linux-dt/Documentation/devicetree/bindings/mfd/mediatek,mt6370.yaml
>> /home/rob/proj/linux-dt/.build-arm64/Documentation/devicetree/bindings/mfd/mediatek,mt6370.example.dtb:
>> indicator: $nodename:0: 'indicator' does not match
>> '^multi-led(@[0-9a-f])?$'
>>         From schema:
>> /home/rob/proj/linux-dt/Documentation/devicetree/bindings/leds/mediatek,mt6370-indicator.yaml
> 
> Hi Rob,
> 
> In my opinion, the root cause of these warnings is the incorrect usage
> of 'allOf' in our LED indicator dts as follows,
> (https://lore.kernel.org/all/27df85c30277a171ae85ff6d5b7d867625765d0a.1663926551.git.chiaen_wu@richtek.com/)

Eh, my patch was merged in July... and yours from September still does
not use updated multi-led bindings. Was it even tested before sending?

Best regards,
Krzysztof

