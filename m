Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F0597632B5
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 11:47:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233233AbjGZJrX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 05:47:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229814AbjGZJrX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 05:47:23 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9854FBC
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 02:47:21 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5222a38c0a0so5193493a12.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 02:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690364840; x=1690969640;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SA+LrDZVXjl3Ko1/5ZEQ5q1ItzWI0k+gmeih9nujT5o=;
        b=Vv3advpFuMimlnJzdS5XUW8wEwN27EZl7SYV+iu7pMjcqoLxF2a4MmDWcQTnHStOgO
         +YfPSEV7uYXWhDmx5yKqgTurflU2cy6SqWNu9os8RESG0urBQcAKIlvXi/Yam/LhvRUQ
         KIYnSrxEj9AtM8h3a0SQlJK2QeJqHP0r5inlby45w6jH8jX/QiCXu8h5lQWs19cv3yXP
         Kg/PafU1qecrsMSt8/LUdpoBF9nUVS8aSUIzME3nA6i3aeVyqkqskRBnG/gzxeP0x2LC
         HgpOFJ80ys+hMqfaFzoUc1DVTuhaiYYwlRdlrwp19gQGOFHEjzfJ2xokVRCRO5zZCkHh
         M2WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690364840; x=1690969640;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SA+LrDZVXjl3Ko1/5ZEQ5q1ItzWI0k+gmeih9nujT5o=;
        b=QdRHE1KJDtXy7a9crPGn+PT7BOo63fuW/4h1Yuyq+8WA0Iab5D51hVqyItQwJmNV4M
         KO6sC7cq6Q60C/PeVyD32FXGvO9GTot/1/AdMMVpAwtLYeuaifbXJZ+CSG7A8o86xyve
         p68H6yEGTSxxoV2KYceKW6aOvslXgyVtgCLe/X6FJlkOq40EnZdM12mzpLDWTyC7SLZp
         t79U4mUB6dAB80RgSqrBwlccI9qIfaNey4P2Y8MP6xTClFWqqEzxK+tMEXRckkKaZPDv
         S7VUBI0+RR8zuNv3FHJFZ87gdHl6OhTCEt9TPVfkS5s2NiawQZElRD4KVZgm+EKHzxup
         IAuA==
X-Gm-Message-State: ABy/qLbUK4j1WA86XPBzeqssVBpF00B+aHQuk4fMwZLRGy8DSZWUSLea
        lryLZYKh2qu2al+P8cMQLCXhhEoQl4JdX/RqzYM=
X-Google-Smtp-Source: APBJJlGgdy/mQ9wqC1FbD8YlIGrD/bhaJNJANhLq7Txal+3r2Fqm5ERHoirCQj3TFD2zgNEo2rvzNA==
X-Received: by 2002:aa7:d498:0:b0:522:3ebc:84b8 with SMTP id b24-20020aa7d498000000b005223ebc84b8mr1113214edr.12.1690364840059;
        Wed, 26 Jul 2023 02:47:20 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id u26-20020aa7db9a000000b00521d2f7459fsm8594295edt.49.2023.07.26.02.47.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 02:47:19 -0700 (PDT)
Message-ID: <cb272650-e829-7528-de6d-f99fef2d7f81@linaro.org>
Date:   Wed, 26 Jul 2023 11:47:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] AMR: dts: renesas: r8a7740-armadillo: switch to
 enable-gpios
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230726070241.103545-1-krzysztof.kozlowski@linaro.org>
 <CAMuHMdWfwTyJoLyGs=8gPt4jT-3nc0ywA_NNGr6r+4+cD=Lygg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMuHMdWfwTyJoLyGs=8gPt4jT-3nc0ywA_NNGr6r+4+cD=Lygg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2023 11:11, Geert Uytterhoeven wrote:
> On Wed, Jul 26, 2023 at 9:02 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>> The recommended name for enable GPIOs property in regulator-gpio is
>> "enable-gpios".  This is also required by bindings:
>>
>>   r8a7740-armadillo800eva.dtb: regulator-vccq-sdhi0: Unevaluated properties are not allowed ('enable-gpio' was unexpected)
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> i.e. will queue in renesas-devel for v6.6.

I think I made typo in subject prefix:
AMR -> ARM

Can you fix it while applying?

Best regards,
Krzysztof

