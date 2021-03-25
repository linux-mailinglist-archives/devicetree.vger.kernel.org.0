Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 244F9349449
	for <lists+devicetree@lfdr.de>; Thu, 25 Mar 2021 15:39:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230113AbhCYOjT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Mar 2021 10:39:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230436AbhCYOjE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Mar 2021 10:39:04 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8EB2C06174A
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 07:39:03 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id j9so802209wrx.12
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 07:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=g92DQRpj4341IE0FJkhTl6/KuF8V1aQgWgXHMG4KpIs=;
        b=f6FPk+hIMfO1HoVzf0OFcZudpBPRbRJt8nc7qYMvG+4Xs1+h19a8C8FcUFTmZm7XYb
         uEkMdLKPHq0wYSzZpxYMvK6WLqvfwqz6kLWt7lH9WPcwasjrDP/8jN6C0/guDU/6NhI3
         dcoRLB04Dmeaq4O2OPuumjz5lYKb6f+0ky1hD6735pwB+cvpvGVtuKBSVUjEC5jAswCj
         1NnUNvoEJezpYhofHaMpkgLwvTYj1kKdqHfp9ywM2XgyqIlmEZ0srrhU3YeelsbaottW
         dLbvAU0ooWWkVBIw1VmPXiG2qtO92qPTcatASOt3EtSq3KFx0QBDKQScGlasPLD/lUCc
         BZYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=g92DQRpj4341IE0FJkhTl6/KuF8V1aQgWgXHMG4KpIs=;
        b=YZVb8kaw3UMQHEj2o9qaFrQGF7XKHN8mTKS/KTRks4BhwS5ZNBExjg/DRvxnH5fWAL
         OSVDMin9mKDl1NfJFzKkcilL385BpoT4RQct4aV5gu0joLLCJCmpTIE4zG6u4s0v8M8y
         EX5M01mr18CQAupKGRMuvH0cbmpS9Y3cEk5wkqEYMEYK0X8okaZlHndtST/sbqGqewQ1
         FUPYbUN8sfrR/EvBU90iGMeldQUia7I1PvojnEXI934YSAY48ghVZTD6UjAwNeKUCjpL
         KnO+imXxyYDNZowQXwpPlEY96tVMvkBrzqMQ1SL5wi99zGUuWHl0Om7ndbACqhTfYqRL
         27Eg==
X-Gm-Message-State: AOAM530qzzC/NbbZgJg6Zp3NhTI1BMuBvhxhNwy52gKh6E8/T4tJNuiV
        k8MySffIgnEjj1x1Iew6exuL/g==
X-Google-Smtp-Source: ABdhPJxV5FxA+PvBaKmW6zOxP3MPdclWa+C2HgDCzIagvT2DX3MdmUnXN7w6vzxsxGIAyVLdvLWiTg==
X-Received: by 2002:a5d:4532:: with SMTP id j18mr9166557wra.239.1616683142323;
        Thu, 25 Mar 2021 07:39:02 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id v3sm6688473wmj.25.2021.03.25.07.39.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 07:39:01 -0700 (PDT)
Subject: Re: [PATCH] drivers: nvmem: Fix voltage settings for QTI qfprom-efuse
To:     Rajendra Nayak <rnayak@codeaurora.org>,
        Doug Anderson <dianders@chromium.org>,
        Ravi Kumar Bokka <rbokka@codeaurora.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        dhavalp@codeaurora.org, mturney@codeaurora.org
References: <1612524533-3970-1-git-send-email-rbokka@codeaurora.org>
 <CAD=FV=W9YWxVY6cEEXBr1wMcMzEPak3PeyROSvmnOWewL9BiUQ@mail.gmail.com>
 <4956f067-4079-84b4-191d-c1036e04c42f@codeaurora.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <ba1854f0-a3e4-28c1-9829-bba4678156d9@linaro.org>
Date:   Thu, 25 Mar 2021 14:39:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <4956f067-4079-84b4-191d-c1036e04c42f@codeaurora.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 25/03/2021 07:15, Rajendra Nayak wrote:
>>>
>>
>> Looks right to me.  Assuming that this works.
>>
>> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> 
> Srini, any plans to queue this up for merge?

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/nvmem?id=4d57a383a437e63909ccfe15b8a116f7ff5bb673

This is already in next queued up for next merge.

thanks,
srini
