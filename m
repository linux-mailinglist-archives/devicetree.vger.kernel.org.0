Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC6D5654DA1
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 09:43:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235969AbiLWIn4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Dec 2022 03:43:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229937AbiLWIny (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Dec 2022 03:43:54 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4629CF583
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 00:43:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1671784989;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=OgXrKZUe+WALJkno7gEXFcqYGH8VWbaDYjiO7PdT1GY=;
        b=GZ6JecKqjveu6IauqKWh4fBPjT4oKedXidJD9IDoKTv+yrZnw8YHVg3b2Zz2tkzbaM70SG
        pugaZeXxjqL+NS/9Z8FvEBlNsbwUPnHCSYZgHl2q1HJYJyMtPVu1Sui2dBskiDwjF7NTtS
        88bkwNviAt8TbLfYlqGaAd/FDGKLYBA=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-377-adWxJ_OGMGKl0N9HkKvqWA-1; Fri, 23 Dec 2022 03:43:07 -0500
X-MC-Unique: adWxJ_OGMGKl0N9HkKvqWA-1
Received: by mail-wm1-f70.google.com with SMTP id x10-20020a05600c420a00b003cfa33f2e7cso1939685wmh.2
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 00:43:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OgXrKZUe+WALJkno7gEXFcqYGH8VWbaDYjiO7PdT1GY=;
        b=1tYrZbDBFmfkrx1KaPof7iG+z2kEcEygaPgsvjo5b8aTSJNym1yoGE4HN45o1ZFtMI
         Nf7QvG6tatnoXggHHXoDOBKYoDazjD6uUU1jCFfLRr7KoFm5BGJN16itUEiI5MqBzZLK
         r66yRG0E4dCTYkFCGT1dyGqeifjOuOn/yp/Js8Q02dR5DgBfH+Y4MAJe/b03UgvvIQie
         Xa6vdMMduVFJp2v1MxZYV4ONJNGG5n0lRHv5a+1mlA8LeaY1/0YgShc/NePUTBChCc7j
         cYjb+cs11W6HqIiHXW6W1Pt4LoNIx/y2T2LYyFKDvKhfq3jjvc18sqGb57ngEo9Y8WbN
         qTIw==
X-Gm-Message-State: AFqh2kqYm9r4cmbsIliDUQewQsy4elsdxg784f7RpBskl5WjHqr3qoTY
        ePmXi87YPIBpl80yJp6FnB89rmrRcXlvTzLguKKNLJYbjrauMj5jFcyVHBFiAA9rFXDCW0w45JR
        NKC+mLGtzb9QuN3AYfiTHFA==
X-Received: by 2002:a05:600c:4b1d:b0:3d3:3deb:d916 with SMTP id i29-20020a05600c4b1d00b003d33debd916mr6521864wmp.4.1671784986896;
        Fri, 23 Dec 2022 00:43:06 -0800 (PST)
X-Google-Smtp-Source: AMrXdXv3UL952lVtLJ0qs53l9fiyT+QZnYGFRXQO2Ej3Ix2fHwc2pFojvZWk3mRXz2OYnq1zBbZe4g==
X-Received: by 2002:a05:600c:4b1d:b0:3d3:3deb:d916 with SMTP id i29-20020a05600c4b1d00b003d33debd916mr6521855wmp.4.1671784986719;
        Fri, 23 Dec 2022 00:43:06 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id d12-20020a5d4f8c000000b002421a8f4fa6sm2422507wru.92.2022.12.23.00.43.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 00:43:06 -0800 (PST)
Message-ID: <61684a3a-a225-59cd-ade6-ad4ae7d1d8b3@redhat.com>
Date:   Fri, 23 Dec 2022 09:43:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 2/4] dt-bindings: display: Add Himax HX8394 panel
 controller bindings
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org
Cc:     Ondrej Jirman <megi@xff.cz>, Robert Mader <robert.mader@posteo.de>,
        Peter Robinson <pbrobinson@gmail.com>,
        =?UTF-8?Q?Kamil_Trzci=c5=84ski?= <ayufan@ayufan.eu>,
        Martijn Braam <martijn@brixit.nl>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20221222223830.2494900-1-javierm@redhat.com>
 <20221222223830.2494900-3-javierm@redhat.com>
 <9636776f-d7f5-02cf-7290-69dbba6de6ab@linaro.org>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <9636776f-d7f5-02cf-7290-69dbba6de6ab@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Krzysztof,

On 12/23/22 09:12, Krzysztof Kozlowski wrote:

[...]

> With three above:
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>

Thanks a lot for the review! I'll fix the issues you pointed out in v2.
 
> Best regards,
> Krzysztof
> 

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

