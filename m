Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5481B579351
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 08:36:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236607AbiGSGg1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 02:36:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234732AbiGSGg1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 02:36:27 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0509823BEF
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 23:36:26 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id w17so16260006ljh.6
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 23:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=oH6xIk7n40HkfpSlDBTAMC/flj7KLNtvD4vWnAHzHHM=;
        b=qNE6YiojwJ7KP865xIlA0HEgkSAYZ/PqMev6hDzqikisbpVL8XG+tpf10ZgLvcYIRF
         5CsE7EMEQy2jqEf+28ZxXMNnTt4otLBjXSlWLvPOHqjbBU1VFNlQbyck11uEoZnoQDIU
         qXL5PDUc9xkuHAK5PaOXszU5hcWfidLfu4XNEomKq+fmJmgz3e48tDTKq0qqqpSaJmLP
         4tPANY9GYanKTdqdukyoARxcCWrnezU/UOH51BvWgTM/ezwFAFUD4cPAkC6nBstlTkxs
         MjtbWYN+f7LlyVx+pq/D1nG3F5baZAw5v2ypx+YqEqeJ5VIzzcrHSmnzfFKw7awhzc8H
         vSLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=oH6xIk7n40HkfpSlDBTAMC/flj7KLNtvD4vWnAHzHHM=;
        b=hpfwnLYwVZL7t/hQVdmXj1IYryWeIxhAh6m0ILSTBSgPyo7bsTj3ZlCziKTH+F3cuw
         1q5lMGstIeZRui64rpXP83UhZ1jcG8gUCrf9CjVYxn8wBxETcLcMmDfmtKxZjwynKbuD
         oDjnlLlwUc6etOsJYUBpq4m1cBaY1/Nvz3A+fXHVs31SFmzvwO6edULD4vY49PtfaM7J
         3D7n7Cvk1ua93+0/OFRi7FjOcqyIYhL08r59IELL1Y5yfjG6lBmS/0q3AjatfP+NAPOY
         HH0Lk5i1vleIi3RhPnudlqZh4j6LuHDrV/MA4QOnXovRaJcncrcyaPOo6ncl1wXpDK25
         bkXQ==
X-Gm-Message-State: AJIora8NQUQ2TYIYSdpxcfH6x+VqtV9SSg6I+5Li12Pq6JT9SIXXlvUU
        upBu/+28yciFHpW/GaF9SUNIHQ==
X-Google-Smtp-Source: AGRyM1ugM59OS7PHqUzrxBPVEmSC/ou9uEhCbIHSzGX9uUBj5ehYVrURUBwTNdYx0KmhcBklx9kbGw==
X-Received: by 2002:a05:651c:2c1:b0:25d:79be:766a with SMTP id f1-20020a05651c02c100b0025d79be766amr13788973ljo.225.1658212584370;
        Mon, 18 Jul 2022 23:36:24 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id bg24-20020a05651c0b9800b0025d476dc71csm2394780ljb.106.2022.07.18.23.36.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jul 2022 23:36:23 -0700 (PDT)
Message-ID: <26c7b6e9-ee4b-9112-d975-2523940c57c8@linaro.org>
Date:   Tue, 19 Jul 2022 08:36:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [EXT] Re: [PATCH RESEND v3 3/3] arm64: dts: imx: add imx8dxl
 support
Content-Language: en-US
To:     Shenwei Wang <shenwei.wang@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>
References: <20220715231241.346778-1-shenwei.wang@nxp.com>
 <20220715231241.346778-4-shenwei.wang@nxp.com>
 <bdaa01d4-4d0d-5c22-4918-637225177140@linaro.org>
 <AM9PR04MB8274425DC0C302488354F31C898C9@AM9PR04MB8274.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <AM9PR04MB8274425DC0C302488354F31C898C9@AM9PR04MB8274.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/07/2022 20:50, Shenwei Wang wrote:
> Hi Krzysztof,
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Monday, July 18, 2022 8:01 AM
>> To: Shenwei Wang <shenwei.wang@nxp.com>; Rob Herring
>> <robh+dt@kernel.org>; Krzysztof Kozlowski
>> <krzysztof.kozlowski+dt@linaro.org>; Shawn Guo <shawnguo@kernel.org>;
>> Sascha Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
>> <kernel@pengutronix.de>; Peng Fan <peng.fan@nxp.com>
>> Cc: devicetree@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
>> Subject: [EXT] Re: [PATCH RESEND v3 3/3] arm64: dts: imx: add imx8dxl support
>>
>> Caution: EXT Email
>>
>> On 16/07/2022 01:12, Shenwei Wang wrote:
>>> i.MX8DXL is a device targeting the automotive and industrial market
>>> segments. The chip is designed to achieve both high performance and
>>> low power consumption. It has a dual (2x) Cortex-A35 processor.
>>>
>>> This patch adds the imx8dxl soc and EVK board support.
>>
>> I saw this patch and I was already commenting it:
>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kern
>> el.org%2Fall%2F20220404134609.2676793-2-
>> abel.vesa%40nxp.com%2F&amp;data=05%7C01%7Cshenwei.wang%40nxp.com
>> %7C235450e576d44c030c1e08da68bd88de%7C686ea1d3bc2b4c6fa92cd99c5c3
>> 01635%7C0%7C0%7C637937460494602259%7CUnknown%7CTWFpbGZsb3d8ey
>> JWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C
>> 3000%7C%7C%7C&amp;sdata=ZiDgTTZbcifNMBjDHTCdMKC1hgmf7BGzuvCJe%2
>> FyagzQ%3D&amp;reserved=0
>>
>> Doing things twice, reviewing twice is waste of time. I actually spotted this
>> duplication after I perform a review, but this patch should be abandoned and
>> Abel's patches should rather go.
> 
> I am not sure if Abel is still working on this task. The goal is to get the imx8dxl supported by upstreaming kernel. As both patches were picked up from the company internal repo and modified for upstreaming requirements, I don't mind whose patches to get included.  Please let me know which one is easy for you to go ahead, and I can continue with Abel's patch if needed.

I just don't see the point for doing the review second time. Why sending
poor code based on internal repo instead of continuing something which
got review?

(...)

>>> +     xtal24m: clock-xtal24m {
>>> +             compatible = "fixed-clock";
>>> +             #clock-cells = <0>;
>>> +             clock-frequency = <24000000>;
>>
>>
>> Didn't you ignore (again) comments?
> 
> The SoC requires two Crystal clock inputs, one is 24MHz and the other is 32KHz. The board design doesn't have an option to change the values. That's why we keep the nodes here.

It's the same everywhere, nothing new here. Where is the clock? On the
board. Not in the Soc. For convenience clock could be here, but at least
the frequency by convention is put to the board.

Best regards,
Krzysztof
