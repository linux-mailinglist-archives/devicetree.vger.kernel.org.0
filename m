Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E9245678CA
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 22:51:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229682AbiGEUvj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 16:51:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232331AbiGEUvY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 16:51:24 -0400
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA2F313E29
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 13:51:13 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id c137so9679983qkg.5
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 13:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=f58NyD3PocFs1QBvKBaKz+IIlqbXQEwSuCzNvcT64E4=;
        b=lrUgQNmuU4a7PUShIpjV2QD1eYyPBTzVsXW6mIVhNWO+wYbMx1QBzZBZNne1GJ9x1f
         OLOqFDCMBHKo7PrC59BbuO7iSW6B9qTml3mNvBeyJ1iO2EsR7Yb7wgLKGf6FNinKaqq2
         LJaezoBZOgTHDECZwquKloomJ8badpRs5y9Qr0beoN+svNhtMkZXJSC11HR8kz6+K9ge
         Bj+AnklyVPun1URmsBtwS2YoK1uD5S5E/O1BR2xqIBMyMI5KmtaZu8x3fKDqeVe0vmFb
         FPcoEba6rjWRhhbXZpQdNab8Uiq2cAlBhxAZQoIq4yQnFtzl8jqnykr6VovA5zlfxlPz
         PY3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=f58NyD3PocFs1QBvKBaKz+IIlqbXQEwSuCzNvcT64E4=;
        b=WZrGB5ehGsWS5V64tK145XlELudJMemBPJtcVTqme8hJyPczMfUXBOkGqjjTOIPCor
         bmX3Zwqv0JbnHeYBS/1PrASArOeH8m1OJrlcsnA6kJ+ed8idVQo1ERruAq5spmIUyQKq
         FLfjBkcDsuhPeKRoU5T9dyDvPvvKSyKyb0zdAHwU9SuQw5zd6a13j/o5FIhnzxwgea8D
         r6oBdUK0WWXUnAt0MMrR8MKJVFR0HbGZpUgtYYqOrt/7rdBwKnVAQU6yRIr8npQ0MscY
         YEg8ZPr2ApdNQYJHOuBsOHdzWQ+mQotIP0ZC5y6j+YZusvBHXujCc05d1Qndp40QS+O8
         GVmw==
X-Gm-Message-State: AJIora/t6oTwpHwtHNn7wsuGulUkesxzuFNpmlXlBWJEPmriHD/DZ8P0
        peZ4t7NRvx78yIWyr6k44p0=
X-Google-Smtp-Source: AGRyM1u7tBniyIttpwvltyxPYAvp0da5vDJbPNxCGSdsDjsagtZqbejL2sHYWzRoFayLRoEt2ik8qg==
X-Received: by 2002:a05:620a:1594:b0:6ae:f437:9fdb with SMTP id d20-20020a05620a159400b006aef4379fdbmr25232525qkk.183.1657054272923;
        Tue, 05 Jul 2022 13:51:12 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id d14-20020a05620a240e00b006b117a5a98fsm17438889qkn.59.2022.07.05.13.51.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 13:51:12 -0700 (PDT)
Message-ID: <e0c2098d-058b-90c8-2e16-6c069ac706d4@gmail.com>
Date:   Tue, 5 Jul 2022 13:51:09 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH V4 06/11] mfd: bcm2835-pm: Use 'reg-names' to get
 resources
Content-Language: en-US
To:     Lee Jones <lee.jones@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Stefan Wahren <stefan.wahren@i2se.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
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
 <4607b996-51ac-0b3f-e046-5611774362ca@gmail.com>
 <YrqxdAgCKRL3tCTg@google.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <YrqxdAgCKRL3tCTg@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/28/22 00:44, Lee Jones wrote:
>>>> Anything preventing me from applying the two MFD patches?
>>>>
>>>
>>> They are self contained and cater to being backward/forward compatible
>>> with Device Tree changes, so not really no. If that is how you want it,
>>> please proceed in taking the 2 MFD patches and I will apply the rest.
>>
>> Actually there is a dependency between patch 10 which uses pm->rpivid_asb
>> and patch 7 which introduces it. I can give you my acked-by for patches 8-11
>> so you can take them via the MFD tree if you would like.
> 
> That works too.
> 

I took patches 1 through 5, can you apply 6 through 11? Thanks
-- 
Florian
