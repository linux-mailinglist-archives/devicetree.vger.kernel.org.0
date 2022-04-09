Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5DE64FA837
	for <lists+devicetree@lfdr.de>; Sat,  9 Apr 2022 15:23:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238513AbiDINZ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Apr 2022 09:25:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241961AbiDINZZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Apr 2022 09:25:25 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F35A9AE64
        for <devicetree@vger.kernel.org>; Sat,  9 Apr 2022 06:23:18 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id bq8so22263124ejb.10
        for <devicetree@vger.kernel.org>; Sat, 09 Apr 2022 06:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=CFsLuLri4ZzuxFZWMK4QbGgplfV1RiWIfvfyl0fXXPM=;
        b=JuUlSycWzsEw/r0jFMz9JwRuwtyT0Y7Q/BQu5h4xdSSU6heuxxnEEHiJAbq5O2FMnJ
         nvhasA1n/LKezFpGAk910XpeWCK3K0873+/GQwxGW2aUWRPwVLciFeA9jZin+txjOMhe
         KP9+5fWc87S2ImGZlf8uN+t6ImU1gv715j8WSNikxuyrY/XkAZAmGd3jpCbhgprci38T
         CfM0ogcxEo/pxTjtzQGDph7uQQavF0ES+fXNnhsZpeTLR1ln6nC2h+r/i5kj0fOI6bEW
         Jo6zni2rpb+flYw01ZxrvpOlL8Oxve33pJP9BECetmBxEsJkENybzWOya5lMT1qh93sQ
         rpMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=CFsLuLri4ZzuxFZWMK4QbGgplfV1RiWIfvfyl0fXXPM=;
        b=SUfuB/EdG8yjWjlZspUQnthhqmm8YU1fHP7M84kjANlTaO56mLKDn/W26LQTMvHjNP
         O+Qxn6vqbsg+Jgnyzg3lH5YVue5JQ1pYLM85f/Cfri387e2jY/x3NEMK86mhGtxWFxcv
         PA+dFxwgLHtLkt1t21AGK+oA0bGRiD6SLltZV2yUk0sw4j8fmmnZP1RiXaPxejzwfoFJ
         ylqfNub3e5PFPlagg8EAQwpVzYQ2o5b7jqdwsVhYoHal5kFwnl8cgTH+2CRI6m63KSE5
         zV+kCmSXDPGFwyBu4vk94or5XYdLO7b3Bz/E8XRPNOk/gE4XH78/XTZsAyhEtA+x+dPc
         y0nQ==
X-Gm-Message-State: AOAM5318xE7ILoniOHXDwuV/fcEeMGb/9son1B4K0d+v+TIaz5Ay9IYJ
        WpZQUDQ8DOILak09PgNxgrM2Cw==
X-Google-Smtp-Source: ABdhPJz/ZL5SjGOTUIidyHTeqYDZw4kqPsYAOodMQYLCgvX6YAi/lThfvlEQviqPHkG7ehSftBVgbw==
X-Received: by 2002:a17:906:1be1:b0:6ce:b0a8:17d with SMTP id t1-20020a1709061be100b006ceb0a8017dmr22401411ejg.413.1649510596982;
        Sat, 09 Apr 2022 06:23:16 -0700 (PDT)
Received: from [192.168.0.188] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id f1-20020a056402194100b00416b174987asm11933953edz.35.2022.04.09.06.23.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Apr 2022 06:23:16 -0700 (PDT)
Message-ID: <2961d892-609c-c0bf-e9c1-c54306f608c7@linaro.org>
Date:   Sat, 9 Apr 2022 15:23:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 07/18] MIPS: DTS: jz4780: fix otg node as reported by
 dtbscheck
Content-Language: en-US
To:     "H. Nikolaus Schaller" <hns@goldelico.com>,
        Paul Cercueil <paul@crapouillou.net>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mips@vger.kernel.org, letux-kernel@openphoenux.org
References: <cover.1649443080.git.hns@goldelico.com>
 <298162bfa2e7225ccc753865e1ffa39ce2722b2a.1649443080.git.hns@goldelico.com>
 <bd19b6eb-d53a-b665-749d-46c275c85ccc@linaro.org>
 <3XN2AR.4ZAYNTAI4XBT3@crapouillou.net>
 <36C96109-0A56-4ACF-ACD1-367DAD9E3A47@goldelico.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <36C96109-0A56-4ACF-ACD1-367DAD9E3A47@goldelico.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/04/2022 15:18, H. Nikolaus Schaller wrote:
hould have a specific compatible.
>>> Please mention why it does not.
>>
>> Agreed. The "snps,dwc2" should be a fallback string, otherwise there is no way to uniquely identify the JZ4780 implementation of the IP.
> 
> Well, there is no specifc implementation and driver for it. So no need to uniquely identify it.

Specific implementation and driver are not arguments here. This does not
matter. It's really unrelated argument.

Bindings are not about implementation in Linux. Implementation can
change, so bindings should also?


Best regards,
Krzysztof
