Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2AB70115A86
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2019 02:09:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726414AbfLGBJm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Dec 2019 20:09:42 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:37054 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726410AbfLGBJm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Dec 2019 20:09:42 -0500
Received: by mail-wm1-f66.google.com with SMTP id f129so9120980wmf.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2019 17:09:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yD+Kc1w68swJeTB/Vxg8esU+QpTKf/Y2rxrM02hsM8E=;
        b=erVUUFtB6mpxaavF/Ysp04B0vSbTaHZdphEw6PTLPxx4Jh1Lr2T0Jk8GcojtMGgxI3
         DBrW0+V6iZJe3f8YfhDCKupEhidu6nFRAn3EgPh/iKNjplr7NjNrVYW9yeieGHE8n8B6
         82lbOmdaJ/+WYpSO8E560+uoe6p3ly2WEZ9B4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yD+Kc1w68swJeTB/Vxg8esU+QpTKf/Y2rxrM02hsM8E=;
        b=kVqLPhc2RGrABF+ucx4SdN7MklHrbFLLsH8Icy9ao9U+JNBRat1tGEcLZRD+Ye5OBp
         tU+uXKrKCT6pLnv5xkK250SYCr1pkgbe+hjte/5zm/TymnhczS8T4J+D7eioNejCsmtc
         ykW7VXQh1WqKbJrvzcWhE9zzAYEJgw63tLn3NZbX/AbHAKucdSUnLjWLFJPRMXHXIh9D
         V8wr6PqRqdjbwB3HWtyV525aIHRQO0Nn4FOjwodE+MHK8DgjxAam1t14zfSvQai4JtSZ
         fRzKtEun6iqRDMAPNmU4f+YMWHppx0VcXjolZruf6BS7HQesVR1i6AkkFk192r7j9btI
         T7vw==
X-Gm-Message-State: APjAAAWcL/PEyEOTMnPj03X8qC2NJE6J8FwoPJSkEgiuuZK5Tj4FhSde
        e62gyneCcqDkdUXH319ANcoGeg==
X-Google-Smtp-Source: APXvYqxObGo3CZK1oMZD8K04TAdbPkiFZl31iS0EfNlkm/zzbTK+0LJdmEc/w156VyiqFzklzdlVMA==
X-Received: by 2002:a7b:cbc4:: with SMTP id n4mr12296535wmi.118.1575680980554;
        Fri, 06 Dec 2019 17:09:40 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
        by smtp.gmail.com with ESMTPSA id d14sm18881353wru.9.2019.12.06.17.09.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 17:09:39 -0800 (PST)
Subject: Re: [PATCH 1/2] dt-bindings: soc: Add binding doc for iProc IDM
 device
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
References: <20191202233127.31160-1-ray.jui@broadcom.com>
 <20191202233127.31160-2-ray.jui@broadcom.com>
 <62254bbb-168e-c0ad-a72d-bd659a2c23fa@gmail.com>
From:   Ray Jui <ray.jui@broadcom.com>
Message-ID: <0f0e965b-2e57-8b6b-0c72-1a1008497793@broadcom.com>
Date:   Fri, 6 Dec 2019 17:09:34 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <62254bbb-168e-c0ad-a72d-bd659a2c23fa@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12/5/19 4:09 PM, Florian Fainelli wrote:
> On 12/2/19 3:31 PM, Ray Jui wrote:
>> Add binding document for iProc based IDM devices.
>>
>> Signed-off-by: Ray Jui <ray.jui@broadcom.com>
> 
> Looks good to me, it's 2019, nearly 2020, maybe make this a YAML
> compatible binding since it is a new one?
> 

Sorry I am not aware of this YAML requirement until now.

Is this a new requirement that new DT binding document should be made 
with YAML format?

Thanks,

Ray


>> ---
>>   .../bindings/soc/bcm/brcm,iproc-idm.txt       | 44 +++++++++++++++++++
>>   1 file changed, 44 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt
>>
>> diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt b/Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt
>> new file mode 100644
>> index 000000000000..388c6b036d7e
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt
>> @@ -0,0 +1,44 @@
>> +Broadcom iProc Interconnect Device Management (IDM) device
>> +
>> +The Broadcom iProc IDM device allows control and monitoring of ASIC internal
>> +bus transactions. Most importantly, it can be configured to detect bus
>> +transaction timeout. In such case, critical information such as transaction
>> +address that caused the error, bus master ID of the transaction that caused
>> +the error, and etc., are made available from the IDM device.
>> +
>> +-------------------------------------------------------------------------------
>> +
>> +Required properties for IDM device node:
>> +- compatible: must be "brcm,iproc-idm"
>> +- reg: base address and length of the IDM register space
>> +- interrupt: IDM interrupt number
>> +- brcm,iproc-idm-bus: IDM bus string
>> +
>> +Optional properties for IDM device node:
>> +- brcm,iproc-idm-elog: phandle to the device node of the IDM logging device
>> +
>> +-------------------------------------------------------------------------------
>> +
>> +Required properties for IDM error logging device node:
>> +- compatible: must be "brcm,iproc-idm-elog";
>> +- reg: base address and length of reserved memory location where IDM error
>> +  events can be saved
>> +
>> +-------------------------------------------------------------------------------
>> +
>> +Example:
>> +
>> +idm {
>> +	idm-elog {
>> +		compatible = "brcm,iproc-idm-elog";
>> +		reg = <0x8f221000 0x1000>;
>> +	};
>> +
>> +	idm-mhb-paxc-axi {
>> +		compatible = "brcm,iproc-idm";
>> +		reg = <0x60406900 0x200>;
>> +		interrupt = <GIC_SPI 516 IRQ_TYPE_LEVEL_HIGH>;
>> +		brcm,iproc-idm-bus = "idm-mhb-paxc-axi";
>> +		brcm,iproc-idm-elog = <&idm-elog>;
>> +	};
>> +};
>>
> 
> 
