Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91155571BF9
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 16:08:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232486AbiGLOIP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 10:08:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232308AbiGLOIN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 10:08:13 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BAD52F382
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 07:08:10 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id y11so7599434lfs.6
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 07:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IUDupCeEXQ/0U2Mq+8j8TVT3HkTwF7WNPO4buPs4r6M=;
        b=QYvKlU7dEHkaxWeAgxfsF7vxBdm/zDsF+uuntI0ZjZp2eHQW3sdICr52wnSvfAAqk/
         xqPicfiGubAHcZxPV0vqcT7lcEqnZI8C7Q0mwu+pDS0gH9qj+XmkB8OxDjDi561+v38E
         C+sElDXj830YwXWoYoAqURjSNfMYBVM2zw/QUM2x9489UNhtzbCZ5+a5BSVAZEQQbc8Z
         ThNy5NFkPiYV+DIle2PSnvuqSlll+S8ql+SEjRPKQYzuqfXwduHzAYcpxcJRsqUCLqPI
         Akbpi8mXiuBQYdtH/68IF5DKjpEfFw+oUXv8BB8hMaQv9Uk2cJ754oyLE645GWMGbij/
         9Kdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IUDupCeEXQ/0U2Mq+8j8TVT3HkTwF7WNPO4buPs4r6M=;
        b=LXnezoGYkpPlp8xVqh4QbXfBXmjLuZPgMk4YUEJcbmYPf4tW2UsxHAKFdVz2QFgFNj
         vOw39U4q1W/CT48QU3lb3dIUP2PZb+0dbtE6nqdq57qyOR+7yt6T87+NBdb3DLYN2EuG
         Wmms35SE7rOnnjOLE87t3c9my9N/FKzfcGCpG7OOXsXzjwbbD2hYO4CQoYLkyd9PrRjG
         kQhInb/x6dvh/OQNAg1nZ3jB5ddyOp+1q7CAzktofObcKtjX0KM4UsnSR+mrZxmcGVwb
         c+RGRgHwOtmi2G/KfnWDufsXNi4RaqjIr8PUj4FoB1HhgGPKn9lzls1K3m7+Tg91IFLi
         yQ+g==
X-Gm-Message-State: AJIora97iichJbZ0WgwSr0bXBEf0hIX5N5zsHxLDqUotkjAb6EWMKep6
        RT7CFBEBRYVGMreDsq1cqobWgA==
X-Google-Smtp-Source: AGRyM1tCEXL8eb8yUBVXFnt5nQBt+dmZ3X4wqpUocjCz9IgpH1o5xI4GOGU1U4fDZ6ZvjrzDPG72Mg==
X-Received: by 2002:a05:6512:2394:b0:489:e432:bca5 with SMTP id c20-20020a056512239400b00489e432bca5mr5786126lfv.537.1657634888923;
        Tue, 12 Jul 2022 07:08:08 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id y3-20020a056512044300b0047e789b9700sm2187900lfk.118.2022.07.12.07.08.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 07:08:08 -0700 (PDT)
Message-ID: <1c90df71-4db0-9d20-e41b-2dfdce8d6456@linaro.org>
Date:   Tue, 12 Jul 2022 16:08:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Add Novatek NT35596S
 panel bindings
Content-Language: en-US
To:     MollySophia <mollysophia379@gmail.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20220709141136.58298-1-mollysophia379@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220709141136.58298-1-mollysophia379@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/07/2022 16:11, MollySophia wrote:
> Add documentation for "novatek,nt35596s" panel.
> 
> Signed-off-by: MollySophia <mollysophia379@gmail.com>

I see now three different patchsets, twice v1 and once v2 (send shortly
after v1). This is confusing.

Best regards,
Krzysztof
