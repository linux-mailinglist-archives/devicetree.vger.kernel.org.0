Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 618C36C2B17
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 08:12:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230041AbjCUHM5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 03:12:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230057AbjCUHM4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 03:12:56 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B26BE39CE9
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 00:12:35 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id i5so8975903eda.0
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 00:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679382753;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dQDpM642Q7hh+JU6LrA9OjsR/cxj5kDzAwWOZcWdIbA=;
        b=aQrcQgyo11wxnnw3d2eAgZ89uaAIlZ++7g1L/eFVF190EH3F4piD9wWL7Vb2XIroHC
         41XYuHVmRxEODlVYCa+JlRTPAY8Q59zt7FmDTd6/h6gGueI3F0ZpxNyhfrVw/1Uo5s3b
         NEW/cocSysXhyWTk6bGvZ9W6lRpM0gPDY47WSdvhV4LPAQ/4s+X9UDoV0IAokhpp9MGB
         DrLonGdwBkY+qJiRkwhMZPzdW4y5Lu3WC/YqKDyG75YhPK+RYFJvyZoOYuCNazsKVXjO
         kWBegtKb7SbKDZl3n5EBwSPz6/fhA8/RGgfnMKQWtgjtXnqzID3u42bh4hxwuheuY1pk
         kbfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679382753;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dQDpM642Q7hh+JU6LrA9OjsR/cxj5kDzAwWOZcWdIbA=;
        b=q72QzBxVMDVwxt93ehtMVGwcZBJddvokec4dG8lvbQyIjXzNQlFh4s7pr686+JT7u3
         mMxJl/UVaGPIBwpFfdmF9bWOgXoz38ws5NHt99gD26BVByMBYdyP3a9ttlm74oygR6FB
         BhiIrBCA7IwI2wzw74jZPel10+M0lrayG6lZOghUo7+c8/w/tm8lbawmzwll5zMnhgb9
         k+yP8dmC8g6+G9TwSoflEYbelBOcI4Wlob2mdxPuI9e67eJBZtneCYTQ5SjIs2NNq+2h
         ue9M88RprWeVsjMZQ2HUcs5sGXeg094nx5/fVJr0IVPjQOPhIrfoBf+sqgw+UyXzbUBE
         c7+Q==
X-Gm-Message-State: AO0yUKVZvKfNNZpfEBAOVHAe7y7wc8I454ph2SWSVk/J+O9Axd9vC2mN
        DCld57GBwlDU+g5ylBvXHLbtqA==
X-Google-Smtp-Source: AK7set/PS7SqaShaVg8CYnFcSB8qQVtfJLlDmBlSv3yu/1LJQBxNneLuUdR681oROTjjAhpE4BSueA==
X-Received: by 2002:a17:906:5d0d:b0:931:9cd2:c214 with SMTP id g13-20020a1709065d0d00b009319cd2c214mr2276084ejt.66.1679382753642;
        Tue, 21 Mar 2023 00:12:33 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:2142:d8da:5ae4:d817? ([2a02:810d:15c0:828:2142:d8da:5ae4:d817])
        by smtp.gmail.com with ESMTPSA id d8-20020a170906c20800b0093a2160168esm282129ejz.35.2023.03.21.00.12.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Mar 2023 00:12:33 -0700 (PDT)
Message-ID: <8569e185-f49f-5095-ad87-f09c0a5719e2@linaro.org>
Date:   Tue, 21 Mar 2023 08:12:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/3] dt-bindings: timer: Add timer for StarFive JH7110
 SoC
Content-Language: en-US
To:     Xingyu Wu <xingyu.wu@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Samin Guo <samin.guo@starfivetech.com>,
        linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>
References: <20230320135433.144832-1-xingyu.wu@starfivetech.com>
 <20230320135433.144832-2-xingyu.wu@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230320135433.144832-2-xingyu.wu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/03/2023 14:54, Xingyu Wu wrote:
> Add bindings for the timer on the JH7110 RISC-V SoC
> by StarFive Technology Ltd.
> 
> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

