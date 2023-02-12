Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12498693860
	for <lists+devicetree@lfdr.de>; Sun, 12 Feb 2023 17:14:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229532AbjBLQOz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Feb 2023 11:14:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229864AbjBLQOz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Feb 2023 11:14:55 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A979711E8B
        for <devicetree@vger.kernel.org>; Sun, 12 Feb 2023 08:14:53 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so9663742wma.1
        for <devicetree@vger.kernel.org>; Sun, 12 Feb 2023 08:14:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MF7/vbJs0MIasH4Urg58rp48T2rF3hjYXHHT6Ln6xtQ=;
        b=efgPoAyvsUx1cIKnzwm/LdjiDGwm/n1mEoJu7i1Oiokqc+Ur2TTo154uQNt6rxcHOW
         QcRPITcuX0oDApdp4/UX6gBv2rwuIo82hPMLKvloTB/FogolfYxedlu8W+L9bg+4xJhO
         RuxJdaKSD0Ii2883U5tSlsIqFTNaUqLwivhH/YKeEQG/8mvWO71HGBtZjSbOwz0w+RjS
         8Yg51cuyIT8+fA1boMwV3SFd77ls4pWK93VxjboD03c9u/6tku1qTozQ6WuDk0irW4rj
         /teCEEMQCxdH8mywej05YsbwlMwzkOw7w4bCR2P/YDV+HIS1sUH/EB9JWevcgTWkd9mW
         /pRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MF7/vbJs0MIasH4Urg58rp48T2rF3hjYXHHT6Ln6xtQ=;
        b=vz9oA0hyvi9zIk7IT05JckMBQW9eXyAYFfLSSPO3LGJ/pMZwQF7rqnn64WQV/T2d3f
         GNsK79wVLeLgdGyctsZlwbzetwWm0M2Xfg6AF1lrA2mNTSYrImQDP8FLwBgWtU5K3b81
         P+kDCEQRyjTNtbePx/HxgRLU7t/cnfNKptYNjxzQwvqQzpkZr8ZHNRIPaqtRVPjKVw35
         bTnJTQMp71S41fyCjgJZZ/TlAGpe8VpoD9QwyGPDnwtjpJxW/lTPVEaNY+R4vxeVw9DO
         seTJSapHbMhQRjLKyf7bmndhYeRKYvLFwQbJcaP144x9Np4uGhP4wKokjlcwQJBACNdR
         ex+Q==
X-Gm-Message-State: AO0yUKXca6YIsN4QSTzTJU7FpDc5MaVGXFObugNjXW36swvt1OsCuG13
        t885HZ1LfBvH5fnw4LzXixrfAA==
X-Google-Smtp-Source: AK7set82gpA3fZoua53Cnxd03waql62CWCqDMUJBLUpUtt88FI+piYIUYuM7vRs9wt4H3r4tPV+vFg==
X-Received: by 2002:a05:600c:4b1b:b0:3dc:53da:328b with SMTP id i27-20020a05600c4b1b00b003dc53da328bmr20546758wmp.14.1676218492273;
        Sun, 12 Feb 2023 08:14:52 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j40-20020a05600c1c2800b003dc4480df80sm16229620wms.34.2023.02.12.08.14.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Feb 2023 08:14:51 -0800 (PST)
Message-ID: <e0bf4347-ec24-a4e2-0851-d5cdf850cc28@linaro.org>
Date:   Sun, 12 Feb 2023 17:14:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 1/8] dt-bindings: gpio: rockchip,gpio-bank: add
 compatible string per SoC
Content-Language: en-US
To:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Linus Walleij <linus.walleij@linaro.org>,
        krzysztof.kozlowski+dt@linaro.org
Cc:     Johan Jonker <jbx6244@gmail.com>, robh+dt@kernel.org,
        heiko@sntech.de, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        kever.yang@rock-chips.com, sjg@chromium.org,
        philipp.tomsich@vrull.eu, john@metanate.com,
        quentin.schulz@theobroma-systems.com
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
 <CACRpkdbmXri1vtRShm7a3N0sRA7Qg_ni5FpAtiEv+72a6g9Wng@mail.gmail.com>
 <CAMRc=MeKdb=xmidwXQiNxtJpb1xii1D-43m1z6cNtF1VxFwogg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMRc=MeKdb=xmidwXQiNxtJpb1xii1D-43m1z6cNtF1VxFwogg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/02/2023 21:03, Bartosz Golaszewski wrote:
> On Wed, Feb 8, 2023 at 12:08 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>>
>> On Sat, Jan 21, 2023 at 12:06 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>
>>> Currently all Rockchip gpio nodes have the same compatible.
>>> Compatible strings should be SoC related.
>>>
>>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>>
>> Bartosz can you merge this one patch and keep the rest back
>> so we get a more defined DT binding baseline?
>>
>> Yours,
>> Linus Walleij
> 
> Krzysztof, you left your ack but seem to also have pointed out an
> issue - do you want me to fix it up somehow before applying? Drop the
> oneOf and turn it back into an enum?


Sure, you can apply with my comment fixed but then just please check
with `make dt_binding_check DT_SCHEMA_FILES="xxx.yaml"`, that
indentation is not mixed up.

Best regards,
Krzysztof

