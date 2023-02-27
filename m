Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A48DA6A46F1
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 17:27:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230167AbjB0Q1j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 11:27:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230122AbjB0Q1h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 11:27:37 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CF00233EF
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 08:27:35 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id j19-20020a05600c1c1300b003e9b564fae9so7622190wms.2
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 08:27:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rj0VWwIWFuuCsoEkJKOvHSl7tIvObaJFEfzAltlEVyw=;
        b=btmsb6gS/W4PSY60FfIaUUgVMyyNzgJEjDtakFKugft0zwwc8mAXAmK4q2ztZOo22k
         pCPBmLWt+BjhbLGHCQMPEyT8qLIrD5sZM0nhBEiaNGIDpUaD9PbAk5XQgRYkBdu0Lrsg
         DkkEsm1fZvsL/yAINlACpI+ov+ZXfzCnxE6UKyU6kSKjEmTmJhdlKlctF4Yym/ar0r4A
         +dtPXYFnTSHCnDCND2aDw/8FwkNtMLYlEVK5dn1r8HE5eSqNIb9GWU0/pP0uEHI1IlEp
         r1H4V660DFOXGehRtKNgZFrRe91pBx/XVppUrGM9iJ+6JnRrnB547x+Ao1VAjzIMM1Le
         MdPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rj0VWwIWFuuCsoEkJKOvHSl7tIvObaJFEfzAltlEVyw=;
        b=3YYLLcTCFh0qMa91K8CvyjeMrpLNKZmMZWm1DV+xaMFPjnVV9bwOnu/9gl25zB7B1L
         +Hx0jc4UhQrzR7lfiyGcbAoyNNJwZ4afVvrG0aNhCQeHtefrcK7xEbq4sm4zHziYm7Qz
         wO67U0pqXqp8dVM8trUhBkydCbHWh1yZ2Ij3eemAEKg1nspOnKo4v4kVwS901VMrZQPy
         dg0rO5g/FR3DY15lBH0lV3MjqS/99QqvM/2iLRRR6nnY/u9oHGVi26G6E4zFbJqLVsDF
         hqsJ8ku+/357x0zmP1MW4B6L+PCgEYGN8emwE6KX2q2u+6teCuuUJSKawLfuTGDcMK4a
         w/aQ==
X-Gm-Message-State: AO0yUKUpLybx29CYWwj+QoxqP7IYwUj+ftFrkoY/83uSMSrzTPB16UPB
        Th0drLnURuT8cySDjfJ3FFtlAdi7BoAUXCgt
X-Google-Smtp-Source: AK7set+J5U1JLB8yTSnT1SdzvxFE5Yzu9pX7LUR9nlUeRUG55vlkFjqY2LLXIr1AhyHMk1SNZRDpqg==
X-Received: by 2002:a05:600c:1c85:b0:3ea:f73e:9d8d with SMTP id k5-20020a05600c1c8500b003eaf73e9d8dmr10545842wms.32.1677515253872;
        Mon, 27 Feb 2023 08:27:33 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bi13-20020a05600c3d8d00b003e204fdb160sm13179489wmb.3.2023.02.27.08.27.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 08:27:33 -0800 (PST)
Message-ID: <f454d26f-b598-9d22-2abf-ea64f76504ba@linaro.org>
Date:   Mon, 27 Feb 2023 17:27:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Any more work on "regulator: tps65090: Convert to json-schema"?
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <e48669a4-8fd1-dc0b-1446-7fbe1266c32c@linaro.org>
 <Y/zG77uzHkyHBrhU@orome>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y/zG77uzHkyHBrhU@orome>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/02/2023 16:06, Thierry Reding wrote:
> On Sat, Feb 25, 2023 at 04:14:09PM +0100, Krzysztof Kozlowski wrote:
>> Hi Thierry,
>>
>> Long time ago you sent:
>> https://lore.kernel.org/all/20211217170507.2843568-6-thierry.reding@gmail.com/
>>
>> Any plans to resubmit it?
> 
> It's in my bucket of things to circle back to eventually. I've got about
> 60 or so other conversions in various stages of review, but things have
> been going slower than I expected.
> 
> I can upload a branch somewhere with what I have if you want to take a
> stab at submitting those. I don't expect to get back to these within the
> next two to three weeks.

If you plan to get back to this, then no need for the branch. I just
wanted to be sure if this is not abandoned entirely.

Best regards,
Krzysztof

