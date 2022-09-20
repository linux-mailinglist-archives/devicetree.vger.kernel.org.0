Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DDE95BE235
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 11:39:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229530AbiITJju (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 05:39:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230249AbiITJjm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 05:39:42 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DDED10E7
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 02:39:33 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id f9so2826801lfr.3
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 02:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=4UgBRhi/yvelR37RQjVh4NzYnNRpZ6qRgldTaLCmdbM=;
        b=XdVDfRqdjptItUwji9CmGgIVKEnZDePYc4197BbBVbCFNzGljxG0zxBp8Pnewbo1vw
         ag5chzMklLZdqkK8uZV6PEADKB6s76qsrYNjbdCkH/o09FcaCkS+oldc/z3Kw1mf+nF1
         TbJYVTLsbDL/vytIfeTaA68Yf0go8X34Isw8yk8iPXzjfYEvaWUqF1NFfk3wfMbYlF2C
         3BNDIUcRRhTs7BZfepVEkQ7FY6US50CNv9mXJEqboE1ejKYWdI0e/Xc/8jJK+Se7V/63
         HXPm7fu4ebmAImVqw6x0mLRakWkJ5WkvWJGl36kw/hAGNFModr0vttx9F6l3goD7W6oo
         O2hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=4UgBRhi/yvelR37RQjVh4NzYnNRpZ6qRgldTaLCmdbM=;
        b=5UFeSZ+/Pe56LZkPBMc/20mm/XBzOCGQaOugiJXCEGQ0EpM6AlMBsr6qxxdT9JHeWC
         C6a3PoJmNGTd05bAjC8yYi7Ap/HdL867RZuPMuYQD3fn9HB18z5LQRpqbFo2J7h0mhn8
         l4oGyWsWcTfPO0pf7vSSa+c/+YhMDCzSd3nxtBb5Vao/EuQx6U0x+bpLOhpfCPE5HLNP
         wv4mH6YBxF7yEhCEtfyfs0RyGDQJr0hMDz79QEv0NPUAA6vXQZ4m0jmEQSH4/zTfO3pM
         rEm5HN9ZKekhbKiPmYbgdYS9cPLRHOEGHpIOj71sCEMYSOtTfh5zrpjSoQWo0cy2SJKt
         H6qA==
X-Gm-Message-State: ACrzQf04BqnIjWpvYQY8gz1xu9zV3JcMkZ977UQdXBS9WOqiCEeRinla
        PRb5vTY1AyUY1jwREMdkoj4X3Q==
X-Google-Smtp-Source: AMsMyM6X1xHBZJPJsES15OMkWmtricB4yfOni/ZQAAQjDNVfy9pw/5Uyi0+bJj8VCGhZy3faaQf/ZA==
X-Received: by 2002:a19:910f:0:b0:498:7212:10c0 with SMTP id t15-20020a19910f000000b00498721210c0mr8316238lfd.39.1663666771493;
        Tue, 20 Sep 2022 02:39:31 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 20-20020a2eb954000000b00268cfcf841asm177886ljs.56.2022.09.20.02.39.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 02:39:30 -0700 (PDT)
Message-ID: <ccc318c0-ee1b-d538-6d2b-bf85a3c9c6fd@linaro.org>
Date:   Tue, 20 Sep 2022 11:39:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v6 1/4 RESEND] ARM: dts: qcom: Use new compatibles for
 crypto nodes
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, thara.gopinath@gmail.com,
        devicetree@vger.kernel.org, robh@kernel.org, andersson@kernel.org,
        bhupesh.linux@gmail.com, catalin.marinas@arm.com, will@kernel.org,
        arnd@arndb.de, Jordan Crouse <jorcrous@amazon.com>
References: <20220919221509.1057574-1-bhupesh.sharma@linaro.org>
 <20220919221509.1057574-2-bhupesh.sharma@linaro.org>
 <bb577304-f048-8fd5-fc7a-47a0897ba792@linaro.org>
 <00dd028f-d636-0cda-40ce-01d5addcbec9@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <00dd028f-d636-0cda-40ce-01d5addcbec9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 10:57, Bhupesh Sharma wrote:
>>>   		crypto: crypto@8e3a000 {
>>> -			compatible = "qcom,crypto-v5.1";
>>> +			compatible = "qcom,ipq4019-qce";
>>
>> There are few issues here:
>> 1. Compatible is not documented.
> 
> Its documented here: 
> https://lore.kernel.org/linux-arm-msm/30756e6f-952f-ccf2-b493-e515ba4f0a64@linaro.org/
> 
> [as mentioned in the dependency section in the cover letter :)]
> 
>> 2. Compatible is not supported by old kernel - ABI break.

You cannot fix this with dependencies/ordering.

>> 3. Everything won't be bisectable...
> 
> I think its a question of dependencies b/w the patchsets intended for
> separate areas. Let me think more on how, I can resolve it in newer
> versions.

DTS always goes separately so this also cannot be fixed with ordering or
dependencies. However if Bjorn is fine with it, it's good.

Best regards,
Krzysztof
