Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A43C2B700F
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 21:31:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727097AbgKQU3Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 15:29:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726146AbgKQU3Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 15:29:24 -0500
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFA87C0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 12:29:23 -0800 (PST)
Received: by mail-lf1-x144.google.com with SMTP id u19so25736087lfr.7
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 12:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mz5MgrT/ECQwIn6H08p8lYxoW4O+R0ljuO10Obvnxt4=;
        b=vNboDajIytGiMHXiG/tJA8Ny0p8ai2jNgOiDgK363/eDc7AW933CnhH5LaDep8Mdlu
         Nl4aj3OQA3jtSFQ1kzktYhJ0vF4T9IAD0cM3gOx3ONSWSX9FYfDMOL2P8BAgstkhGjLW
         PBh1/SUk8gBTL5qSmA4sdv86m1rh0e4taxzUv6PYK7cQd6wnaXHghrThKqVsSFegOf/T
         Oz0Phqmdp6r+Ypey3/6XGVeJohbBCCgMyAMRecsfC/XGH6aWKYHu8QuRRxznuogGT7Sc
         YBrkM7fYOtu2LY3CYT6XeloU6lFqkb4sGhC8bArPTqLapN6CMlfDsq+259c8QqRhkJ8S
         fJsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mz5MgrT/ECQwIn6H08p8lYxoW4O+R0ljuO10Obvnxt4=;
        b=aLyvsd84n9qGguDlt7GA/+7f2+EHvl3HZlW3Ob9U/Sqz3Q1D55d+hSgitl2GGx3H8A
         dTWil2x98R7cAlPoeciWhmzVs/l7zPJik2coGRmyr2F1n62a87r5UeFfwHVchER2DL3p
         CflT+fHBjDs1hEjGkpOYsQKq4Y7ZmmCIbagES/eztZI5iFgh9e6IeTAN+bTMlgQENwTf
         VRENmife2ejzKYgQ5K1RSsoIhSbAZRx2GGLAKIapF5nCGrK65lrIHEGflv8TeGB74vml
         IKKGr+ZV2IjjHxwe4fJ9/uhp3CAAAk2u+BTl8K9rnF1JLxVCfG0e/sbHB9DMwsIRXmhw
         ogDw==
X-Gm-Message-State: AOAM530VI3YpMufTcLU1DCxnFJgXmjkJgaBMjyqstgGyzO8oo4E8G1d+
        Lcrh6/sDIuu1B//O3RnNp6Q=
X-Google-Smtp-Source: ABdhPJzxOtC2Q5yc9JVX/Idu04+IBL5/j2UpYxDMI2N47EmhdDHSo+RfY0uOcLp19czKB1FAh62lzw==
X-Received: by 2002:a19:8497:: with SMTP id g145mr2414058lfd.504.1605644962358;
        Tue, 17 Nov 2020 12:29:22 -0800 (PST)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id e1sm3281487lfs.279.2020.11.17.12.29.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 12:29:21 -0800 (PST)
Subject: Re: [PATCH 2/2] reset: brcm-pmc: add driver for Broadcom's PMC
To:     Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
References: <20201109163519.32605-1-zajec5@gmail.com>
 <20201109163519.32605-2-zajec5@gmail.com>
 <e89b4601-0c52-db46-4406-d9ac28687e8f@gmail.com>
 <41d25c9d-3562-9549-3582-78a5e2d37330@milecki.pl>
 <e064498a-aacb-eb7a-13a7-441b1994ed7b@milecki.pl>
 <a92d4457-1610-6017-1e06-e73e70713d72@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <0d5fbbbd-2b74-c498-9d7a-8e0f2cf83f75@gmail.com>
