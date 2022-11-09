Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F471623005
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 17:19:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229571AbiKIQT1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 11:19:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230073AbiKIQT0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 11:19:26 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 186731741F
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 08:19:25 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id d6so26408089lfs.10
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 08:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+KkuR07AJMIXUSctOiQFf082Ozh58Vdg9BVI/+C5HpA=;
        b=rn3rt+vx8+vvv/E/DOf5smh1Z3TJhJSao0H/YXfcey9VvKYlrfaHOZ8T1Wuv751Mrn
         igWdi5XNauuOsmZb6N60PpN3OQFYrCBynvpIKmTCmoGZNLmWUaGcpr4gfPZg9WbDLNlr
         2fXJI4CCBWH4+LjWxk7kInmS1THqHX8wYdlY1k2SjPutdDndxmIgBIoJTeChEaqnt37v
         7FLRfOnIYWOM3WMCii6C3aQYx3a317XptAWmHsvfYQb7GGo075jP7ifFliVRDuZthMZb
         OV8sR3wdSzwXI+20JwJw9FssG4Si7eqsirtyYi2vSmnXIl7f0iqTPXDTJ3BJjYYaveDo
         GMow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+KkuR07AJMIXUSctOiQFf082Ozh58Vdg9BVI/+C5HpA=;
        b=Z8Gn4Mvb1Tln02XKs9XOpoeuaZ+eYtAUFj7f2pkdF3fjHEhaaFnSOA+uGT4ukNxCPy
         OGXcsdrQ7pyGVr5RrTk5aYrTDgZMcq9oLTXEe4i56ExJ7D4kiekwZnIL98vGnFWFowkb
         j3GKT+1mGGpxSKZaAddbLnnp9iQ2Z8EFYPCO5UBrfsWGx1HuRl1eWrcL0JFA1RPOuaL8
         Z6bRMDHTC/X51KZP1lGXNIgWTdIFkaYV6wCyB8U9WEQEGEaMuIGlt6Ejs7vGLKl/O9aN
         FGaQfrdZHOv+HHMyizXV4uO7FbgQAVNTri8Tz7COSTn5MEQ9FhJUldIsXjKqPAKksBAd
         n5iw==
X-Gm-Message-State: ACrzQf3zmRaIjZqT0Mgcy/IyVoIEcg4TWCkZlmWe6HKioqVeg0QAQtEA
        WmWGqDEOky/YO9n9n9dwkAsz7jTl299TYg==
X-Google-Smtp-Source: AMsMyM7Zs0ed5pkgdbXr7pFhbbDmgkJ2/+JMv0XRB1VDcPgWsgjI1gfRbWFq+F+czOxGW4hxi8iViA==
X-Received: by 2002:ac2:5542:0:b0:4b1:d105:f1a3 with SMTP id l2-20020ac25542000000b004b1d105f1a3mr10044516lfk.72.1668010763385;
        Wed, 09 Nov 2022 08:19:23 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id y27-20020a19641b000000b004a4731f75a5sm2286383lfb.250.2022.11.09.08.19.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 08:19:22 -0800 (PST)
Message-ID: <24ecc077-fc1d-5270-c901-9722ab7b68b1@linaro.org>
Date:   Wed, 9 Nov 2022 17:19:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2] dt-bindings: media: Add Omnivision ov8858 binding
To:     Nicholas Roth <nicholas@rothemail.net>
Cc:     devicetree@vger.kernel.org, mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
References: <c522c639-db0c-c1c4-0281-5dc524a8a86e@linaro.org>
 <6F5319F3-FDB2-405C-99E1-A9EC64264FD6@rothemail.net>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6F5319F3-FDB2-405C-99E1-A9EC64264FD6@rothemail.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/11/2022 16:12, Nicholas Roth wrote:
> Hey,
> 
> I’m doing my best to follow along here. Your feedback didn’t get lost and I tried my best to follow it— I just must not have understood it correctly.
> 
>> 1. There is no driver, no DTS. You received the feedback about it. 
> 
> Driver: I submitted the .c files to linux-media, and as part of the review they asked for me to separately submit device tree bindings (https://patchwork.kernel.org/project/linux-media/patch/20221106171129.166892-2-nicholas@rothemail.net/). Are you saying that the driver and the bindings should be the same commit after all? Are you saying something else? I’m afraid I still don’t understand what you mean by this, but I want to, and I’m trying to.

They come as one patchset. Separate patches, one patchset. Otherwise you
get checkpatch errors, right?

> 
>> 2. Wrong cc list. You were asked to use get_maintainers.pl and still
>> decide not to.
> I included the people from get_maintainers.pl, but it seems like you would like for me to include all entries, including the multiple mailing lists. Do I understand correctly?

Yes. Do not strip some lists based on your preference. Why only some
people should receive this, not everyone involved in the subsystem?


>>
> 
>> How can you test bindings with libcamera?
> I validate the device tree + driver on this setup, but I am happy to drop the comment about validation.

It's not about bindings then.

> 
>>
>> Filename still does not match compatible. ovti,ov8858.yaml
> I was trying to be consistent with ov8856.yaml, but happy to change the file name if that’s the convention. Is there a doc I can read with this information or is it institutional knowledge?

All recent submissions follow this, so the best is to take last commits.

>>
>> The frequency of clock should go via common clock framework - you have
>> get_rate and set_rate. Drop entire property.
> I am trying to be consistent with the ov8856 driver and bindings but would be happy to change. I’m not familiar with that framework though. Is there somewhere I could read about this, including the driver and device-tree changes I need to use this?

This is very difficult to respond. Please use inline comments, I have no
clue which part you are now commenting. This is not mailing list style
response.

>>
>> Which driver? In OpenBSD? Which version of OpenBSD? Drop the sentence.
> Seems like your point here and in the subsequent comments is to avoid implementation specifics. That makes a ton of sense, and I’ll make those changes for v3.
> 
> All of your other comments make sense explicitly and I’ll make these changes. Please help me understand what you mean by (1) and (2), correct me where I’m wrong or misunderstanding you here, and I’ll submit the v3.

Best regards,
Krzysztof

