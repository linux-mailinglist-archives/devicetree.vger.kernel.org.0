Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A1054447F1
	for <lists+devicetree@lfdr.de>; Wed,  3 Nov 2021 19:09:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230384AbhKCSLi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Nov 2021 14:11:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230382AbhKCSLi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Nov 2021 14:11:38 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91843C061714
        for <devicetree@vger.kernel.org>; Wed,  3 Nov 2021 11:09:01 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id x16-20020a17090a789000b001a69735b339so2037493pjk.5
        for <devicetree@vger.kernel.org>; Wed, 03 Nov 2021 11:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4bnD5T+OD3RhmUwYkaByAynUXCVmyHL2tgnhkoQX1iI=;
        b=QIssOCA6Nq7OxuD0jRsEMJ34E0PTkpEJPMWmjgPX9gydhFFLV7EXql+lrNM7YgJcGP
         liYwsRhjnnfIsyz4L3W2R+LYZKJc3j4kpnyDKI82N7swb5qzZZkOko+CFlkRUzUqDV9C
         XAoiBYiFyiIrNq8icatdLaaEhQqA1FZoqwlXxEO8LHeslN4v5zSqYwrAXDQD+wCECxOa
         5Y66Oqi+Ffd/iGXHxYEhltzwdyfMVLrzH1R/ZuIBP179t+qrv2TQuGDkE/AL5kKPgzZL
         FG+5mlq2eqrkBNy7w5ow6D0/foYJhX+SeibHtLtNTeccvVYumAgIL4wDS2Y9nJPlqJf0
         o++Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4bnD5T+OD3RhmUwYkaByAynUXCVmyHL2tgnhkoQX1iI=;
        b=wDsWCmItsDfPNfAaSUR+jlj9n1r73PFU2mRN/nB2mdbbcy6mtWpw7nIVlGZ3UDfpTZ
         WlXEgPPGWQL73itiC4jIED8ROhOuqCqg5QmKXIxixs7ljo0ICwZRpTPmPQd1pdQhmOmq
         geY3incfjIa8ugejX1ApRLKSO3NuOkBSLauGRCy/LOQIsXXLqw7639u1Rrdy1DMN+If+
         7YQn+lB1oedHbXxniKn/uHPV+VVfdyIzDZRxW30irHjmTqWXr6NlWofqzWHPisiga9eV
         C4QTcCYi2Ep62QPAduNd+jQUtCHnnztIgYyXrsPXM1KNQ5695uAsrW8lzXp7ZAvLzNM3
         7Y1A==
X-Gm-Message-State: AOAM5324Ku+xdkpquz4FFM1zlpVAYiZ7OFAUy/9da+OcVlweKeOCrocK
        vyS/ggDx58tAJYkXjcailqk=
X-Google-Smtp-Source: ABdhPJwWATjGh96c6yk9qWzUfrnZA9v6IbpRCysBzxQEAQC9xqhE2Eg90RMnDUmJcuLZ4l2n5/WxEw==
X-Received: by 2002:a17:902:f542:b0:141:fa0e:1590 with SMTP id h2-20020a170902f54200b00141fa0e1590mr17019740plf.20.1635962941116;
        Wed, 03 Nov 2021 11:09:01 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id s20sm3230306pfc.124.2021.11.03.11.08.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Nov 2021 11:09:00 -0700 (PDT)
Subject: Re: [PATCH 2/2] mtd: rawnand: brcmnand: support "no-wp" DT property
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Cc:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Brian Norris <computersforpeace@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
References: <20211103151117.18690-1-zajec5@gmail.com>
 <20211103151117.18690-2-zajec5@gmail.com>
 <c59157a1-2c15-928f-f5a7-fab7128e8dd2@gmail.com>
 <f4694a87a459ac19fea451294fda45ef@milecki.pl>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <03140f48-8447-9431-2bf0-ed75578bdced@gmail.com>
Date:   Wed, 3 Nov 2021 11:08:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <f4694a87a459ac19fea451294fda45ef@milecki.pl>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/3/21 11:03 AM, Rafał Miłecki wrote:
> On 2021-11-03 18:50, Florian Fainelli wrote:
>> On 11/3/21 8:11 AM, Rafał Miłecki wrote:
>>> From: Rafał Miłecki <rafal@milecki.pl>
>>>
>>> Some boards may use WP-capable controller but still have WP not
>>> connected. This change fixes:
>>> [    1.175550] bcm63138_nand ff801800.nand: timeout on status poll
>>> (expected c0000040 got c00000c0)
>>> [    1.184524] bcm63138_nand ff801800.nand: nand #WP expected on
>>> [    1.285547] bcm63138_nand ff801800.nand: timeout on status poll
>>> (expected c0000040 got c00000c0)
>>> [    1.294516] bcm63138_nand ff801800.nand: nand #WP expected on
>>> [    1.395548] bcm63138_nand ff801800.nand: timeout on status poll
>>> (expected c0000040 got c00000c0)
>>> [    1.404517] bcm63138_nand ff801800.nand: nand #WP expected on
>>>
>>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>>> ---
>>>  drivers/mtd/nand/raw/brcmnand/brcmnand.c | 3 ++-
>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
>>> b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
>>> index f75929783b94..8b6167457f0c 100644
>>> --- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
>>> +++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
>>> @@ -714,7 +714,8 @@ static int brcmnand_revision_init(struct
>>> brcmnand_controller *ctrl)
>>>      if (ctrl->nand_version >= 0x0500)
>>>          ctrl->features |= BRCMNAND_HAS_1K_SECTORS;
>>>
>>> -    if (ctrl->nand_version >= 0x0700)
>>> +    if (ctrl->nand_version >= 0x0700 &&
>>> +        !of_property_read_bool(ctrl->dev->of_node, "no-wp"))
>>>          ctrl->features |= BRCMNAND_HAS_WP;
>>
>> Should not this be a logical OR here or rather, should it be moved out
>> of the check on ctrl->nand_version entirely? What revision of the NAND
>> controller do you have on that chip?
> 
> It's NAND controller version 0x0701 (v7.1) and I think it's correct.
> 
> I think we want WP enabled on rev 7.0+ unless it was explicitly disabled.

True, I somehow got confused about the negative logic, so maybe we need
to combine the logic of all of these lines into a single one:

	if ((ctrl->nand_version >= 0x700 ||
of_property_read_bool(ctrl->dev->of_node, "brcm,nand-has-wp")) &&
!of_property_read_bool(ctrl->dev->of_node, "no-wp")

such that it is clearer, Kamal, what do you think?
-- 
Florian
