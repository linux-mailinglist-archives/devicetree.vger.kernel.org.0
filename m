Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 835D56C0140
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 13:03:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230126AbjCSMDR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 08:03:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229605AbjCSMDQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 08:03:16 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5BCE19F0A
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 05:03:14 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id z21so36804824edb.4
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 05:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679227393;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m8eI5WESKMse/n7F94HbBNTcP9Lxscuzj1cfBd98eJ4=;
        b=OvNqvSD2BQWpcfDo0bOZmFhhIstX4awMYmtIvXYSiqDR4rDXSQcRCm99h9RHYbGQBU
         BO3BGrWdvo0L7nlbM+g8gZViI2b8LQ4YsW1TXkQgkooS8F3z/4N+Bl+4Srx/0jXIn6Ch
         qphsl4gwBZuJRXrV1IfyLQLZjJ1NWXp1ILBnm5da2J1vyit7H7nYoasXB5k3Y6TqKk56
         7CE6oA5U7MAZcBBfG00FW2Lmo3P/0aARMzxcOzvif5O75yTTBB8k8nXNVzVX4kaoaYsG
         ixx7wDr7+91kwnljYgkLCqFSpo8DJRfQMK5iLlcqe3ThaEKPlFC5is2uyUKfNB0a0Pwx
         kwWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679227393;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m8eI5WESKMse/n7F94HbBNTcP9Lxscuzj1cfBd98eJ4=;
        b=mCtrRMY4/fERRXiCAddMqez22Ln+x/Cs2xb05LZ9w/OGEL415frAelbehk+PYZ1Rkw
         i4FtEFhbRheXRiRH3NhTuPKx6Ff5pAjaUu8gvBUri9+DcY+yxhxcQvY/oH9DmzQjWx8h
         1+QSFsnXLAXlaBEhYlKW3WlGaEtrlSepd2YeCWrORfaDN0J8uXzcAP5f7+rWaRT5x2Gj
         wTC0cegFVSsOYgKw32UF7dRGkXgRweCf+g6J/qFzXJ3lKt54r2sgWwiuINOwnurBGh/q
         7/WCrAjmFQigv59l+M54a5dUbuhjfeznZK7pUICshVumciOrQKty4vcXLFCGC/cl0r6E
         xfMA==
X-Gm-Message-State: AO0yUKXOz+61AmytuNkyiFNdcYVRRLLOhFT3ENPWLp8EblqQVcBhfdZP
        sBequnmO1BPH/66m5JlwZNj+yQ==
X-Google-Smtp-Source: AK7set8v+fUfgt4qnIGSCzEan9CXt7CaQcGsuvzfr9yyN2Bblez2Dmz4gDds9AcWPwoUZaJQXOFklQ==
X-Received: by 2002:a17:906:cc84:b0:8b1:78bc:7508 with SMTP id oq4-20020a170906cc8400b008b178bc7508mr5218447ejb.20.1679227393391;
        Sun, 19 Mar 2023 05:03:13 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id b9-20020a17090630c900b008bc8ad41646sm3137294ejb.157.2023.03.19.05.03.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 05:03:13 -0700 (PDT)
Message-ID: <43cf5792-fa98-fec0-518c-b18068ac83f5@linaro.org>
Date:   Sun, 19 Mar 2023 13:03:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: i2c: xiic: Fix `clock-names` property
 name
Content-Language: en-US
To:     Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Michal Simek <michal.simek@amd.com>, devicetree@vger.kernel.org
References: <20230318134255.282359-1-lars@metafoo.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230318134255.282359-1-lars@metafoo.de>
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

On 18/03/2023 14:42, Lars-Peter Clausen wrote:
> The Xilinx I2C controller device tree bindings documentation documents a
> `clock-name` property. There is no such property, the correct property name
> is `clock-names` with a `s`. The `s` was accidentally dropped during
> conversion from txt to yaml.
> 
> Fixes: f86ca4147976 ("dt-bindings: i2c: xiic: Migrate i2c-xiic documentation to YAML")
> Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

