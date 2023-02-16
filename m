Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50AB0699101
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 11:21:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229692AbjBPKVZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 05:21:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229906AbjBPKVY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 05:21:24 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C48237B59
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:21:20 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id cq19so2100688edb.5
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:21:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kiZhCQwvLAN/WcdEDHOGFwJWYHK65TJ2+yIdtEDWU5U=;
        b=UJsU5/G0RWBnr0pdK7o1X8uJ7FXJYRFQfxjIOwjqRjGDbcANR74e9A2se117d+M5Ax
         4VpfN1H6MBH80MdE9VEsP8xIcSVbDoLPirh3zT7pBh4l/0fOG/V7NDW0BS9GcXTSzGOn
         XFEA6bYTLkJnVpqHloea08RSoWzjB9cO06RV2YCEnjthV9cWvCXIZ8wob3WDmKUTcdcd
         x1OEx+Y6LzkT4QZdKvAA+0oV5moP+NefMKg6D11WlcNxDtqKi18o2fAZa95zOUeU6JUn
         BrDacHVMqoG4eFASYngDItIKuJkXEUdr/XDWEplDQqEP9bVedlRj0Bty/GFUr5niu7V7
         TQ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kiZhCQwvLAN/WcdEDHOGFwJWYHK65TJ2+yIdtEDWU5U=;
        b=DbWB6mZku8jvlIg6G15yGy2nm12uktx5gjNEliXpG1qwJ3QSJcNLT1tK5qoGA8jqsQ
         kgMa3fc7o/mkfaIkeMjReS5nbHNKjmdzJrOppFXvZUYVmB1wJnreYf7v6t/v8WztMfuR
         zairDrdiK72ewL7s7pjlQT+zwz14j6SowhBfEXyefCtZWujQ2NhCJoRdO8RxxParhU2f
         CuLHJVrF/goGfAug9JfN2fiaE6JUhtD+TMwH37OANpuEy69uPdbc3pqorIKuuWTZ+sGO
         SQUxiNpO/1V+KJD6aa0OhTf9wkX4Ck7vff1Qvp902dJG8gmc4kJ4NCzfH/GQL5k1QCJp
         v5dw==
X-Gm-Message-State: AO0yUKU376a+hj4GVr4V6O1cWk9nUw4ldLQE1+f3VpoAk5XSXfYbEo0V
        aHXVb/2lbkeszPH6LQhgJvnH6A==
X-Google-Smtp-Source: AK7set+Uqifl7Bor9xXuyZGiSNfoqpIyZ9ewf6xdIWS1dIDE9K/kVMAE/yboRk0mVw0cTTp63eBZzg==
X-Received: by 2002:a05:6402:12cd:b0:4ac:c3ea:47e0 with SMTP id k13-20020a05640212cd00b004acc3ea47e0mr5786141edx.14.1676542878586;
        Thu, 16 Feb 2023 02:21:18 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m19-20020a509313000000b00495f4535a33sm617932eda.74.2023.02.16.02.21.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 02:21:18 -0800 (PST)
Message-ID: <4bb1e640-475c-8516-2f73-ddfa0a3c23e0@linaro.org>
Date:   Thu, 16 Feb 2023 11:21:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v4 1/4] dt-bindings: mmc: Add StarFive MMC module
Content-Language: en-US
To:     Shengyu Qu <wiagn233@outlook.com>,
        William Qiu <william.qiu@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-kernel@vger.kernel.org
References: <20230215113249.47727-1-william.qiu@starfivetech.com>
 <20230215113249.47727-2-william.qiu@starfivetech.com>
 <TY3P286MB26111053410F3F96C9C71D2798A39@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <TY3P286MB26111053410F3F96C9C71D2798A39@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/02/2023 12:59, Shengyu Qu wrote:
> Hello William,
> 
> Are you sure changing driver is better than changing yaml bindings? All

What do you mean - changing driver? This is new driver, new code, isn't it?



Best regards,
Krzysztof

