Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9A6077D426
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 22:32:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237919AbjHOUby (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 16:31:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238000AbjHOUbe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 16:31:34 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CED741FCA
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 13:31:30 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-31977ace1c8so2086991f8f.1
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 13:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692131489; x=1692736289;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KyN9mbwaXCeD9ddt8BwKaPHZBpIm4dW+EkteSoYWyH4=;
        b=xrrg1Lm+rYDLYBzWIRiSdaxZjhV1XYNCjktJ68o3hygAEtXIZQFxlCYG+jRKyxoz05
         2+vwpNjU4cBXfpgO5uLL4CNwSB2jwyhpVzYhYukSX/KH0HkiLLYteYbCJAYJZ7h5vyao
         ksUw59ES/NyBAbS1jh3IZsGAeOaeAKylI5LhyttanlDC6SCKOkeRaE73Cw0tAjVIgM+o
         344GyuIR6zYHzAZ5sRl40FTtAEJSuVlYX+YFoLGcL1Hp9kKd0y/Zuxbo0u1loQNJPsnE
         7tRIFjWxzsra7bTkYejBdpbz7qs4IStP+YM9NGBKyaQqRym0wdlL4WkIbeBd6l4SuWM0
         nEsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692131489; x=1692736289;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KyN9mbwaXCeD9ddt8BwKaPHZBpIm4dW+EkteSoYWyH4=;
        b=lXkmTYeSuKq75jnnmvQg8FW65TcRbjIn1GUMh4KgQCKq1vpQ80whg31U8wMwFeajlA
         FHlC9Aq01zElsgWdEyQxz0+vAEfhqmVGuPfzu0oXx6AUZFTe2AyQ4aUYhl3vmq+7/Iid
         fRRRVDb1QzwzxcifEPCzO+EBaXPIj3JDgYXFUxPE6SSODFhldyOYwEvXdeePWChK+mRL
         ht6bnQYAcAJ4zU1tdeXerdIS/Vv12PqOLv2SqBVQGbQBIETkpnPlM/jSoz6JUfBvmc12
         F65Hp41BBOhi58cX5LIzyVGXVQX4Jxern/Tlhkb7RrcHAw3La/wlQYVIevbDaO769/Ap
         718Q==
X-Gm-Message-State: AOJu0YyNvZvPK62uJFKLG8Z0val/T0MeHCpbUfIv5awnZvATZjxFSaew
        GjzOqK80XTjxw57oDiqtZ7DxMA==
X-Google-Smtp-Source: AGHT+IGKfKT6v7xAX9eRrfeVce0AfRmSoHeqv6qYSAYqLe+fP7lNSELrPG7WvUwsiJxHDSPObqPb+w==
X-Received: by 2002:a5d:6889:0:b0:319:8161:ecc6 with SMTP id h9-20020a5d6889000000b003198161ecc6mr3432297wru.63.1692131489426;
        Tue, 15 Aug 2023 13:31:29 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id o14-20020a5d474e000000b00317f3fd21b7sm5490315wrs.80.2023.08.15.13.31.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 13:31:29 -0700 (PDT)
Message-ID: <d9a8e265-8862-0fac-24ae-989293bc4d12@linaro.org>
Date:   Tue, 15 Aug 2023 22:31:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 2/3] dt-bindings: leds: Document pull-up supply for
 interrupt and I2C
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>, Pavel Machek <pavel@ucw.cz>,
        Lee Jones <lee@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Nikita Travkin <nikita@trvn.ru>, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        "Lin, Meng-Bo" <linmengbo0689@protonmail.com>
References: <20230815-aw2013-vio-v3-0-2505296b0856@gerhold.net>
 <20230815-aw2013-vio-v3-2-2505296b0856@gerhold.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230815-aw2013-vio-v3-2-2505296b0856@gerhold.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/08/2023 19:21, Stephan Gerhold wrote:
> Since the interrupt and I2C lines of AW2013 operate in open drain low
> active mode a pull-up supply is needed for correct operation.
> Unfortunately there is no ideal place to describe it in the DT: The
> pull-up needed for the I2C lines could be described on the I2C bus.
> However, the pull-up needed for the interrupt line belongs neither
> directly to the interrupt controller nor to AW2013. Since the AW2013
> driver will be typically in control of the power management and
> interrupt masking it makes more sense to describe it inside the AW2013
> device tree node.
> 
> Add it to the AW2013 DT schema together with a comment that makes it
> clear what exactly it represents.
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

