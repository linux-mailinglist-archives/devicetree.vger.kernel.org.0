Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2519A5BAB9C
	for <lists+devicetree@lfdr.de>; Fri, 16 Sep 2022 12:50:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231495AbiIPKuu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Sep 2022 06:50:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229931AbiIPKu1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Sep 2022 06:50:27 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8FD3CE05
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 03:29:31 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id az6so15833884wmb.4
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 03:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=lEm28T4aiukFj/jkOyJ/N1z4ZyJd8w2mvne3ZnFiHNg=;
        b=IEN8i+yAPd/f+hsdfXcFUDKh+gFqVy3qWI5xvBGkd73lTfZdOGaOjQzcLHtFGQQHVY
         jpbgZgOW/d7e4SUl2JBvJtkrKYgrdfdFbhIT32ecCqkpM1B5v14m5UKK3LOXMmqDYHGB
         TtKvW0kBBcIKKTQz/9ruHl4Jb5ooMEOY5agR/5jHPPEwU17PfCaJjN8qZyBzlLMQf3aQ
         7sx39Jss0gVpzP/pYJ5MnJ5W/YczeGkBPu+V0iljyYa9u91zQOYR2iCwI7IjRyORxnQz
         Z9oBOEJW1DDlyEnju0EZxtxCb0oxbZSXyRzM2Hw+K42JBQ1oNA72wpCERFFhPH3u3YuY
         yilw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=lEm28T4aiukFj/jkOyJ/N1z4ZyJd8w2mvne3ZnFiHNg=;
        b=wanmsrJbOpe9EFF8+5ViQSapLcxwujRdTj6/D59za7ZucqDOAhaGX4DKZw4G8/WkLu
         BtSKSL5oLfq/LjxGfcRQn9vpNM+LrGV+tEi5lWf9K2r6RIj1RLLiBcAFvPzrxWVArke0
         w6LdE/oJC1HRZDFYXi3+3PuYQrxKqsgJKRhtjnjbg8GRj7qqP2bmVpdQglX3nlBM8J9F
         GpGXjyIV3Sb4R/QlTHK8HsTv9RkejPnqjitA3CWh//4LGUGFf+ykl5gRo/RXICn+CaIf
         9ajMjssl/u+BPETP8lHyZ3RBtigwDvZ3a4bhGBTH86DpO8XcpXvKVZkQqV/Fm92srTyB
         mAvg==
X-Gm-Message-State: ACgBeo11WcPDPteyJi7IPiasfIR7G3F1kiJMchAQooiy7zXc0zGQpgbv
        tYgdTGBR5rTeMFfo2j6gbHNISg==
X-Google-Smtp-Source: AA6agR4GhmwLDzJhDGKWyU6qvAUsmcDKMpVKTynu1xNvIu9OwasG3Ddi3IpZk2qTkIBvVxJT59oYqw==
X-Received: by 2002:a05:600c:3493:b0:3b4:9a0e:b691 with SMTP id a19-20020a05600c349300b003b49a0eb691mr9691352wmq.123.1663324111900;
        Fri, 16 Sep 2022 03:28:31 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.73])
        by smtp.gmail.com with ESMTPSA id z13-20020a5d4c8d000000b0021f131de6aesm4553655wrs.34.2022.09.16.03.28.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Sep 2022 03:28:31 -0700 (PDT)
Message-ID: <7a01b1cc-6d00-715c-1e21-b8836a64a9a0@linaro.org>
Date:   Fri, 16 Sep 2022 11:28:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] media: dt-bindings: ov5645: Convert OV5645 binding to a
 schema
Content-Language: en-US
To:     "Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
        Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
Cc:     Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20220913160224.14951-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20220914214132.GA2173@tom-ThinkPad-T14s-Gen-2i>
 <CA+V-a8ufbsiz3p2n3LmYxES2aJYN9y8byF9bSyckNFz=fB-5LQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+V-a8ufbsiz3p2n3LmYxES2aJYN9y8byF9bSyckNFz=fB-5LQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/09/2022 11:24, Lad, Prabhakar wrote:
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - clocks
>>> +  - clock-names
>>> +  - clock-frequency
>>> +  - vdda-supply
>>> +  - vddd-supply
>>> +  - vdddo-supply
>>> +  - enable-gpios
>>> +  - reset-gpios
>>> +  - port
>>
>> I think we don't need all of these properties as required.
>> The only "really" required are:
>>
>>   - compatible
>>   - reg
>>   - clocks
>>   - port
>>
> Agreed, it's just the driver requirement hence the previous bindings
> had marked them as required.

Please mention the change from pure conversion (with reason) in the
commit msg.


Best regards,
Krzysztof
