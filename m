Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BCEA34A540B
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 01:29:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229945AbiBAA3O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 19:29:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230388AbiBAA3N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 19:29:13 -0500
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C89D5C06173B
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:29:13 -0800 (PST)
Received: by mail-pl1-x62a.google.com with SMTP id c9so13965272plg.11
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:references:in-reply-to:content-transfer-encoding;
        bh=zgyqB+ORKqwkDdxEBDo6wVn0bd5ZLkx9bBWvDBcs1W8=;
        b=atfLOFfiL/vTYJgGoDcq93q15fshaIXXpPlmssLEAyLBGzQaKcrHV5eKkMP7E/Oxw+
         obXQPQESnwI6Kf++OudPmr6HjNsWGavCre+kjkGJulTYksJrm3B9QE1z7N9V0Kn1MQxQ
         Yme07lWHuOUhcFctMfU48pLXx25NJ6n+unvib7U8++P5BtakrczkjhspAe5M4olfc4+c
         vUj0kGqyTcldTQrSQxVyMx2Iv1r0mEdIUHNI8ABpIhCepmJU/lyV4PeAcJwbQZ+X42Ho
         jCuFvWStbjecPn8UDXkXpd76XV7yeZFwA1nSe/4bdYozyVYffgZ3fT/dBI9lfiJishAV
         WXNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:references:in-reply-to
         :content-transfer-encoding;
        bh=zgyqB+ORKqwkDdxEBDo6wVn0bd5ZLkx9bBWvDBcs1W8=;
        b=M5/PJNfI8CmXNpWLHtf8+upthCQeZay0vwZusnAQBRWxslHTFmkXIIkWoAjpcp9ide
         9Aa9akV0mobT/TSNAbBorJwEL3kjKgzOdSjKqYp2XLMo9vQ7oovahraqz1u06biZd+ti
         9CbGutH/ajfNLl6cyXAJRz9dO5Al1KYiVBC7g5nqhH1xpi5++VdyE0FDuHbsn3THibA+
         csUp42bX+vHOFTJZ5t2DG58LMIoNO+QmXzrjdZv3yeyMmOQT7aqWigjSMc3EEXFPUDEQ
         VnNA8Dv8E3VIEP0mmH4eO2SVSaEEcRdYREiEMp/XpRJdbWf8C6MANUQbyqXzg8x9G60a
         yv3Q==
X-Gm-Message-State: AOAM533llXrxKJG6mLR0I9kKWC9Ax/h6uxcT6BRBi+ID6LnaF+04yd8z
        nZW4jXgqSLRmHMldNinBULtu6IOEeHM=
X-Google-Smtp-Source: ABdhPJzpjtQsI60DHGxKVpAAFXO9HuB78bjEKWaBTEHm62zmn2DIYwBaB9KBMzVOwcqWi2AYBrr9fw==
X-Received: by 2002:a17:90a:f0c9:: with SMTP id fa9mr27406764pjb.131.1643675353264;
        Mon, 31 Jan 2022 16:29:13 -0800 (PST)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
        by smtp.gmail.com with ESMTPSA id d2sm459096pju.2.2022.01.31.16.29.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jan 2022 16:29:12 -0800 (PST)
Message-ID: <a449c627-c036-dc72-0e90-a14f5f1c4dfe@gmail.com>
Date:   Mon, 31 Jan 2022 16:29:11 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] ARM: dts: bcm2837: Add the missing L1/L2 cache
 information
Content-Language: en-US
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Richard Schleich <rs@noreya.tech>, robh+dt@kernel.org,
        nsaenz@kernel.org, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20211218200009.16856-1-rs@noreya.tech>
 <20220201002407.426327-1-f.fainelli@gmail.com>
In-Reply-To: <20220201002407.426327-1-f.fainelli@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1/31/2022 4:24 PM, Florian Fainelli wrote:
> On Sat, 18 Dec 2021 21:00:09 +0100, Richard Schleich <rs@noreya.tech> wrote:
>> This patch fixes the kernel warning
>> "cacheinfo: Unable to detect cache hierarchy for CPU 0"
>> for the bcm2837 on newer kernel versions.
>>
>> Signed-off-by: Richard Schleich <rs@noreya.tech>
>> ---
> 
> Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!

I did remove the comments that were not helpful for the 'd-cache-size', 
'd-cache-line-size', 'i-cache-size' and 'i-cache-line-size'  since they 
are self explanatory.

Thanks!
-- 
Florian
