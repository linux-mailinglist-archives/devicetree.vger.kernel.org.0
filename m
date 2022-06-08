Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F22A54395C
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 18:48:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343717AbiFHQst (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 12:48:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343716AbiFHQss (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 12:48:48 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2F5112611
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 09:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654706926;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=bByiFHMltGefY+LNK3OtBeBXj88eR9EK0TLlc44mXOI=;
        b=EZtZsmuamW8AxVuAkURfSIEbX6sUHvqxMQ0owhY9+Uej4yEnKd0649gxKZhzw5FTIDU2DF
        wgu5HtgO5Zc8w5TtUyuad/MgQOunZ0FlH7zcNpBZeg5X5uzpwqZyr7tUZrTr+sN1CXdkvM
        hpZht+AydXuyYCdt31LTCx+njrUv0Vc=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-470-h2JhS0f5MjyX7kCRSiIAIw-1; Wed, 08 Jun 2022 12:48:43 -0400
X-MC-Unique: h2JhS0f5MjyX7kCRSiIAIw-1
Received: by mail-wm1-f69.google.com with SMTP id 130-20020a1c0288000000b0039c6608296dso513139wmc.4
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 09:48:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=bByiFHMltGefY+LNK3OtBeBXj88eR9EK0TLlc44mXOI=;
        b=1KcxaKl2wTN/PNvv5izP6p/d1MrCV0ZZp43cmnGGqvvPwwtdqg1rasI8cTK2BnfJF4
         pgTBDFKnxeJLbX848NSjCKd+blDC/i2M0m4d9CSVdASI9WbzSVb9uyAhx3ar3MklRC7E
         JmmTV70j425XPBrz76xEKNNwbfw6rSiuRkc26jOsW2cz6sM1HhwYLDmlwckyr5d1FAvo
         ed3c160scf8riffQOqcDzwB//bJrYxXzCy0sd+/cVtJRFRVjdzxBDhIXw5COVEGN0dlP
         NCtS4Np/YDnWGygXbICsqeiLxy38DJmGUPalfHrFOlqoB0HiukHFu2Ou2plS8xVEr4Y/
         0lYQ==
X-Gm-Message-State: AOAM531MB53tzP92oh6xu0xTC1Y/3JiXR55HfzQhPaxu+I96MOQtX97K
        WXQiHH7ZxtdgOeG8hhWgGX34bQXxms95l0EVzDTVmj3Yz0BMnkMiGBSWkpHN5wrDXTrlR3DdLtJ
        /VMGZGLnEOLaPzgLUwqzlsQ==
X-Received: by 2002:a7b:cc94:0:b0:39c:4507:e806 with SMTP id p20-20020a7bcc94000000b0039c4507e806mr98138wma.91.1654706921840;
        Wed, 08 Jun 2022 09:48:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzt4Wew6G2zM4whZozpTcKSEmGO8wSo4bYJzdB8bqNPIJR/gfzTkCZSt9C5yJEO//7SXLvG5g==
X-Received: by 2002:a7b:cc94:0:b0:39c:4507:e806 with SMTP id p20-20020a7bcc94000000b0039c4507e806mr98102wma.91.1654706921600;
        Wed, 08 Jun 2022 09:48:41 -0700 (PDT)
Received: from [192.168.1.129] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id az13-20020a05600c600d00b0039c47767e23sm3583771wmb.33.2022.06.08.09.48.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 09:48:41 -0700 (PDT)
Message-ID: <40f27e32-720a-2f51-2164-5e152f53443a@redhat.com>
Date:   Wed, 8 Jun 2022 18:48:39 +0200
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
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220608155130.w4piz2g3obp7qnx7@mail.igalia.com>
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

On 6/8/22 17:51, Melissa Wen wrote:

[snip]

>>>
>>> I can take the last 3 patches through the Broadcom ARM SoC pull request, 
>>> but the first three should probably go via the DRM tree unless you want 
>>> me to merge them all?
>>
>> I can merge the first 3 patches through the drm-misc tree. Can I get
>> an ack from you for those ?
>>
>> The changes are independent so there's no need for an immutable branch
>> or any kind of cross tree coordination.
> 
> Hi Javier,
> 
> I'm not sure if you're suggesting here to apply the entire series as it
> is now.
>

No. I suggested that could just apply the first 3 patches that were related
to DRM, not the last 3 three since Florian will pick those.
 
> I'm not able to have a functional kernel from arm defconfig, only for
> arm64. I'd like to have this issue clarified before merge this serie. I
> tried multi_v7_defconfig on raspbian 32-bits and got a kernel panic.
> Things work better when using downstream bcm2711_defconfig.
> 
> If you have an idea of what is going on, please, let me know. I can try

Can you please share for info? For example your boot log when it panics,
maybe that could shed some light on what's going on.

> again and I'll be okay on merging it. Otherwise, let's wait for more
> inputs to have a better picture of the situation.
>

Of course I don't plan to push patches that are known to cause issues.

I mentioned that could help merging the DRM changes if needed before
you sent your bug report.

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