Date:   Tue, 17 Nov 2020 21:29:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <a92d4457-1610-6017-1e06-e73e70713d72@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17.11.2020 19:55, Florian Fainelli wrote:
> On 11/17/20 10:44 AM, Rafał Miłecki wrote:
>> On 12.11.2020 15:55, Rafał Miłecki wrote:
>>> *** PMB ***
>>>
>>> It seems like PMB Master is reset controller on its own. Even though
>>> we don't
>>> have actual driver for the (documented) "brcm,bcm63138-pmb" binding,
>>> arch code
>>> treates it like a reset.
>>>
>>> So it seems that a single PMB is capable at least of:
>>> 1. Resetting ARM CPU core (id by 8b addr)
>>> 2. Resetting devices (id by 8b addr) by (en|dis)abling zones
>>>
>>> Above operations are performed in a different (programming) ways.
>>>
>>>
>>> *** PMC ***
>>>
>>> PMC seems to be a reset controller with firmware capable at least of:
>>> 1. Resetting devices (id by 8b addr) by (en|dis)abling zones
>>>
>>> that fallback to using PMB blocks when needed / required.
>>
>> This just got more complex as I started playing with PMC / PMB and PCIe
>> controller.
>>
>> 1. BPCM_CAPABILITIES reg for PCIe controller reports 0 num_zones
>> 2. Enabling PCIe requires powering on zone 0 manually
>> 3. After powering on zone, PCIe requires setting SR_CONTROL
>>
>> It means that PMB driver (and so PMC one as it fallback to the PMB)
>> needs to
>> know what type of device we're addressing.
> 
>  From prior attempts at getting the 63138 supported which was a fairly
> early silicon revision with a mix of PMB and PMC ultimately, the reset
> driver does need to know what kind of device ID is being reset/powered
> on. I stopped after seeing that SATA, USB, PCIe, Switch would all need
> to be treated differently, and the board I had should have been upgraded
> to a B0:
> 
> https://github.com/ffainelli/linux/commit/50f1dfb17b624ee41a11dda01bc899e6756869b7
> 
> There are way too many quirks for Device Tree to express all of them,
> and the whole point of the BPCM was to design a re-usable and
> self-discoverable  power/reset/clocking module. As you found out, if the
> capabilities are wrong, it defeats the purpose.

Good to know we share conclusions. The problem with PMC (except having to
support firmware / ucode / you call it) is it's still not capable of
handling everything.

As mentioned earlier, powering up PCIe controller can be done by PMC and
powering up zone 0 BUT it still requires setting that SR_CTRL.

I see you ended up hardcoding IDs in the bcm63138-pmb.c . I still hope I
can get something slightly more generic.


>> Anything simple like:
>>
>> resets = <&pmb0 14>;
>> resets = <&pmc 1 14>;
>>
>> won't work (unless we hardcode ids in driver - which is unwanted for DTS).
>>
>>
>> So I guess that after all we'll need something like:
>>
>> cpu@1 {
>>      resets = <&pmb0 PMB_ARM 4>; /* ARM CPU */
>> }
>>
>> foo {
>>      resets = <&pmb1 PMB_USB_DEVICE 17>; /* Reset USB using PMB directly */
>> }
>>
>> bar {
>>      resets = <&pmb1 PMB_PCIE_DEVICE 15>; /* Reset PCIE using PMB
>> directly */
>> }
> 
> What is the second reset cell mapping to? Maybe you can define a C
> preprocessor macro that expressed both the PMB bus + device ID?

Device ID. Just like 4 in the :
#define PMB_ADDR_AIP		(4 | PMB_BUS_AIP << PMB_BUS_ID_SHIFT)

So for BCM4908 I could have:
resets = <&pmb1 PMB_PCIE_DEVICE 14>; /* PCIe 0 */
resets = <&pmb1 PMB_PCIE_DEVICE 15>; /* PCIe 1 */

Do you mean C macro for combining two values? Sure, I can do that, but is it
worth it, just to save n * 32 b of .dtb data?


>> and also
>>
>> qux {
>>      resets = <&pmc PMB_PCIE_DEVICE 1 15>; /* Reset PCIe using PMC */
>> }
> 
> 
