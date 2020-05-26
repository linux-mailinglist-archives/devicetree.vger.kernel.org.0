Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A0681C6CAA
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2020 11:16:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728940AbgEFJQd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 May 2020 05:16:33 -0400
Received: from mail.kernel.org ([198.145.29.99]:40256 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728385AbgEFJQd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 6 May 2020 05:16:33 -0400
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 7D66720714;
        Wed,  6 May 2020 09:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1588756592;
        bh=zALfP4xVA+WvMHMrj3CUbm45HqoM4nmq5AW9bGrPH2k=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=ffCmxnVjUNbGEYXs7ebndAaB16aD56h/wOafPQ9nhbc3AQTxKanXfu8za8iS2Sj82
         bmu9jj4FUSEsJyg0unDcCOcQAysGyMS0gP8Fbht+RdDADAC/HhmXIkK2bKk+Uum8ly
         YmjKIACtYOKj6oQTAulpDDWFMk09Q1iduE77w1Q8=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
        by disco-boy.misterjones.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.92)
        (envelope-from <maz@kernel.org>)
        id 1jWGAI-009tyT-Rk; Wed, 06 May 2020 10:16:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date:   Wed, 06 May 2020 10:16:30 +0100
From:   Marc Zyngier <maz@kernel.org>
To:     =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Cc:     Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 07/16] arm64: dts: arm: Fix GIC compatible names
In-Reply-To: <629da7f9-9cc9-ec9e-f175-ef6c90b5e3f1@arm.com>
References: <20200505165212.76466-1-andre.przywara@arm.com>
 <20200505165212.76466-8-andre.przywara@arm.com>
 <86lfm6tf1f.wl-maz@kernel.org>
 <629da7f9-9cc9-ec9e-f175-ef6c90b5e3f1@arm.com>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <d9ebbc077d70805bed252656dede750b@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: andre.przywara@arm.com, robh@kernel.org, liviu.dudau@arm.com, sudeep.holla@arm.com, lorenzo.pieralisi@arm.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020-05-06 09:45, André Przywara wrote:
> On 05/05/2020 19:25, Marc Zyngier wrote:
>> On Tue, 05 May 2020 17:52:03 +0100,
>> Andre Przywara <andre.przywara@arm.com> wrote:
>>> 
>>> The GIC DT binding only allows a certain combination of DT compatible
>>> strings, mostly just consisting of one name.
>>> 
>>> Drop the combination of multiple names and go with the
>>> "arm,cortex-a15-gic" name for GICv2, as this seems to be the most 
>>> widely
>>> accepted string. "arm,gic-400" would be more correct, but was 
>>> introduced
>>> much later into the kernel's GIC driver.
>>> 
>>> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
>>> ---
>>>  arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi | 2 +-
>>>  arch/arm64/boot/dts/arm/juno-base.dtsi           | 2 +-
>>>  arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts       | 2 +-
>>>  3 files changed, 3 insertions(+), 3 deletions(-)
>>> 
>>> diff --git a/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi 
>>> b/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
>>> index 15fe81738e94..61a1750fcdd6 100644
>>> --- a/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
>>> +++ b/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
>>> @@ -6,7 +6,7 @@
>>> 
>>>  / {
>>>  	gic: interrupt-controller@2c001000 {
>>> -		compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
>>> +		compatible = "arm,cortex-a15-gic";
>>>  		#interrupt-cells = <3>;
>>>  		#address-cells = <2>;
>>>  		interrupt-controller;
>>> diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi 
>>> b/arch/arm64/boot/dts/arm/juno-base.dtsi
>>> index 3feefd61eb76..62392ab1f880 100644
>>> --- a/arch/arm64/boot/dts/arm/juno-base.dtsi
>>> +++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
>>> @@ -69,7 +69,7 @@
>>>  	};
>>> 
>>>  	gic: interrupt-controller@2c010000 {
>>> -		compatible = "arm,gic-400", "arm,cortex-a15-gic";
>>> +		compatible = "arm,cortex-a15-gic";
>> 
>> Why? GIC-400 is definitely the most correct compatible string. I'd
>> rather see this compatible being generalised to the models rather than
>> only referencing the A15 GIC.
> 
> I agree that gic-400 is the far better name, but it was only introduced
> in v3.16. So omitting arm,cortex-a15-gic would break any kernels before
> that, which I would like to avoid.

I am not talking about dropping the A15 GIC. I'm saying that both should
stay. Is there anything in the DT binding that forbids multiple names in
the compatible property?

> It's actually a pity that we are so picky about the compatible 
> listings,
> because the existing combination is actually quite nice: we get
> compatibility with older DT consumers, but still can say what it
> actually is.
> I wonder if I should introduce this combination to the GIC DT binding
> instead, it seems like there are other users in the tree as well.
> 
> What do you think?

I'd say that if the binding forbids multiple compatible strings, the
binding is likely to be wrong. We should fix it, and not make the DTs
worse as a result of a binding issue.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...
