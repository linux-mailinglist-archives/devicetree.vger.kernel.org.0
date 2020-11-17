Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7F352B6DEF
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 19:56:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726812AbgKQS4K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 13:56:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726644AbgKQS4J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 13:56:09 -0500
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55BECC0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:56:08 -0800 (PST)
Received: by mail-pg1-x541.google.com with SMTP id m9so7036317pgb.4
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:56:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/lb0rRvo31GgeGHWLPFRrBkvNkiQrp++1/GWXPEbd5w=;
        b=I9/GCATy59PeWR2Scx4nYHr9U0maQfyTwEEPV+LsUw3++/ciUB5xAzDcVfdiwO+0FF
         TNoNJElccJR/HdSNcMUwsEZuHvVtPST8HQp1OLlzgQGOaXyyGOyHZ+2w5STCQUS4ZObn
         R0bRiXC58emsdmTbPFdmQxBCnWxSdmDp6zGk/b7lKiEfWToLV1RpBGlBxssH4/9fKIDn
         g7/LgtvaAPgOui11uLpW6sWGYKf0L4K87DlEM4JgdSkuKzjzhqjhcwk/FzC+HlyVfLzj
         vdXRzrC4rVBHm6W4vR2E3dXALUDvpUZy134NntlbG60JHDtn9fWOCaeCvEvMB/i2e7NC
         JuFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=/lb0rRvo31GgeGHWLPFRrBkvNkiQrp++1/GWXPEbd5w=;
        b=iU2m6i+CKQ/R3Pcu/pXwlwsM1siT0KcPpbOmv/1J6Ryk1v/q/mLvJM3JM18gdgvJsL
         qRXZeVADA8FJyim4lW8UL6qqcU6rBdkYuQ6HXsaGvkS0ni9UsCjFEVAJJqcLgWlBmeIc
         FXcA0fGpGrfxXGZdquheaJ9VC0yLztHWPVPptWGyLH+KY8mdgrtQd+LYL+Fz5lfahy9F
         IipqlyggLCh1hUJ3E4adg7NEOeuKp92PzCUklppCDcsmt8BfEJjw8xysbsupXLfaERcM
         6uklQTJfp6Rn8Ed9UgT9AWXf8QdmD6yYbViRLnp+aSwSYQY+s4jAtjeR5HUM8AVIW1hD
         3Ocg==
X-Gm-Message-State: AOAM5325iDSj3Lm78VtJJ8HVCppA+NfyBDScG9UAPB9mCwa0vSnDAbng
        J1kRC4cWru3fiSvstd4uQss=
X-Google-Smtp-Source: ABdhPJyl+K/cUOeVqvVQkIfLIegx++VhLYeXDURajXkpDkcK7JyMyQm4Dh7UlBIevYju6clTyrpGdw==
X-Received: by 2002:aa7:9903:0:b029:18b:9271:a468 with SMTP id z3-20020aa799030000b029018b9271a468mr950191pff.11.1605639367786;
        Tue, 17 Nov 2020 10:56:07 -0800 (PST)
Received: from [10.67.48.230] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id h15sm1470917pgk.3.2020.11.17.10.56.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 10:56:06 -0800 (PST)
Subject: Re: [PATCH 2/2] reset: brcm-pmc: add driver for Broadcom's PMC
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
References: <20201109163519.32605-1-zajec5@gmail.com>
 <20201109163519.32605-2-zajec5@gmail.com>
 <e89b4601-0c52-db46-4406-d9ac28687e8f@gmail.com>
 <41d25c9d-3562-9549-3582-78a5e2d37330@milecki.pl>
 <e064498a-aacb-eb7a-13a7-441b1994ed7b@milecki.pl>
From:   Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <a92d4457-1610-6017-1e06-e73e70713d72@gmail.com>
Date:   Tue, 17 Nov 2020 10:55:57 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <e064498a-aacb-eb7a-13a7-441b1994ed7b@milecki.pl>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/17/20 10:44 AM, Rafał Miłecki wrote:
> On 12.11.2020 15:55, Rafał Miłecki wrote:
>> *** PMB ***
>>
>> It seems like PMB Master is reset controller on its own. Even though
>> we don't
>> have actual driver for the (documented) "brcm,bcm63138-pmb" binding,
>> arch code
>> treates it like a reset.
>>
>> So it seems that a single PMB is capable at least of:
>> 1. Resetting ARM CPU core (id by 8b addr)
>> 2. Resetting devices (id by 8b addr) by (en|dis)abling zones
>>
>> Above operations are performed in a different (programming) ways.
>>
>>
>> *** PMC ***
>>
>> PMC seems to be a reset controller with firmware capable at least of:
>> 1. Resetting devices (id by 8b addr) by (en|dis)abling zones
>>
>> that fallback to using PMB blocks when needed / required.
> 
> This just got more complex as I started playing with PMC / PMB and PCIe
> controller.
> 
> 1. BPCM_CAPABILITIES reg for PCIe controller reports 0 num_zones
> 2. Enabling PCIe requires powering on zone 0 manually
> 3. After powering on zone, PCIe requires setting SR_CONTROL
> 
> It means that PMB driver (and so PMC one as it fallback to the PMB)
> needs to
> know what type of device we're addressing.

From prior attempts at getting the 63138 supported which was a fairly
early silicon revision with a mix of PMB and PMC ultimately, the reset
driver does need to know what kind of device ID is being reset/powered
on. I stopped after seeing that SATA, USB, PCIe, Switch would all need
to be treated differently, and the board I had should have been upgraded
to a B0:

https://github.com/ffainelli/linux/commit/50f1dfb17b624ee41a11dda01bc899e6756869b7

There are way too many quirks for Device Tree to express all of them,
and the whole point of the BPCM was to design a re-usable and
self-discoverable  power/reset/clocking module. As you found out, if the
capabilities are wrong, it defeats the purpose.

> 
> Anything simple like:
> 
> resets = <&pmb0 14>;
> resets = <&pmc 1 14>;
> 
> won't work (unless we hardcode ids in driver - which is unwanted for DTS).
> 
> 
> So I guess that after all we'll need something like:
> 
> cpu@1 {
>     resets = <&pmb0 PMB_ARM 4>; /* ARM CPU */
> }
> 
> foo {
>     resets = <&pmb1 PMB_USB_DEVICE 17>; /* Reset USB using PMB directly */
> }
> 
> bar {
>     resets = <&pmb1 PMB_PCIE_DEVICE 15>; /* Reset PCIE using PMB
> directly */
> }

What is the second reset cell mapping to? Maybe you can define a C
preprocessor macro that expressed both the PMB bus + device ID?

> 
> and also
> 
> qux {
>     resets = <&pmc PMB_PCIE_DEVICE 1 15>; /* Reset PCIe using PMC */
> }


-- 
Florian
