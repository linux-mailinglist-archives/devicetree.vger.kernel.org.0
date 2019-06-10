Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0EFD03B045
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2019 10:14:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387825AbfFJIOm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jun 2019 04:14:42 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:44145 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387822AbfFJIOm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jun 2019 04:14:42 -0400
Received: by mail-wr1-f65.google.com with SMTP id b17so8149362wrq.11
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2019 01:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FoeVTYzF5ZDi2tID72FryeJ/j+o8r81eaeVqgETUoko=;
        b=itjfuEoXOvXwxbRwuF6HrhTmMzpt6ljGh0o24LPk+N83H/V44mafKAvoTtxvdP14KI
         LJFlVdi880AiwQnNR9viKWtZQ/ad5i6A238QtGDRjDfySmXGFr6sRkq82+fKocOAZg5N
         4FziCyWxT7dEY3/oADWNFmOvqND8lybwrvWtQqEOafXloTjd6s9k1YaLHjevxD08LR1U
         kDfqayPy7cM7+IajIExVAVT7g1tOUDCkmPYDVnR1yGcu5rH0JH6gGpihkAiIv3xsatlv
         isLSXUYnVtLdBH7SmW7QVjYbO/Md30vYrs7/2WQEtnGwzMYCg1yf40HuHbDIHbr5Q6Pu
         IzoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FoeVTYzF5ZDi2tID72FryeJ/j+o8r81eaeVqgETUoko=;
        b=PV5tR5AYym0qwNaqwW4Ql0+LScySvOgrK1WAvaEfW5/ePV9VJPR3048SvNa5kgyV0V
         PiAShSmcAoLMFvg8TBu4X7YHXVgyAj/AIWelHSj9y08IslwKx5a+1U1dEGYug+zqUe7V
         VnhdTCt8bp/Ps17xFwVLiW8gI4GCjq/eSaQwB7V8WMT/LGldO6pz1IKXSECHGj1dcwI7
         3sXv72W2PHcc5Yj4huERV5W4YR509ftsEf5xmn3ADKj1O1AgcEJwNcUqrMBE9SZl5fkg
         nMxfC8JZYdbZbEtoPz9MUxh99pTjlEprrokn3+aD5Q1CLE1CsqCnNWuAbfZewWvcYYYR
         CbTQ==
X-Gm-Message-State: APjAAAXJqhpWAsoONzJAo4R0061Op7ot0Tm4s1K2bS9fTcPOb9ywhXC5
        mWb5eH9nix3bv3ozedJZ7AFhugQ8cIODUQ==
X-Google-Smtp-Source: APXvYqy9NQENDTf7h9IM9Fr1WLtg2wN5q3OPNu/X/z7kY2UX4lC5AHdyFIKS7VcslrPFuacPBM++HA==
X-Received: by 2002:adf:e2c3:: with SMTP id d3mr16647979wrj.314.1560154480327;
        Mon, 10 Jun 2019 01:14:40 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id f2sm17310279wrq.48.2019.06.10.01.14.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Jun 2019 01:14:39 -0700 (PDT)
Subject: Re: [RFC PATCH 5/6] dt-bindings: soundwire: add bindings for Qcom
 controller
To:     Vinod Koul <vkoul@kernel.org>
Cc:     broonie@kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
        mark.rutland@arm.com, pierre-louis.bossart@linux.intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org
References: <20190607085643.932-1-srinivas.kandagatla@linaro.org>
 <20190607085643.932-6-srinivas.kandagatla@linaro.org>
 <20190610045150.GJ9160@vkoul-mobl.Dlink>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <f1e68207-caa2-02e0-19af-ac5763c86e41@linaro.org>
Date:   Mon, 10 Jun 2019 09:14:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190610045150.GJ9160@vkoul-mobl.Dlink>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10/06/2019 05:51, Vinod Koul wrote:
> On 07-06-19, 09:56, Srinivas Kandagatla wrote:
>> This patch adds bindings for Qualcomm soundwire controller.
>>
>> Qualcomm SoundWire Master controller is present in most Qualcomm SoCs
>> either integrated as part of WCD audio codecs via slimbus or
>> as part of SOC I/O.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
>>   .../bindings/soundwire/qcom,swr.txt           | 62 +++++++++++++++++++
> 
> So I was expecting to see bus support patches for OF first. I think you
> have missed those changes. Please do include those in v2 with bindings
> and OF support for bus.

I was planning to post bus bindings along with soundwire slave bindings 
of WSA881x driver!
I will be sending this soon!

> 
>>   1 file changed, 62 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/soundwire/qcom,swr.txt
>>
>> diff --git a/Documentation/devicetree/bindings/soundwire/qcom,swr.txt b/Documentation/devicetree/bindings/soundwire/qcom,swr.txt
>> new file mode 100644
>> index 000000000000..eb84d0f4f36f
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/soundwire/qcom,swr.txt
>> @@ -0,0 +1,62 @@
>> +Qualcomm SoundWire Controller
>> +
>> +This binding describes the Qualcomm SoundWire Controller Bindings.
>> +
>> +Required properties:
>> +
>> +- compatible:		Must be "qcom,soundwire-v<MAJOR>.<MINOR>.<STEP>",
>> +	 		example:
>> +			"qcom,soundwire-v1.3.0"
>> +			"qcom,soundwire-v1.5.0"
>> +			"qcom,soundwire-v1.6.0"
>> +- reg:			SoundWire controller address space.
>> +- interrupts:		SoundWire controller interrupt.
>> +- clock-names:		Must contain "iface".
>> +- clocks:		Interface clocks needed for controller.
>> +- #sound-dai-cells:	Must be 1 for digital audio interfaces on the controllers.
>> +- #address-cells:	Must be 1 for SoundWire devices;
>> +- #size-cells:		Must be <0> as SoundWire addresses have no size component.
>> +- qcom,dout-ports: 	Must be count of data out ports
>> +- qcom,din-ports: 	Must be count of data in ports
> 
> On these I think we should have specified dpn properties as specified in
> DisCo, but then looking at spec we do not define that for master, but
> bus seems to have it.
> 
> Pierre do you why master does not have dpn properties in DisCo?
> 
>> +- qcom,ports-offset1:	Must be frame offset1 of each data port.
>> +			Out followed by In. Used for Block size calculation.
>> +- qcom,ports-offset2: 	Must be frame offset2 of each data port.
>> +			Out followed by In. Used for Block size calculation.
>> +- qcom,ports-sinterval-low: Must be sample interval low of each data port.
>> +			Out followed by In. Used for Sample Interval calculation.
> 
> These are software so do not belong here
These are board-specfic properties w.r.t this controller ports 
configuration.
I don't see any other option to specify this?
Do you have any alternative suggestions?

--srini
> 
