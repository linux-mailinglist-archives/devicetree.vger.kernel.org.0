Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E7CB78D970
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:33:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237114AbjH3SdH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:33:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244818AbjH3OJz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 10:09:55 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89B4A12F
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 07:09:52 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-500a398cda5so9000826e87.0
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 07:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693404591; x=1694009391; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ltTU7x1ubVYH6+6pxLfR8tGONMoKmhnogX675uv2utg=;
        b=WmIltfdCZRgjNfGoVcoRrn9ICJTL75GHiLpOhm+C14xQcrpqGTpymKXBtFeplaK0B2
         L8mIi07M6X49dw6JQrO3q26bHkrBiBo69R6c8Nv133YIGlTwU42Xz+X4h82A9Fb142R9
         MuZ9t5wnM7v/8LFT94gWA1lQ56gDwT35yNHAlUcKLVGLB1YonwLJWZOtfT8DQ8z0M4/2
         tFDNVntGTcTE4M5dHKzrrpbkG/SrlOeAzvlzEbwiigjbqZ+JsRpwdyWxZOc02OU7J5VY
         hM+ZXM04zVy7/gDT9Tk8H2JDszk4GpHc3BLAtUbNe8jQVOKzAUSG4M/idXOvwhn6quDj
         p4Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693404591; x=1694009391;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ltTU7x1ubVYH6+6pxLfR8tGONMoKmhnogX675uv2utg=;
        b=JSxJVkGysnvr8XB2yGEp4zQlxCa5awDXXC3HTYUKoENAvB7kE60JA2/8ZNv2YS6Osh
         H+66IvSBkPYy748hgh5dwXzHk9k55F8gCaCrIsAsHV3Pjufe51KpYGk70UAU0bTeDXeU
         qm+eE08+rfhabEa9zfPldVf89BB6slASAN4iPHQS4IIn/tee/YAbQxPVUbxJIDetlMEX
         xsG8Ws1MHoJVEK94XduBsVDrCGfqhSaXRseDOzYmf1eN77MNiN9fgf2wnE/WLygJiuCZ
         gPIJXKQou+mzAOyL3JfMdxb7cAcErJR4JUoC4zDUKpRV6N4mIlI5LTZ6Ghck8/9QwuMV
         wT8g==
X-Gm-Message-State: AOJu0Yzjjsl+2njxBhw0mcdmk7TyVjjspQz2zx05CPrSJrKl81ToiTCh
        mwavGe90YskZGss0BpdBM2cHcQ==
X-Google-Smtp-Source: AGHT+IEvseMKjwvTdU+tirPJuBVAonhmctyF2ZHRYFGoUuMs1GJ6IviTz27bgTAovzvA+OCO/A74JQ==
X-Received: by 2002:a19:f816:0:b0:500:b5db:990c with SMTP id a22-20020a19f816000000b00500b5db990cmr1347609lff.57.1693404590749;
        Wed, 30 Aug 2023 07:09:50 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id lh26-20020a170906f8da00b0099cbe71f3b5sm7189616ejb.0.2023.08.30.07.09.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Aug 2023 07:09:50 -0700 (PDT)
Message-ID: <38cd46c1-d0e2-e27d-f872-87bfee9058bb@linaro.org>
Date:   Wed, 30 Aug 2023 16:09:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] ARM: dts: stm32: Add MyirTech MYD-YA15XC-T development
 board support
To:     Alexander Shiyan <eagle.alexander923@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
References: <20230830114335.106344-1-eagle.alexander923@gmail.com>
 <e2dc91a9-d027-dc69-14bf-3a1184045254@linaro.org>
 <f40497d1-3547-9434-459f-050f592937ca@linaro.org>
 <CAP1tNvTvd5mZ1eWiMeck14b5KGyyXBNrEE=of0OKesbNKE_jqQ@mail.gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAP1tNvTvd5mZ1eWiMeck14b5KGyyXBNrEE=of0OKesbNKE_jqQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2023 15:42, Alexander Shiyan wrote:
> Hello.
> 
> The initial thought in the file name was that the modules could be
> equipped with a CPU
> other than STM32MP151, i.e. 153 or 157. The development board, as far
> i understand,
> equipped with a STM32MP151 only, so can we leave the current name for
> the module (15x)
> as is and change it only in the file name (and in compatible property)
> for the development
> board only?

Depends. I do not see SoM here. You called it "MYIR MYC-YA15XC-T", so it
looks like end product for me. Can the same product have different SoC
module? How would your DTSI look like? You include there 151.dtsi, so it
could not have...

Yes, you also need to adjust compatibles to reflect real names, not
wildcards.

Best regards,
Krzysztof

