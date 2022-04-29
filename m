Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 116C6514254
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 08:30:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349532AbiD2GeH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 02:34:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230018AbiD2GeG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 02:34:06 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 278EE6AA4A
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 23:30:49 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id y21so7934576edo.2
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 23:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=s1clNq5BQBXHMi5yLCKb4UG59pVLMf7WbijCi7/Lbvw=;
        b=yiP2cQfA0EiqXcNCGaC4mEFsX+LYRnv6XmBjLC4bLupo8UKkiWETvAQDXdAACSvQCG
         wW6o/4Y4rB4ldjI+cVQ/c03GAIXcEhma+QdncoqL36X9hRq9OkZrucsJDqjhV4wQBnE2
         A2YWxzIhvFf+5Xq9Er/zkQOq9i/2rXIvVIYRgdk/aCYSzjtrvGruMIN5T+an4gJ9ZBsX
         dsE+ITqfuyQZXyh9YNSjVUs3HfAeTmV2f4FkKj0DE5t7TqMMqc1+TrZZbT2ylPXKSyI+
         pp728qnS8TqjH2uTealBlfJ7ifY4Y0h+awWOMtda+tKh8gcAWG7hrqzYBQ4MFpuG9Nf9
         N4LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=s1clNq5BQBXHMi5yLCKb4UG59pVLMf7WbijCi7/Lbvw=;
        b=krfFlv2SEyVJFwr4+bT9CGON6LpEf4rZ+9+jPlgcNHUqxxbILqRYBHoh5K8wVZI/+1
         L2KJd39QAAP4qfP4bvfEIhoOYbXZlIhONVt09CngIM2gwQkqk6W3CvUjzDwaFxOeTSN6
         6o12bq39GOlIIJMBdofkxohNhwEIiFz3jGbaFs8YwzV3eoMZ+NL9T/kXdk7hbRZsTcb9
         mUiyQAP2plZEl48GgY5mwuklzMtjrJgoZfEbVUSmVFT5UCj7ai1EoVhP4qmzWKR1ZOFH
         G0PTHDySw5cVp3VG0CTDD5s1J9Sbl0TDxeW+8eKocKHXmvn/dR002tzY6/qmA8ikfAhZ
         vfGA==
X-Gm-Message-State: AOAM532iG/egupKyQBdNzwANeMst9Mwpsw5ETGGEP6Sa4XW6Cz90FKmQ
        xuEmFVPOTAatIvfT3omnIkrx7Q==
X-Google-Smtp-Source: ABdhPJwHYf5LFrUI7xpoXcKT1RsbdRXWzWdeo7uxehHkpBBNBDrNMi1obwlZXtwPu3uRYLRM6IjsLw==
X-Received: by 2002:a50:e696:0:b0:419:998d:5feb with SMTP id z22-20020a50e696000000b00419998d5febmr40180413edm.122.1651213847683;
        Thu, 28 Apr 2022 23:30:47 -0700 (PDT)
Received: from [192.168.0.168] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id co8-20020a0564020c0800b0042617ba63c6sm2562278edb.80.2022.04.28.23.30.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 23:30:47 -0700 (PDT)
Message-ID: <df1e8dd6-5d26-f3de-b9f5-643a73390517@linaro.org>
Date:   Fri, 29 Apr 2022 08:30:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] dt-bindings: google,cros-ec-keyb: Introduce switches
 only compatible
Content-Language: en-US
To:     Stephen Boyd <swboyd@chromium.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>
References: <20220427203026.828183-1-swboyd@chromium.org>
 <20220427203026.828183-2-swboyd@chromium.org>
 <9248da4f-ca04-82f0-2840-a20797c25d2a@linaro.org>
 <CAE-0n52Y=3EEZ6qguNx=hM44BahbH3cuq7x6Bbe5HELKkkvrUw@mail.gmail.com>
 <29cc62aa-2995-ea96-0e7e-242f9ddaa87e@linaro.org>
 <CAE-0n50ORzU52KpSPUNeEke-16uWo+Vn8WVhcdtdCc6WJiji6A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAE-0n50ORzU52KpSPUNeEke-16uWo+Vn8WVhcdtdCc6WJiji6A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/04/2022 18:01, Stephen Boyd wrote:
>>
>>> Given that none of the properties are
>>> required for google,cros-ec-keyb it didn't seem necessary to make having
>>> the google,cros-ec-keyb-switches compatible deny the existence of the
>>> matrix-keymap properties.
>>
>> Maybe I misunderstood the commit msg. Are the
>> "google,cros-ec-keyb-switches" devices coming with matrix keyboard or
>> not? I mean physically.
>>
> 
> The answer is "sometimes, physically". Sometimes there are switches like
> volume buttons and power buttons and also a matrix keyboard (convertible
> and clamshells). Other times there are volume buttons and power buttons
> and no matrix keyboard (detachable). This device node represents both
> the keyboard and the switches.
> 
> Unfortunately the EC firmware on older Chromebooks that don't have a
> matrix keyboard still report that they have some number of columns and
> rows. I was hoping to make this fully dynamic by querying the EC but
> that isn't possible.

OK, then it's indeed slightly different case. Let's skip my comment.


Best regards,
Krzysztof
