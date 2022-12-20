Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5515F6528FF
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 23:26:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233993AbiLTW0G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 17:26:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234277AbiLTWZg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 17:25:36 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CE0C21277
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 14:23:35 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id m19so19554125edj.8
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 14:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gPinbhCY/qLJ78szXx6XoCTi8eFJr1hKIpZwZPsNAkI=;
        b=fq75tUZOYmRtie/VdRSdYDMBMHd3x05fl/0pFMn4dzARo3l0ShPWMjfblu/1o/U4l9
         bT4vgGCH9s1Y5O01GakXDtXaYDJSTQReOe6k6nOVr90H1StE003aJ89tRsgQv9kT7u6B
         GhmKBfvp5N83Dx+icpPZ7eN9nb6ng5sXxbOXr3GKPahBluQ9e74Gq/GBN0T8XPhQiVNh
         GvJDZ6PyngAj/TZ0PV6Jp+tnUV3WARjV7LyjU51Y9rJT3FlKClPW/3PjZYI3B0eRCNI9
         c0pMRUWSt+7OuYuOwoV8GRIMyrCZSavnjiErxMQfeZFaiUPE9Msn258A73/DYRFt2GPm
         Ke4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gPinbhCY/qLJ78szXx6XoCTi8eFJr1hKIpZwZPsNAkI=;
        b=J4camU/4/W6CT64nvL4VOYiNC4GpuDfozkX5ADeQtzNQ3LQ/sGk6Oe7qmUUiqDaf3J
         pDEjUbIXdLDhdC96JPsDR6T46MSQGYPaHk8WuVJxWjcjuJ3ys8ADx/BklmWuKfijwmts
         LPVGoFca9TKF7usDkHOTaQPzt/X2d2OGbQzPqavRqYy9H3+8oAyScFQ15nJ3Fwr9bE0Q
         NFvfsmMNpMWVOVJOjthvtgH1CiekIPmbAE0rE/VuT3sfnRbGntkl8huHBvmYTyb8j1fg
         gPwIZbOUvxJawM80kUzhrwNAOBjgfg/2+FrXtvdzehuyPlo2LhiYukjKsOyJLjHt83sF
         w3fw==
X-Gm-Message-State: AFqh2kpIEs8gWTIkUTJWcFySB5QhR3ufjeC6JkaFFurPaIVuzfFJoz1w
        2HVEwetWM8QIKyKisiT3EfKCvw==
X-Google-Smtp-Source: AMrXdXtl4ur95attZp35Xum8Dn8CBHUcjpvLAW2ADAXFRmHPh7poUsL/kZW+oo12sUWhF+lgHKu4hA==
X-Received: by 2002:a05:6402:1f86:b0:461:ed1f:e707 with SMTP id c6-20020a0564021f8600b00461ed1fe707mr3766295edc.17.1671575013752;
        Tue, 20 Dec 2022 14:23:33 -0800 (PST)
Received: from [192.168.1.115] ([185.126.107.38])
        by smtp.gmail.com with ESMTPSA id i5-20020aa7c9c5000000b0046b00a9eeb5sm6140154edt.49.2022.12.20.14.23.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Dec 2022 14:23:33 -0800 (PST)
Message-ID: <7be2da65-2882-5e25-c492-f4e44dafe468@linaro.org>
Date:   Tue, 20 Dec 2022 23:23:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.6.0
Subject: Re: [PATCH] MIPS: dts: bcm63268: Add missing properties to the TWD
 node
Content-Language: en-US
To:     Florian Fainelli <f.fainelli@gmail.com>, linux-mips@vger.kernel.org
Cc:     Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20221220190947.2681192-1-f.fainelli@gmail.com>
From:   =?UTF-8?Q?Philippe_Mathieu-Daud=c3=a9?= <philmd@linaro.org>
In-Reply-To: <20221220190947.2681192-1-f.fainelli@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/12/22 20:09, Florian Fainelli wrote:
> We currently have a DTC warning with the current DTS due to the lack of
> a suitable #address-cells and #size-cells property:
> 
>    DTC     arch/mips/boot/dts/brcm/bcm63268-comtrend-vr-3032u.dtb
> arch/mips/boot/dts/brcm/bcm63268.dtsi:115.5-22: Warning (reg_format): /ubus/timer-mfd@10000080/timer@0:reg: property has invalid length (8 bytes) (#address-cells == 2, #size-cells == 1)
> arch/mips/boot/dts/brcm/bcm63268.dtsi:120.5-22: Warning (reg_format): /ubus/timer-mfd@10000080/watchdog@1c:reg: property has invalid length (8 bytes) (#address-cells == 2, #size-cells == 1)
> arch/mips/boot/dts/brcm/bcm63268.dtsi:111.4-35: Warning (ranges_format): /ubus/timer-mfd@10000080:ranges: "ranges" property has invalid length (12 bytes) (parent #address-cells == 1, child #address-cells == 2, #size-cells == 1)
> 
> Fixes: d3db4b96ab7f ("mips: dts: bcm63268: add TWD block timer")
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>   arch/mips/boot/dts/brcm/bcm63268.dtsi | 2 ++
>   1 file changed, 2 insertions(+)

Reviewed-by: Philippe Mathieu-Daudé <philmd@linaro.org>


