Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50F5F633B83
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 12:36:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232917AbiKVLg3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 06:36:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232925AbiKVLgG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 06:36:06 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8015183B5
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 03:30:34 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id d6so23108526lfs.10
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 03:30:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C1XTXm9UvBoDAZHI1hrDbgLg98MYtdJ0rMyqAqbL2VA=;
        b=tOkgdnwgrQbSiP0oM5B6azywQYQ7aLjmWowFDdh9CIvq1uf8hJKMiEpcVEU9963zwF
         XUeM9ihlSWKDrCmmdYFi8RGN1tf13dNf9IraNxmBtV3ALPamSf7IJRH/iBiTuLBOBIXk
         5GFu918HTN18SWPojUywme1z5CDNMFa3FUNlvc6NXmWzVkHNtlYWM/CHwfr+EU/EAlA3
         fcnSH+LOqb2EFwsfN2tXvqdIkEaF3Oppx8twk49AHCElYsJdQgotCf+BEyQyeOnFZuIf
         Oozt4/jwxLMd++aDgE6DhT8UHloh8U/GX7L/mMWs9/XJwwX4NpjQlDMw5DOvDWXv62Gs
         YlSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C1XTXm9UvBoDAZHI1hrDbgLg98MYtdJ0rMyqAqbL2VA=;
        b=m89bt2qlmnqCGKzAPwibdLKm5+AXr1NbsU8hQJI2RjDSonu62M9mey7H+P6mBUDlco
         hGvKFYKOEdCN5RV7INqKAg1FlaVa7vtpIntcOZHGqKPU9TtIuP5JwjM8M1eeQC6JfMk6
         iohvknRvUKxvAnP9HlWt4eivVHWnfTwEuqa6+XPyyqgONJZwQF5b7Y1Y/o3W2ucKucmo
         h4t4p+a8aE2tYVOj+MKZR1z9zljyUjK+rglYeS+5ygHMdnRBdahGXOaiR4JvmRNdnaxP
         1dRS+origdLwToxWiLqRecGx9Jp15wu5G3g7nFwD4r+aculSiylv2GVdc9IOJ1sxvDrT
         wtMg==
X-Gm-Message-State: ANoB5pnb4GVFVCK7MF+Fq0F9iT0uaAJf7sMQBP2k9a8jrnY0Uv2r/iqF
        LgEzYuMkEykQnr7MDp5ceGohfQ==
X-Google-Smtp-Source: AA0mqf7k2oCVEZ/0IIJSufubpSb04tX7QCDu2eKbXO2CgPdAvMGr9kyWv4pHLufgBRv3l+PWGTAzaA==
X-Received: by 2002:ac2:5cbc:0:b0:4b4:e461:3abb with SMTP id e28-20020ac25cbc000000b004b4e4613abbmr262278lfq.343.1669116633157;
        Tue, 22 Nov 2022 03:30:33 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id i5-20020a0565123e0500b004978e51b691sm2465683lfv.266.2022.11.22.03.30.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 03:30:32 -0800 (PST)
Message-ID: <4128deb0-c5b8-2405-033b-35edc8c5110d@linaro.org>
Date:   Tue, 22 Nov 2022 12:30:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 1/2] dt-bindings: pwm: Allow decimal format in addition
 to hex format
Content-Language: en-US
To:     Tony Lindgren <tony@atomide.com>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-omap@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
References: <20221121115525.36362-1-tony@atomide.com>
 <20221121144000.7weeyfbbulltfxmd@pengutronix.de>
 <Y3uPvYqaILNiYW8K@atomide.com>
 <bb5ac0cf-84eb-165f-40bb-0f3c9afe084f@linaro.org>
 <Y3xTi5JeLPSWchT7@atomide.com>
 <20221122093650.oouke2utlkvdd7r6@pengutronix.de>
 <Y3ymZphck8JM6g9B@atomide.com>
 <20221122105710.5aow5qsri6pikgri@pengutronix.de>
 <Y3yubxJ3ZCIIed3T@atomide.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y3yubxJ3ZCIIed3T@atomide.com>
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

On 22/11/2022 12:11, Tony Lindgren wrote:
>> Then let's pick:
>>
>>
>> 	"^pwm(@.+|-[0-9a-f]+)?$"
> 
> That works for pwm and pwm-11, but now fails for pwm11 :)

Which was never valid, so no problem.

Best regards,
Krzysztof

