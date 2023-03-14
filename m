Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E90E6B9CC7
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 18:16:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230259AbjCNRQP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 13:16:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230320AbjCNRQN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 13:16:13 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82F88637E6
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 10:16:12 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id p16so10872365wmq.5
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 10:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678814171;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wKrwhlrYcbt5wYWoWoOC0ytk+HMmM8aatEJeO85+KUc=;
        b=hglOoeG2PRq1byJ9D8vO1Yzm7mUKk7oWoDNDBpqGKIuUYQS5WM5W8mMYynpwj6bB1Y
         xBPz72U/OSFhlRsVq+qFAgdXaE5ISNey4StUHBwELK28eK337Pdd7KeFln2javYVzhCB
         Ze9kJcgyT/Om4gR1rj48EAGn44GjKahEHt++IlxRmi4sqil5WD7NMAz9qOASLHo3yBhE
         52+K1/CN+1Xx/+S+cQ40z9iQMxVtouxPulTMYq+FtlfY9PVO0QpVRkQO4EFSLo8VIp69
         o6POca7TAOjbKdOPPj/Pd46MEnsmSBROc34U66A+zQGJtZ2y9AYX25w1MyfkuQCZ3BnM
         eALg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678814171;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wKrwhlrYcbt5wYWoWoOC0ytk+HMmM8aatEJeO85+KUc=;
        b=gbxgSZdqJRC0BGg0N1e/m2/y46H9xDDILHQobPG55mrPmvbeMwqYuAhZNqaShDZRVn
         6oImKnjQ/j80rtfSoARibVameJzMaDfTC8Hr/e396vvqVZYapGkRFz1XTgIvgUzd3QGJ
         01cetHxFRlZ8Y4G5jcXi+ytaQBkFTXFazP6kuvq3v0D8PB524FI/lTtbofZo0UbYIYdQ
         FwXMz6zaOrkQ63mVCxdI72G1LIcoMKAWHQtPrhLXMhJRPkH8GWHZrAtKJeiVCjs/kN2I
         DcGQTSkTSOsH3N9iXEeAh92aa9LogMCncKkC94e6O+8Pngsos5Z0DdeU++HNmIiKxEbA
         X/XA==
X-Gm-Message-State: AO0yUKURtLKAZHRCBO8sERJan3jBQ110orYlxXjzLPwRfE6KgfbSk+Kd
        yi5g/2/CpaKxJ+vAUsBaTL01bb56oOI8YeJc
X-Google-Smtp-Source: AK7set+mlgtVkoyXfFndrLTocNzTcCOdXFVrwjlyNLRe5OTpExm/5FFvGDktDfQy6c6KPQmTI7FmMw==
X-Received: by 2002:a05:600c:1c17:b0:3ed:2f7b:daf with SMTP id j23-20020a05600c1c1700b003ed2f7b0dafmr1248651wms.10.1678814170785;
        Tue, 14 Mar 2023 10:16:10 -0700 (PDT)
Received: from [10.111.61.33] ([146.70.189.10])
        by smtp.gmail.com with ESMTPSA id s3-20020a1cf203000000b003ed1ff06faasm3243187wmc.19.2023.03.14.10.16.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 10:16:10 -0700 (PDT)
Message-ID: <5aec7bcf-fd1a-445c-bbaa-c93f5ebcb227@gmail.com>
Date:   Tue, 14 Mar 2023 18:16:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH] feat: Add 'hold-in-reset-in-suspend' property to goodix
 touchscreen binding
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org
References: <20230311134655.486973-1-jajadekroon@gmail.com>
 <167880254118.25298.6305780643962543224.robh@kernel.org>
From:   Jan Jasper de Kroon <jajadekroon@gmail.com>
In-Reply-To: <167880254118.25298.6305780643962543224.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Op 14-03-2023 om 15:10 schreef Rob Herring:
> On Sat, 11 Mar 2023 14:46:55 +0100, Jan Jasper de Kroon wrote:
>> This patch adds a new property, 'hold-in-reset-in-suspend', to the Goodix touchscreen
>> device tree binding. When set to true, the touchscreen controller will be held in
>> reset mode during system suspend, reducing power consumption. The property is optional
>> and defaults to false if not present.
>>
>> I am submitting this patch to the Device Tree mailing list to add a new property to
>> the Goodix touchscreen device tree binding. This patch supplements a related patch
>> sent to the linux-input mailing list, which updates the Goodix touchscreen driver to
>> use this new property.
>> The linux-input patch can be found at:
>> https://lore.kernel.org/all/20230311131534.484700-1-jajadekroon@gmail.com/
>>
>> Signed-off-by: Jan Jasper de Kroon <jajadekroon@gmail.com>
>> ---
>>   .../devicetree/bindings/input/touchscreen/goodix.yaml    | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> Error: Documentation/devicetree/bindings/input/touchscreen/goodix.example.dts:31.41-42 syntax error
> FATAL ERROR: Unable to parse input tree
> make[1]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/input/touchscreen/goodix.example.dtb] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1512: dt_binding_check] Error 2
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230311134655.486973-1-jajadekroon@gmail.com
>
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
>
Hello Rob,

Thank you for your time checking out the patch.
In the meantime I already had a new patch up.
Accidentally I send it as a follow-up comment to Krzysztof's earlier 
comment.
I can see that your bot also already tried it:
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230312183106.551840-1-jajadekroon@gmail.com/
Do I need to resend the patch as a follow-up to my main patchset?
I'm quite new to the LKML, so I'm still getting the hang of it and am 
still a bit clumsy.

Kind Regards

Jasper
