Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B43296775F2
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 09:00:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230130AbjAWIAh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 03:00:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230056AbjAWIAg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 03:00:36 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B764C113FC
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 00:00:34 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id z5so9933941wrt.6
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 00:00:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9XfDe0KvlPaDfqdTCrWx4HBpQ6u6yaZq7j0EsKX6PaM=;
        b=Es1KKkOOhIw7MBtyX4yOiBUl0lgjwiFdOWuCzmSGZPWxJGv0f652h66q7HG/Z3sxdQ
         Y0Jg6VV3/kwFZEA+3N6TQv7MisCDsI9xtMegFc5eovHxra/+nsybPTL1WmaNSw7qsOP3
         8TxngbJqN+Vgu8jE2DA9tHM5wbD5pK8l52QJJI4Xz0YljXgFFi1GB9pGU+or/qE7jWM6
         v17MgFKBYdwXlqLyxtbUfbTMcQO2m2nCx4J3XHYX2qj/t+4piwLzMsL+4MMJV6gj80TG
         CN0UvbDSZoltHBp5VyW1IIAHAUWnDzHRh0fMMkMdl+HTMmvna/TkXUfMSkM95u49vMap
         hjww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9XfDe0KvlPaDfqdTCrWx4HBpQ6u6yaZq7j0EsKX6PaM=;
        b=LjQ0gLQDN24SAuUaiCqSS//euXoBhJYd5OszTgt6OJo/oqEW+u4QJt+qK+JAQwUOOs
         +OnI0m7H7N6T5vdpzy/x1Uf/dKxfZ9yS7H/o7/cF2grU+kMsvHPSodRK0zI5yrSEitk+
         jGnJamOrMsgSWKQjLJ1nFpXUJAm7hXEdNmCnGwc+skVKdKGK7Eg2cjbgA5FMyDnIuVa8
         gsWEVFI99UC6Uo+AINTRLcqcXMIihSuqLLYExzPTRxKjXIU6T2hbwwl7CP6iiIeGiApq
         aB/757hjr0f6KwIPowsTA9SPVb/+llyBtS8nPo8LLy7nnUsDilFeMzV2IyOa+aVqoNJX
         qkoA==
X-Gm-Message-State: AFqh2kr2HrDp3RS3+1iYRm2qBYyap1uvd/WDQ1U5IiGaZgeTII4ZsCTG
        4GV+3IV+8kOFCRSBd4ByJeEgGA==
X-Google-Smtp-Source: AMrXdXtQBN3Ivmt+/BJlsJSHYy4gHJlvR8j7i6FqpAoVw0oW7sXBlScadsSrUmOQ1B85i1mUJBEn5A==
X-Received: by 2002:adf:f605:0:b0:2bd:be31:cd77 with SMTP id t5-20020adff605000000b002bdbe31cd77mr19027826wrp.30.1674460833246;
        Mon, 23 Jan 2023 00:00:33 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y1-20020a5d4701000000b002423edd7e50sm3848037wrq.32.2023.01.23.00.00.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 00:00:32 -0800 (PST)
Message-ID: <be218243-a2e7-d9d0-bd7f-ba3c18846f75@linaro.org>
Date:   Mon, 23 Jan 2023 09:00:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH RESEND v10 4/5] dt-bindings: media: i2c: imx334 add new
 link_freq
Content-Language: en-US
To:     Shravan.Chippa@microchip.com, paul.j.murphy@intel.com,
        daniele.alessandrelli@intel.com, mchehab@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        sakari.ailus@iki.fi
References: <20230121033713.3535351-1-shravan.chippa@microchip.com>
 <20230121033713.3535351-5-shravan.chippa@microchip.com>
 <ec897c39-b6df-82fc-bd9e-84c6213acb1b@linaro.org>
 <PH0PR11MB5611EE968D282A9F998A2F8C81C89@PH0PR11MB5611.namprd11.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <PH0PR11MB5611EE968D282A9F998A2F8C81C89@PH0PR11MB5611.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/01/2023 07:28, Shravan.Chippa@microchip.com wrote:
> Hi,
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: 22 January 2023 07:37 PM
>> To: shravan Chippa - I35088 <Shravan.Chippa@microchip.com>;
>> paul.j.murphy@intel.com; daniele.alessandrelli@intel.com;
>> mchehab@kernel.org; krzysztof.kozlowski+dt@linaro.org;
>> shawnguo@kernel.org; s.hauer@pengutronix.de
>> Cc: festevam@gmail.com; kernel@pengutronix.de; linux-imx@nxp.com;
>> linux-media@vger.kernel.org; linux-kernel@vger.kernel.org;
>> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; Sakari
>> Ailus <sakari.ailus@iki.fi>
>> Subject: Re: [PATCH RESEND v10 4/5] dt-bindings: media: i2c: imx334 add
>> new link_freq
>>
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
>> content is safe
>>
>> On 21/01/2023 04:37, shravan kumar wrote:
>>> From: Shravan Chippa <shravan.chippa@microchip.com>
>>>
>>> Add new supported link frequency in dt example.
>>
>> You got a comment to fix you CC list. Why not follow my feedback?
> 
> Based on your previous comment I ran the below script, rebased to the latest code and based on that output I have added a CC list
> But I missed adding one name to the to-list which is  "Rob Herring <robh+dt@kernel.org>", I will add it.

Which is quite important...

Best regards,
Krzysztof

