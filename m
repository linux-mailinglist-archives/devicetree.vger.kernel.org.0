Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67E7131A8E6
	for <lists+devicetree@lfdr.de>; Sat, 13 Feb 2021 01:45:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232103AbhBMAok (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Feb 2021 19:44:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232091AbhBMAoh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Feb 2021 19:44:37 -0500
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36996C061786
        for <devicetree@vger.kernel.org>; Fri, 12 Feb 2021 16:43:57 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id t29so532694pfg.11
        for <devicetree@vger.kernel.org>; Fri, 12 Feb 2021 16:43:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=dbhUzwqGfG1hKMLbbUj/LjjWuHYf51AvOfJj5/4HJUU=;
        b=lOvDyZuCcqdlGpIpZqJwhKAdJ8v2iA4ozRlURXedM0oL6iIOUvFhraAQSlkyBpqhx5
         httUjscQ3/UM95/G0oBLqe5j5qxsxAJApYykpS3o/b+aNux4jCsg0Hhp4w4X68CAvGZo
         bhaXfGbLFlH+TqiuefsFSxAj9iMMm5ygvA6eyuulXQVvqpYVU0I8a/dkZ3e2T8e66Kem
         fPqXAX9NoXq1dac6LINFPFB5pxtnJV+H58P2Hqe5nxVSSiiQgIfjjNqDeoZPaR2vg04a
         1uJPv+KC0h9T2OjiE0PLBt5DcSFIGdvNuAP3ZUMWEEk/WTSzkAuixeEmTzmvmvUeifz+
         pL3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=dbhUzwqGfG1hKMLbbUj/LjjWuHYf51AvOfJj5/4HJUU=;
        b=cVmcailL538V25nclUC/zjKBU6BPs2jJz8dKqahUllJwBFUxuoX5IHow6qM2RvY5C9
         5WOEpp+wiy83czWWQ1f9qbxdW8383d84R7B0EnWjKO/N24aS2qFGITZvqGE1xiwF191F
         RgOZko78aUffS+UrN4duQuV/0ZCOCYM7k/JI0zJMmC5NOTQBFM/EX+U9RGVm5stn8Tle
         fIhYxq2nFMmEoSE4Z3D8gBXIiN7+N71zx5RDFd5CXyRw90HvAo0yhiV1ojdrhFRtel7X
         uAxex+rxrS7X+NKsgL1Ixzm+wh7e7cSa9rfECwEbDIhvFCOxYA8/ltlJf6eLfdMMNgLa
         DKww==
X-Gm-Message-State: AOAM531iFLBs/c2LDP8e+5Co3qPKDvg18C/QT9j8L/5IFJy36D59gEo3
        6JFpV3dgovauQ9CRTPtZUI7KZCrw3QRleaMJ
X-Google-Smtp-Source: ABdhPJzdBhGkqACtkkAi9SNbmD9Ucwde/9QRGP1PUg2zL/AcBwjgqor8b5sJsMl3wBwUtpZjEeQ8Kw==
X-Received: by 2002:a63:1826:: with SMTP id y38mr5577270pgl.252.1613177036325;
        Fri, 12 Feb 2021 16:43:56 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id n12sm9230574pff.29.2021.02.12.16.43.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Feb 2021 16:43:55 -0800 (PST)
Date:   Fri, 12 Feb 2021 16:43:55 -0800 (PST)
X-Google-Original-Date: Fri, 12 Feb 2021 16:43:50 PST (-0800)
Subject:     Re: [PATCH] Revert "dts: phy: add GPIO number and active state used for phy reset"
In-Reply-To: <877dngjdi1.fsf@igel.home>
CC:     devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
        anup@brainfault.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org, yash.shah@sifive.com, robh+dt@kernel.org,
        sagar.kadam@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
        linux-riscv@lists.infradead.org, kernel-team@android.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     schwab@linux-m68k.org
Message-ID: <mhng-60c8c9ad-1184-4c41-b2c4-1cf5fe057473@penguin>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 10 Feb 2021 04:47:34 PST (-0800), schwab@linux-m68k.org wrote:
> On Feb 04 2021, Palmer Dabbelt wrote:
>
>> From: Palmer Dabbelt <palmerdabbelt@google.com>
>>
>> VSC8541 phys need a special reset sequence, which the driver doesn't
>> currentlny support.  As a result enabling the reset via GPIO essentially
>> guarnteees that the device won't work correctly.
>>
>> This reverts commit a0fa9d727043da2238432471e85de0bdb8a8df65.
>>
>> Fixes: a0fa9d727043 ("dts: phy: add GPIO number and active state used for phy reset")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
>
> This fixes ethernet on the HiFive Unleashed with 5.10.12.

Thanks for testing.  Looks like I forgot to reply, but it's in Linus' tree and 
should end up in stable.
