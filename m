Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4DBC33151B
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 18:44:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbhCHRnw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 12:43:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230490AbhCHRnh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 12:43:37 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 609A8C06174A
        for <devicetree@vger.kernel.org>; Mon,  8 Mar 2021 09:43:37 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id q204so7559141pfq.10
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 09:43:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=uwWUWLoMsALxcHxQsbHJKpnMdlF22xA3TzeHsMYUXPQ=;
        b=kCNWT0lXqOkM4RmLLhPl+m10hb8F4CTfgIHCjkBN7f4qzsJj4UM/mUv/ubbV6nDFdq
         29M+SVrALg9Le3ixTZySh1ZrGBUlOCRYz1P+Uy1YJEms06tMjsbanautiiH2sRv4C5wT
         COCQpuyhUEnr/b+Qh0sT9oRhd0rIMYGmzgwljZR01ALVmFoJG8xTtBWqO2Tsylwa5/Za
         uuKP/rtHaqIx6CPjz98lYY2NbG5D9PaKuQN7W3lFAuVk2YUBaSekeG8T5ZjNShVPzHJc
         apZim89uS8F7ze+5DeNUvEj+UZCQRl9OWBbmLw6foIxcnXkhykazV1Px5fSInKpVkIMk
         pgeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=uwWUWLoMsALxcHxQsbHJKpnMdlF22xA3TzeHsMYUXPQ=;
        b=Q/i2dHIU5H9d74F++l1cW5WyNn7nxuKnpLJvAby7kFKR+ZxI+1s/HT974roVrf3NR0
         Y0kQq5/izYEyXKyQ1Iqu8OYWy0OB/Tac7FySu0fZyY7bn81XVFI+WmWG+yMPh4vvsZ7/
         xKPSchj/SUW8IsETecznN9WmFCif5Cd80M/STrLD/oS1il8js4Aw6jTMFJtV7y1ShsSr
         r7NXaJzxIm8sypAQltcasWRKrnjNtwYT7APyWhATXuMmkkDK9DxRfPvn3wdZqS6wWbHe
         y2yzZLSiDrqu8qdvTdIbzCCRFXj7IUbJUktTLt7pupoKo4IpWynh1JsiTyWI2nEORpE9
         i+iQ==
X-Gm-Message-State: AOAM5300kpgxnYIuSIBMb0IHGb8ynAwqQc6oXclqXG1KiUQydc+v923H
        +hhFNINMHYxVz0MYvKGG9h46KA==
X-Google-Smtp-Source: ABdhPJzhf+mB9PVB+1XesHxjolF45VmgaClOL9Eyd/EXSG6MWSeKXpBNT17taop2vTwR/Jd+OT5lBg==
X-Received: by 2002:a63:5044:: with SMTP id q4mr21095579pgl.178.1615225416788;
        Mon, 08 Mar 2021 09:43:36 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id 184sm11855802pfc.176.2021.03.08.09.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 09:43:36 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/1] arm64: dts: amlogic: Assign a fixed index to mmc
 devices
In-Reply-To: <2921197.CJbAp5Dgou@natsu>
References: <20210127230852.66686-1-alexander.stein@mailbox.org>
 <20210203192824.854491-1-alexander.stein@mailbox.org>
 <2921197.CJbAp5Dgou@natsu>
Date:   Mon, 08 Mar 2021 09:43:35 -0800
Message-ID: <7him6135iw.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Alexander Stein <alexander.stein@mailbox.org> writes:

> Am Mittwoch, 3. Februar 2021, 20:28:24 CET schrieb Alexander Stein:
>> Recently introduced async probe on mmc devices can shuffle block IDs.
>> Pin them to fixed values to ease booting in environments where UUIDs
>> are not practical. Use newly introduced aliases for mmcblk devices from [1].
>> [1]
>> https://patchwork.kernel.org/patch/11747669/
>> 
>> Commit message taken from commit 0011c6d18277 ("arm64: dts: rockchip: Assign
>> a fixed index to mmc devices on rk3399 boards.")
>> 
>> The unconventional order (B, C, A) is due to the fact that sd_emmc_a is
>> (according to the comments) only used for SDIO.
>> 
>> AFAICS all boards either have both sd_emmc_b and sd_emmc_c or only one of
>> them enabled. So the alias order should match the previous non-async order
>> for all of them.
>> 
>> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
>
> Any feedback on this?

Sorry for the delay.

I somehow missed this v3 at the end of the v5.12 cycle, but I've queued
it up for v5.13 now so it should get broader testing in linux-next now.

Kevin

