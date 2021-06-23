Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4D073B16C1
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 11:22:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229987AbhFWJZJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Jun 2021 05:25:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230136AbhFWJZI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Jun 2021 05:25:08 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AECB1C061760
        for <devicetree@vger.kernel.org>; Wed, 23 Jun 2021 02:22:51 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id p4-20020a17090a9304b029016f3020d867so1009668pjo.3
        for <devicetree@vger.kernel.org>; Wed, 23 Jun 2021 02:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=igel-co-jp.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XCajk1HrAlj47wC3+mkOuYZYpFGTdG0u/TJUK9omw44=;
        b=ZjaDBmTSrHRM+Wans1JDGrXnF8h56nSyQWJrnDOhiSu9Q2czUooggcFrZeW5OrFfGe
         4InlIJCaoDJvC2qM1tPyx5lrta50x/dPQl987+0qPfsgKDObwYOPDB7LmJS8+1QJB6Ww
         rS4dOgQLwHHqitlVJ9tG0jT4jxLfdMi+JjSzv7Ow1bmZGT5tnQ66jeeP+GqznH6E+7lp
         thH4WClVdZFYI68gRa5P93BRi8ycisjAk5KtuygYecegAGiEiByTGSGKIi1V/awM5lFS
         qvSiNzLRZFXxpal4mpSeK0GodO80oZtbqoDYsqQ5OFx5ifVecqcyFaVxnOkGI1Ao75tN
         jbtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XCajk1HrAlj47wC3+mkOuYZYpFGTdG0u/TJUK9omw44=;
        b=fyykHIul/pY2zeruPQ+Kb14TzH4u5r7Tlaeip8YA5x6qc19BNPRRuG8b9WW5ASoMK7
         3CL/WPIryNw84RKWRhHG4C1obsWrLlx0wWzLnlh6mIIpM9nF70kT+P6xdcSyd+6hbwo9
         CH6X6m17IJVKjREG4glvvnRAudNjdmlb5jw2BorBfNA3pfq6bQwy89QBBotevKOdPX+1
         zOHJV3QIq9RVkJjDFuY0gFpEOilTLU3lvOsDyhgDj/75JXRyY4prn4aO6AjGEILQp79l
         LapUcVsp7qaeb8xwUlissdvTAEYKQPCerJbVD/lZTbvg07nrGmn3l6zAJcGRQjWmZjx3
         Jj9w==
X-Gm-Message-State: AOAM531Q6MWf6QqpNoKMzKkj/jvf9Zy4I9kqD/wN94Lc1zkMEQRAXlIl
        glcohLfXIWeaPhOrV7yM6FXbaQ==
X-Google-Smtp-Source: ABdhPJylI81T3ZuU7pYZAujPUun/oGmu1PBLOBoGTzRXKdXQoIrLIXIJFcNz/PaxrTYzrPhhtomd+w==
X-Received: by 2002:a17:902:8601:b029:11c:4b4:e967 with SMTP id f1-20020a1709028601b029011c04b4e967mr26767197plo.75.1624440170945;
        Wed, 23 Jun 2021 02:22:50 -0700 (PDT)
Received: from ?IPv6:240b:10:c9a0:ca00:d428:46bd:365e:3555? ([240b:10:c9a0:ca00:d428:46bd:365e:3555])
        by smtp.gmail.com with ESMTPSA id q9sm460pgt.31.2021.06.23.02.22.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jun 2021 02:22:50 -0700 (PDT)
Subject: Re: [PATH 0/4] [RFC] Support virtual DRM
To:     Pekka Paalanen <ppaalanen@gmail.com>
Cc:     "Enrico Weigelt, metux IT consult" <lkml@metux.net>,
        devicetree@vger.kernel.org, Takanari Hayama <taki@igel.co.jp>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        linux-doc@vger.kernel.org, David Airlie <airlied@linux.ie>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Damian Hobson-Garcia <dhobsong@igel.co.jp>
References: <20210621062742.26073-1-etom@igel.co.jp>
 <7cde82a9-c60c-e527-eeac-eaad0c5842a1@metux.net>
 <1cfab5f9-f275-aa53-00de-5da3fcea71c5@igel.co.jp>
 <20210622111239.73aa87aa@eldfell>
 <ee0161b5-c88b-40ce-c02f-86e0927b70bb@igel.co.jp>
 <20210623113922.1e603139@eldfell>
From:   Esaki Tomohito <etom@igel.co.jp>
Message-ID: <ab816c34-ff98-911f-e53d-b91cd3be6f2b@igel.co.jp>
Date:   Wed, 23 Jun 2021 18:22:47 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210623113922.1e603139@eldfell>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021/06/23 17:39, Pekka Paalanen wrote:
> On Wed, 23 Jun 2021 15:56:05 +0900
> Esaki Tomohito <etom@igel.co.jp> wrote:
> 
>> Hi,
>> Thank you all for your comments.
>>
>> On 2021/06/22 17:12, Pekka Paalanen wrote:
>>> On Tue, 22 Jun 2021 13:03:39 +0900
>>> Esaki Tomohito <etom@igel.co.jp> wrote:
>>>   
>>>> Hi, Enrico Weigelt
>>>> Thank you for reply.
>>>>
>>>> On 2021/06/22 1:05, Enrico Weigelt, metux IT consult wrote:  
>>>>> On 21.06.21 08:27, Tomohito Esaki wrote:
>>>>>
>>>>> Hi,
>>>>>     
>>>>>> Virtual DRM splits the overlay planes of a display controller into multiple
>>>>>> virtual devices to allow each plane to be accessed by each process.
>>>>>>
>>>>>> This makes it possible to overlay images output from multiple processes on a
>>>>>> display. For example, one process displays the camera image without compositor
>>>>>> while another process overlays the UI.    
>>>>>
>>>>> Are you attempting to create an simple in-kernel compositor ?    
>>>>
>>>> I think the basic idea is the same as DRMlease.  
>>>
>>> Hi,
>>>
>>> indeed. Why not use DRM leases instead?
>>>   
>>
>> In this use case, I understand that this is not possible with DRM lease,
>> am I wrong?
>> I understand that it’s not possible to lease a plane and update planes
>> on the same output independently from different processes in current DRM
>> lease.
>>
>> If this is correct, what do you think of adding support for plane leases
>> to the DRM lease to handle this case?
> 
> Hi,
> 
> I would love to see support added for leasing individual planes,
> especially to replace the virtual DRM proposal which seems to be
> eradicating everything that atomic modesetting and nuclear pageflip
> have built over the many years.
> 
> However, please note that "on the same output independently" is
> physically impossible. Semantically, the planes define what a CRTC
> scans out, and the CRTC defines the scanout timings. Therefore it is not
> possible to update individual planes independently, they will all
> always share the timings of the CRTC.
> 
> That combined with KMS not allowing multiple updates to be queued at
> the same time for the same CRTC (atomic commits and legacy pageflips
> returning EBUSY) makes the plane updates very much inter-dependent.
> 
> If you want to avoid EBUSY and have planes update on the vblank you
> intended, you really need a userspace compositor to pull everything
> together *before* submitting anything to the kernel.

Hi,

Thank you for your comments and advice.
I will consider leasing a plane.

Thanks,
Esaki


