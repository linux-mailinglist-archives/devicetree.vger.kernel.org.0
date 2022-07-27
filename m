Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A57275825D2
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 13:45:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232433AbiG0Lo6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 07:44:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232399AbiG0Lo5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 07:44:57 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 810A74A812
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 04:44:56 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id p22so9706322lji.10
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 04:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=jtn8/pXZqVmyVmHFD0ROY+AOvBnJkk+T5jet+Sm8Mvw=;
        b=dyptcIS3dLYiYzrlsmmZOGIFth86TvW5l6M+4b0Mr9yn3urso9iRQ8rrR+W6NJXyte
         5wUp/Y9tUrZurvjY8+ZAJMb6OHPUFlDkKz7oyecCf62uJpXyr1ZO7ZLgLiNlHY5Fkt4R
         /dpHOcf947Ov7D8EhsepB/JwpSU8g3etAeE6vzsV1mrOSD8A1zEYB7bRuEr93FTaCZTY
         +y07iTbyKMJB1/WNq35+23UBJlm7NWtygCOAJUjsxXqzaABbVnr+IFMZJ4JoV0dlaR3b
         D+vLSZZKd+EsmqYaht1OLj05H+041oIkPOjblXPTeuAQ4lQPLzQjHGJ37ZNFf9kcQt+W
         0TNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=jtn8/pXZqVmyVmHFD0ROY+AOvBnJkk+T5jet+Sm8Mvw=;
        b=K/vb/QJtJ//IGXxotJuex9BWKs3WrdaRgAQHATStIzcr9B7BJs2aqeqta6TvwSdUUR
         lCdPFKf6yKm0P6xwYqaE9YifFA30iYjrhqNNQOvCeyKzYALoHpffrzYvbYAn85+x1CZL
         blLkuzb2Klwj+Ew3Pp0gMGdaovpxQvDgUqTGxgpIamH0X+k3wGR3dOxGIcfC0vHVo4Wv
         PDOTHYzg7LhDuAaHcUenWmeb9kaykRb6utmvx07gtlHHd/NtHP2sjpiO1igNN/NsLvo7
         5uCt9lLMVuqnJ7JOn4tpVN4nfuqVH31dPRkPr1cLLmQl6U8GblwgY+InI8hhXUEYPRlV
         onag==
X-Gm-Message-State: AJIora8LkRxvGauuW9EFlfqVeoabVxFI/NYIM5GGuP1ZeZKVZGUEFHjV
        AwQBVS8ELTYQmoDh38W2HyP0gg==
X-Google-Smtp-Source: AGRyM1vKJFrPlmDXjA4BYKoOZrKRj/fRP1aoIdOTCo6UEZmXfLZ4iTyhVjD9Nptbds6dKOvZYwUDIg==
X-Received: by 2002:a2e:9ada:0:b0:25e:1109:b067 with SMTP id p26-20020a2e9ada000000b0025e1109b067mr3243919ljj.425.1658922294916;
        Wed, 27 Jul 2022 04:44:54 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id o5-20020ac24345000000b0047920d89606sm3745948lfl.187.2022.07.27.04.44.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 04:44:54 -0700 (PDT)
Message-ID: <9f32a4a9-66b4-ba2e-1713-436103c2faf8@linaro.org>
Date:   Wed, 27 Jul 2022 13:44:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 4/6] dt-bindings: riscv: Add DT binding documentation for
 Renesas RZ/Five SoC and SMARC EVK
Content-Language: en-US
To:     "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Anup Patel <anup@brainfault.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Biju Das <biju.das.jz@bp.renesas.com>
References: <20220726180623.1668-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20220726180623.1668-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <636e9214-4b36-e9a6-3c6b-b6edb944335e@linaro.org>
 <CA+V-a8sTw1qzuTeD2vb7RgDmmNdEP5qEcxXCjrFgkyrBrLrt5Q@mail.gmail.com>
 <e64cc15e-b31e-876d-b3cf-b60d255c495b@linaro.org>
 <CA+V-a8u1VW9xaj2KjySyMuegpisLVENO_6uJOpAFZGbKziYLYw@mail.gmail.com>
 <e31e0c1f-4755-704e-8428-93970877d8f5@linaro.org>
 <CA+V-a8sX=Frs_cds9MriauTFRvcZUNCvoeZ+SaC0GUpL7L6qhg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+V-a8sX=Frs_cds9MriauTFRvcZUNCvoeZ+SaC0GUpL7L6qhg@mail.gmail.com>
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

On 27/07/2022 13:37, Lad, Prabhakar wrote:
>>>>
>>> I did run the dtbs_check test as per your suggestion (below is the
>>> log) and didn't see "no matching schema error"
>>>
>>
>> So you do not see any errors at all. Then it does not work, does it?
>>
> Right I reverted my changes I can see it complaining, dtb_check seems
> to have returned false positive in my case.
> 
> What approach would you suggest to ignore the schema here?

I don't think currently it would work with your approach. Instead, you
should select here all SoCs which the schema should match.

This leads to my previous concern - you use the same SoC compatible for
two different architectures and different SoCs: ARMv8 and RISC-V.

Best regards,
Krzysztof
