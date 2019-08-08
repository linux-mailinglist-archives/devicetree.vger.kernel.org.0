Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7AD3486774
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 18:49:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404178AbfHHQtB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 12:49:01 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:55872 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728289AbfHHQtA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 12:49:00 -0400
Received: by mail-wm1-f67.google.com with SMTP id f72so3050008wmf.5
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 09:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lL2ShwsE/GA9BuDEpLxcIGuN5LXS8sAbxL9xoaNEokw=;
        b=cwd3fSQiRwN6sA8taiEQr8r3230IVi0h+C58VurH9KWDmqdrJ2YUSTjZPnCZyQ3VrV
         JwqOYtnxH4T9CkZrwy2RluKRFHYHLvGwkb+daaAt/nqT7asOx4UfOxu5nYs/oTMZf1Wq
         3n1WIpgb/9BbwuYKpRC4BS1sB1heZb2sffB5OhQROsCmrQwZdVfH7OYV6On47fCuvzrp
         ByJRSkM95InCOT9LHtdITzxsSpIGANBx5HxVgGCEEJcMz1l/zP0prRpZkaW+l1XXfph/
         wdaacSUL1MW1gHpeuI5QHL3Y86/ts6T0XBqhtwJerzQ08gAH3siBPwwLKAfV6LWisVQ0
         cbyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lL2ShwsE/GA9BuDEpLxcIGuN5LXS8sAbxL9xoaNEokw=;
        b=U7MFEvfLm5Z+DvSRqbMv20+gqQChg3p18GWoWFlV2VZHW+0bVsplb3nlN4M2iaIJp1
         9geaVW/MatljpjqNusnwBOHZStF8ECixsE3ZdrCZXbtPWWCzL1E30dfp+SU4CiDBjouN
         3k6TrK9wJiBmgRZVjp8tX5BzqszXvaff2H7QAQgsKiwNWBGwGxLqti9pK7ILAkP8dEnJ
         1yKscQ+EAMuMvGmCsP+rbR17sILxN/rpF0RgmKPWOidtFCxb+cYt4QSpShv7QSuglxLe
         bpUgp9W4gn0iYq2zy8BAyXzj+PligWVAAkSq+ynEt0ea8vc0u4N8aYpc1b0ULvEXG4+R
         QOgg==
X-Gm-Message-State: APjAAAVQ1eNDxbigXUkmWZFRF3d7XBOX9u5ErSYzJfUbe0Mh67e4GSW5
        cV2B6+m4I0AVAr2a+dEhHBuCkg==
X-Google-Smtp-Source: APXvYqxffKPC+HPHpszeXHZyBaa0mp+CcvH1UOy9QMMrHgh8Dhaf1vCOw9UxYWNilMieJlTSzKH6rw==
X-Received: by 2002:a7b:c766:: with SMTP id x6mr5627277wmk.40.1565282937783;
        Thu, 08 Aug 2019 09:48:57 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id r5sm5114319wmh.35.2019.08.08.09.48.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Aug 2019 09:48:57 -0700 (PDT)
Subject: Re: [PATCH v2 1/4] dt-bindings: soundwire: add slave bindings
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        vkoul@kernel.org, broonie@kernel.org
Cc:     bgoswami@codeaurora.org, plai@codeaurora.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org
References: <20190808144504.24823-1-srinivas.kandagatla@linaro.org>
 <20190808144504.24823-2-srinivas.kandagatla@linaro.org>
 <d346b2af-f285-4c53-b706-46a129ab7951@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <cdd2bded-551c-65f5-ca29-d2bb825bdaba@linaro.org>
Date:   Thu, 8 Aug 2019 17:48:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <d346b2af-f285-4c53-b706-46a129ab7951@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 08/08/2019 16:58, Pierre-Louis Bossart wrote:
> 
>> +++ b/Documentation/devicetree/bindings/soundwire/slave.txt
>> @@ -0,0 +1,46 @@
>> +SoundWire slave device bindings.
>> +
>> +SoundWire is a 2-pin multi-drop interface with data and clock line.
>> +It facilitates development of low cost, efficient, high performance 
>> systems.
>> +
>> +SoundWire slave devices:
>> +Every SoundWire controller node can contain zero or more child nodes
>> +representing slave devices on the bus. Every SoundWire slave device is
>> +uniquely determined by the enumeration address containing 5 fields:
>> +SoundWire Version, Instance ID, Manufacturer ID, Part ID and Class ID
>> +for a device. Addition to below required properties, child nodes can
>> +have device specific bindings.
> 
> In case the controller supports multiple links, what's the encoding then?
> in the MIPI DisCo spec there is a linkId field in the _ADR encoding that 
> helps identify which link the Slave device is connected to
>  >> +
>> +Required property for SoundWire child node if it is present:
>> +- compatible:     "sdwVER,MFD,PID,CID". The textual representation of
>> +          SoundWire Enumeration address comprising SoundWire
>> +          Version, Manufacturer ID, Part ID and Class ID,
>> +          shall be in lower-case hexadecimal with leading
>> +          zeroes suppressed.
>> +          Version number '0x10' represents SoundWire 1.0
>> +          Version number '0x11' represents SoundWire 1.1
>> +          ex: "sdw10,0217,2010,0"
>> +
>> +- sdw-instance-id: Should be ('Instance ID') from SoundWire
>> +          Enumeration Address. Instance ID is for the cases
>> +          where multiple Devices of the same type or Class
>> +          are attached to the bus.
> 
> so it is actually required if you have a single Slave device? Or is it 
> only required when you have more than 1 device of the same type?
> 

This is mandatory for any slave device!

> FWIW in the MIPI DisCo spec we kept the instanceID as part of the _ADR, 
> so it's implicitly mandatory (and ignored by the bus if there is only 
> one device of the same time)
> 
>> +
>> +SoundWire example for Qualcomm's SoundWire controller:
>> +
>> +soundwire@c2d0000 {
>> +    compatible = "qcom,soundwire-v1.5.0"
>> +    reg = <0x0c2d0000 0x2000>;
>> +
>> +    spkr_left:wsa8810-left{
>> +        compatible = "sdw10,0217,2010,0";
>> +        sdw-instance-id = <1>;
>> +        ...
>> +    };
>> +
>> +    spkr_right:wsa8810-right{
>> +        compatible = "sdw10,0217,2010,0";
>> +        sdw-instance-id = <2>;
> 
> Isn't the MIPI encoding reported in the Dev_ID0..5 registers 0-based?
> 
>> +        ...
>> +    };
>> +};
>>
> 
> And now that I think of it, wouldn't it be simpler for everyone if we 
> aligned on that MIPI DisCo public spec? e.g. you'd have one property 
> with a 64-bit number that follows the MIPI spec. No special encoding 
> necessary for device tree cases, your DT blob would use this:

Thanks for the suggestion, adding 64 device bits as compatible string 
should take care of linkID too. I will give that a go!

> 
> soundwire@c2d0000 {
>      compatible = "qcom,soundwire-v1.5.0"
>      reg = <0x0c2d0000 0x2000>;
> 
>      spkr_left:wsa8810-left{
>          compatible = "sdw00 00 10 02 17 20 10 00"
>      }
> 
>      spkr_right:wsa8810-right{
>          compatible = "sdw0000100217201100"
>      }
> }
> 
> We could use parentheses if it makes people happier, but the information 
> from the MIPI DisCo spec can be used as is, and provide a means for spec 
> changes via reserved bits.
