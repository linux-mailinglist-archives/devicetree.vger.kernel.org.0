Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBB6159D229
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 09:33:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240721AbiHWHaS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 03:30:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240747AbiHWHaP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 03:30:15 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93D6162AB2
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 00:30:14 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id k17so6738817wmr.2
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 00:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=LZrIFrN3SNQD6tiftJvxuBxB+MNTx9yr6sqKxGhpEiE=;
        b=PJoPNJ2Owcaqj98zwHMiQFlHnIkKefGRL40Bc3CSftn70hIZA9pKMTYdFy19mo7E5P
         nYshQTM8m4RCYDKcy/egBQEbQopRf8KwrXPo0k9IWLgL93u/U5SlsN6t1djJz915KO1j
         9ruVkdiCA8HbnJ84Bm8DsJWELz0IHiENvHVxmtYEdB/fOjNJ8dtVGFY9nDlgNXumLJFv
         RunYMWcpAxsaclWQSAjF+YnxhO8FunGFuxYLfJqU3TThSwohYpn4/GERMIluMuQGFi0V
         hKm6Okztzj3TF7b+ocTcYhm5o6VbqcFJjHq6EzkpQxsN/41D9bNbd1++EaTW6R+xX9ql
         yG4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=LZrIFrN3SNQD6tiftJvxuBxB+MNTx9yr6sqKxGhpEiE=;
        b=ZwHKlEO7Y+unZ/LD6EiN8gqD7RQ6ce788+zA7if5A3t8x2jW/twULntJg3iJRwJmZ+
         JbVUfKC4ER+qxJD8sM0tn6uWlPliAaj9VZUEkuhhk3tb/Gov2834oojBMkpNWMcETHjs
         ZSkiQx3QP1uDqprL6qmsfOFpIbglx1bmntJnHVdjh6lpzeb7PUry4fNuHtAP12W8tfMM
         b/65x+h2HLdUeTOTG79+8tczcQm91OEf6KzyOOKWlTjBRtrl2bkiqnl7VE35t3XB0VjU
         QkFR1WGXub7pXrmfhAXLbjJMzwv0XFcE/4ascfYZKMh9/s01YHe15znVJWTiEOobn1Zg
         MquA==
X-Gm-Message-State: ACgBeo37TMfMtwZUpX0msu447jHvJxTZTrHOmmNOJ8NjN1wG6GizOBSu
        IHjgJ6kKi5o8iTwnmcC4A7HqoA==
X-Google-Smtp-Source: AA6agR7zoBJT9bvrKFfjs6gzyftOTc8OegY6JlWZEGCivnxsRG5sEjWe/366w2U2xIuKQ3enGluYXg==
X-Received: by 2002:a05:600c:2104:b0:3a5:40c4:bab6 with SMTP id u4-20020a05600c210400b003a540c4bab6mr1209359wml.119.1661239812995;
        Tue, 23 Aug 2022 00:30:12 -0700 (PDT)
Received: from ?IPV6:2a01:cb05:8f8a:1800:1c97:b8d1:b477:d53f? (2a01cb058f8a18001c97b8d1b477d53f.ipv6.abo.wanadoo.fr. [2a01:cb05:8f8a:1800:1c97:b8d1:b477:d53f])
        by smtp.gmail.com with ESMTPSA id s16-20020a5d4ed0000000b002207a5d8db3sm13713315wrv.73.2022.08.23.00.30.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 00:30:12 -0700 (PDT)
Message-ID: <0755522b-8981-9827-28c8-9bc2e81e984a@smile.fr>
Date:   Tue, 23 Aug 2022 09:30:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH] ARM: dts: am5748: keep usb4_tm disabled
Content-Language: fr
To:     Tony Lindgren <tony@atomide.com>
Cc:     linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        bcousson@baylibre.com, Romain Naour <romain.naour@skf.com>,
        Roger Quadros <rogerq@ti.com>
References: <20220822154625.52160-1-romain.naour@smile.fr>
 <YwRrVI0asWtyyorZ@atomide.com>
From:   Romain Naour <romain.naour@smile.fr>
In-Reply-To: <YwRrVI0asWtyyorZ@atomide.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

Le 23/08/2022 à 07:53, Tony Lindgren a écrit :
> Hi,
> 
> * Romain Naour <romain.naour@smile.fr> [220822 15:39]:
>> From: Romain Naour <romain.naour@skf.com>
>>
>> From [1]
>> AM5 and DRA7 SoC families have different set of modules in them so the
>> SoC sepecific dtsi files need to be separated.
>>
>> e.g. Some of the major differences between AM576 and DRA76
>>
>> 		DRA76x	AM576x
>>
>> USB3		x
>> USB4		x
>> ATL		x
>> VCP		x
>> MLB		x
>> ISS		x
>> PRU-ICSS1		x
>> PRU-ICSS2		x
>>
>> But commit [2] removed usb4_tm part from am5748.dtsi and introcuded new
>> ti-sysc errors in dmesg.
> 
> OK makes sense to me. Can you please update your patch to use proper
> Fixes tags and commit descriptions? This way the patch will get
> automatically picked up for stable kernels as a fix.
> 
> So something like this instead of listing URLs to commits:
> 
> Commit bcbb63b80284 ("ARM: dts: dra7: Separate AM57 dtsi files") blah
> blah, then commit 176f26bcd41a ("ARM: dts: Add support for dra762 abz
> package") blah blah...
> 
> Fixes: 176f26bcd41a ("ARM: dts: Add support for dra762 abz package")

Thanks for the review!

I just sent a new patch with updated commit log.

Best regards,
Romain


> 
> Regards,
> 
> Tony

