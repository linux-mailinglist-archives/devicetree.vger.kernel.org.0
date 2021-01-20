Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 441A82FD934
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 20:12:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387971AbhATTLZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 14:11:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392481AbhATTKb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 14:10:31 -0500
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F17EFC061575
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 11:09:50 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id e9so8873711plh.3
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 11:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=b5bLbwnEIvb4w3We4QZJ4a/RS6nRbdl2yls/QfxQhXs=;
        b=nPH9M9s9YBPk2YfUgUp21vQ+BoWwRUUIvxCN8EauinjwWuBsOToiSBLeNGg5D2TvwX
         MKoZe+w6cZMv2c0N0ydNhONwU9i2q46wERy27SOg4aHleBIXXkm1tAIoCYGwHvyyfT1m
         Snddo4GTHY5GrUexlYFKX5lSWJDYnI+LC/sPfCtb6NwABdHM51eAzhkaZVKRsh4kSz5+
         Pqwehss07y41Mio1bxFpV5RcAUPa0P0QCsh5dTmKdcPzEfKqJCyeudj+3xVZFTO0gMUI
         85XjpmHWApKHinyxwDB836pSYpk44lQg8pIIZKd1Ztb9RsXJ8C/PNWQ5L9gpHjQpDPbB
         5A7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=b5bLbwnEIvb4w3We4QZJ4a/RS6nRbdl2yls/QfxQhXs=;
        b=J+cn0glAwVRi3ReE6Y0A/rB1F/O5OvfhjjgCrs+0f0PQzsEJ64obv1DrAHdlRGccNk
         BhqRlOrs8hwEHqXZWEP/eAHw89gvzdElrk0rR8p6UqG9+Zm16GLeYvFRs7lX7WSrvTGH
         gwkHdIIFLKJ2uUfl67xfdN4lStzJkWY/pt9sRehhAaH209jCgmCZAvTNQlWGAB3iB8bq
         eZuZtnohw8cHIEbm3si8huyTerUHcUcUk/C5Xi6XwSXUAR7u9G9BC54ofJ/0E0uKdQEz
         7mRdaWBmC5Bl+ezni+58ieZU86yqVzvby/r8OLhnGTp+iXwoHyMNI8BQWaf9ZRt4qPjN
         gXtg==
X-Gm-Message-State: AOAM533nKjRcSNX9zUKvPfHoiEtnXBRq75MDGJdvVWbw4oKbvZCf48lv
        hrQVZcwz2boSPcnTMv5i0+ib3czvoYM=
X-Google-Smtp-Source: ABdhPJytmVIei/ivoVpOQC8uF8q3yTUFn8JgzWWHZdZwyvxaltklIW6kwr0vzFU55o9pzCEZMllJaw==
X-Received: by 2002:a17:90a:2e82:: with SMTP id r2mr7029945pjd.46.1611169790109;
        Wed, 20 Jan 2021 11:09:50 -0800 (PST)
Received: from [10.230.29.29] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id k6sm3098042pgk.36.2021.01.20.11.09.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 11:09:49 -0800 (PST)
Subject: Re: [PATCH V2] arm64: dts: broadcom: bcm4908: describe internal
 switch
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20210112131727.19020-1-zajec5@gmail.com>
 <20210113110946.19614-1-zajec5@gmail.com>
 <20210120185824.2360279-1-f.fainelli@gmail.com>
 <105a78eed57cfbe5556284f79b3d1b0d@milecki.pl>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <30e26324-1933-ef7b-f448-b76b7942b283@gmail.com>
Date:   Wed, 20 Jan 2021 11:09:47 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <105a78eed57cfbe5556284f79b3d1b0d@milecki.pl>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1/20/2021 11:07 AM, Rafał Miłecki wrote:
> On 2021-01-20 19:58, Florian Fainelli wrote:
>> On Wed, 13 Jan 2021 12:09:46 +0100, Rafał Miłecki <zajec5@gmail.com>
>> wrote:
>>> From: Rafał Miłecki <rafal@milecki.pl>
>>>
>>> BCM4908 has internal switch with 5 GPHYs. Ports 0 - 3 are always
>>> connected to the internal PHYs. Remaining ports depend on device setup.
>>>
>>> Asus GT-AC5300 has an extra switch with its PHYs accessible using the
>>> internal MDIO.
>>>
>>> CPU port and Ethernet interface remain to be documented.
>>> ---
>>
>> Applied to devicetree-arm64/next, thanks!
> 
> You may need to pick a patch sent as
> [PATCH V2x] arm64: dts: broadcom: bcm4908: describe internal switch
> instead.
> 
> V2x contains Signed-off-by which I missed in the V2.
> 
> Sorry for the inconvenience!

Yes I realized that but applied V2x and pushed it out thanks!
-- 
Florian
