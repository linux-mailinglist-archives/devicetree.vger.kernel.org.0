Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C50A4F18D0
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 17:48:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378675AbiDDPuQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 11:50:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235747AbiDDPuQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 11:50:16 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 8ACAF261A
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 08:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649087298;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=ACaAB1t0vMWb3pX2ELgBqL+jg9CnsBzljXi5Wr6J60o=;
        b=ahQIZJveoaR+Y6dsDE5k2DBuix4glwxgmWuUbkU0t6K4znyfEdZbQU0DnSa5F71Xd5sait
        JYdGNQBlf25YwkWQPb2M6fY5lX/sqaQucXMv7nxKHSdttWiCSza4IweLIWkf7wOz7rCqeN
        W5yW13uy+n5yMyAAHFYJZPiq4Sals0o=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-548-5bcm1QfLPLG4BGUNo7H2Nw-1; Mon, 04 Apr 2022 11:48:17 -0400
X-MC-Unique: 5bcm1QfLPLG4BGUNo7H2Nw-1
Received: by mail-wr1-f69.google.com with SMTP id j18-20020adfa552000000b002060a011303so1013732wrb.14
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 08:48:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ACaAB1t0vMWb3pX2ELgBqL+jg9CnsBzljXi5Wr6J60o=;
        b=BIqwKg2Zjw0eggwZa5fJenp1v9fsuEW5SLjZE2wSt5VYdswZGUdNFKVXjmOGS6xuP9
         T9byoG6PHlDbwi6Te6QaVV3OOJfpfvHKFeRAeG1jceeYFNydSqL7iigSDNvxANe/Hbzq
         GakzUN0pp+raeGWzjNYF8MtOSXfAaC+NHlpP+s6W32V4apw2bOu+/356JZeg+7QdcT/n
         5YFWhyx3LsNQ/+g64oZB2PLgyN60NaQxQt/YzeQApftrHullc87/lqup8LGlYAEH/uRV
         xxVUU4hxAdaq+fMY1LwRx/DY0vS4b5Cbhf90WGQvL9rWTXtf+CO+HbseXD/pcyf+Ql+/
         IPcw==
X-Gm-Message-State: AOAM532WoB/2sA6PHIyr/o0pAX1rGwkx0ZqsSQrdYsVm1g3z1Zkjfebb
        LCGjNDxV3lBDVxvfKtP78stGXV98dKZ6EHXczMJLDTqAayxBVDW5aDiZFtLDzSYS5a+S37j1guH
        3rwSOnM6xUrTocxE82GNt2g==
X-Received: by 2002:adf:f188:0:b0:206:e20:1b65 with SMTP id h8-20020adff188000000b002060e201b65mr259498wro.363.1649087296378;
        Mon, 04 Apr 2022 08:48:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz+jBXSnytEUbHzPD7PrJYBhDtVRIkCeBYl9hIqrrHNXMn+EkEqSV4Kzkt4zlwuYyU9ugLZaA==
X-Received: by 2002:adf:f188:0:b0:206:e20:1b65 with SMTP id h8-20020adff188000000b002060e201b65mr259479wro.363.1649087296112;
        Mon, 04 Apr 2022 08:48:16 -0700 (PDT)
Received: from [192.168.1.102] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id v14-20020a7bcb4e000000b0034492fa24c6sm9737099wmj.34.2022.04.04.08.48.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Apr 2022 08:48:15 -0700 (PDT)
Message-ID: <92a46ea2-e23e-b7c8-ea5f-35d458ee1b76@redhat.com>
Date:   Mon, 4 Apr 2022 17:48:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH 2/4] dt-bindings: display: ssd1307fb: Add entry for SINO
 WEALTH SH1106
Content-Language: en-US
To:     wens@kernel.org, Javier Martinez Canillas <javier@dowhile0.org>
Cc:     Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>
References: <20220330190846.13997-1-wens@kernel.org>
 <20220330190846.13997-3-wens@kernel.org>
 <CABxcv==csvqsxM46ce2LecDh4E-UxxD2DG+3E-hCFoyrdtRv7A@mail.gmail.com>
 <CAGb2v64VQPjan=EUkd8UhRZfV0g1GqBwPqhxQakS=7YhgvVDQA@mail.gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <CAGb2v64VQPjan=EUkd8UhRZfV0g1GqBwPqhxQakS=7YhgvVDQA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Chen-Yu,

On 4/4/22 17:06, Chen-Yu Tsai wrote:

[snip]

>>>      enum:
>>> +      - sinowealth,sh1106-i2c
>>
>> I like that you didn't include a "fb" suffix for this, the existing
>> ones are cargo culting from the previous fbdev driver to make existing
>> DTBs compatible with the DRM driver.
>>
>> I've been thinking if I should post a patch to compatible strings
>> without the "fb" and mark the current ones as deprecated...
>>
>> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
> 
> I also thought about dropping the "-i2c" suffix, but then thought
> there might be a case where someone wanted to search the device
> tree specifically for an I2C connected node using said compatible
> string.
> 
> What do you think?
> 
>

tl; dr: unfortunately we can't do it due how SPI and I2C report module
aliases. Otherwise module auto loading will not work. I wrote a much
longer explanation with some details not so long ago:

https://patchwork.kernel.org/project/dri-devel/patch/20220209091204.2513437-1-javierm@redhat.com/#24730793

BTW, I bought a SSD1306 SPI controller and go it working this weekend.

I plan to post the patches once yours land, to avoid in-flight series
that may conflict. And what I did is mark the -fb as deprecated, then
added "ssd130x-i2c" and "ssd130x-spi" compatibles strings.

The WIP patches can be found here in case you are interested:

https://github.com/martinezjavier/linux/tree/drm-ssd130x-spi

> ChenYu
> 

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

