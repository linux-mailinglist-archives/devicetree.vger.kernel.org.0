Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED2324A5432
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 01:36:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231183AbiBAAgy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 19:36:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231174AbiBAAgx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 19:36:53 -0500
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3F18C06173B
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:36:51 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id k17so14088419plk.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=0EFnId0dDNad8TRxA44Ataistd9nrNJR3+o/fHTdL90=;
        b=oDwf1cium029PQmx4ZNpOVHpxBbumzIoh7f2gmiHCmUmznrl4KRMwjEqxx2+2QTQLe
         KTTdNr8bGiaQwYvHNFgI1KR0xaC3pdNX6Z9XlJu7yL+6KEsFDDaVSGqjEDIS1jHAMmV4
         ZGZcBF3GXjU1ngOTgl0WaqCABjh3jy8I0RjRsXNdBofSKL8a7yNub59drX9kn5ZIyIMI
         8gWjm719QAdIo0XQ/w8FoCAm4Ams6TTl3RM+nqIXnrQnNpapGKbXUDJnq0RIunYMI48A
         q1nDxIVzXS4ZyscEhDsQBwDj8FN0iD/Ew2GThpzpdAgfNQcSMLLeVSXV7TdDwv8s/hCC
         v74Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0EFnId0dDNad8TRxA44Ataistd9nrNJR3+o/fHTdL90=;
        b=cyaoaibWwFqPPhEwP9osVjkyk9jZiSvpHCqI8WjRsw1SnOJsdQhi1IU5L6ux7TBR6w
         JJZxd0yh7M8z3uAsUwgQyncblkYzwK3AmLn8kH53G3b95NgntQ5pZeTAbefKDpOF772i
         xxbOlEY7a7iwUTFpZ8TNphIX5pimWP/Dke1ASdJwPnv2SlzdR+Ne+k16KEh1bdaRz27H
         A/HTmNDOsuVDDQgjf5CxGWaL/7W1J/Vn0vQhRiH9QLe1thmtodQ0WOXYnlod3vwOCCdp
         2+s4E+aKQZUKsdXHiC3TlWAX9joZGBHsh6r/tDLKT9fB8maShj6MkQ/KWIUrRFkp7ewF
         C31w==
X-Gm-Message-State: AOAM5318ZqbLNJixY5pk2f5YGv7kxrAk67/8dpGhOSJt4iqEoP2b1Kfx
        39eDPKw81dCsxOyHq45USEA=
X-Google-Smtp-Source: ABdhPJxBA1Z8l/ylTBu/Tt87XAdFiiRIncTCq5mUUm4h2dRlxzYeR41Sga/sn7XknSbUAkEHyi/ZAg==
X-Received: by 2002:a17:90a:d24e:: with SMTP id o14mr27040291pjw.99.1643675811226;
        Mon, 31 Jan 2022 16:36:51 -0800 (PST)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
        by smtp.gmail.com with ESMTPSA id ce15sm486582pjb.5.2022.01.31.16.36.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jan 2022 16:36:50 -0800 (PST)
Message-ID: <269c289b-97af-2775-0404-b89b0d0cb7c4@gmail.com>
Date:   Mon, 31 Jan 2022 16:36:49 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] ARM: dts: bcm2711: Add the missing L1/L2 cache
 information
Content-Language: en-US
To:     Richard Schleich <rs@noreya.tech>, robh+dt@kernel.org,
        nsaenz@kernel.org, bcm-kernel-feedback-list@broadcom.com,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20211221224830.16746-1-rs@noreya.tech>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20211221224830.16746-1-rs@noreya.tech>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12/21/2021 2:48 PM, Richard Schleich wrote:
> This patch fixes the kernel warning
> "cacheinfo: Unable to detect cache hierarchy for CPU 0"
> for the bcm2711 on newer kernel versions.
> 
> Signed-off-by: Richard Schleich <rs@noreya.tech>

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, 
thanks!

I did remove the comments that were not helpful for the 'd-cache-size', 
'd-cache-line-size', 'i-cache-size' and 'i-cache-line-size'  since they 
are self explanatory.
-- 
Florian
