Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D83ED75E02A
	for <lists+devicetree@lfdr.de>; Sun, 23 Jul 2023 08:50:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229653AbjGWGuR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jul 2023 02:50:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbjGWGuP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jul 2023 02:50:15 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CD9B10D3
        for <devicetree@vger.kernel.org>; Sat, 22 Jul 2023 23:50:14 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99313a34b2dso481095866b.1
        for <devicetree@vger.kernel.org>; Sat, 22 Jul 2023 23:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690095012; x=1690699812;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1u/3nDCzkW70AKnNpBS42v36rtY1f3f31R5FNY+LiIc=;
        b=jD7uHoWhvP8ENkr/KX8Zi1TnoaPUKoH1hTDdMFmHrujLHgxsAAYsayQUUFdwJ9uuBC
         rCfuHm7d3rBPfxVihpJH2xmFhPaEO39UIfkzSSD7JuRhfoY7d+FkUYbvhu1auVmVuKfE
         CqnjdSg0kekQj7wbjGOEI2eaLr3IZboJlhxab4b6ZP3vFJ1Tv4ldAvdxsS21C0mIE55U
         nMKKCThOijXmJSlyFCfMVSifEzQrmqmosJY6cUyL1gUicRTlxptrAM4KnMgNauCf3zgq
         HFf96bp7jHTUp2E6eYSWonZM4I+Ilsh+Q0OK1tUuosOjH3oiNGEVRIAQ96IWbPxS2q9Y
         lxow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690095012; x=1690699812;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1u/3nDCzkW70AKnNpBS42v36rtY1f3f31R5FNY+LiIc=;
        b=dbYplUIkaNYRiBKphsewnx4MykAFU1OUqX8yCboahFHeAaG+5MBWGP0VGOhzuf/1wO
         GDtuVcbcIRtcyOijgEzvuqKBRkTNs3PQF59ZIZodv/fGN9M1yMT7Zb++8WOhbi+kLngJ
         LbfcwfjMvplt17vwYDVdAW/tLq2PK1qJlAcD0HmKOpHCVXIFkhEC1uboqYJelOoDnupo
         sKP8TbGVRpMRK5IWe7nw1xNQkmnbOt08XdgyvSZQgeAqfcVulpLKjjsSnkX6KRhpdcr4
         xLAk6aw2Wyfghd0OroZOyaxTZR9VKOj0Vnn/MGDPN4QRTo3kt1WMTOq4prM3guSIru1e
         HsPw==
X-Gm-Message-State: ABy/qLYmdjIuQaFNQKzn2sIU8vYOm4ySHA3khE6nwoBwPY73Tn2vl8Gw
        RXb8hk2CPDw6hGjZWwfL7MqQzQ==
X-Google-Smtp-Source: APBJJlFh+oNDfKLO1Sshaq7qORXX+6iYbRofQriExlg7yGep5Nqsp3zT4Boljv2rRjY/7Mfofk/vRA==
X-Received: by 2002:a17:906:cc0e:b0:99b:4a29:fb6a with SMTP id ml14-20020a170906cc0e00b0099b4a29fb6amr6166973ejb.59.1690095012597;
        Sat, 22 Jul 2023 23:50:12 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id s8-20020a170906960800b0099316c56db9sm4591850ejx.127.2023.07.22.23.50.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Jul 2023 23:50:11 -0700 (PDT)
Message-ID: <7ad1f01a-4307-fdba-c79c-8a21c234f8b0@linaro.org>
Date:   Sun, 23 Jul 2023 08:50:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 2/2] dt-bindings: i2c: arb-gpio-challange: convert to DT
 schema
Content-Language: en-US
To:     Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230722095710.17496-1-krzysztof.kozlowski@linaro.org>
 <20230722095710.17496-2-krzysztof.kozlowski@linaro.org>
 <9e900507-bdc3-21af-4ee0-017c193d5c8c@axentia.se>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9e900507-bdc3-21af-4ee0-017c193d5c8c@axentia.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/07/2023 12:50, Peter Rosin wrote:
>> +  their-claim-gpios:
>> +    minItems: 1
>> +    maxItems: 2
> 
> I don't think there should be a max here? There is no reason for not
> supporting more than 2 other masters. True, the current Linux driver
> happens to only support 1 other master. So if there should be a max,
> I guess it should be 1? But that feels like an implementation
> detail of the driver. The Linux driver bails out with an error if
> there are more than one other master, it's the only thing it does
> with that 2nd 'their-claim-goios' ref.

I will make it some higher number.

Best regards,
Krzysztof

