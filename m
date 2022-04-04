Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9180F4F1B35
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:19:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379520AbiDDVTu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:19:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379206AbiDDQnx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 12:43:53 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 1313935851
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 09:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649090516;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=3+kz6I7pZcPAimiB8rQ2Jr3SdDzFgYoJ+V2mHrMniJg=;
        b=cUbIbb3wh7PUXx0ZIVbt4/DFyDwj7GUi2wtHemutmQOA28bdQB/hIdbuzga8gPb3zbBkCi
        HZd69l9tT2i4gWiaSNV9wl+u5low98XydD2emUhC5DY7F09xc/t8DYqklsC5vooJNFFUBl
        MY0IrTXVkiITLacMzbKNFIGPnQ6eSjc=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-599-v8lnFiCQP1uIA9Jc2P_94Q-1; Mon, 04 Apr 2022 12:41:55 -0400
X-MC-Unique: v8lnFiCQP1uIA9Jc2P_94Q-1
Received: by mail-wr1-f71.google.com with SMTP id j18-20020adfa552000000b002060a011303so1065626wrb.14
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 09:41:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3+kz6I7pZcPAimiB8rQ2Jr3SdDzFgYoJ+V2mHrMniJg=;
        b=vKcqJK37F9uw+WBTizMO4q2XxvTHIdp+VyadJJNKLcvqDiogB1EFK0yOXZrO1iovTr
         j2oizL+yKKK9W7FpXrvv3sUJnH5SGMRa2xJNpDdkjGhd+9fwYK+cJmZtsaJRDJA3/gJa
         1R1DtVOD5SrUfhSk9vzFpepXkS3eflxKihMupPcgqPciMOqGbuN3iQ/oZFN/PIgzrAmw
         n4lis0w8R0o6vUebjdRhlVuxeqwN8/okBaV+ZhsHHmeAvYcUFtXHJ0CKhnGHMtl90teF
         lMI/ToDPfG+5817FqOCQdhjHm6p+90rwpMBrTEv2XoFWdPdoDQGorf+JvV751rHNfi2G
         aXvA==
X-Gm-Message-State: AOAM533jbcgrT+wOncF6oxzVIkBSrsPMvguMhux5U/GoT/ol4JJb0Or9
        GajwWtDec9T4w0Ke2tToNLYfzpnBlSoF8PXj5q5j39JJgEPpzvH661PLCqFWHTSf663uLXYKnjz
        t/dm/3HoGHUb+2EA05yDssw==
X-Received: by 2002:a05:6000:1862:b0:204:e417:9cf8 with SMTP id d2-20020a056000186200b00204e4179cf8mr440305wri.593.1649090513078;
        Mon, 04 Apr 2022 09:41:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzXgci/ibeaKSvR6+nnoR/49t/2UDaGcl0TznmfMjMts0usoK/oXTo+u2Q1uulF0rg7yFs3hA==
X-Received: by 2002:a05:6000:1862:b0:204:e417:9cf8 with SMTP id d2-20020a056000186200b00204e4179cf8mr440289wri.593.1649090512856;
        Mon, 04 Apr 2022 09:41:52 -0700 (PDT)
Received: from [192.168.1.102] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id e13-20020a05600c4e4d00b0038e44e316c1sm32402wmq.6.2022.04.04.09.41.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Apr 2022 09:41:52 -0700 (PDT)
Message-ID: <4e53008a-c758-90dd-251e-f1668c52b10b@redhat.com>
Date:   Mon, 4 Apr 2022 18:41:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH 4/4] drm: ssd130x: Add support for SINO WEALTH SH1106
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
 <20220330190846.13997-5-wens@kernel.org>
 <CABxcv=nLQdz9bVrfqw1MaKREh0uRBvc4wX14AORETaDJAin-Fw@mail.gmail.com>
 <CAGb2v66P+5Tj7BgUJCayWjB6UZhQ5wSFdX=RcwRqX4bYw3UOBg@mail.gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <CAGb2v66P+5Tj7BgUJCayWjB6UZhQ5wSFdX=RcwRqX4bYw3UOBg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/4/22 18:35, Chen-Yu Tsai wrote:
> On Fri, Apr 1, 2022 at 6:10 PM Javier Martinez Canillas
> <javier@dowhile0.org> wrote:

[snip]

>>
>> I wonder if we should also list SH1106 in the
>> drivers/gpu/drm/solomon/Kconfig file so people can find it ?
> 
> I can add it to the help text if that helps?
>

No strong opinion really, it was an honest question.
 
> Recently someone mentioned that users are more likely to find drivers
> via compatible strings though. And I believe there's also a tool in-tree
> that finds all drivers given a device tree.
> 

Yeah I guess so. Looking at existing DTS and drivers' device tables is
certainly what I personally do when searching it a device is supported.

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

