Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E7B8417168
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 13:59:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244321AbhIXMAh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 08:00:37 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:56592
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S245248AbhIXMAh (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 Sep 2021 08:00:37 -0400
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id ABD2A40790
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 11:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632484743;
        bh=Qmruzk9u8v6gx0XfiHRSfAdmQ14ihCUNgpBU9LNLWtM=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=L/61XegKeSG4c/T9jeiewDxeYZV5nNjmvzwMGQa57fsgy3rwOORrZKYeFjomm3WNj
         E/KHjGD4s1x7ENcgAsTL7ZMd1ATwVihDWGt1a6vRLyO5lHsxAxPoIIvk7458sdgdAL
         ZG5kJhwV+z3fkPmSB3SVoecEgBMzwjCoqmqcMHTo84E20aJTba9sGW2tQBGVzPCuPp
         MsxqAlUDgcmEoxDf61kEhXcA5ivz1y8Ow/zc5r03LUginT/i/FEH/Wzn3OwG/ntuA7
         uMCqxOKyqQO/w5PC4+UU8kfJV1yW0ZrpxOWfYP9AjZ9caNCfYawIE5eiMYGVv0skZE
         IR9UvoJjOVcsg==
Received: by mail-wr1-f69.google.com with SMTP id c15-20020a5d4ccf000000b0015dff622f39so7800543wrt.21
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 04:59:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Qmruzk9u8v6gx0XfiHRSfAdmQ14ihCUNgpBU9LNLWtM=;
        b=jddeKXD0972v2gv9yp6+2wKSQidRcLtYY3hOzc18cwd7a9j1Pj3ehfAqADiWogJ2qj
         h27FcizqItcsmQNXjWdNvzJcg+tTZHyS+nytsSNTdqucvsQEIJdvnX04kQmGq/yXzGZr
         xGZ4npR2BXI5WABC4srBtzmzKArsebDHmx7gPsj5drke2q3Rxqbd4JMC5/6ASupwAlPi
         xrpOKu+Ow6EK7A1G2snB1T02KpmiGfmcQfNUnIkeKOwfk+rjm2NdUG3/3x525eZKfEA2
         R+1lkwZEc8YLsQF3+pAvWn1s1UdEGdV61QGObM7d3zA1LE7tJ6VXmXJBgQ+mmWoaEBPI
         G4Eg==
X-Gm-Message-State: AOAM531/y4/LoABEFRUyS98nluZ+d7pNNlyVQRWXu1pVRTTnXhStSBRv
        coWCVX4l0W0BFIJPTmz8yu0HZfoMfOW9UsofouFEnTBxT6EauGtJhybTn9SIH1a1RMqxRLBwVfp
        j6sHHvii3S9arZwi/tSQhrZnUL/Kv70SHjQGIcXc=
X-Received: by 2002:a5d:5511:: with SMTP id b17mr10739217wrv.318.1632484743005;
        Fri, 24 Sep 2021 04:59:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxs5Km1+A5ghUu9Vz1tl102s4xTJQ6YUDHvp8dI+O4r6vd5nQCuF5rF+2yCqLDUJjOqsEkwxQ==
X-Received: by 2002:a5d:5511:: with SMTP id b17mr10739199wrv.318.1632484742793;
        Fri, 24 Sep 2021 04:59:02 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id c18sm528492wmb.27.2021.09.24.04.59.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Sep 2021 04:59:02 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: rpc: renesas-rpc-if: Add support for the
 R8A779A0 RPC-IF
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sergei Shtylyov <sergei.shtylyov@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20210922085831.5375-1-wsa+renesas@sang-engineering.com>
 <75713e8e-f675-240e-b503-99618d07afda@canonical.com>
 <CAMuHMdVgfeHt9At7qh7syttN-2HcHg8bhi85FK3CGTevtSs9yw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <b1a35304-76e9-c001-fffe-edb785cb21a4@canonical.com>
Date:   Fri, 24 Sep 2021 13:59:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdVgfeHt9At7qh7syttN-2HcHg8bhi85FK3CGTevtSs9yw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/09/2021 13:55, Geert Uytterhoeven wrote:
> Hi Krzysztof,
> 
> On Fri, Sep 24, 2021 at 1:48 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
>> On 22/09/2021 10:58, Wolfram Sang wrote:
>>> --- a/Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml
>>> +++ b/Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml
>>> @@ -33,6 +33,7 @@ properties:
>>>            - renesas,r8a77970-rpc-if       # R-Car V3M
>>>            - renesas,r8a77980-rpc-if       # R-Car V3H
>>>            - renesas,r8a77995-rpc-if       # R-Car D3
>>> +          - renesas,r8a779a0-rpc-if       # R-Car V3U
>>>        - const: renesas,rcar-gen3-rpc-if   # a generic R-Car gen3 or RZ/G2 device
>>
>> Where is the driver or DTS using these compatibles? The bindings can
>> come even without users, but are you sure this is what you want?
>> Changing them later, if ever needed, will be more difficult.
> 
> Driver:
>     drivers/memory/renesas-rpc-if.c:        { .compatible =
> "renesas,rcar-gen3-rpc-if", },
> 
> DTS:
>     [RFC PATCH 3/4] arm64: dts: renesas: r8a779a0: Add RPC node
>     https://lore.kernel.org/linux-renesas-soc/20210913065317.2297-4-wsa+renesas@sang-engineering.com/
> 

I see, thanks. It wasn't sent to main LKML so I did not find it in archives.


Best regards,
Krzysztof
