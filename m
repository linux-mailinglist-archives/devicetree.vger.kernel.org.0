Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E10A50F2E9
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 09:46:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344238AbiDZHto (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 03:49:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236504AbiDZHto (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 03:49:44 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7898719021
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 00:46:37 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id bv19so34313376ejb.6
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 00:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=ezxJuL1TpZoaBmP6iCyLpD7vPvVZKAVuVG915ZT25Ws=;
        b=lS6TkHfh9FtrzI9J2kmQCv8AkGGhN56OT3UPhhiiIxqrD+5vKMTakURwAbi3fk9EbM
         H758YL8lFt/hHuXtJWMVGqy/D6haABwshBsTctrMBT9hHhueGyfv/tFiZ6SGhPNpSgPK
         IcUtunAtEwGrI1slOb18kSk1H0qmXqXOhd/ntrye7E21wJZkuJ75MrwupUpvNLuW5lsL
         fCkbdG5cjgcxdrSZBHDykpK5q5rXlPFeHUxbF/UXDwI1S3knJ0jbmipGs2TUJAGHgf/f
         y69IKsvRL55ka9NzsED9XneTV1rczSFpqVMT+ayH66veplxiClL9OsdXz6Opr+DJmQje
         9ecg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ezxJuL1TpZoaBmP6iCyLpD7vPvVZKAVuVG915ZT25Ws=;
        b=PKJh7IuKnekQI0az+gZDQKLkJPXCpiVrb7c9vkZDIaCYP9o5cdbXOF3dYKZOKaiE3o
         GfBZa//kgjzp1K4t9YA6GugvZY4+YChAwiLTv74kPzUnZK7QJJezin7uzdKfhE/eJtJt
         Byfdo+HVeN5tDAIMRQVupHCZLn/TnlB/ZI8TTNbRuRwo13hwhZJ1R+jMufHSc2LS9yed
         85b/qdXW3tOwGzVHq90k9b0RxgU7hy737OTg+loUr7lB+KlplLmDSchF9OsoJYIlm/pC
         09BlvemWeuZTpPeHsG8X3ywjyBeEGMZO8wIjJc2qHvtb8JZJUeQT1Ww21XwLbMrQDy4Q
         C2ng==
X-Gm-Message-State: AOAM531c66zv5+Vvek0VK3uFexnUDUPBQDMnq9uRV563BSXHoB/wFMck
        +rTCdmr9+tspVRDi14F7ZJYk5w==
X-Google-Smtp-Source: ABdhPJwyp+ZjbOklEGjVs751JofkT6sqkmEF/aEvP0lIBBfvcjqzl170va0NRjxD4Sf6JSmSEHbxrA==
X-Received: by 2002:a17:907:7ea4:b0:6f0:1205:fea9 with SMTP id qb36-20020a1709077ea400b006f01205fea9mr20196265ejc.534.1650959195200;
        Tue, 26 Apr 2022 00:46:35 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id z21-20020a170906435500b006e8669fae36sm4476781ejm.189.2022.04.26.00.46.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Apr 2022 00:46:34 -0700 (PDT)
Message-ID: <249f6136-6dd6-0c03-df86-7da02a1b17f0@linaro.org>
Date:   Tue, 26 Apr 2022 09:46:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] MIPS: dts: align SPI NOR node name with dtschema
Content-Language: en-US
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20220407143328.295762-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220407143328.295762-1-krzysztof.kozlowski@linaro.org>
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

On 07/04/2022 16:33, Krzysztof Kozlowski wrote:
> The node names should be generic and SPI NOR dtschema expects "flash".
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/mips/boot/dts/brcm/bcm97358svmb.dts                   | 2 +-
>  arch/mips/boot/dts/brcm/bcm97360svmb.dts                   | 2 +-
>  arch/mips/boot/dts/brcm/bcm97425svmb.dts                   | 2 +-
>  arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts | 2 +-
>  arch/mips/boot/dts/ralink/mt7621-gnubee-gb-pc1.dts         | 2 +-
>  arch/mips/boot/dts/ralink/mt7621-gnubee-gb-pc2.dts         | 2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)

Hi all,

Anyone from MIPS folks willing to take it? I got three acks, so maybe
that means I should handle it?


Best regards,
Krzysztof
