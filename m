Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D465E6C7A24
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 09:45:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230372AbjCXIpP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 04:45:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230038AbjCXIpO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 04:45:14 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45AFD3C0B
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 01:45:04 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id ek18so4904948edb.6
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 01:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679647503;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=830hBtIPsZaeejiwnNIQvsLJ3vvq2qEon6P9AOEFn4I=;
        b=AOKInVUun5QYR497uTcPeRp/ixm/Sle7Ro29uAQcy/xVnVjA5fV7YjGpBCZttauwS3
         ScJJCP82cv86GIzKoCjV5PwvROWV3SyUZUYOqbZhTls4bsexYOjDoonEFEb+5ab3vINX
         qJRmuC4mbXaLzqv1SyWESzweDiDQqk3aNigYiO3PWSkD9d+rXtey6HThFBnXImPWaWZK
         iUH+/qroTI5n8od+9xVZPXWF/ZksTQQc31r2LgN2IuEOnUwY5b+WJhrBryfrcJ2JkWYH
         JI9s4COidClnimE4fa3GdzgVCRsboVSY0luyY0vpX9V4Zg7qE9sy+52UxLo0qj3vjUHG
         VZkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679647503;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=830hBtIPsZaeejiwnNIQvsLJ3vvq2qEon6P9AOEFn4I=;
        b=pSwHpVtat1t5jiSQleiR9z2ixiSe751ad1ifsLnGbwg28CRfvtxyH4/aOMRbuU4yg3
         Gly9yWbXDNwCZJ3uSriO06vTnWZBycxXkKzWBV1ji2pz3Gu1SnbdQcS3IoyTuI2+Bl7m
         NsZnm9MxXeYNOOZqiPG4yrqFusjb3INCsOLwLJkAJhtIZZUUGvLj3yyitdrND2MKjwbu
         yXqg6WDrSOSPOjYjW+6HoRFEENKjNiRsUU8s0O2t6F3xs2kUe/HNphHEuVKV/mxWLfMz
         hf+lGVs+sK1YmkKIz2/1F36t5H9K8BgogvCM69sKk8DZeo0ghAehE0lchRaMQg3BAgQn
         3s4w==
X-Gm-Message-State: AAQBX9e933tWvC2sqCnqIKnUDO1IsZtgPDgvqyCrEbi1O6nbYOVXAcJ/
        t/kbRD4PXcnLm7UL/Rphn2LWWg==
X-Google-Smtp-Source: AK7set8QCHutUqCqZsOaNxZVbY+CicV98oBDz1isauF4xge+n0hMx4x94dRl81FLOENFriPFUeLMFA==
X-Received: by 2002:a17:906:dc94:b0:930:ba36:2211 with SMTP id cs20-20020a170906dc9400b00930ba362211mr2590037ejc.0.1679647502848;
        Fri, 24 Mar 2023 01:45:02 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ce50:243f:54cc:5373? ([2a02:810d:15c0:828:ce50:243f:54cc:5373])
        by smtp.gmail.com with ESMTPSA id k10-20020a1709067aca00b009294524ac21sm9906814ejo.60.2023.03.24.01.45.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Mar 2023 01:45:02 -0700 (PDT)
Message-ID: <323401ed-3549-f45d-f9c7-c8f9f2d5c381@linaro.org>
Date:   Fri, 24 Mar 2023 09:45:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] ASoC: dt-bindings: alc5632: Convert to dtschema
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>
Cc:     Saalim Quadri <danascape@gmail.com>, alsa-devel@alsa-project.org,
        daniel.baluta@nxp.com, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lgirdwood@gmail.com,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org
References: <1a2e0f7a-771f-5590-fc54-b9dbf059a925@linaro.org>
 <20230323171111.17393-1-danascape@gmail.com>
 <5e0ca610-70b2-90fd-45b8-6b0da089eb4c@linaro.org>
 <4a553ab8-4cd3-4ce4-8225-20f43b70a5be@sirena.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4a553ab8-4cd3-4ce4-8225-20f43b70a5be@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/03/2023 20:17, Mark Brown wrote:
> On Thu, Mar 23, 2023 at 08:08:33PM +0100, Krzysztof Kozlowski wrote:
>> On 23/03/2023 18:11, Saalim Quadri wrote:
> 
>>> I have a doubt, for the maintainers list, is it required to include all the names of the subsystem maintainer
>>> in the yaml too? As for this codec, there are 4, shall I include the names of all of them or the one to whom the
> 
>> Depends, choose one or two names, maybe the most active.
> 
> Note that the binding should have maintainers for the specific binding,
> not the kernel subsystem.

Yes. That's what I also said in the beginning, but for some reason
Saalim cut this part... and re-added subsystem maintainers.

Best regards,
Krzysztof

