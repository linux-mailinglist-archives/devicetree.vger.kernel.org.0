Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D054140C25E
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 11:06:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233068AbhIOJG7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 05:06:59 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:54490
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233048AbhIOJG7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Sep 2021 05:06:59 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 20E933F338
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 09:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1631696740;
        bh=X7Cc3jU81HRUvI9Nu63KcpmXz37KgSemXGthehwJJeg=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=CUerVHaNwS+LaBH1z4i2I9dF9ZawSFEpGJc97A0Qk+8lUhsSy5vKQmK6GoJhIu1yB
         /OgHOf1Iftu0u+5oraWJliNJwyJ2jDR8sIALsDoogV2jr17BAmVXIwq2a2tkaibXcH
         cT85G2Pl+GcQ9HolyKV9SlLI80kcESDEp1nL2tFc8LekRltvDpSp02Q9fuonsoCsiF
         ctoyuutwR2Tu9+UTFQOUe44HXbL6OPnV0SmYUh8PbBNTvFr6CWlQrKhjvXauB3f9TT
         hHOVYpvxsZHweFVMZSSYqskWvPfCDwE0q8Wog0507HK+QKEVeAxYwGCsK3e+/Q/r0b
         jAI57NTeAWDow==
Received: by mail-ed1-f71.google.com with SMTP id m20-20020aa7c2d4000000b003d1add00b8aso1253955edp.0
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 02:05:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=X7Cc3jU81HRUvI9Nu63KcpmXz37KgSemXGthehwJJeg=;
        b=ZO//OOvxey0BzEsv/5PcEovc1PIjzA5ZNTiDZClZKi2fjhhXE0csGSJmzlMVU9OsKG
         yti83tlyS3cRHTsTXS85K/8IZz1Hi+r69i+7pOjO2CGz4A2zvps2FfCItS6V9JA+oOD0
         TG6jKrFb7d+wCQ2dwXBrOvnAgX94krF46VphlUv90n5t4yLYzQGUP853OPYe8JulKTAE
         4fCgAGHKpmhFxUVuNba9/Y2y8Xnh4etszmyDDTVwcsEQxg4coTg4F3tkN9nDdSRgcqv5
         yvJKZnn3Qt4lFZ0vh8K7MInHiaQZWBwxx1MkvbWwLwWs34AkIrBdyvDED8M5tDyYQNRX
         jkOg==
X-Gm-Message-State: AOAM533TtFn+B+cbPQI8zmhKtHXdnN6O670v9nlJQWYGpjOH6bnRdw8E
        MaUaBvchIArdOEXJgK3tX4l+eJ+l/VWuzOljHqpKN+Ui2HABv7J6hdojMCVyILlT/bBpGRsSdeb
        Q73uDb3eZOCkvjgHv8Xppb/CGqBoAr4hMh34e1bc=
X-Received: by 2002:a17:907:7613:: with SMTP id jx19mr24334737ejc.453.1631696739813;
        Wed, 15 Sep 2021 02:05:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzD9fO3zbzPRg3ejtmsih8V9NIThIYB0jKBalTlLEm2XpSRUk4IVkXNzIOR7td1TQ+/UiTNCQ==
X-Received: by 2002:a17:907:7613:: with SMTP id jx19mr24334728ejc.453.1631696739675;
        Wed, 15 Sep 2021 02:05:39 -0700 (PDT)
Received: from [192.168.3.211] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id c5sm6843180edx.81.2021.09.15.02.05.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Sep 2021 02:05:39 -0700 (PDT)
Subject: Re: [PATCH v4 8/8] memory: gpmc-omap: "gpmc,device-width" DT property
 is optional
To:     Roger Quadros <rogerq@kernel.org>, tony@atomide.com
Cc:     robh+dt@kernel.org, grygorii.strashko@ti.com, nm@ti.com,
        lokeshvutla@ti.com, nsekhar@ti.com, miquel.raynal@bootlin.com,
        devicetree@vger.kernel.org, linux-mtd@lists.infradead.org,
        linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210914122705.15421-1-rogerq@kernel.org>
 <20210914122705.15421-9-rogerq@kernel.org>
 <e0c4759b-7c2d-e32c-f912-8409c1f65b49@canonical.com>
 <6a06f4bd-f20a-8b5a-c152-0877707670ff@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <1b915c39-fd6d-3c3c-e4bf-4df9a694dfb6@canonical.com>
Date:   Wed, 15 Sep 2021 11:05:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <6a06f4bd-f20a-8b5a-c152-0877707670ff@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/09/2021 10:47, Roger Quadros wrote:
> Hi Krzysztof,
> 
> On 15/09/2021 10:12, Krzysztof Kozlowski wrote:
>> On 14/09/2021 14:27, Roger Quadros wrote:
>>> Check for valid gpmc,device-width, nand-bus-width and bank-width
>>> at one place. Default to 8-bit width if none present.
>>>
>>> Signed-off-by: Roger Quadros <rogerq@kernel.org>
>>> ---
>>>  drivers/memory/omap-gpmc.c | 41 ++++++++++++++++++++++++--------------
>>>  1 file changed, 26 insertions(+), 15 deletions(-)
>>>
>>
>> All the comments from v3 are still applicable because it seems you
>> ignored them. Please respond to them.
>>
>> It's the second patch where the reviewer's comments got lost, so it
>> creates rather poor impression.
> 
> I was wondering what comments and then realized that gmail server has put
> all your messages into spam folder.
> 
> I'm very sorry about that. I will address your comments ASAP.

Oops. There were just two emails from me for v3. Can you send me
(privately) the headers from my emails so I can investigate why they
ended up on Spam?

Best regards,
Krzysztof
