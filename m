Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFE9F65AED0
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 10:45:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232032AbjABJpr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 04:45:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231984AbjABJpp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 04:45:45 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB2772DC1
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 01:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1672652697;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=hrNAqV6ZY5ivQJapJxCgpk49bJb25LBax+4yjjic7Lg=;
        b=WmNDkqtCQk6ec86uQyjquoaw9HFORyJS2745aVBd3OqWytSqiH7Lp4vLpB8L+yoe5eGep/
        GIFl+aEjP4z7ZbnvDWPHnY6ebquk30uRLk3MiyDp8V3eOeAqUTAVh3A6TpOsSEGJSY8jt0
        QEUxx0/AgY0BB84i2cnCGSGLQea7rmM=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-193-5yslNnOPNnmoJK0yc5j65g-1; Mon, 02 Jan 2023 04:44:56 -0500
X-MC-Unique: 5yslNnOPNnmoJK0yc5j65g-1
Received: by mail-wm1-f70.google.com with SMTP id fl12-20020a05600c0b8c00b003d96f0a7f36so13429745wmb.1
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 01:44:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hrNAqV6ZY5ivQJapJxCgpk49bJb25LBax+4yjjic7Lg=;
        b=iFVOC9NOsp9kPKeueoR1UZPGdMNQHYpg3IwgksO1OQjuy42TmBGBYZi3W6aNK9JoUE
         5toYgCvNPE/OHt6l/oGvRXRhF40bl3HSnc4/uw7Z/neb1Mciv6/adTsZiGaqmObJtEvV
         q61bjw3iMGX1hGrSMGOFVl8f/WFNHgSDib9Jjpdq+8wLLGDmztcee0A8RYsjoVYB1+ab
         QMtJDAJkp4lpDhb/W+YrBH/vQxgvh00AmNzutu5Qg/nWjhkFwN3nXaJhGWKc/IpM09fV
         sbsN5baoVTRfyPQjYabEtslLDFcf7u3OTQlRYLDaV1UOXzRpAe/XkWYbdBTgRtve6V4y
         kGmA==
X-Gm-Message-State: AFqh2kqrZC4FeOJPVJ4AKAsM0pPvX/qvcENeT9UxSy3ORwLaY67PDbxt
        yl+jz2I1w58EVBAyXG1GP9AMuRL+7PqsXtrMYW5107TLofa3PaEHHxfeSCEXNhDzDROVpAfI4+N
        ixEdrhm86wc7RS27WLpJ8gg==
X-Received: by 2002:a05:600c:d2:b0:3d2:2b70:f2fd with SMTP id u18-20020a05600c00d200b003d22b70f2fdmr29035349wmm.21.1672652695631;
        Mon, 02 Jan 2023 01:44:55 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvGGW0J+6nq6DUxW1h2xRC/i7kscSszFCvw0h/Drz9ysxqRksonNdlBfYAtcIGbHZBQsbKS3Q==
X-Received: by 2002:a05:600c:d2:b0:3d2:2b70:f2fd with SMTP id u18-20020a05600c00d200b003d22b70f2fdmr29035334wmm.21.1672652695377;
        Mon, 02 Jan 2023 01:44:55 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id m8-20020a05600c4f4800b003cfaae07f68sm44938241wmq.17.2023.01.02.01.44.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jan 2023 01:44:54 -0800 (PST)
Message-ID: <c0c5b5ac-821c-1277-a2f1-d896a6ed680b@redhat.com>
Date:   Mon, 2 Jan 2023 10:44:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 0/4] Add PinePhone Pro display support
Content-Language: en-US
To:     Pavel Machek <pavel@ucw.cz>
Cc:     Neal Gompa <ngompa13@gmail.com>, dri-devel@lists.freedesktop.org,
        Martijn Braam <martijn@brixit.nl>,
        Caleb Connolly <kc@postmarketos.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?Q?Kamil_Trzci=c5=84ski?= <ayufan@ayufan.eu>,
        Sam Ravnborg <sam@ravnborg.org>,
        linux-rockchip@lists.infradead.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        devicetree@vger.kernel.org, Robert Mader <robert.mader@posteo.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
        linux-kernel@vger.kernel.org,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Ondrej Jirman <megi@xff.cz>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20221230113155.3430142-1-javierm@redhat.com>
 <Y7H5UJOz/zYuZn7j@duo.ucw.cz>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <Y7H5UJOz/zYuZn7j@duo.ucw.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Pavel,

On 1/1/23 22:21, Pavel Machek wrote:
> Hi!
> 
>> This series add support for the display present in the PinePhone Pro.
>>
>> Patch #1 adds a driver for panels using the Himax HX8394 panel controller,
>> such as the HSD060BHW4 720x1440 TFT LCD panel present in the PinePhone Pro.
>>
>> Patch #2 adds a devicetree binding schema for this driver and patch #3 adds
>> an entry for the driver in the MAINTAINERS file.
>>
>> Finally patch #4 adds the needed devicetree nodes in the PinePhone Pro DTS,
>> to enable both the display and the touchscreen. This makes the upstream DTS
>> much more usable and will allow for example to enable support for the phone
>> in the Fedora distribution.
> 
> Thanks for the series. Please cc: phone-devel@vger.kernel.org with
> future patches.
>

Sure, I will.
 
> Best regards,
> 								Pavel

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

