Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 838282EEB89
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 03:59:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726410AbhAHC4Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 21:56:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726358AbhAHC4Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 21:56:24 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73B85C0612F4
        for <devicetree@vger.kernel.org>; Thu,  7 Jan 2021 18:55:44 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id w1so4912579pjc.0
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 18:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EG9c/QrlglkgwfRJUmQKNCPIJwJMfMxdpeBqAUmgOZk=;
        b=E9WhvDhXJQdf3y2rdal5JO3AXwTEwU1jVVEuc6F2eI+a/CgUB9710YFUxBN3Epz9rt
         CtM/qYL5hG734uFnQcymzO78uKgcphlwoNlsTILgh27HKID2rMlfyd8oPx3tpV/mdzkE
         3yafqJfaAPYHbZQHlO01JWTBvwtXn3LZetnYT6+j0JAHqbV4UAsPqu/yNzikLwxMth33
         ifC67tCL2PAHvZtVjx8hCdrU/uQHC1YFbP0CUIditJKqGAhMn9Lzz/dPsb6ESBgiSs26
         lOMDcpeinmxpMsB+H6bJXl1kXwgaq5Gb8znKenjfqGyVAhUGJBiW0fhT6weUEDrNfctJ
         yNMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EG9c/QrlglkgwfRJUmQKNCPIJwJMfMxdpeBqAUmgOZk=;
        b=hRc+RTk5qAh8l9pfNQ5KRSK7fGfVmGwizBEDrM5smdU2vj3hWtPZkLvfIp5FXPMMC3
         LUcRDfE1ruLF4PqrggLYhYBuBp0xvqEdlj/uJMWEw12FrzxbwSotOe1hKvlgjaDqrWqq
         ZVrRfar769/K8pDpS8wS1r6RswvMTVxz1vBlnfazr8VtqQivrsmuM5i8Mh4iVrr5Ixgg
         oSktVEQcS4Wdt39+yHJS2F+8e98+V3uC+7OLbVAnswApZ7wYTEFigBM5YLle5ML0rR2k
         MjbYzMH93tSSK3CMo4wmrjK9G5qUR5H3+0MDWZL6q1KaEFHAcYDXz7gxwi0CrSdjUc1i
         lwXQ==
X-Gm-Message-State: AOAM5319UbYIdvEy0/E6NvWZgylqoFa0XKiIGY8L7ELjPD2MkxeEnEOT
        sFeVVS8Z+QW639Z98ewxbE4=
X-Google-Smtp-Source: ABdhPJzug/UItPAiUdNY4Kcu74DHwKQvsoTGi0xD0+uXuBVy+3GMxnsh5FcV6z+mzzlH7pdExirSpg==
X-Received: by 2002:a17:90a:394f:: with SMTP id n15mr1498276pjf.121.1610074543889;
        Thu, 07 Jan 2021 18:55:43 -0800 (PST)
Received: from [10.230.29.29] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id q4sm8166487pgr.39.2021.01.07.18.55.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 18:55:42 -0800 (PST)
Subject: Re: [PATCH] dt-bindings: bcm2835-vec: Add power-domains property
To:     Rob Herring <robh@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>
Cc:     dri-devel@lists.freedesktop.org, Eric Anholt <eric@anholt.net>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        devicetree@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        bcm-kernel-feedback-list@broadcom.com,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        linux-arm-kernel@lists.infradead.org
References: <1608751473-12343-1-git-send-email-stefan.wahren@i2se.com>
 <20210108024209.GA1769120@robh.at.kernel.org>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <623a71eb-ac4e-7b75-db96-5dbbca98c4b2@gmail.com>
Date:   Thu, 7 Jan 2021 18:55:39 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210108024209.GA1769120@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1/7/2021 6:42 PM, Rob Herring wrote:
> On Wed, 23 Dec 2020 20:24:33 +0100, Stefan Wahren wrote:
>> Adding the missing property power-domains to the bcm2835-vec schema to fix
>> the following dtbs_check issue:
>>
>> vec@7e806000: 'power-domains' does not match any of the regexes: ...
>>
>> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
>> ---
>>  Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml | 3 +++
>>  1 file changed, 3 insertions(+)
>>
> 
> Acked-by: Rob Herring <robh@kernel.org>
> 

I thought you were going to apply this directly?
-- 
Florian
