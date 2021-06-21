Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F66B3AE7CB
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 13:00:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229663AbhFULC1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 07:02:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbhFULC1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 07:02:27 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0161C061574
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 04:00:12 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id n7so19142452wri.3
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 04:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ih+N9TQGYyDELK9yjlFWYWX1v8tEf8OyKx5HCoKi/3w=;
        b=ihzUh3FA/cs3D07U6RQa7fgnScSYBg43ZQIYSsR94D2hKMRz2Squz+CveurJCunQyA
         Ipki8JNi2053yCoYBbGF0jk2OV9RGQH1PUboVt3jw3tej+ZnLOsnqJ3E7+bDsIjLHS7n
         eqFPD1ZnsWXIkRffQ1eSdJ4Sg0EXw1JFBtyez/f8FjzxA+SgY7DPRSP+kz5hXtE6weJh
         5zPmVGwyHgEkcZOcybVGPp55M4NHQJoYl9q1rizFpxcOKheqB9sbYzEm+emT9LEFIVEF
         6Ca1pXGrWgBYZBKkhyKnxgecBkcvvX3sKWr8kt3dvOkNemADPqMH4jr9V8f3UriED/Nw
         QNPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ih+N9TQGYyDELK9yjlFWYWX1v8tEf8OyKx5HCoKi/3w=;
        b=JS2lnbGspV5EguF9/83LZhoZ/dZj3CFP4mEITT8Az1ljil5eAHJdYNhCu+F4bJJpkw
         r9qY1nG4h2IRdz0ReMrRo/kWDNagcOLiWp80s2mQ4j6bMy+ivdNzUv4EZjyYIvBFKMUW
         Kh7n5qILwk63MNPqgM7J2j4Me4HAXlKAFAGuxKxenkS26yPm0bkM46tgfrJLj7O/Atbg
         t/eGKsmXTtTYRTSrIBqVeHsnzk2zqHnVPB7oF2QvmVGtQCCsfCKbgg8hzWYz7t73AMeo
         Lw9NmWi232FtN7tzdQff48QWtp/EJwgrCA/jt4KLAI/9g9rIN+6Cd5cTlX3YW9kJdADV
         BkrA==
X-Gm-Message-State: AOAM5322pTXzBbJ1dS9luG313exnfi57kUZwNlFsEZ/hnxQm8gI8pLPG
        GiXoSdFpv3bH5cnxUweZ5eKPSw==
X-Google-Smtp-Source: ABdhPJzccO4IO1KTZph6d8IxzP2BYyQ8AHIF2KNVokkSuPmC2BkHJjjCRZWrGN3YgmmnVI+5C6u6yw==
X-Received: by 2002:a5d:6848:: with SMTP id o8mr13385409wrw.352.1624273211294;
        Mon, 21 Jun 2021 04:00:11 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id p2sm5555446wro.16.2021.06.21.04.00.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 04:00:10 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] nvmem: core: introduce cells parser
To:     Vadym Kochan <vadym.kochan@plvision.eu>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Robert Marko <robert.marko@sartura.hr>
References: <20210608190327.22071-1-vadym.kochan@plvision.eu>
 <20210608190327.22071-2-vadym.kochan@plvision.eu>
 <43023500-dd6a-5180-057e-cecc1f1b6500@linaro.org>
 <20210616123356.GA9951@plvision.eu>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <fea907ed-06ce-5c82-667d-d11f3e902616@linaro.org>
Date:   Mon, 21 Jun 2021 12:00:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20210616123356.GA9951@plvision.eu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 16/06/2021 13:33, Vadym Kochan wrote:
>>> diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
>>> index bca671ff4e54..648373ced6d4 100644
>>> --- a/drivers/nvmem/core.c
>>> +++ b/drivers/nvmem/core.c
>>> @@ -39,6 +39,7 @@ struct nvmem_device {
>>>    	nvmem_reg_read_t	reg_read;
>>>    	nvmem_reg_write_t	reg_write;
>>>    	struct gpio_desc	*wp_gpio;
>>> +	struct nvmem_parser_data *parser_data;
>> This should be renamed to nvmem_cell_info_parser or something on those lines
>> to avoid any misunderstanding on what exactly this parser is about.
>>
>> May be can totally avoid this by using parser name only during register.
>>
> I added this to keep parsed cells particulary for this nvmem in case
> same parser is used for several nvmem's and mostly because of using also
> cell lookup info. I will try to also answer your below question why do I need
> lookups ?
> 
> I use of_get_mac_address() func to fetch mac-address from nvmem cell.
> Eventually this func calls of_get_mac_addr_nvmem() which (as I understand it
> correctly) can find cells via DT by parsing "nvmem-cell-names" or via cell lookup
> info of platform_device. I use the 2nd option with the following sample
> solution:
> 
> 	## DT ##
> 	eeprom_at24: at24@56 {
> 		compatible = "atmel,24c32";
> 		nvmem-cell-parser-name = "onie-tlv-cells";
> 		reg = <0x56>;
> 	};
> 
> 	onie_tlv_parser: onie-tlv-cells {
> 		compatible = "nvmem-cell-parser";
> 		status = "okay";
> 
> ---> add ability here to map cell con_id to cell_name ?
> 
> 	};
> 
> 	some_dev_node {
> 		compatible = "xxx";
> 		base-mac-provider = <&onie_tlv_parser>;

Real nvmem provider is eeprom_at24, why do you use onie_tlv_parse as 
your mac provider?
If you use eeprom_at24 then of_get_mac_address() should get mac-address 
directly from cell info.


> 		status = "okay";
> 	};
> 	########
> 
> 	== CODE ==
> 	base_mac_np = of_parse_phandle(np, "base-mac-provider", 0);
> 	ret = of_get_mac_address(base_mac_np, base_mac);
> 	==========
> 
> 
> And it works with this implementation because onie-tlv-cells is
> registered as platform_device which name is the same as parser's name.
> So the really tricky part for me is to make this cells lookup work.

cell lookups are more of intended for board files, adding them in this 
case is really not correct.  The whole purpose of this driver is to 
parse the tlv cell infos into nvmem cell info.


--srini


> 
> Of course would be great if you can point a way/idea to get rid the need of
> lookups.
> 
