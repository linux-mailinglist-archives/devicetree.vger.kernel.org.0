Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 214F76640BC
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 13:44:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232987AbjAJMoK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 07:44:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238480AbjAJMoH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 07:44:07 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 732414FCE9
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 04:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1673354597;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=VuDZQoNTvLCMWUBdjBX9vJZBiOLiogy0J+gwEg2h85o=;
        b=KdmgrvoVnR7zcttSWL1XCoM76cTJXFdfWyKBPOmIcr1BTOZ43BDndMDZDoASNaxRC1LC/V
        aFXOxaxkK7kVvHJ2+sUPLDwr1x2StJxWvQST8hCt/sVI3819WoPkELlTjt9dSB/Gn7ZobC
        ymr9vmQ9vRJxcOeVTs9NPHRI6jDLFGI=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-119-odRwPYH7OvioM4FeetlMNQ-1; Tue, 10 Jan 2023 07:43:16 -0500
X-MC-Unique: odRwPYH7OvioM4FeetlMNQ-1
Received: by mail-wm1-f72.google.com with SMTP id fm17-20020a05600c0c1100b003d96f0a7f2eso8950478wmb.6
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 04:43:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VuDZQoNTvLCMWUBdjBX9vJZBiOLiogy0J+gwEg2h85o=;
        b=kifN96zZ+vqtp9IEu9vr360ztgegebsRL/XCZwdwkHtIZH8Rs4EbQoCu/ZXa8O4ifW
         0WO4sj8dVp9sySByzVHmkqoD4liAuXlK0RUUO+Pvlpbs6W2ijs7okj8A+rpnhEcAN+QP
         4PHMUDW9ByTTnW7WDetWQYDtcs/NkosBcff3FAu0nrUO7rT1ZkAbXULiPUP2bCN0ZsE1
         apvRLq6HDLZEupjYdVf2J0+ZP4gug1dI/ZF7JVyWOXEHTm303erL79fLzSGpSRHTKNlW
         +Z2j1gb012sxFQxYQq2eJwJxNGK11ZAA0gImnA4V55vukOEf0xJlMBmUp/ZNMIxYPq6l
         GEXQ==
X-Gm-Message-State: AFqh2kpVAmyvA9/tkhY55eQWvWYMrhREls2Kzg5BvnsAKYmd2r73Cu03
        kT1+1KI6RTYtuzOxNrY9ODt5TWDs6bBg7szyK7+9vG79YoDzN7SvMjJrOhngK0WppIf/zEbqrbD
        rbYx6zlmkEFleNB1FdMdEiQ==
X-Received: by 2002:a7b:c4c8:0:b0:3d3:5a4a:9101 with SMTP id g8-20020a7bc4c8000000b003d35a4a9101mr53008460wmk.23.1673354595116;
        Tue, 10 Jan 2023 04:43:15 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsUjqCcKs3belwDW02YrGwAd9dYstg2utsYF/y82Y5pSf2VIgSmVGXcb1vaHM0wcgRqsAjR+g==
X-Received: by 2002:a7b:c4c8:0:b0:3d3:5a4a:9101 with SMTP id g8-20020a7bc4c8000000b003d35a4a9101mr53008439wmk.23.1673354594930;
        Tue, 10 Jan 2023 04:43:14 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id f15-20020a7bcd0f000000b003d9a71ee54dsm14375160wmj.36.2023.01.10.04.43.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 04:43:14 -0800 (PST)
Message-ID: <383d4eba-9e3f-04e2-31bf-93b1f3dcdd93@redhat.com>
Date:   Tue, 10 Jan 2023 13:43:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v5 0/3] Add PinePhone Pro display support
Content-Language: en-US
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Robert Mader <robert.mader@posteo.de>,
        Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
        Neal Gompa <ngompa13@gmail.com>,
        dri-devel@lists.freedesktop.org,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Martijn Braam <martijn@brixit.nl>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Ondrej Jirman <megi@xff.cz>,
        Jagan Teki <jagan@amarulasolutions.com>,
        =?UTF-8?Q?Kamil_Trzci=c5=84ski?= <ayufan@ayufan.eu>,
        Thierry Reding <thierry.reding@gmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        linux-arm-kernel@lists.infradead.org,
        Peter Robinson <pbrobinson@gmail.com>
References: <20230102230733.3506624-1-javierm@redhat.com>
 <CACRpkdadwiG=OMMHFUKYHyr1zRpeZzVR9pkmsBEBxqZzN2H53g@mail.gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <CACRpkdadwiG=OMMHFUKYHyr1zRpeZzVR9pkmsBEBxqZzN2H53g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Linus,

On 1/10/23 13:30, Linus Walleij wrote:
> On Tue, Jan 3, 2023 at 12:07 AM Javier Martinez Canillas
> <javierm@redhat.com> wrote:
> 
>> This series adds support for the display present in the PinePhone Pro.
>>
>> Patch #1 adds a devicetree binding schema for panels based on the Himax
>> HX8394 controller, such as the HSD060BHW4 720x1440 TFT LCD panel present
>> in the PinePhone Pro. Patch #2 adds the panel driver for this controller
>> and finally patch #3 adds an entry for the driver in MAINTAINERS file.
>>
>> This version doesn't include the DTS changes, since Ondrej mentioned that
>> there are still things to sort out before enabling it. The DTS bits will
>> be proposed as a follow-up patch series.
>>
>> This allows for example the Fedora distro to support the PinePhone Pro with
>> a DTB provided by the firmware.
>>
>> This is a v5 of the patch-set that addresses issues pointed out in v4:
> 
> I looked over the patches a last time. This driver looks great.
> Acks by Krzysztof and Sam are in place.
> Patches applied to drm-misc-next!
>

Awesome. Thanks a lot!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

