Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61B0B4DAC66
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 09:25:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353926AbiCPI0z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 04:26:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343721AbiCPI0y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 04:26:54 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2F295F252
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 01:25:40 -0700 (PDT)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 886B13F602
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 08:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647419139;
        bh=FTwSx/3HEgnMDE/GY4NSGet5opQ0xemL0ZN3Wo9yDNs=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=U1S8Zk+SpsDkBDBqG5kogTNRGhU8mqboWGqyMEUkZ6IhOl5i6AqPhvRtv5KSNSgwv
         g7mYvdGFGcajV1LSEtulr4PueRMnbm6iPZ8qkS5le3gRtrXAXbTtnCDLi/g1K3mJgQ
         FFs2Dj+kZNytVdsWNeR+opY//6zTVIXtJ1uIwZQkvuKTIjwsje3mq9FIjrT287NrfU
         K8pUDtdz74rozEtVucgDTJ1YhKnP6NvLee0X7dbXq6cxEwLsdVDmqhLIXQx2jqykCE
         +v1ZiufVTIvquaICZtxPmMjfgZ6WNao0VXas1jcSe9H6/ETupd15lvhupfxRUrv4x1
         oQQw+fv7sebtA==
Received: by mail-ej1-f70.google.com with SMTP id m12-20020a1709062acc00b006cfc98179e2so760469eje.6
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 01:25:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=FTwSx/3HEgnMDE/GY4NSGet5opQ0xemL0ZN3Wo9yDNs=;
        b=Lt+K5wCz0SyALnI5PdyMtI4SHiKCfyH8l46SGZSX4+dZ28EZQFo3ZHqvJml7fe0Z5P
         y3S348sNVW3xf9vBqayACFcJa++4hIqg6B+VW4l85GBwoJmBugeSpFPdpHglUPvLUj3T
         2A83M1lJ27kAJExU7+SLtKWE5tGZXOUCcXC+vzaCTwatVhH95HvBrLrptYzThThMpAuI
         gi3SXIgnerJugDb82BCopuiKRNFYBM3bDo81qRL9SjJohuT4fT0Odqoh3URSS1mFkd6Q
         zC9UZQy4Jw9Qz9VviqDq7xh1+7yzKhT8VBUzjEvoI+RDUJ+yl3IguGO27obnzTKtd7Jj
         50hA==
X-Gm-Message-State: AOAM530RpS8egHhDO1SA2jz5RHuSlfUchY7m3cdjeTfZMwWK6t9mRDAJ
        gDbpq4tYzXgZK1IRz9CfWMzG9vdoAz0gDkJHy6v29IY14exDEmAtNXjiO/aqesDS1wAflC8ka4/
        AsK/8tCjd7HAvFtQHWfIbXmR4/ZRaQiw1nYeUqWA=
X-Received: by 2002:a05:6402:50ce:b0:416:798c:b167 with SMTP id h14-20020a05640250ce00b00416798cb167mr28339632edb.136.1647419138653;
        Wed, 16 Mar 2022 01:25:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy2ikOjr+WheFDi+pUjy+MT9UyQ3T3j2eKC6+Xohw9h/2uGCDp47REhaIhuhWr5jd6ti+bnuQ==
X-Received: by 2002:a05:6402:50ce:b0:416:798c:b167 with SMTP id h14-20020a05640250ce00b00416798cb167mr28339619edb.136.1647419138445;
        Wed, 16 Mar 2022 01:25:38 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.googlemail.com with ESMTPSA id fq6-20020a1709069d8600b006db088ca6d0sm566636ejc.126.2022.03.16.01.25.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Mar 2022 01:25:37 -0700 (PDT)
Message-ID: <18cf03b5-631a-e97f-dbb8-0fa93c8784cf@canonical.com>
Date:   Wed, 16 Mar 2022 09:25:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: timer: Convert rda,8810pl-timer to YAML
Content-Language: en-US
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Stanislav Jakubek <stano.jakubek@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-unisoc@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220225173734.GA7573@standask-GA-A55M-S2HP>
 <20220315140140.GA2558@standask-GA-A55M-S2HP>
 <09e8fdab-978b-fa9d-9e45-f8625ebc9c52@canonical.com>
 <04887e91-3116-c7fa-ac48-5d0ca8e42994@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <04887e91-3116-c7fa-ac48-5d0ca8e42994@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2022 20:02, Daniel Lezcano wrote:
> On 15/03/2022 19:26, Krzysztof Kozlowski wrote:
>> On 15/03/2022 15:01, Stanislav Jakubek wrote:
>>> Hi all,
>>>
>>> anything holding this back? It's been sitting on the mailing lists
>>> with 2 R-B's for ~2 weeks.
>>
>> Maybe it's too late in the cycle for Daniel to take this?
>>
>> Daniel,
>>
>> If you are waiting for Rob's ack, mine should be sufficient.
> 
> Right usually, I'm waiting for Rob's ack before picking these changes.

Which is fine :) but for the record (since information spreads slowly):
https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=dt/next&id=d029175f1420931e8d855868d264c4685687f3fd


Best regards,
Krzysztof
