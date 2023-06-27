Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B75CF73FA4F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 12:38:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230283AbjF0Kiy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 06:38:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229988AbjF0Kiw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 06:38:52 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88E85E59
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 03:38:51 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-313e2fdd186so3761368f8f.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 03:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687862330; x=1690454330;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L3/MOT3CxJP5aM43slBN/qL4mRnfKkA3+j6y3t3wdsI=;
        b=SNVEZn4YAshZWJkE5Xn3Rts1zVDViGXdYvpg8JlQ1fRu31LeJb4zaWDgZZF6q4IDmC
         MgZ4ZwCxNHqwxrTcyY1NEcE24HQWhSpcykJLgm6qGgmSW8YqdU90qGDYFUHv4Eouk5MB
         LJb/Ouhut7rD152b5qs1RQahkPkz53NQ7p4YssaRYKxu6pVMqetZh0X8JFd5G9HvEFU0
         VBuKdnQEOKamBLtrTvoO1Q/WjBO2YcFJUh6TMI9pXDkbRtrZG8RbIfS6YEBMSKzIkdEU
         QdcMxTeHUQSuqmj4bbg9vHXmNpCXA5R+f/og/pE/tUbzmf4RbuSJO4+qyF8VzZMtfmtC
         GePw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687862330; x=1690454330;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L3/MOT3CxJP5aM43slBN/qL4mRnfKkA3+j6y3t3wdsI=;
        b=BygvUkkuqd/hfCi2/OgOb1PNXusptf9aTwFbak9cqAe3lk6HEfeQF+e3vaOw9U/Sum
         r/El7RIrBrO+HD/HOhu71bAtWF5bIhDu9tSuTsRN+B7LWmTB3uCLA7NAxFAOUYYy99PP
         cSu0P8e1tPRzm0yG2dNTt3bhG/lVFgLC8tmJ+X+P4y4iRmzxKF69E8f4YChVCt+H8HLg
         Ttax2tN5kkXNb1jtsJPuyBxZ1DLFU/TAmQuNesDwD5kHS8M5H/DrrTnWci7NSDoHX6+e
         NFwuX7MROkt2OA8fDPDmBwtyaPSneDt+M4CkZoX5YEA65sz8k47B5QT5XWbY/Y1q0zhx
         ECgw==
X-Gm-Message-State: AC+VfDyF5TtxcSeGhsR1e8crlm6pduoIkcZBnXMUtRdQUp44kJbwdJYp
        buzkVR1lPXHeFwXyM/E6M5GVzUCMfxv/5EYmRKM=
X-Google-Smtp-Source: ACHHUZ4e79OUOLu9PEPPro9WRy7ixp8c2KMi26jFGQRDOhcDgBTcT9WDuKo2QJW4bgA+8onCjmpIgQ==
X-Received: by 2002:a5d:5752:0:b0:314:216:5797 with SMTP id q18-20020a5d5752000000b0031402165797mr691620wrw.15.1687862330016;
        Tue, 27 Jun 2023 03:38:50 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u8-20020adfdd48000000b0030ae6432504sm9932105wrm.38.2023.06.27.03.38.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 03:38:49 -0700 (PDT)
Message-ID: <6b001578-79b9-6bb6-4420-bae4a27d0fa8@linaro.org>
Date:   Tue, 27 Jun 2023 12:38:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v6 2/4] dt-bindings: serial: amlogic,meson-uart: Add
 compatible string for T7
Content-Language: en-US
To:     Lucas Tanure <tanure@linux.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc:     Nick <nick@khadas.com>, Artem <art@khadas.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20230627091007.190958-1-tanure@linux.com>
 <20230627091007.190958-3-tanure@linux.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230627091007.190958-3-tanure@linux.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/06/2023 11:10, Lucas Tanure wrote:
> Amlogic T7 SoCs uses the same UART controller as S4 SoCs and G12A.
> There is no need for an extra compatible line in the driver, but
> add T7 compatible line for documentation.
> 
> Signed-off-by: Lucas Tanure <tanure@linux.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v6.4/source/Documentation/process/submitting-patches.rst#L552

If a tag was not added on purpose, please state why and what changed.

Best regards,
Krzysztof

