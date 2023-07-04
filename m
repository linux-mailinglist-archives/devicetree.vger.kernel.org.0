Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 054C77472A6
	for <lists+devicetree@lfdr.de>; Tue,  4 Jul 2023 15:22:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231666AbjGDNWO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jul 2023 09:22:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231700AbjGDNVv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jul 2023 09:21:51 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F9B71985
        for <devicetree@vger.kernel.org>; Tue,  4 Jul 2023 06:21:33 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-98dfb3f9af6so685663966b.2
        for <devicetree@vger.kernel.org>; Tue, 04 Jul 2023 06:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688476892; x=1691068892;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RBSF1NolQO8rskeUSMv3t8uDwxMXaGRNLk5ilo4Ryuw=;
        b=pNiEfh7s3N/B+0ZxCLnR0kBEzaW0kSO6X8+7eP1ur1DXCI6lW6OySCKvEMl3hfKhF5
         VNnmJuVnJfDw6Xo9akbj7qi1PsFZJ+XagzITJ9aRQmiGrVnXgPFqe5or4p4lYnNjzDa/
         Oi3cWN0Iv2VfnqMw+3BqoFYDG+i3CKppYBkE8BMVMRm5S/5qTvMNVcB3FYhHU8l6m6ba
         Vo8SLZJULu06uwSccIK2tEEIssQpPhph6+qdA/d7hzgDNFlE7EgndHOplSTJj8PY+sVz
         2HsEiP5QnrE91awtaGCmnIuxp3WjX47iPO5BCXcfgf9D6uJGeddnmAOAkCuIGOekoloS
         IDuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688476892; x=1691068892;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RBSF1NolQO8rskeUSMv3t8uDwxMXaGRNLk5ilo4Ryuw=;
        b=SBJEjSpOyBVNT+MiQkHP3yCbVQ8XT497xd0REnwAclut3NvgLQgfpLtg6psVXNPLlD
         udv2AZhPsaMtegHcJ3/AP0+k8XulYF71EXdLmgmsJzAx3zi5YZ3KqMCdhnW5hhzQimAf
         rulZHSthz2bAcDrSyNgohELF2tTWdEMp+5lNBDGHL66aggHhVC1WlrQDbOHZTNAXIYFg
         c+IfZs3SqwQEsBSKMsXGODns1tcUEs7G/R6AQ34QftP6xlblVpFuuUR9RJpMnbPAeeFM
         gmbc5ANQ4p2532tjH2l5YaMgN5yZo5wpYif4amnDGK66Dk4J/sIIbAzCOCWfpGHia+XK
         9lPw==
X-Gm-Message-State: ABy/qLYSgYqOIju6eJGhCcq0n/cLSchcuQTU5wRrhMq6Mzki2NnogVlC
        94gZXqddnAlu3VS/lRajFYV6nQ==
X-Google-Smtp-Source: ACHHUZ7GruU2SMpelDGt/k32whGmAdH3xrb4LP13iZfv51rQJZeKedemsN+25543YUVb0HiPq59Phg==
X-Received: by 2002:a17:906:af15:b0:987:9823:b9f with SMTP id lx21-20020a170906af1500b0098798230b9fmr10240987ejb.28.1688476892394;
        Tue, 04 Jul 2023 06:21:32 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id r21-20020a1709067fd500b009828e26e519sm13100150ejs.122.2023.07.04.06.21.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jul 2023 06:21:31 -0700 (PDT)
Message-ID: <a8c1a5e7-9938-bf6c-6bb7-6c1e4d8ce08b@linaro.org>
Date:   Tue, 4 Jul 2023 15:21:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [RESEND v1 2/2] riscv: dts: starfive: Add spi node for JH7110 SoC
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>
Cc:     William Qiu <william.qiu@starfivetech.com>,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Linus Walleij <linus.walleij@linaro.org>
References: <20230704092200.85401-1-william.qiu@starfivetech.com>
 <20230704092200.85401-3-william.qiu@starfivetech.com>
 <7f3b600d-d315-22d6-b987-eabfe1b04fdf@linaro.org>
 <eba1e868-6371-42fe-91be-bcbee54d1aff@sirena.org.uk>
 <4afd90d9-f1bd-f40d-1c79-50fef1406ab7@linaro.org>
 <6307c5b2-64d2-405f-b1a5-696d4184f6a0@sirena.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6307c5b2-64d2-405f-b1a5-696d4184f6a0@sirena.org.uk>
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

On 04/07/2023 15:16, Mark Brown wrote:
> On Tue, Jul 04, 2023 at 02:27:57PM +0200, Krzysztof Kozlowski wrote:
> 
>> Also see:
>> "every Co-developed-by: must be immediately
>> followed by a Signed-off-by: of the associated co-author."
> 
>> https://elixir.bootlin.com/linux/v6.4/source/Documentation/process/submitting-patches.rst#L467
> 
> Oh, that seems unhelpful especially with it not lining up with the DCO.

I assume the intention was here that if I attribute some co-author with
Co-developed-by, then I know that author, therefore I expect author to
explicitly participate in DCO chain.

Otherwise, just drop the Co-developed-by.

Best regards,
Krzysztof

