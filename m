Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBB974833B5
	for <lists+devicetree@lfdr.de>; Mon,  3 Jan 2022 15:43:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235038AbiACOnm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jan 2022 09:43:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232700AbiACOnl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jan 2022 09:43:41 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29B05C061761
        for <devicetree@vger.kernel.org>; Mon,  3 Jan 2022 06:43:41 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id s1so70320181wra.6
        for <devicetree@vger.kernel.org>; Mon, 03 Jan 2022 06:43:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qqTYoEG0fCSSuHO7RjGcCyZafDlFczC6QQaAo/YOTIQ=;
        b=eDq8+T3KD08eY4K75ef7W2e9wgz0NCwTOhUmRIZaTfZslsSQ0oaarsrfDnmQLg3LxD
         jiZxYt0sz6h3M6taVElZUCFrMgL3jgrEacd9mQg1/yhve4PmYX/s4NlU5V1SniS/iIgN
         lOge45jCILCsCnzv8g5WjcuYuJhc3/glCuB1CpFxa2+4ehcGBGA+ArNqAic1jz8ZklEI
         q2tAKGfJ/67TZ7HV0zobu0OC8eXtabpSFO38Gc0LOK6VlhxAFIg5pHK55zmt7KmjlGdH
         m3A1bv3B4kuUBrErKULmsQScbQVa5AELEYOccxz2Aq6ow5n4l0BSmIzzRqYniW2eg0MJ
         ZuIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=qqTYoEG0fCSSuHO7RjGcCyZafDlFczC6QQaAo/YOTIQ=;
        b=5DZx7PaRK95GLj/Kgm1ljpyn0gSjey5ikWJa6tb+lU2JCHujrnPpSn5ZNO0r6MA71j
         0cA0uZ6av6KwL+mgIH2/5lSdVb7SmDtRnp03ApB4po+jk5ZyygjK5zdO/OEuOV5N1ftL
         CMjTEP+wwIm2VRDswUBhOAbhdF1U/d4GWdvYqBv85zeNTcjd0oImGy1iRp9oLryzW0si
         10aOc4yFyXpZs1hsgS7u/0BHXR1Ren+TEwfaWXH3ni4fNpMHFepPWPr2TO4IKvlFezWN
         ecq/311oWn55WbELz4fR6pkKAf5KSnS5z+EW21uvnAVPjQ5hCwnJeECR5vpGYRhrr/zf
         jAZA==
X-Gm-Message-State: AOAM5328L/ce3RPqyYL0vNwDc0+SqbIhqm8IECWZ8Iq4uKexL+c0UIKi
        ONImW7U0KHPTdcNQFuPpWAy1no/BmPW46Q==
X-Google-Smtp-Source: ABdhPJyH4/D8nNoHqFkVlu/pqPOj9rQ6tyY2S2g5s+3XjsvmJ/FAKLoC8vYVTHBCYM5DDlPLzWJgvA==
X-Received: by 2002:adf:a489:: with SMTP id g9mr37708807wrb.235.1641221019202;
        Mon, 03 Jan 2022 06:43:39 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:7c9d:a967:38e2:5220? ([2001:861:44c0:66c0:7c9d:a967:38e2:5220])
        by smtp.gmail.com with ESMTPSA id b1sm39204103wrd.92.2022.01.03.06.43.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 06:43:38 -0800 (PST)
Subject: Re: [PATCH 0/3] ARM: dts: meson: fix UART device-tree schema
 validation
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        linux-amlogic@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20211227180026.4068352-1-martin.blumenstingl@googlemail.com>
 <CAFBinCC7iSKjZ=U5PN5FKF9js77tvaQBdWdHMPp_y+u+asaeoA@mail.gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <2c5311fd-187a-d129-4e15-e83e49c14c09@baylibre.com>
Date:   Mon, 3 Jan 2022 15:43:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCC7iSKjZ=U5PN5FKF9js77tvaQBdWdHMPp_y+u+asaeoA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 31/12/2021 16:38, Martin Blumenstingl wrote:
> Hi Neil,
> 
> On Mon, Dec 27, 2021 at 7:00 PM Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
>>
>> Hello,
>>
>> here are three UART device-tree schema related fixes for the 32-bit
>> ARM SoCs.
>> These patches don't fix any functionality which is why linux-stable
>> is not Cc'ed on them.
> The statement above still stands.
> I would like you to apply this series to a 5.17-fixes branch because
> of a change from the tty.git tree which will be going into 5.17 to
> drop the "amlogic,meson-uart" earlycon handling: [0]
> 
> To make it clear: Backporting this series to kernels older than 5.17
> won't break or fix anything.
> Only 5.17 and newer will need this due to a change [0] in the tty.git
> tree. Without the patches from this series the 32-bit SoCs won't have
> earlycon support in 5.17.

OK, I'll submit it as fixes for for 5.17

Neil

> 
> 
> Thank you!
> Martin
> 
> 
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty.git/commit/?h=tty-next&id=ad234e2bac274a43c9fa540bde8cd9f0c627b71f
> 
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic
> 

