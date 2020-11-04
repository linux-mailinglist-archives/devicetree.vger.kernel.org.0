Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2941D2A672A
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 16:09:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730061AbgKDPJL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 10:09:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726801AbgKDPJL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 10:09:11 -0500
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6AD8C0613D3
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 07:09:10 -0800 (PST)
Received: by mail-pf1-x441.google.com with SMTP id v12so1471033pfm.13
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 07:09:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1yMEhHD+6yc21kJRr7rjUclw5tA46sINB3uruxgVrL8=;
        b=Jc1fXcN3Eb27JCFN5BHMJDuuTqVyiPRiXRSuNiQtBJpiKb+UFN74tguOtoLgFqzQhs
         hGCVL6C3D74rZnTIjiEbvSVLfeFHyNk/rfkHLBQIJ79CBeVcdNwS4cFlsRvv5W7W/QXm
         fcK/dxJueY78O/95YHZU57ffagTN7slHZb+h9TC9jdVuPPxxFMam4Wuve3+mohVdciqU
         EZ0rtWpO7PoGqc5H7fTJEET9HykA1Q1rVAIV2RiMgxv87OSz1RHg5RbwgnWvJWVOHkWY
         uNigKUnrMvHdmqsCZ6Fi2YB4iFERQOcbyW64kwKdI7+iR4Yp2uO6gp0lrxFIflGWZvn6
         435w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1yMEhHD+6yc21kJRr7rjUclw5tA46sINB3uruxgVrL8=;
        b=PXT2fMmQ0VcQYWNtV8gF7y2xmBsW1HJvFi4JPAXrSLZHTabqxOOMSuxsFmbefdU8y9
         +oPApcP2YB4gQbk3X5/Sf6+UYxu1/3iHltJ3OKMBeHRhhm8hMpuoFd5fkLp1tWp/aWv6
         IuyoNNEwceAdDyccdb+O90uHmaY5bdJAbeW72CqFkza8tewsUP9+p8EN86xqBfzeMOjP
         KlvugnyuyqJVQycVnDUTk97NKifi+mROmMIdGTCCMAkWCaiT96ijuB8JOzLiS27un3w3
         s6N/z6zpCz19lWDRBWVGHDHThkF7Ze9WYcd7CFm9bYWJOIGQ6JkIECFIBIRYD9A8vUoH
         QGgQ==
X-Gm-Message-State: AOAM530AsGRrZtMc/OzZNl0RIITteKpmUxkowKvS9anUgWvj0iBfYXWQ
        ctut6w9kU07ywzPqSAOtFeE=
X-Google-Smtp-Source: ABdhPJx1w74Ye0gNd2UOjwC9NbJyoaB9rB9P4GKztOhIdJa370d7OSXBs68h4WucipP1rBsZTJVbPQ==
X-Received: by 2002:a63:7d07:: with SMTP id y7mr22359947pgc.437.1604502550160;
        Wed, 04 Nov 2020 07:09:10 -0800 (PST)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
        by smtp.gmail.com with ESMTPSA id b2sm2560567pgg.2.2020.11.04.07.09.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 07:09:09 -0800 (PST)
Subject: Re: [PATCH 2/2] arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300
 early DTS files
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20201028101123.6293-1-zajec5@gmail.com>
 <20201028101123.6293-2-zajec5@gmail.com>
 <e0cf2414-453e-4f15-5e4a-1c34aa965cf8@arm.com>
 <10118193-225a-05a8-e73d-7370e1866ea2@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <12213635-05d2-ec04-7ba1-ea00e0f8a981@gmail.com>
Date:   Wed, 4 Nov 2020 07:09:08 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <10118193-225a-05a8-e73d-7370e1866ea2@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 11/4/2020 4:07 AM, Rafał Miłecki wrote:
> On 04.11.2020 11:35, Robin Murphy wrote:
>> On 2020-10-28 10:11, Rafał Miłecki wrote:
>> [...]
>>> +        cpu0: cpu@0 {
>>> +            device_type = "cpu";
>>> +            compatible = "brcm,cortex-b53", "arm,cortex-a53";
>>
>> Erm, there's no binding for that - did you mean "brcm,brahma-b53"?
> 
> I'm not sure if that's the same thing. Unfortunately I don't have access to
> any Broadcom documentation.
> 
> Florian: could you try to verify that, please?

It should be "brcm,brahma-b53", that is the CPU design that this SoC uses.
-- 
Florian
