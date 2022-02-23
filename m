Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C27D74C0D23
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 08:17:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235535AbiBWHSW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 02:18:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235279AbiBWHSW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 02:18:22 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87968593B0
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 23:17:55 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 62E46407CD
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 07:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645600674;
        bh=pNhZLyO1aRbMKJR3E5jbPjYni0gu5zR1R9ulpGYQlfo=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=fNr9tmsd6x1Fy7uchtPcOhKjF86tBpqh4IBBaU29yuwEDzFMWm/peRpDiSVrNyD+M
         BVjrzHpEa7H9Nhk90z7y9Wbe1epZaLFvDDSuyRpBf8FnPwDjp0ep+wuouCsuxAX3Cv
         +JhBd0jHPzOpBX3Co2IW2l1i7ivj7MhbqauURjmIz7VXj0AvtN63Hkbp0cYbPM7CZn
         bQya5c6byiPPinHc/a9J5CPbcgphMrv5wwlyGId5B8O0lRaYQyso7BpwqGI2AHmxM+
         EfUXNpWq20HHL3vtSh4elW3kHxDYKCOngtTZ8dn1Ecpu4oq/CPkfFwoo33wD+6EuGA
         JUdTAL9kNGIHw==
Received: by mail-ed1-f70.google.com with SMTP id dy17-20020a05640231f100b00412897682b4so11398270edb.18
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 23:17:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pNhZLyO1aRbMKJR3E5jbPjYni0gu5zR1R9ulpGYQlfo=;
        b=pkOQt+Xz2PExnDKldZwm+vuzFuqXTBCalC17SwSt1Za6sEDYYsRoPSeVxyrWHd9F9S
         RPILANmq6UJMSp6DqjykHg76tqVxCztfnm+DQQ71UWqI85RkCgQ8GHMl30BcfGZ6i3Zz
         XIGU+kcBi+X7wEPPdCkZiTF/46DHJ/MnlQDj2qcKiJtT185M3bO+CDIUt92RzVsM4/44
         69fiV2wJhDT+b6eyocUF0NaKlSWhn/XsEnodkTk7CboTJof5kXaGipQyTt5BOa08G0pQ
         ozzEHtjxM9gn5djYR6FEmH7wAPuyjKf91EPmdKDqscFoSy6fW6MKl9GGMRg91otSjEZJ
         UaOA==
X-Gm-Message-State: AOAM531Zxr83WNq74D2ka21ewlf/GY9ietNuczeasOlEJEAJLBnbs7tK
        ASIAmyGpO9VCTxYEG8pKxImFrK5rUmqZ/I4C7xrFtckOrH/ZBbDucV74sxsvy3wb7pM1Sar6igz
        itbC0pJNWjzwvNOOoFsq1ffITnnBHSMll0IHXnmM=
X-Received: by 2002:a17:906:960c:b0:6ce:f326:f0d with SMTP id s12-20020a170906960c00b006cef3260f0dmr22364017ejx.154.1645600674003;
        Tue, 22 Feb 2022 23:17:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJytxCMf3oX2iILnCYpZtMcrjt7Xa73med3vZDJvwLgW7YJjJ3i4vJy9tPCBBDUlxazJyY8A0w==
X-Received: by 2002:a17:906:960c:b0:6ce:f326:f0d with SMTP id s12-20020a170906960c00b006cef3260f0dmr22364002ejx.154.1645600673832;
        Tue, 22 Feb 2022 23:17:53 -0800 (PST)
Received: from [192.168.0.124] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id b3sm7021079ejl.67.2022.02.22.23.17.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Feb 2022 23:17:52 -0800 (PST)
Message-ID: <13af6f53-2a8c-c8d5-f061-baf59b511e58@canonical.com>
Date:   Wed, 23 Feb 2022 08:17:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2] dt-bindings: memory: lpddr2: Adjust revision ID
 property to match lpddr3
Content-Language: en-US
To:     Julius Werner <jwerner@chromium.org>
Cc:     Dmitry Osipenko <digetx@gmail.com>, devicetree@vger.kernel.org,
        LKML <linux-kernel@vger.kernel.org>
References: <20220219012457.2889385-1-jwerner@chromium.org>
 <9d33314e-97da-dc47-8361-2e45b75fa566@canonical.com>
 <CAODwPW_JbcppFGKvrooxf25dLJuvf5iWoWim1xSXZ2wqgL1k0A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <CAODwPW_JbcppFGKvrooxf25dLJuvf5iWoWim1xSXZ2wqgL1k0A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/02/2022 03:44, Julius Werner wrote:
>>> +  revision-id:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>>> +    minItems: 2
>>> +    maxItems: 2
>>
>> You need maximum value under items.  See:
>> Documentation/devicetree/bindings/arm/l2c2x0.yaml
> 
> Sorry, can you clarify how this is supposed to be? Do you want
> 
>  revision-id:
>    minItems: 2
>    maxItems: 2
>    items:
>      minItems: 2
>      maxItems: 2
> 
> or just
> 
>  revision-id:
>    items:
>      minItems: 2
>      maxItems: 2
> 
> I see examples of both in the file you linked (and also examples of
> what my original patch did).

There is no example of the first case in linked file. I am not sure if
it is correct even... I did not ask about maximum number of items, but
"maximum value", so like this:
https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/arm/l2c2x0.yaml#L73

> Is there any authoritative documentation
> somewhere I can read that specifies which of those is correct? (I
> tried looking at
> https://json-schema.org/understanding-json-schema/reference/array.html#length
> but I'm not sure if that's relevant here.)

example-schema.yaml is the best, but it might not cover that part. We
need more docs, I know...


> For updating existing DTSes, do you want that in the same patch or a
> separate patch in a series?

Separate patch in this series, please.


Best regards,
Krzysztof
