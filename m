Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 76A4C5E36B
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 14:06:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725830AbfGCMG3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 08:06:29 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:36891 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725820AbfGCMG3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 08:06:29 -0400
Received: by mail-wr1-f65.google.com with SMTP id v14so2520363wrr.4
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 05:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hSMdJI3FhgIeyHE1mlFbnoJ36Q6QDvhy3QXwr2d70Kk=;
        b=vFN16FUn7+3YTQF7uYSM7pL29SVG0BkOKI4O/o5ckjt5F9XNCSHI4g92riDtdRKJ9t
         NqI7xYK5slB/a4jKAcheSONMCgPgjFh0kRRQpLpBglrOqQ5k+iY8ectIuXz0nmjNJrbx
         lzxq4QEIG33Itv86UeWZF1VoIYVRXzgaf62M1q/o7nM76/7rZ2O0vutn+L/pnuYRlOsC
         jIZxVDoheYjUtADmSlGQHb643PioO5u9FBZbioV0qa9bgvhM9AcFWuRZ9SGforU+K6jN
         yRDcTpWBI9PRxxCuap65jQhiwmpbXXcSEey8bhkBqboI+/vSH5soYm1WVerrxZF46fIH
         Gmcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hSMdJI3FhgIeyHE1mlFbnoJ36Q6QDvhy3QXwr2d70Kk=;
        b=XdtLArdaMEeM5ybbUx5MYa4MkUc2rNeQf3Jt6ZSYI/OTXsbXSCoEr2KJ1sp9ZZ6R2i
         NMUDdPwjnIYt6dI4O68auYeFK/SMFdr6UDay0VtlM+WpCc8r0/Nqdhk7kUcNoVVK28r0
         c3qTr7iQ1ENOfJesMDimrp+YWgtfRUvXqAMAATl5kU4DiYO+sfr08pR5mPLu/ljuohWJ
         2Do3fyiYdTi9e1mHZ8vkO6R5lY3bUPbge+IpFZV5SX+D8xw642OBvGvcH2TXFg8Al+k4
         1n1SJqULxvG4SSceyQus6t4I1JuHIR3SJJR5lXQBEN2akDKl7GXhqwrvpQjEEnCwdV+c
         yXUw==
X-Gm-Message-State: APjAAAVqmDAP4UWdzKvXaGAV0n6zn48vNi5z86oVeSxHhDZyscmMiQoA
        QAilAs+9NugPRID/0pXkafid1w==
X-Google-Smtp-Source: APXvYqxQaScoeK39QlEwCNnQW0RQl2gAeoNKRVtsCmRFg7g6T/y5RlCTz7NUvUssSYOqoeOBDUy2eA==
X-Received: by 2002:adf:c613:: with SMTP id n19mr15717871wrg.109.1562155587366;
        Wed, 03 Jul 2019 05:06:27 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id f10sm2495431wru.31.2019.07.03.05.06.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jul 2019 05:06:26 -0700 (PDT)
Subject: Re: [PATCH 2/6] ASoC: wcd934x: add support to wcd9340/wcd9341 codec
To:     Mark Brown <broonie@kernel.org>
Cc:     robh+dt@kernel.org, bgoswami@codeaurora.org, vkoul@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        mark.rutland@arm.com, alsa-devel@alsa-project.org, srini@kernel.org
References: <20190702080920.22623-1-srinivas.kandagatla@linaro.org>
 <20190702080920.22623-3-srinivas.kandagatla@linaro.org>
 <20190702144411.GP2793@sirena.org.uk>
 <2e2a32dd-3dca-5391-1bfa-ab1c1f420e3a@linaro.org>
 <20190702165753.GQ2793@sirena.org.uk>
 <0a9a994c-5a88-539f-3af0-76754b9b58d1@linaro.org>
 <20190703115243.GV2793@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <8edd8bc6-4b32-7f7e-2521-d7038a4ffb8d@linaro.org>
Date:   Wed, 3 Jul 2019 13:06:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190703115243.GV2793@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 03/07/2019 12:52, Mark Brown wrote:
> On Wed, Jul 03, 2019 at 09:49:37AM +0100, Srinivas Kandagatla wrote:
>> On 02/07/2019 17:57, Mark Brown wrote:
> 
>>> This is a driver for a single device, you should be able to
>>> instantiate things without requiring binding through DT (and
>>> hence support non-DT systems such as those using ACPI).
> 
>> My view point atleast from hw side was that Codec is Parent which is
>> encompassing these different blocks and bus interface. DT representation
>> clearly showed that relationship between the parent and child devices.
>> Binding it through DT will make sure that resources are ready before
>> they are instantiated.
> 
>> All the child devices also have some machine/board specific properties
>> and dependency on resources from parent like regmap, clks, and bus.
> 
>> In ACPI case, am not 100% sure how these will be represented inline with
>> hw representation.
> 
>> Are you suggesting to use MFD here?
> 
> I'm saying that you should be using a MFD here like all the other
> CODECs with multiple functions and that you shouldn't have
> compatible strings in DT for the subfunctions since you already
> know they'll be there simply from enumerating the chip as a whole
> and how exactly they are divided up is a function of how Linux
> currently has subsystems, not of the hardware.
> 
Got it!, thanks for the input, I will change that in v2.



--srin
