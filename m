Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A894D766C24
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 13:54:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234437AbjG1Ly4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 07:54:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234396AbjG1Lyz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 07:54:55 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6128FEC
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 04:54:54 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99bd1d0cf2fso285963266b.3
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 04:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690545293; x=1691150093;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NVf6A5Nx/q2EKildiIxmLxp4cNtMGz7mdoFctSivjyI=;
        b=LR31EufuoXoa7rKRSNSLbrJqbocfirFDNEtrn/c0yCJgcSRTuSTd/Jf9rWoxoHXg7w
         jm3S5Bq8x5XDvAiKJM0j5lX+Bubbf5vs5E+tgGYPyJFkcAw6VJx1LCRWTlaP7gTTgUGI
         ygex/DHLX3aPhna09kJ3YogvasS9Y70LHA4hVPwThSI5GhIoFgz1Z9KWnAoynFJotCvr
         EZekZIAI+w7a55VQLw+CvOgK1lDCMsWdqxR47Zs7UpMpWmzUu4leOeB5NhalpJmpfk8B
         sXj2sdFih0OLDjwUXjOEbUzQ3uSmhitGN0b3xZfvOUkEIVchnRdS713eIjlWQAJg+Sle
         vD+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690545293; x=1691150093;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NVf6A5Nx/q2EKildiIxmLxp4cNtMGz7mdoFctSivjyI=;
        b=DgRQ/pCEnmwhZCRznWyvq45SHqI8vIhD4s7ZK2J3egznVZFeWF7LcKZqMlUR3TkDlc
         EfAJSmd1g9u0sE3t5Nmgu9SYtHsM7e3zgwuc0uI9dafvnXHmsbugYLebGjC4OQ5/sTyq
         j8xCpJXGHgmF6FAJOu6xiIcf7zFTJMN/e4foi5J2prqXjYPdANjhyfl6BnPJv0KO6evq
         OHXVNosWbSKr3CJ1apxyh9JNY1+8d3awvCbFf1IvOxXX+9r+lUG0mYYTozaoPP51n94B
         g8lVQm5jKaLUQtuOSCjSSyjVOSsWtod5jG9aKxt5wE1c8XMaFfiN3sTj3iK0ZTt/TRqk
         hWCg==
X-Gm-Message-State: ABy/qLZ0nlf1UFE6P5cgyl4LDA/t+fsoJUBkk48f0U4OsXlsFPDLLKs9
        iIeavHGBOvaidd5Wj5JaCOl/5w==
X-Google-Smtp-Source: APBJJlF+TDV989GeRya5ntP90XQlmOC2pH2oR2BwNAwssUBTcz0yINP/cvwEbcwWvUbd+oceXt1npg==
X-Received: by 2002:a17:906:7a4e:b0:99b:ca24:ce42 with SMTP id i14-20020a1709067a4e00b0099bca24ce42mr1688763ejo.44.1690545292912;
        Fri, 28 Jul 2023 04:54:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id u27-20020a1709063b9b00b0098e42bef732sm1932762ejf.183.2023.07.28.04.54.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 04:54:52 -0700 (PDT)
Message-ID: <db2703c0-b7f0-bc73-aa08-bfe4489bd999@linaro.org>
Date:   Fri, 28 Jul 2023 13:54:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 20/50] dt-bindings: atmel-nand: add
 microchip,sam9x7-pmecc
Content-Language: en-US
To:     Tudor Ambarus <tudor.ambarus@linaro.org>,
        Varshini Rajendran <varshini.rajendran@microchip.com>,
        miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, nicolas.ferre@microchip.com,
        alexandre.belloni@bootlin.com, claudiu.beznea@microchip.com,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230728102636.266309-1-varshini.rajendran@microchip.com>
 <b5c44fc5-005d-6268-af68-85eda9c330ba@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b5c44fc5-005d-6268-af68-85eda9c330ba@linaro.org>
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

On 28/07/2023 13:06, Tudor Ambarus wrote:
> 
> 
> On 7/28/23 11:26, Varshini Rajendran wrote:
>> Add microchip,sam9x7-pmecc to DT bindings documentation.
>>
> 
> Why? What's the underlying problem that motivated you do this patch?

Isn't the problem already described in commit msg, although shortly:
There is a new SoC sam9x7, where the model name is sam9x7 and it is not
a wild-card nor family name of SoCs, and we add compatible for it, as
expected by writing-bindings guideline.

Best regards,
Krzysztof

