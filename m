Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0610C6225EF
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 09:56:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229530AbiKII4A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 03:56:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbiKIIz7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 03:55:59 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EE1D10FF2
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 00:55:58 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id r12so24694779lfp.1
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 00:55:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C76Kctge8aQq8VRUDD8UoufAdxuB6bWKDG5PP0hJ4jo=;
        b=mZdGMxJGok8kCbupmA5Awi3p4+deK5ewxUuHRgg6sN++rsKMgGbP/W0VG0SuzDty0O
         dFNQ9Fn65fNGI9iUhV6yXlkBKxM1L6z/4v5SJ2rhG/OgusTARt6z01dVr1SZVeqhQmnQ
         coiesQrEB/mjQjnl7eaCi0fs0zkizZtqAitlsGcSVtwoO4p9ti0B+BdOJEIbi4U/KeSu
         c6G9EkjccWzGUCIYygDvWD09wj8stAAalCJ+VNbsvIecHb5rQdUsar3+qPaFJGz1tkke
         cyD6MUJaTh3DiXC9jBTOQWZ2ba+UpFe8M2/iXKWXuKmgEGUWN35Iv3llLmuhI9apf6Xs
         J2uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C76Kctge8aQq8VRUDD8UoufAdxuB6bWKDG5PP0hJ4jo=;
        b=rL4vWy/OCCbqSwZ2lIvys9asaOCV3URYYQPEy14U9Ure7cQV+V76dy42GWn8evLAhZ
         1zvzS78hZ5Cbih0XSBC1w+2/7XQU+2fTl2bWeTlYLEzB/1hFvCJ+xK0GOPNLJ3K+NaIY
         lnoqOC4Zash0wL5vkoPDFaqJ7LeVo959v0zuQ8IPxq4o6CEiOqdah04m61r3kPXZQrbK
         3qG9vI/aLTcb93fqIZC+9vyPL4+98vck8PspktcZNEvRQ+3EpDAeHqgduU/kn0P2e6zR
         koa70fS+m3pmWoTgbaUtlfzq4/Dibbh20arKVfplltM0kRjAbDzz3zOAGY57en5c4emV
         U42w==
X-Gm-Message-State: ACrzQf0937+33ZpPZybVqN09hhjZHXoWjQE6uM/hVvRfqmMbAVL4i4zB
        frWw7fSjIczgDFcNJuEZGABKpwoIdwTyMA==
X-Google-Smtp-Source: AMsMyM4jbj5tiQ4Jru0zKF//wPP45MGwAsKNq3+bqAbXWPmrXZLV+XMDwXhTgh3mxEvqb8fFqJBZOQ==
X-Received: by 2002:a05:6512:a93:b0:4a2:6bd4:e9d9 with SMTP id m19-20020a0565120a9300b004a26bd4e9d9mr19599900lfu.100.1667984156754;
        Wed, 09 Nov 2022 00:55:56 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id k19-20020a2ea273000000b00277522fc29bsm2070764ljm.3.2022.11.09.00.55.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 00:55:56 -0800 (PST)
Message-ID: <effa5ddf-0e64-98c5-41c0-dc67b6f2cf2e@linaro.org>
Date:   Wed, 9 Nov 2022 09:55:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] dt-bindings: media: Add Omnivision ov8858 binding
Content-Language: en-US
To:     Nicholas Roth <nicholas@rothemail.net>,
        Rob Herring <robh@kernel.org>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org
References: <20221108033813.16502-1-nicholas@rothemail.net>
 <20221108033813.16502-2-nicholas@rothemail.net>
 <166791192485.3252530.2242777453866732728.robh@kernel.org>
 <CAD2rFCqmm5Lc8=tqMpH1nFXq8uhxFT+RMQn7W=Y5BiP=tMgUaA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAD2rFCqmm5Lc8=tqMpH1nFXq8uhxFT+RMQn7W=Y5BiP=tMgUaA@mail.gmail.com>
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

On 09/11/2022 03:30, Nicholas Roth wrote:
> I just rebased onto the latest master and here's what I got:
> (base) nroth@nroth-pc:~/linux$ perl scripts/get_maintainer.pl
> Documentation/devicetree/bindings/media/i2c/ov8858.yaml
> Nicholas Roth <nicholas@rothemail.net> (odd fixer:OMNIVISION OV8858
> SENSOR DRIVER,commit_signer:1/1=100%,authored:1/1=100%,in file)
> Mauro Carvalho Chehab <mchehab@kernel.org> (maintainer:MEDIA INPUT
> INFRASTRUCTURE (V4L/DVB))

And he is not in Cc...

> Rob Herring <robh+dt@kernel.org> (maintainer:OPEN FIRMWARE AND
> FLATTENED DEVICE TREE BINDINGS)
> Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> (maintainer:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
> linux-media@vger.kernel.org (open list:OMNIVISION OV8858 SENSOR DRIVER)

Missing in Cc.

> devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
> DEVICE TREE BINDINGS)
> linux-kernel@vger.kernel.org (open list)

Missing in Cc.

> 
> Is this just your way of saying that I forgot Mauro or was there
> something else too? Thanks for the catch-- indeed, I did.

Mauro and lists.

I actually thought Sakari is listed as well, but it seems not, so if you
cc-ed Mauro and lists in v2, then it's good.

Best regards,
Krzysztof

