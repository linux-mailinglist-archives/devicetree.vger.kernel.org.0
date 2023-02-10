Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE75C691CB8
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 11:31:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232048AbjBJKbP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 05:31:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232025AbjBJKbO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 05:31:14 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AB4C6D635
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 02:31:11 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id o15so1289184wrc.9
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 02:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=EoP3N0+HyfNxDRuzpcPoBnYi1M7DcjjI/H/2+p16pBQ=;
        b=y53wZ1cyUbE2DR60T8dKx8BlNMPI4M6CzHQq2hL7tlvbpH1a3t5yBjcGd+7Piwlibs
         rOGJSj20Jx0vmI4MN4IcVu7tIRPYIBVPi2sw99/K8fpi+ujYrXEvxmqjQKQobzNFNX5F
         M7OfrvbUsyiZVUnQ9ZO4G1pjoB6LacQbfiRD9yPQ0eCkklQ/tOfgGLpcewnsPcaDa9nU
         nMeT6QRwJpKHvvn3LNne3bgKQoD+Z4nB0RfTAuzDmBj2Bn1M+ba1UXct1iBBsYdnEJQw
         aXCyWUSEiAQeP2+1klY5QzzKJD/HTnXN03/TaylEBDBVJ85DL7891MSXaFK+/ErwzaTD
         cVRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EoP3N0+HyfNxDRuzpcPoBnYi1M7DcjjI/H/2+p16pBQ=;
        b=P9SLyFdClxJXlaTFrkAMcUvkIpmC05rmBQ1BpWh4lK4bPdVuF0mv1CtFP749EgtWos
         1UrEFJZq3oec/7JBmWgW97UG+3ONUg81uSGFBpY87IuJpBkYzEiUQFPlnj+IRsIUqJ6e
         +eqLPi3nEPlheoODUPbOrcxupZuhFrWuLfu3UGqgBnuLGYWaOFm+XtX7AK/RZfUsLOuJ
         DYFtTo/2isTdWJ8uu9m9ZMXT7wzlPHfKkMN7iDMPctz5UkcwUDFms2b1uR6uQkVM+nBs
         6O8rd6DXmaurMh109tKClzeEVzpnaRG0m48uotrcBK24TiduCflXbV0T6m/S7m+yA1yN
         8HwQ==
X-Gm-Message-State: AO0yUKV2mdlZXKpmyus26li+K6fVfJQURMEp7VOL9qEK2zke5qzv/DbR
        JO2P7Yp77aWYNwnwTlO6gwuxBA==
X-Google-Smtp-Source: AK7set83bAYzbIOw3hqSGA3caGrA7n0CkMX9pgiGQddnRDcI///tWiZjqyHj7uimc9mqXiVcWn0E7A==
X-Received: by 2002:a05:6000:4:b0:2bf:ae17:bf58 with SMTP id h4-20020a056000000400b002bfae17bf58mr13181044wrx.37.1676025069861;
        Fri, 10 Feb 2023 02:31:09 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:5a65:5553:55cf:3027? ([2a01:e0a:982:cbb0:5a65:5553:55cf:3027])
        by smtp.gmail.com with ESMTPSA id a1-20020a05600c348100b003db0ee277b2sm7854940wmq.5.2023.02.10.02.31.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Feb 2023 02:31:09 -0800 (PST)
Message-ID: <720aee1d-87e8-5291-c6a0-ef53e830a21d@linaro.org>
Date:   Fri, 10 Feb 2023 11:31:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/7] usb: typec: ucsi: add PMIC Glink UCSI driver
Content-Language: en-US
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230130-topic-sm8450-upstream-pmic-glink-v1-0-0b0acfad301e@linaro.org>
 <20230130-topic-sm8450-upstream-pmic-glink-v1-1-0b0acfad301e@linaro.org>
 <Y9jcYdc30G026/fs@kroah.com>
Organization: Linaro Developer Services
In-Reply-To: <Y9jcYdc30G026/fs@kroah.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/01/2023 10:16, Greg Kroah-Hartman wrote:
> On Mon, Jan 30, 2023 at 10:54:32AM +0100, Neil Armstrong wrote:
>> Introduce the UCSI PMIC Glink aux driver that communicates
>> with the aDSP firmware with the UCSI protocol which handles
>> the USB-C Port(s) Power Delivery.
>>
>> The UCSI messaging is necessary on newer Qualcomm SoCs to
>> provide USB role switch and altmode notifications.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/usb/typec/ucsi/Kconfig      |   7 +
>>   drivers/usb/typec/ucsi/Makefile     |   1 +
>>   drivers/usb/typec/ucsi/ucsi_glink.c | 321 ++++++++++++++++++++++++++++++++++++
>>   3 files changed, 329 insertions(+)
>>
>> diff --git a/drivers/usb/typec/ucsi/Kconfig b/drivers/usb/typec/ucsi/Kconfig
>> index 8f9c4b9f31f7..dee6069e46a2 100644
>> --- a/drivers/usb/typec/ucsi/Kconfig
>> +++ b/drivers/usb/typec/ucsi/Kconfig
>> @@ -58,4 +58,11 @@ config UCSI_STM32G0
>>   	  To compile the driver as a module, choose M here: the module will be
>>   	  called ucsi_stm32g0.
>>   
>> +config UCSI_PMIC_GLINK
>> +	tristate "UCSI Qualcomm PMIC GLINK Interface Driver"
>> +	depends on QCOM_PMIC_GLINK
> 
> No way to test build this code without this option?

Nop, the QCOM_PMIC_GLINK is a build dependency, this can't be removed

> 
>> +	help
>> +	  This driver enables UCSI support on platforms that expose UCSI
>> +	  interface as PMIC GLINK device.
> 
> Module name when built?

OK will add a follow-patch if needed

Thanks,
Neil

> 
> A follow-on patch can be sent, this is minor.
> 
> thanks,
> 
> greg k-h

