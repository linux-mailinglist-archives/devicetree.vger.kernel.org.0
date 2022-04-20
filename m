Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44655508D68
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 18:34:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380651AbiDTQgc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 12:36:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380657AbiDTQg1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 12:36:27 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3AEBE4615A
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 09:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1650472420;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=uQi4xpiIAYwU9OKYp0XYlU7Icz7XCZVMarc/hg4eCFA=;
        b=BFuE2uSEVCWJET/JOKBAYymL1xwWxEwSLkR82cOHoFWaflIV0VBrrKgrrHRCAxgmeSorDG
        dI8T6MxtkcJAs8uEPCfaqGpNrjeBtT4agwDRWnPLCDiN5v0JF23IWAb5buhgYaV8j4w68Z
        SzYXv7M9pLg0OHkkPjBQzA0cE/OTYAQ=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-639-UQqFR2ELOfGA6UvUyuXv3w-1; Wed, 20 Apr 2022 12:27:42 -0400
X-MC-Unique: UQqFR2ELOfGA6UvUyuXv3w-1
Received: by mail-wr1-f70.google.com with SMTP id k20-20020adfc714000000b001e305cd1597so547387wrg.19
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 09:27:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=uQi4xpiIAYwU9OKYp0XYlU7Icz7XCZVMarc/hg4eCFA=;
        b=NeGfNvnyXckol5dZRMBXtK6rzb+KMGDLQ2+b/7Wq/b83/GI5HA1xFhWCDdjVjTfo+8
         gjuj+zn48bT+aYjVltepFLyZtycBKGveZaNOBubD2dml1wDrd3JkyhKxoGZ94TMyCHl7
         Z2mlMWCoyqo64VvE/Wkek741RKRJK3JF/+YWBSJ5XiQkI4nNRBpnTeFd9uTuHiulTExT
         BMeLJqH91fNtLGmFgByErgEKIODkzCGmnQGXqDn0NM5ruYEozo5zV8ZPuXAK5SVB2clg
         dIg+IvkLvSHs2IMGeVkJyenMQpyvUib0DS4PM/EQ4wKPwl9KBTgvz4iuzPt/QONOl/u6
         PxoA==
X-Gm-Message-State: AOAM530+wLd9Wvz0FvZ4IQUHPtQHKUauIugSwKD+82JCtgMVi2n3i/OF
        IMNphoMspWbXzrT5bT1EkHgU8JvFafYIOw21ss+PpyJO2sIhMY+B6tOa/tuxHzD5mOE1sveOpLX
        ZNgD/WsYwTnLSM+93AYhyGw==
X-Received: by 2002:a05:600c:3b28:b0:38e:bb86:d68d with SMTP id m40-20020a05600c3b2800b0038ebb86d68dmr4483028wms.135.1650472061257;
        Wed, 20 Apr 2022 09:27:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJynjWWcQttb+aziN8pHptfqs3yGHSuwUSQnhkK4weL+KdnsI1r5xgng775oUvCczEZjZL9Qqg==
X-Received: by 2002:a05:600c:3b28:b0:38e:bb86:d68d with SMTP id m40-20020a05600c3b2800b0038ebb86d68dmr4483014wms.135.1650472061059;
        Wed, 20 Apr 2022 09:27:41 -0700 (PDT)
Received: from [192.168.1.129] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id n12-20020a5d588c000000b0020a9e80d2b1sm315363wrf.107.2022.04.20.09.27.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 09:27:40 -0700 (PDT)
Message-ID: <47105042-bd53-98b2-e3e2-0141fb6561f8@redhat.com>
Date:   Wed, 20 Apr 2022 18:27:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v5 1/5] dt-bindings: display: ssd1307fb: Deprecate "-i2c"
 compatible strings
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Daniel Vetter <daniel@ffwll.ch>, Mark Brown <broonie@kernel.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Chen-Yu Tsai <wens@kernel.org>,
        dri-devel@lists.freedesktop.org,
        Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>
References: <20220419214824.335075-1-javierm@redhat.com>
 <20220419214824.335075-2-javierm@redhat.com>
 <YmAxqNb7nKlypkqD@robh.at.kernel.org>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <YmAxqNb7nKlypkqD@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Rob,

On 4/20/22 18:15, Rob Herring wrote:
> On Tue, 19 Apr 2022 23:48:19 +0200, Javier Martinez Canillas wrote:
>> The current compatible strings for SSD130x I2C controllers contain both an
>> "fb" and "-i2c" suffixes. It seems to indicate that are for a fbdev driver
>> and also that are for devices that can be accessed over an I2C bus.
>>
>> But a DT is supposed to describe the hardware and not Linux implementation
>> details. So let's deprecate those compatible strings and add new ones that
>> only contain the vendor and device name, without any of these suffixes.
>>
>> These will just describe the device and can be matched by both I2C and SPI
>> DRM drivers. The required properties should still be enforced for old ones.
>>
>> While being there, just drop the "sinowealth,sh1106-i2c" compatible string
>> since that was never present in a released Linux version.
>>
>> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
>> Acked-by: Mark Brown <broonie@kernel.org>
>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>> ---
>>
>> (no changes since v3)
>>
>> Changes in v3:
>> - Drop the "sinowealth,sh1106-i2c", wasn't in a released version (Chen-Yu Tsai)
>> - Continue enforcing required properties for deprecated strings (Maxime Ripard)
>>
>> Changes in v2:
>> - Drop the -i2c suffixes from the compatible strings too (Geert Uytterhoeven)
>>
>>  .../bindings/display/solomon,ssd1307fb.yaml   | 44 +++++++++++++------
>>  1 file changed, 31 insertions(+), 13 deletions(-)
>>
> 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.
> 

I meant to add your Acked-by but just forget before posting. Sorry about that.

I'll add it myself before pushing.

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

