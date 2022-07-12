Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA8FE5713F4
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 10:08:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231808AbiGLII1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 04:08:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230139AbiGLII0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 04:08:26 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AAC752DC7
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:08:24 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id n18so10929976lfq.1
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=k4u80oyQWraiYKs1p1yWtuiMFtevIh0v4pzoGfxTAqQ=;
        b=W9uGNhVc44uelBQurw06DsGn/hKUXEcItN3tp1TJd1Rp6nUF1iDIwlj+tMOSJfU78f
         Yciq7vpqxRJ1aB7m9UEdRdyVOlfixGoY7X6bb83JKA9/Ywnkwb1AZq8W4pkdwVJpumaI
         ZWGy21evol+66hAir2gINGQSX6rC0iCGRHhO25K2QAKD+iTbu8eLvtW3wVZd2Q5oW/kW
         uEG3Yohr1S6ShM8CP4kCOXaAeXwaQueOYwpDft/nnBZKNj+jJMgk5VGpti9eZ1ENcTay
         M8binu2lB8SMGH3gtnegrmH+B5LI7OG3XEZp5luJWesxL3y4YNMfpdvXUJ7IX6Oz8lbE
         TBbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=k4u80oyQWraiYKs1p1yWtuiMFtevIh0v4pzoGfxTAqQ=;
        b=Nbx94aNMP/Dj/LLqXgT3URQLYaSLRtmcrNeNx7661o3wPiohE9dTOBwOEJmzw3cOsS
         ruHY/NWpTpFIjLVm+cgVWKxYZWUXWgPYyqY23nwbR+wAWs3EPXNjiI3feGxN+vECRv+6
         xNcptIQ5x3QXy7Yg4fjeYqlnuuJIRyBC53/MeTZ10FH3B0fih5xg+zKbZoVrkNssMjL8
         2toqehqhZt2/JUY3GR85Obwq8SdnJg1lnjg9Hd5YWbWjEY4kP9mPvL6W96Dtr5VVVBO8
         6fw77au9TUcx8g1OHOHJvzJ+SEKpucBkCx0hg9mTtxf7ig9chc3hwHv3DGkWmFoOCR7K
         gXaw==
X-Gm-Message-State: AJIora/4QywIuwqvUNE+GeyZSa35sGVlbhMSZ8gZHHJwMdVmgClhPGYD
        gIWpW1ALyxHTLkD3fsu4qxSqGIMLzCjjanIa
X-Google-Smtp-Source: AGRyM1ssF5+WPVrq7/S87s3pxBfIZb7FXFrYx2wYNxOFqmtgwcim48AU819T+sIke0XAGnWtfqS3Sw==
X-Received: by 2002:a05:6512:1523:b0:489:db27:c171 with SMTP id bq35-20020a056512152300b00489db27c171mr6724319lfb.58.1657613302851;
        Tue, 12 Jul 2022 01:08:22 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id q2-20020a2eb4a2000000b0025bd293ed8csm2285759ljm.2.2022.07.12.01.08.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 01:08:22 -0700 (PDT)
Message-ID: <78824cf6-fe30-239a-db66-63d2ee19c1f0@linaro.org>
Date:   Tue, 12 Jul 2022 10:08:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v1 1/2] dt-bindings: riscv: document the sifive e24
Content-Language: en-US
To:     Conor Dooley <mail@conchuod.ie>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Anup Patel <anup@brainfault.org>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220711184325.1367393-1-mail@conchuod.ie>
 <20220711184325.1367393-2-mail@conchuod.ie>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220711184325.1367393-2-mail@conchuod.ie>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2022 20:43, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> The SiFive E24 is a 32 bit monitor core present on the JH7100.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
