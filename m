Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BF0555D393
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:12:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235263AbiF1CHL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 22:07:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242990AbiF1CHK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 22:07:10 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00F6D248FD
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 19:07:10 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id g7so6090030pjj.2
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 19:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=uU7qF61f+5U8r9v4pMG2wQ0srN2bRGCCOQdtrfx7AFQ=;
        b=eZSTW3mk7iyO6QD7Ud5s9ZJl8W5aSq3O4qnLYdd7Yaw0IC+nkQ6Z1AhWGzgMv6FZ/R
         nIRwf3P1EdqHjeCwXCi9dMNkHUvYXaExO1KkxJWyawdRiaLtPB+oKThANekP/rIezp44
         0M91xSZA8F7Mc8wIaw/8XOt6fFw2yRxLlGVmdqdunIqkWhWnWyPMxZ+TFYBxG+LMkPAb
         oOHKpLcryRLK2kpdbqM6atsHaTN+0kLo8LD28rQuxU9Js88rJxT1x8tjkGYf9KSqRBeS
         QNFdOVCpDFRF6weIbwqr9qDiRsUo2h6G7ptMuOieLa/269onGbOBWYGp2UGfJvU+WfGY
         Ciww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=uU7qF61f+5U8r9v4pMG2wQ0srN2bRGCCOQdtrfx7AFQ=;
        b=K+OmSfqSZ5B1nprlUV7ZkM/nJssT05264G+rAoFbaks/YxMLTxXRKcSNV8tHvCLsQ8
         S28qz6pYP6ooKXlZ2/00r8QbMr3REC0GDypU/Rv0tC7XzwD7Bwf3ttFFHvH03ZMiy2R8
         dgvCA4X5LYKoXJuEg+fb+D4q43XUncoShEuiXtAc22C7zXkeV4YtlNJ/t2XBGY5DxA3i
         +aB8AgNhTjlQokSnNBv4yipn/adw1Mb3LBt2k5FdFZzUxPv37UyJdDP0IQ+7CF03iYMh
         c32Hg9J29gsguaNqDmR6cANx88Pu75a8L8uttY7UoYFG1M00DebMSacE8dU+5D4Tb6wK
         z+jQ==
X-Gm-Message-State: AJIora/LOEGt9SyB2/Cn8sSMaAqwqaWMwU70lec8CyxjT6qikMsbImMs
        9Rh4bN5AOcx/QQNuZBjYmos=
X-Google-Smtp-Source: AGRyM1tIqKvoMw8gz0KaWziKLjedVjav+26kNqKz4ZnByW95ZOYFv5zhIL+CbSiLoLvkdYGoWtc8PA==
X-Received: by 2002:a17:902:cec4:b0:16a:1fc3:b6e6 with SMTP id d4-20020a170902cec400b0016a1fc3b6e6mr1216826plg.129.1656382029498;
        Mon, 27 Jun 2022 19:07:09 -0700 (PDT)
Received: from ?IPV6:2600:8802:b00:4a48:b8b9:5beb:c51b:242e? ([2600:8802:b00:4a48:b8b9:5beb:c51b:242e])
        by smtp.gmail.com with ESMTPSA id a4-20020a1709027d8400b0016a10e0ce17sm7859542plm.151.2022.06.27.19.07.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jun 2022 19:07:08 -0700 (PDT)
Message-ID: <4607b996-51ac-0b3f-e046-5611774362ca@gmail.com>
Date:   Mon, 27 Jun 2022 19:07:06 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH V4 06/11] mfd: bcm2835-pm: Use 'reg-names' to get
 resources
Content-Language: en-US
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     Lee Jones <lee.jones@linaro.org>,
        Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
 <20220625113619.15944-7-stefan.wahren@i2se.com> <YrnZUqQsKVVGHUGh@google.com>
 <7ef987c7-1d99-bd63-f7fa-66bd12811716@gmail.com>
In-Reply-To: <7ef987c7-1d99-bd63-f7fa-66bd12811716@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6/27/2022 9:28 AM, Florian Fainelli wrote:
> On 6/27/22 09:22, Lee Jones wrote:
>> On Sat, 25 Jun 2022, Stefan Wahren wrote:
>>
>>> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>>>
>>> If available in firmware, find resources by their 'reg-names' position
>>> instead of relying on hardcoded offsets. Care is taken to support old
>>> firmware nonetheless.
>>>
>>> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>>> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
>>> ---
>>>   drivers/mfd/bcm2835-pm.c | 61 +++++++++++++++++++++++++++-------------
>>>   1 file changed, 41 insertions(+), 20 deletions(-)
>>
>> Anything preventing me from applying the two MFD patches?
>>
> 
> They are self contained and cater to being backward/forward compatible 
> with Device Tree changes, so not really no. If that is how you want it, 
> please proceed in taking the 2 MFD patches and I will apply the rest.

Actually there is a dependency between patch 10 which uses 
pm->rpivid_asb and patch 7 which introduces it. I can give you my 
acked-by for patches 8-11 so you can take them via the MFD tree if you 
would like.
-- 
Florian
