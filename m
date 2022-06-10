Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FB15546657
	for <lists+devicetree@lfdr.de>; Fri, 10 Jun 2022 14:13:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235247AbiFJMNy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jun 2022 08:13:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245662AbiFJMNw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jun 2022 08:13:52 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4758C21AC4D
        for <devicetree@vger.kernel.org>; Fri, 10 Jun 2022 05:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654863230;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=VjtHIlT7gJ/0dA78qBBDZKArnIxKj9no14NIn18ZcW4=;
        b=BICFvfUrRdhC8siW/Pbcee3YO6/DL2iSBScd4pX09P4cCrFQyhBX1QmtHIKLJF/CbF/HtK
        XRhZ7MVHe2xtyq7kP6+QaeQ/F1VnQ3Ux9KAZWoSyql6+S4nMMN36n0t8h89GHcT84rHSdY
        8gE3rWOs7/HAjJj7Q9TaXqtUsPqR1Pw=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-655-ciXbjj1GMj6OTwzlUXqhWw-1; Fri, 10 Jun 2022 08:13:36 -0400
X-MC-Unique: ciXbjj1GMj6OTwzlUXqhWw-1
Received: by mail-wr1-f71.google.com with SMTP id v4-20020adfebc4000000b002102c69be5eso6144399wrn.13
        for <devicetree@vger.kernel.org>; Fri, 10 Jun 2022 05:13:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VjtHIlT7gJ/0dA78qBBDZKArnIxKj9no14NIn18ZcW4=;
        b=f9+NJpF7KSkJ1Knpz3nvi5S99PrjoOjvy72+bWkliHzW6PPNxRChZpUbNsmm11R8hS
         bU+cSxNsH50wEm8FrJy46DrVj3iUITf8cx7Gbwd461Y4HueO3uz4PCvDVJLrr2b3oi/x
         bD5t6FCy0i6LQhAmKQZ4TVVKXzkhbVMWgIE861u05vZ22L91gbzYQpIkqlie5+dXRsa4
         yZiMQtlNe89++nJZZ8RRrsjBWn/iSQir2GbP2EGwCjw6/5pxEIVn1ZmShSWP6FJd/IAI
         B/MUPv/QtZRHOOSsOPvfBWYwxOsyidWmx9voZ0RKM7jncBXt+bEAB+wsFKpAFsMcVtjz
         Ie3w==
X-Gm-Message-State: AOAM530KQxa3tlec8+Y1Nd55ZAPLZC5ZRdQE37zOmBfMmHSDeYFgBl0g
        OxAciLIhaV2QhCppORf+e6tTZ9YssVvVSW18nB4ZDtIvxcW+o1oBrktPVKymlYEvdlXN1WjZb8A
        V4aQRsfwSRyuEujJYe7Oj1Q==
X-Received: by 2002:a05:6000:188a:b0:218:e9a8:1321 with SMTP id a10-20020a056000188a00b00218e9a81321mr12551092wri.504.1654863215426;
        Fri, 10 Jun 2022 05:13:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzzO4paPz71oXlv08G+Vwdn5pwyUT+0j495DIKuEibJrRPSzv/rKYLB8HphMWOz65ZaCXFVng==
X-Received: by 2002:a05:6000:188a:b0:218:e9a8:1321 with SMTP id a10-20020a056000188a00b00218e9a81321mr12551055wri.504.1654863215164;
        Fri, 10 Jun 2022 05:13:35 -0700 (PDT)
Received: from [192.168.1.129] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d4c4b000000b00219b391c2d2sm6211650wrt.36.2022.06.10.05.13.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jun 2022 05:13:34 -0700 (PDT)
Message-ID: <0ac368d9-efe6-ab98-a695-292bca8febf8@redhat.com>
Date:   Fri, 10 Jun 2022 14:13:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v6 0/6] Raspberry PI 4 V3D enablement
Content-Language: en-US
To:     Melissa Wen <mwen@igalia.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
References: <20220603092610.1909675-1-pbrobinson@gmail.com>
 <cadecbfd-e174-eadb-276c-577bb2bf70f2@gmail.com>
 <9aaaaa29-11c0-d494-11dd-0bbf5d384364@redhat.com>
 <20220608155130.w4piz2g3obp7qnx7@mail.igalia.com>
 <40f27e32-720a-2f51-2164-5e152f53443a@redhat.com>
 <20220610110556.63mddbye7vxq6mzb@mail.igalia.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220610110556.63mddbye7vxq6mzb@mail.igalia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Melissa,

On 6/10/22 13:05, Melissa Wen wrote:
> On 06/08, Javier Martinez Canillas wrote:

[snip]

> 
> Hi Javier,
> 
> Thanks for waiting a little.
> 
> Stefan guided me to the missing part and I'm okay on this serie.
>

No worries and thanks for the testing.
 
> If there's any r-b missing for drm/v3d, you can add mine:
> Reviewed-by: Melissa Wen <mwen@igalia.com>
> 
> But if you prefer that I applied them, just let me know.
> 

If you can apply them that's even better since you are more involved
with this driver. I was just trying to be helpful and that's why I
volunteered to push, to prevent this effort to get stalled :)

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

