Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2F183A4C9B
	for <lists+devicetree@lfdr.de>; Sat, 12 Jun 2021 06:12:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229985AbhFLEOB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Jun 2021 00:14:01 -0400
Received: from mail-pf1-f172.google.com ([209.85.210.172]:42573 "EHLO
        mail-pf1-f172.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhFLEOB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Jun 2021 00:14:01 -0400
Received: by mail-pf1-f172.google.com with SMTP id s14so6035243pfd.9
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 21:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=9zYa8J6wQxJeEDNOAWQ9y3FpPL8Sz/tefgUpUGTN/xo=;
        b=02VVvA/Uq/gcMCjjjY8Um81Aq6ED5rfna/eCzXCA2I8yk42zo3L++MppEv/YXKqtf5
         5B3hX0UR2rDdpIeinTYhS3rouE9r4trXrFQPt5J+pyKVRziJValPsY3RTUfwyJE0nH4M
         NSxxORdDCkQJ5eVOxg8P8xwMBm6bbBXbJEQkAEciT4uq7QrEXg0IbswtOqRr2Rvs+WV7
         aoN6LxKqRSaRgHjQVC4Le+PuaY1LVWCAzqI3lPGpRxa8bfzczhx0N8gshUVa/qivKTK/
         F+prgbKvi1ZVvVIajKXXzVtDe/vowzuS7+Sqmvbhlt2TzlF6LUbDBVGnyOSSVsHqk9Iq
         SzZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=9zYa8J6wQxJeEDNOAWQ9y3FpPL8Sz/tefgUpUGTN/xo=;
        b=ubG7ZLjO0XpmiKYtIL15t1icBLbM/NvW5tsZic5N3lBmUaiuFGgDa1Dnqlztq45X7T
         DW3abitBTI3XxsWVTmwu2FzfwEEeQCl6CJ9AhXZWYLOOrIIAaYJBsiuCdAuw9G6jg3PW
         OXqIFpnZbl2ilZiHx6DGRU0Ebkp2xwYhFte3X6C+/WPcFEEXOHLQNxRmX+z0IsxzsC/p
         0ZvQ9RJA0RBlg5Xfztx0or/fuOoRl5LVJCa9eXtiK1aG3TvabRzuGCYCrUtIxajUWh8w
         Nk8daxKce8kqZw4ZvZFspfnuTw4TTym3XyssO7UM0kI2cUrJS6Sh63dGZyKQUsamsSlG
         7I7w==
X-Gm-Message-State: AOAM532QzLmb81IwiV9W44kC0x5M+pt2L9nFAacMD+CbrNYwt0pxjwnT
        SUobM+G8qfYRBylB4NSUnvC0T3YMGpYZI1sk
X-Google-Smtp-Source: ABdhPJx1BXBhU/6LoUmveppHdpAeCJ8GHfGuluUDmcFaIgIddgExNbLjp/IPBh1MZXEaYbM0pnM9JQ==
X-Received: by 2002:a63:e507:: with SMTP id r7mr2444072pgh.435.1623471045980;
        Fri, 11 Jun 2021 21:10:45 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id n23sm6601743pgv.76.2021.06.11.21.10.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 21:10:45 -0700 (PDT)
Date:   Fri, 11 Jun 2021 21:10:45 -0700 (PDT)
X-Google-Original-Date: Fri, 11 Jun 2021 21:06:57 PDT (-0700)
Subject:     Re: [PATCH -fixes] riscv: Fix BUILTIN_DTB for sifive and microchip soc
In-Reply-To: <5d3a00d1-9e45-398a-39cf-1e6e9924eb18@ghiti.fr>
CC:     Arnd Bergmann <arnd@arndb.de>, robh+dt@kernel.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     alex@ghiti.fr
Message-ID: <mhng-10244c1f-e77f-4b81-80ef-1b6d1a73c095@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 06 Jun 2021 00:40:34 PDT (-0700), alex@ghiti.fr wrote:
> Le 5/06/2021 à 13:00, Arnd Bergmann a écrit :
>> On Sat, Jun 5, 2021 at 8:37 AM Alex Ghiti <alex@ghiti.fr> wrote:
>>> Le 4/06/2021 à 15:08, Arnd Bergmann a écrit :
>>>> On Fri, Jun 4, 2021 at 2:06 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>>>>>
>>>>> Fix BUILTIN_DTB config which resulted in a dtb that was actually not built
>>>>> into the Linux image: in the same manner as Canaan soc does, create an object
>>>>> file from the dtb file that will get linked into the Linux image.
>>>>>
>>>>> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
>>>>
>>>> Along the same lines as the comment that Jisheng Zhang made on the fixed
>>>> address, building a dtb into the kernel itself fundamentally breaks generic
>>>> kernel images.
>>>>
>>>> I can understand using it on K210, which is extremely limited and wouldn't
>>>> run a generic kernel anyway, but for normal platforms like microchip and
>>>> sifive, it would be better to disallow CONFIG_BUILTIN_DTB in Kconfig
>>>> and require a non-broken boot loader.
>>>
>>> I kind of disagree because if I want to build a custom kernel for those
>>> platforms with a builtin dtb for some reasons (debug, development..Etc),
>>> I think I should be able to do so.
>>
>> How is the builtin dtb better than appended dtb, or passing the dtb to the
>> boot loader in that case?
>
> Ah never said it was better, just it was available so there is no reason
> we could not allow it :)

I agree: I'm not really a fan of BUILTIN_DTB (and I tried pretty hard 
not to have it in the first place), but whatever we have shouldn't be 
broken.

This is on fixes.
