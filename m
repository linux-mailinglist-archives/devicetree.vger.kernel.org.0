Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 407AC59E593
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 17:04:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242564AbiHWPE1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 11:04:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237712AbiHWPEF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 11:04:05 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC3FF89916
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:28:57 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id s1so16663888lfp.6
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=Dc5g/C8kXCBcPltpYg2hLFaxQYkbvJEJ0uKDAhN+pVI=;
        b=fznsZedjG+nuHrakP2ez08sz7DmIxeKkkp4sAjUA1ohXWNl4xwnCp1ZkYquCgHlgoP
         9HVHfgpOREJ0HpC5cjF8tfgT8Zps5JPBIPJ33O3lm88HBIIcGcSHCzDCeGXWeMHeHoda
         luZ1CX5dC4nFAeAqs/YS1vAzjheudvbFuTOw5rjNEbzfWZ6DIrVKWo9jmO9g8TE/I7P4
         onfoi8GicVeI2n+SBYllv/7Dx8XTzmb4+km5Q2m+MBG2I3h0ZokZollxBAUNO9U4cfFP
         6yHbIXlqUfDxLWvHMxNUKuORCAHEkgp7Y79Fzelhn5JBsIWgrQ0rrL1BsMaqVdi12PtC
         IAbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=Dc5g/C8kXCBcPltpYg2hLFaxQYkbvJEJ0uKDAhN+pVI=;
        b=KwUpV/bzzHqpkpYwLfgA6Qu9OR5rwVirPZ0OexQcVgOdCps1tF9GyTVcLggRcWPkX1
         nmzvSlgD7ADFQO/dccnYR9Gq1kZsX4dbV/4LWrd8hXVXCxc4WODjAJP9omNJBUps4D6W
         f2UHj8lqeEBdjjhDkHSaXgowpZb+eqH1ioU48iqOJluaY0mcebWhNq/DQ5xkcyLCvvbN
         BsLokA/44ug4Z0+2+CNwOlPgLgfBXMDg9Cpjf1pogdlf3wk+bMJuASv1nT6wxvUyFmVH
         ySBA5t16iRQ3NGJZAIIVjV6smpkkz2PpGgd0kNsG1LE3TKzMz1F+J2f6Y8emGHgmI5mT
         aoYQ==
X-Gm-Message-State: ACgBeo0mEJvx61FiEFqbGhO08ZMMfEUMviF6TL9W57RK+Ku81Im6/24F
        GE5tMQ2kkb4aVrSMqXjHgLzuGA==
X-Google-Smtp-Source: AA6agR6ACQj2GwEEwBIH8ZHWclsvTK1Y4vzmy3hRXbmJByv+iTsqx13N3vkDwV5RzJzry5tYIkfuWA==
X-Received: by 2002:a05:6512:3e11:b0:492:c5ef:442b with SMTP id i17-20020a0565123e1100b00492c5ef442bmr8116501lfv.434.1661257733766;
        Tue, 23 Aug 2022 05:28:53 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id 28-20020ac25f5c000000b00492db7f47f2sm1436971lfz.275.2022.08.23.05.28.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 05:28:53 -0700 (PDT)
Message-ID: <21c798fc-bfc5-ed67-bcea-a213890e5ef1@linaro.org>
Date:   Tue, 23 Aug 2022 15:28:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and
 RG503
Content-Language: en-US
To:     =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Chris Morgan <macroalpha82@gmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Cc:     devicetree <devicetree@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peter Geis <pgwipeout@gmail.com>,
        Chris Healy <cphealy@gmail.com>,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
 <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
 <45694752.fMDQidcC6G@diego>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <45694752.fMDQidcC6G@diego>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2022 15:16, Heiko Stübner wrote:
> Am Samstag, 20. August 2022, 10:40:34 CEST schrieb Maya Matuszczyk:
>> sob., 20 sie 2022 o 00:26 Chris Morgan <macroalpha82@gmail.com> napisał(a):
>>>
>>> From: Chris Morgan <macromorgan@hotmail.com>
> 
> [...]
> 
>>> +&gpio_keys_control {
>>> +       button-5 {
>>> +               gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
>>> +               label = "DPAD-LEFT";
>>> +               linux,code = <BTN_DPAD_RIGHT>;
>>> +       };
>>> +
>>> +       button-6 {
>>> +               gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
>>> +               label = "DPAD-RIGHT";
>>> +               linux,code = <BTN_DPAD_LEFT>;
>>> +       };
>>> +
>>> +       button-9 {
>>> +               gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
>>> +               label = "TR";
>>> +               linux,code = <BTN_TR2>;
>>> +       };
>>> +
>>> +       button-10 {
>>> +               gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
>>> +               label = "TR2";
>>> +               linux,code = <BTN_TR>;
>>> +       };
>>> +
>>> +       button-14 {
>>> +               gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
>>> +               label = "WEST";
>>> +               linux,code = <BTN_WEST>;
>>> +       };
>>> +
>>> +       button-15 {
>> I don't think just having the buttons numbered sequentially
>> is the best course of action, but this preserves the GPIO
>> ordering while other options don't...
>> I'm thinking about either having them named after
>> their function, or named after what they're labeled
>> on the PCB of the device.
>> Can any of DT maintainers give their input on this?
> 
> Personally, I'd prefer going with what is on the PCB
> or defined in the schematics.
> 
> This makes it way easier finding dt-elements either in
> schematics or on the board itself.
> 
> This is true for all names ;-)
> 
> On the Odroid-Go for example buttons are really named
> sw1, sw2, ... so the dt-name became button-sw1 etc.
> 

Matching what's on the schematics/board makes sense.

Best regards,
Krzysztof
