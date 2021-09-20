Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6BD69411397
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 13:32:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236995AbhITLeR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 07:34:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236965AbhITLeQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 07:34:16 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 139A3C061760
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 04:32:50 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id c22so60028114edn.12
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 04:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BgCuE98X6TCt4JKWIbSXAM4IkPGNAtaWBz0dljdjTPw=;
        b=VjlmVqgovwILxWWg6zQPtHu+raMSSpIPKhK3D9Qjrf+jbuoUiVaL2d+sqKhh4qfQ9j
         eFxHvAv9xMFOAZiZWbSKf6WhQKh5IKxnuzetkEKJqjt8yqYP0AoyTV6RczlwP0FdJByF
         BNNU5zi3Ui9L29gSHG52v1m8YJgXiGKjrKl4okVxSMowmIxEDm0x7MvwnZV7O2wgD6hv
         xy0EiHMnZGQmRhUWvmKEUS9783Ih2xcXZqYMr6UHC4pQa10u+0EXFpMQF5OOd4aLU6bh
         qXektjul0jcsIsgPL8j1SxEYD8OzQqf/2XeqyEqN3Bx4x4/DvMhbf1dXCuMRZl4m7EmQ
         aD1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BgCuE98X6TCt4JKWIbSXAM4IkPGNAtaWBz0dljdjTPw=;
        b=eEedifeZ2NjhM4ZkO5bzDBT22l6Ti/wMohu0GdHiVQhgjc3havPtow3qpmihKEu0Ar
         gbff9w+EgO6tjUAnyiHsBC/kAAQjKuzVUf8me/LqLjhNBGiY44YiLh+DlLW0OT3Z/Vwb
         pCgt8l3Em3np7WxHq/4AxkdNn8qSbm3CuRFo7qNDFUkTeB4uNztGUcV1+y0tooGdn95C
         bJLoEwr8yT3jVFjZD4qVj6z/Mpl7FAqwCLUNXmi6asOC5VvjCvR7r7J0TA3mmRBbe2zn
         92F6EqbwGo1k2kh3tRhFYiEl3daNFfLS86UQ1W5Mwp4FkK0rMnDtZ+6nQCiZZFvx6/dU
         UhfQ==
X-Gm-Message-State: AOAM533dScQT5eECoxgpQj8c5bXE1GdZWSpiZd9Zy0W73c79kpHm7+fh
        gJncvrJdT4IustsTmdN12LknTWrubSIyQA==
X-Google-Smtp-Source: ABdhPJxp7HP0ZCD/gF7ezj4POAz9/BIWr2mGzY1yBiwLo+kmyrPFqhA0SWJxEeVU4CHJssbsrfoaCA==
X-Received: by 2002:a17:906:dc4b:: with SMTP id yz11mr28678212ejb.460.1632137568558;
        Mon, 20 Sep 2021 04:32:48 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id j14sm6966806edk.7.2021.09.20.04.32.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Sep 2021 04:32:47 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] nvmem: core: introduce cells parser
To:     Vadym Kochan <vadym.kochan@plvision.eu>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Robert Marko <robert.marko@sartura.hr>
References: <20210608190327.22071-1-vadym.kochan@plvision.eu>
 <20210608190327.22071-2-vadym.kochan@plvision.eu>
 <43023500-dd6a-5180-057e-cecc1f1b6500@linaro.org>
 <20210616123356.GA9951@plvision.eu>
 <fea907ed-06ce-5c82-667d-d11f3e902616@linaro.org>
 <vrcxh2zgsnl841.fsf@plvision.eu>
 <7e6d75ed-cebc-597f-7062-34261d184968@linaro.org>
 <vrcxh2pmt3bl4h.fsf@plvision.eu>
 <0e471789-fe29-b747-5153-75c9b4616c7f@linaro.org>
 <vrcxh2o88nbias.fsf@plvision.eu>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <1da03714-8f23-1004-e89a-891e4599e04a@linaro.org>
Date:   Mon, 20 Sep 2021 12:32:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <vrcxh2o88nbias.fsf@plvision.eu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 20/09/2021 12:25, Vadym Kochan wrote:
>>> Or, treat cells with length "0" in a special way and allow to update
>>> cell info later.you can update irrespective of the length, as long as this is done
>> before register.
>>
>>
>>>> };
>>>>
>>>> some_dev_node {
>>>> 	compatible = "xxx";
>>>> 	nvmem-cells = <&mac_address>;
>>>> 	nvmem-cell-names = "mac-address";
>>>> };
>>>>
>>>> == CODE ==
>>>> ret = of_get_mac_address(dev->of_node, base_mac);
>>>> ==========
>>>>
>>>>
>>>> If you notice the mac_address node reg is 0.
>>>> This node "reg" property should be updated ( using of_update_property())
>>>> by nvmem-provider driver while tlv parsing and by matching the node name
>>>> with tlv name.
>>>>
>>> I assume parser driver can just invoke add_cell_table (with may be
>>> by adding 'bool update' field to the cell_info struct) and core.c will just
>>> update existing cells parsed from OF.
>>>
>> Lets keep the core code clean for now, I would expect the provider
>> driver along with parser function to do update the nodes.
>>
>> --srini
>>
> core.c sequence:
> 
> 1) after cells parsed from OF:
> 
> 2) lookup the parser
> 
> 3) parser->cells_parse(ctx, table)
> 
> 3.a) update existing cells matched by name from table
> 
> 4) parser->cells_clean(ctx, table)
> /* to free cell's_info allocated by the parser driver */
> 
> as alternative way, I think it would be more generic to
> provide nvmem-provider.h API to update the existing cell info,
> however it makes sense only when cells were parsed
> by the cell parser, in the other situations the
> cell should be well defined.
> 
> with this approach the parser driver will be just called
> via parser->cells_parse(ctx) and will call nvmem_cell_info_update()
> for each parsed cells.

TBH, This is an over kill.

In nvmem provider driver probe you can parse the tlv data and update the 
dt nodes before nvmem register.

rest of the code should just work as it is.

--srini


> 
