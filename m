Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43D4F34651A
	for <lists+devicetree@lfdr.de>; Tue, 23 Mar 2021 17:29:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233216AbhCWQ23 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 12:28:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233306AbhCWQ2N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Mar 2021 12:28:13 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD09DC061764
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 09:28:11 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id j26so18289332iog.13
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 09:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UZQuQN+Y/Ln5Rqog6y/XuFlmircqKTHpGhsY1hXDlr8=;
        b=eDO9wyI04ngUdU4BR8Y3W2FAnFEO5oflQNs09vAXNIZhoCh9dTx4aaHXdMIYBH0Oh8
         uc/UESMI/Z+g+irH6E40Htfp2p8zAswssVgTY6fSJo3mDj8fU9OdbaUBJajkHpAv1VIr
         3dGUVkhgqbtxibuLPOTmlW9L7Ec4Y9OwIWhIH5pFNXMMgxysZoai50ci/RYuIRIfNBtS
         TAgqEc0WmUE2Zmwtp3/lGCoYj2z/HFs38AGsHt5psvqvPIbAN93CiFdxwaegR+/PJtdN
         uXv4ZWjZC+PpK/0szjiZjPkQUcglOIgEo47FsdIuWcrK984a540b0CU+XIbS9e32YelC
         Ctqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UZQuQN+Y/Ln5Rqog6y/XuFlmircqKTHpGhsY1hXDlr8=;
        b=MFrVTRek8q3BJatgZIK5gwrmwlpCXzjVpXz+UtOqGHNnKo0oe8us5ZynHqYh3MykXB
         ruoHBbiNKvAkuMRBzHN2/oiX65vVdxoAZnU1LPN6+yrJw3UmgQJ4647Qw1n4q1bbdbuC
         /vXAnA9y5VXHCbhD2FiSSmIuiCo587uU4kFZ8VskrW34wGUg4Jcekml2oVKzj9COhTN+
         R9MoTlFev9QDmvmyzTx3m6agOg1GmTR1a9fM2u2NFaZhtOxIxlH5Gtnw1g54sta40RXK
         tCJvjoL/KU9pd/7mhVBOaJTcBFhASAUQstZIr2Jbx2u0YxrZ77195jJqrAE5vQxjpwMf
         TP9w==
X-Gm-Message-State: AOAM530GY8YLl+Xh6QAXxlkdVEcYdbUFirwJSTa7H9T2fk6us4JjqNdw
        4WXqEv8M489Wrv2/Vknu2Oro5w==
X-Google-Smtp-Source: ABdhPJxIB+FYjEsQXrnfmY1mc2AaqL+WNmFYjgoU+OScb8vpa1uJVcFAs1RmgLZMnLfU5DBGClTs4w==
X-Received: by 2002:a5d:89d9:: with SMTP id a25mr5011258iot.69.1616516891090;
        Tue, 23 Mar 2021 09:28:11 -0700 (PDT)
Received: from [192.168.1.30] ([65.144.74.34])
        by smtp.gmail.com with ESMTPSA id s18sm9827634ilt.9.2021.03.23.09.28.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 09:28:10 -0700 (PDT)
Subject: Re: [PATCH] xsysace: Remove SYSACE driver
To:     Michal Simek <michal.simek@xilinx.com>,
        Davidlohr Bueso <dave@stgolabs.net>
Cc:     linux-kernel@vger.kernel.org, monstr@monstr.eu, git@xilinx.com,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Chris Packham <chris.packham@alliedtelesis.co.nz>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Paul Mackerras <paulus@samba.org>,
        Rob Herring <robh+dt@kernel.org>,
        YueHaibing <yuehaibing@huawei.com>, devicetree@vger.kernel.org,
        linux-block@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
References: <ee1fe969905f641f5f97d812ee0cac44c12fe0f6.1604919578.git.michal.simek@xilinx.com>
 <20210323000436.qm5rkiplwt5x5ttk@offworld>
 <6948510c-dc7e-d74a-62e3-e42be14cff16@kernel.dk>
 <9c4911e6-92dc-0a0f-2f81-7d23e268144f@xilinx.com>
From:   Jens Axboe <axboe@kernel.dk>
Message-ID: <66a774e3-f068-984e-e69f-b55667a494cf@kernel.dk>
Date:   Tue, 23 Mar 2021 10:28:10 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <9c4911e6-92dc-0a0f-2f81-7d23e268144f@xilinx.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/23/21 10:25 AM, Michal Simek wrote:
> 
> 
> On 3/23/21 5:23 PM, Jens Axboe wrote:
>> On 3/22/21 6:04 PM, Davidlohr Bueso wrote:
>>> Hi,
>>>
>>> On Mon, 09 Nov 2020, Michal Simek wrote:
>>>
>>>> Sysace IP is no longer used on Xilinx PowerPC 405/440 and Microblaze
>>>> systems. The driver is not regularly tested and very likely not working for
>>>> quite a long time that's why remove it.
>>>
>>> Is there a reason this patch was never merged? can the driver be
>>> removed? I ran into this as a potential tasklet user that can be
>>> replaced/removed.
>>
>> I'd be happy to merge it for 5.13.
>>
> 
> Can you just take this version? Or do you want me to send it again?

Minor edits needed for fuzz, but I've applied this version.

-- 
Jens Axboe

