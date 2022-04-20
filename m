Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BE2F508DFE
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 19:07:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380872AbiDTRJ4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 13:09:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380867AbiDTRJz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 13:09:55 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 8688CA19C
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 10:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1650474427;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=sIGAZ2jDx0+plLAU0u/SeCd0hHr+BEblc6NaGFEJosU=;
        b=e53KAnzsKlgOYalpzQMpff9ouXhngOrzImizEufS2SUCLPuq1VJswFshUJJbUDmDj0s2/a
        iXnTJpsY/ecyBdj2sv9cmcgehbBMf8dAjnoKrZdMHgHga3u5HtfaTFJ5vch0+JMKeCt79A
        pA2RcqRYc7pUL8ZnzLnzkIs3YyD9gME=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-510-SHbq2eaQNNKdIebC04h0wA-1; Wed, 20 Apr 2022 13:07:06 -0400
X-MC-Unique: SHbq2eaQNNKdIebC04h0wA-1
Received: by mail-wr1-f72.google.com with SMTP id j30-20020adfb31e000000b0020a9043abd7so575816wrd.12
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 10:07:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sIGAZ2jDx0+plLAU0u/SeCd0hHr+BEblc6NaGFEJosU=;
        b=SKvKQRwNm106KCaIBOccI0G2kJ5sM6WldgJtfJfWPwKtjvRIPJzxfTj4XeCro/44XU
         cecX9nxhQNfykgW1udOm4+xO4/Eru1zRaKfYa45Wr7gxVNV35NO41NvcfHczRVRVKK2+
         WtZkguVnfHM/wpbkcBHWkmHv7A6iv8cR2PBdV2CDQLQkyM8NzgWSeBx4S9Bc6oA74P37
         ss/Q8WKmt6mRiCCuosiShHege5G+b6VwLOpXnhSzG88FJJhJ1+xFDZse1h26bVhBGV37
         kUdC1wIzhNPQ2TOlQiIByeHLGFKeJM5c4mK7K73+htL5heTZmig3IHeS1aJIn9SPTyI2
         nQNg==
X-Gm-Message-State: AOAM530Bv0Dx+HPI0SQkMklhse+eM6vmGvFi4IHdbOxUzPLXWvQJ2YuU
        U+L9Wvkpd9/Wz58aUSNywHcu4qLiNYVQQh1qa3NIuFkC6q4+9Vg4BDIKcQZclg0O/MOU8yAirJv
        5AvRUzalvJXfCHh2OKw0WzA==
X-Received: by 2002:a5d:64e3:0:b0:20a:87e9:7daa with SMTP id g3-20020a5d64e3000000b0020a87e97daamr16098290wri.345.1650474424990;
        Wed, 20 Apr 2022 10:07:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz3MIyuxXwjwVhUfrLMlnJtSGK9dUr6TOQYH9h8BXvsaW7w93EPZQsN3TpA9+R76BikV8V0mw==
X-Received: by 2002:a5d:64e3:0:b0:20a:87e9:7daa with SMTP id g3-20020a5d64e3000000b0020a87e97daamr16098268wri.345.1650474424736;
        Wed, 20 Apr 2022 10:07:04 -0700 (PDT)
Received: from [192.168.1.129] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id r3-20020a5d6c63000000b0020a94e82a3dsm323301wrz.64.2022.04.20.10.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 10:07:04 -0700 (PDT)
Message-ID: <dc30b2b9-d444-8a3b-59d9-f38c609dd978@redhat.com>
Date:   Wed, 20 Apr 2022 19:07:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v5 0/5] drm/solomon: Add SSD130x OLED displays SPI support
Content-Language: en-US
To:     linux-kernel@vger.kernel.org
Cc:     dri-devel@lists.freedesktop.org, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Chen-Yu Tsai <wens@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        YueHaibing <yuehaibing@huawei.com>, devicetree@vger.kernel.org
References: <20220419214824.335075-1-javierm@redhat.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220419214824.335075-1-javierm@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/19/22 23:48, Javier Martinez Canillas wrote:
> Hello,
> 
> This series adds a ssd130x-spi driver that provides a 4-wire SPI transport
> support for SSD130x OLED controllers that can be accessed over a SPI bus.
> 
> The driver is quite similar to existing ssd130x-i2c driver that is used by
> I2C controllers, but there is a difference in the protocol used by SSD130x
> depending on the transport used. The details are in patch #4 description.
> 
> Patch #1 just makes the current ssd130x-i2c compatible strings in the DT
> binding to be deprecated, and add new ones that don't have an "fb-i2c".
> 
> Patch #2 extends the DT binding with the properties needed to support SPI.
> 
> Patch #3 adds the new compatible strings to the OF device ID table in the
> ssd130x-i2c DRM driver and deprecate the old ones.
> 
> Patch #4 moves the device info for the different SSD130x variants from
> the ssd130x-i2c transport driver to the ssd130x core driver.
> 
> Finally patch #5 adds the ssd130x-spi DRM driver for the OLED controllers
> that come with a 4-wire SPI interface, instead of an I2C interface.
> 
> This is a v5 that addresses the issues pointed out in v4.
> 
Pushed this series to drm-misc-next after adding Rob's Reviewed-by
tags to patch 1/5 and 2/5, since I missed that in v5. Thanks all!

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

