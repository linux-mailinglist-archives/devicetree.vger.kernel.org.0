Return-Path: <devicetree+bounces-1075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A22657A4927
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 14:05:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C45D281752
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 12:05:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67A841CAA7;
	Mon, 18 Sep 2023 12:05:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E7CEED0
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 12:05:16 +0000 (UTC)
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 738ADCD5
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:03:53 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b9c907bc68so74038551fa.2
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695038632; x=1695643432; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J9ogOyEVxhw+nJiEoimMLZtN9S82zPQWJ0XXUiWbUVk=;
        b=G5s4rNEAMgVwENUq/aUJM26G0dGclr155UHwhkZP95mW1aL7LquZq1BgcGY37EVPwK
         hCP7CBBoV2ypaj98d7NV+fS3WXNFhOxl5nTaXMhopONO0h8qJVu1S6qlE9UAXpY5uMas
         iDAY2bE5YB+9s0rjOoLcvz+lEqnaKnYFAoybJKaPQbBw/kSwZHem4BjHqTtrDyBMgwNf
         UOdE0Ycs8SNeIG+ZgEelAuKKj+jzMFKmjgDMwAGBuWx1wAGSolRtNx8mnCT06Q9GpTmK
         2ATJ/9JmoN1O7Yjc3MFoACiGTYfSyMjADcQf8DAfieRBXwziePBaysgDYSTjnH7VSneg
         RQbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695038632; x=1695643432;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J9ogOyEVxhw+nJiEoimMLZtN9S82zPQWJ0XXUiWbUVk=;
        b=Bfz8EnwgMQrE6146dfhbxizGf4PUU/rjVVnf2po89EPuQ/tbUdaQx5yIzNxEyesloM
         pdVeKjZaRB6yT9V7y4xcSPUt/EvOjFcsow91pRHUjPyZWP7U1Dr9UgVhLKMWVMc8+spq
         Ojc1V1IVhW83VfFrdJ2oJDKueaR8fzxyJOOVC+wJ8fHsfmUpn9xjHvq2lbX1hqH5Zusr
         ts3CsLB4394PJqgP6/w0Tps22JmUqIdqSDf/hPhSnv/QYou2KDujaYBHeaJx/QP1kArI
         o9u2NLhZpjzXZiq8QcK2tOrDP7VN8hlrJTebF/a2433uQG8oXbjM3l2Xma442liavMxu
         PeeQ==
X-Gm-Message-State: AOJu0Yz2XFx/owj3oWjlMfAQ9M5eNORUXajYM7/L2KviuIK523GKJ8R5
	gFR14zVmWJ/ZqgBlwv4LLJ8t+Q==
X-Google-Smtp-Source: AGHT+IGlofin1m1lZWE3XH+PKy2SllTLiGxWfOQ5HFjbITsQoDBTeyqLNxo2T2yz+BV3NbddORA7Xw==
X-Received: by 2002:a2e:9b4c:0:b0:2bd:1732:c10b with SMTP id o12-20020a2e9b4c000000b002bd1732c10bmr7708798ljj.34.1695038631567;
        Mon, 18 Sep 2023 05:03:51 -0700 (PDT)
Received: from [172.25.80.114] ([217.67.225.27])
        by smtp.gmail.com with ESMTPSA id c6-20020a17090620c600b0099bcf563fe6sm6370435ejc.223.2023.09.18.05.03.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 05:03:51 -0700 (PDT)
Message-ID: <fc490ab8-dd72-e167-113e-c9d09b19c536@linaro.org>
Date: Mon, 18 Sep 2023 14:03:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] dt-bindings: Add Google Widevine initialization
 parameters
Content-Language: en-US
To: Yi Chou <yich@chromium.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, devicetree-spec@vger.kernel.org,
 yich@google.com, jens.wiklander@linaro.org, chenyian@google.com,
 jkardatzke@google.com, jwerner@chromium.org, sjg@chromium.org
References: <20230908101539.2622864-1-yich@google.com>
 <2ec056f3-e8a8-c5f3-b132-4b9d2beb616e@linaro.org>
 <CABOkjxJpcOUyyh9vjRuqrhmd=EdQdnyyuBX-++0R+UdENfqw9A@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABOkjxJpcOUyyh9vjRuqrhmd=EdQdnyyuBX-++0R+UdENfqw9A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 18/09/2023 06:20, Yi Chou wrote:
> On Sun, Sep 17, 2023 at 4:40 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 08/09/2023 12:15, Yi Chou wrote:
>>> The necessary fields to initialize the widevine related functions in
>>> OP-TEE.
>>>
>>> Signed-off-by: Yi Chou <yich@google.com>
>>> Reviewed-by: Simon Glass <sjg@chromium.org>
>>> ---
>>>  .../bindings/options/google,widevine.yaml     | 124 ++++++++++++++++++
>>>  1 file changed, 124 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/options/google,widevine.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/options/google,widevine.yaml b/Documentation/devicetree/bindings/options/google,widevine.yaml
>>> new file mode 100644
>>> index 0000000000000..bf2b834cb1454
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/options/google,widevine.yaml
>>
>> There is no such hardware as "options". What is this supposed to be for?
>> firmware?
> 
> These DT fields would not be consumed by the OS.
> https://www.spinics.net/lists/devicetree-spec/msg01195.html
> The previous discussion tended to use the "options" node.
> Do we have any better place for these widevine related fields?

I'll let Rob comment on this in such case.

> 
>>
>>> @@ -0,0 +1,124 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/options/google,widevine.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Google Widevine initialization parameters.
>>
>> This is a title, drop full stop.
> 
> Got it, will be fixed in the next patch.
> 
>>
>>> +
>>> +maintainers:
>>> +  - Jeffrey Kardatzke <jkardatzke@chromium.org>
>>> +  - Yi Chou <yich@chromium.org>
>>> +
>>> +description:
>>> +  The necessary fields to initialize the widevine related functions in
>>> +  OP-TEE. This node does not represent a real device, but serves as a
>>> +  place for passing data between firmware and OP-TEE.
>>> +  The public fields (e.g. tpm-auth-public-key & root-of-trust-cert) can
>>> +  be ignored because it's safe to pass the public information with the
>>> +  other methods(e.g. userland OP-TEE plugins).
>>
>> Then why isn't this a property of optee node?
> 
> Are you talking about the /firmware/optee node?
> If I understand correctly, that node was talking about how the kernel
> communicates with the OP-TEE.
> But what we are doing here is passing some secrets from trusted
> firmware into OP-TEE, and the data would not go through the linux
> kernel.
> I'm not sure if it is a good idea to mix two different purpose fields
> in the same node...
> 
>>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: google,widevine
>>
>> From the description I have no clue what is "widevine". The more
>> surprising is to see it as "not hardware" but having its node and
>> compatible, like it was a hardware node.
> 
> We already have a "chosen" node that is "not hardware" in the DT.
> Should we just remove the compatible field from this node?
> 
> BTW, Widevine is a digital rights management (DRM) system to make sure
> the video stream can only be decoded on the valid devices.

Then describe it in the description.

Best regards,
Krzysztof


