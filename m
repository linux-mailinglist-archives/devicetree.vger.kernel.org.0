Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E297F67AEFB
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 10:56:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235198AbjAYJ4U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 04:56:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234264AbjAYJ4U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 04:56:20 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1200F35B6
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 01:56:19 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id j17so13332422wms.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 01:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jjtLqh6CEfr4H89H+JyTuRpUhaPVNfu/MoBCL57iE8g=;
        b=ODOhudb7YsmvAXpdn+8pa/MNOwv5DzADahJDMPProUJMhx1ol0bho1WnV9L0b6k92z
         krCqkWYW2KLb/0VzSEziwCXotCXFEoV6lTyRqX89u7FfzPWu/cnZ2hO319xZ64VUPbvR
         qbNuNwd4wmhThS75a0oq1HrGyHmzlM8UFQPt8p6Md8RQDdiyegFanW87dq5eDRtrEFU8
         tZqmFdkErGSz1UK4klDRkNF6z+mEzvba1l+6TlHgZLCHBfZfQvsyBoGV7IMZmEmfj4lV
         18fq48rpuw66MdMUwCJjvUPj8Iv2KCetGNHyB3yAqS8KM4XfA94pSP2rIXz/wjlg3kfO
         5CUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jjtLqh6CEfr4H89H+JyTuRpUhaPVNfu/MoBCL57iE8g=;
        b=cUkjnGZUewvjv0LKGc3WW6Z0O3gr6IajDtKY3+H6c1BkQGPP7BOxFxzqSt7czSHzQV
         SXfEdBLGmbXeSLe1WKrNShEVIE+9OMAvUofKVfCVfRrjsjpq2Af9D6Hbc52mr2lwa+Ie
         rv+LHe0phtjm+rD3wrHbgt1hv4b5K3ylrr8eAc7t4Gd1KMu1cSmeRWtSS3xYPs+5e5Ad
         mKMoVWyZeFCbocubktFr98rHWDinK7FnkhQRqmZWWtO+hAxCQT30hZd83zo9hqlAsC78
         auy+KmUwoyZa4f1BJBzM3EBN4YIlX9pu25mV7TRTZpgl3l+x3SJRAGWXELBj8Q43EWUj
         YO9w==
X-Gm-Message-State: AFqh2kpWAdenA3pxYlJLVqdbI2io8gyynNxXmUK3AImysNv5YrOMsBJC
        bXpb5jSrQ+Yw5iCxQNW7yogh9g==
X-Google-Smtp-Source: AMrXdXvuxRvcIjjVd2E4vmsSXXWrrMRWtGotsY9ODrzQowAqFDQIU1Hx8hv4NITTFxByu8Fu/SDf4Q==
X-Received: by 2002:a05:600c:35cf:b0:3d3:49db:d95 with SMTP id r15-20020a05600c35cf00b003d349db0d95mr30676547wmq.37.1674640577575;
        Wed, 25 Jan 2023 01:56:17 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id e22-20020a05600c439600b003cffd3c3d6csm1322464wmn.12.2023.01.25.01.56.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jan 2023 01:56:17 -0800 (PST)
Message-ID: <c1793a63-5691-a705-b2f2-4267c53934fe@linaro.org>
Date:   Wed, 25 Jan 2023 10:56:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 09/15] dt-bindings: serial: add support for Ambarella
Content-Language: en-US
To:     Li Chen <me@linux.beauty>
Cc:     Li Chen <lchen@ambarella.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "moderated list:ARM/Ambarella SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20230123073305.149940-1-lchen@ambarella.com>
 <20230123073305.149940-10-lchen@ambarella.com>
 <bdff58bf-1a07-ab78-a782-d58d8c644e00@linaro.org>
 <87wn5bgcrv.wl-me@linux.beauty>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <87wn5bgcrv.wl-me@linux.beauty>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/01/2023 10:54, Li Chen wrote:
> 
> Hi Krzysztof Kozlowski,
> 
> Sorry for my late reply.
> 
> On Mon, 23 Jan 2023 16:11:52 +0800,
> Krzysztof Kozlowski wrote:
>>
>> On 23/01/2023 08:32, Li Chen wrote:
>>> Add compatible for Ambarella.
>>>
>>> Signed-off-by: Li Chen <lchen@ambarella.com>
>>> Change-Id: I32513d98f52af0311dfb55dd5c4739a58f6b9fc1
>>> ---
>>>  .../bindings/serial/ambarella_uart.yaml       | 57 +++++++++++++++++++
>>>  MAINTAINERS                                   |  1 +
>>>  2 files changed, 58 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/serial/ambarella_uart.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/serial/ambarella_uart.yaml b/Documentation/devicetree/bindings/serial/ambarella_uart.yaml
>>> new file mode 100644
>>> index 000000000000..238d68078270
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/serial/ambarella_uart.yaml
>>> @@ -0,0 +1,57 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/serial/ambarella_uart.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Ambarella S6LM SoC UART Controller
>>> +
>>> +maintainers:
>>> +  - Li Chen <lchen@ambarella.com>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: ambarella,uart
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  amb,ignore-fe:
>>> +    description: |
>>> +      ignore frame error report for CV2/CV22/CV25/S6LM because it's
>>> +      checked too strict so that normal stop may be treated as frame error.
>>
>> Missing type. I don't understand why this is property of DT.
> 
> Ok, I will add "type: boolean" to it.

I still do not understand why this is a property of DT. You need to
justify it.

Otherwise: No. drop it.

Best regards,
Krzysztof

