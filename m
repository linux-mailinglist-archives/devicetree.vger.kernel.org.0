Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC9226C60C7
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 08:31:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230429AbjCWHbF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 03:31:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230421AbjCWHbD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 03:31:03 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A877F940
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 00:30:44 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id ek18so82639257edb.6
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 00:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679556641;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kek16teXdLvu7dLTJUflPG5QCIq4J7BlyhkE4cbXZKE=;
        b=I8cwpoxv6YTUsd6ERdnQg6OVW1f0LD50VeDAPcBiQ+5rzFODIOEeQ540UR2wbPBYBn
         3eKaDih2WA30MZ2ndOt/29DowKZ7PCtJyooBJCF0WZmdSDBz3AOWoPFoIQeeHewg2bEK
         6xsrnfjUMH51tmh2cDddfIus/IwcXWkkzlpebpdafdnF7zDeueGePhjCwpLKqSrK90l2
         5hIJeQ3EGGxJsc9egwvbs1RWj7kOlxj8A5ApWhcp8Zqlx7/Q5AzI1/TFRTVdnfWLJN90
         kY6ijlGnCZpdZkCj6VMszJ6F+oiy2mAxRzmiZoFFHP9oblAsdXQ7e7f7JKX3aodN6KCA
         c1+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679556641;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kek16teXdLvu7dLTJUflPG5QCIq4J7BlyhkE4cbXZKE=;
        b=yU5WYcyI+ni+XZcN3ov2AX03FKLjkm8C9AjY2ddzIjuShi1hvPrM7MuWXorwCXFpYP
         Gol0sJKnzqIf0fmvD5p2/qoUk4SnIPw7vLPCyslEmwXR2qR50w8Rx6mvAWhEn/XufUW6
         SY9HwmG0pwsv4gIWyVF38MXJMHgc04rXrj9qUe7VRb2je+seDQwu3vedAxteuPvyZkqX
         sD17K+RXcCnrR7wiJ+Uq4fWjH8IGcxzBDnTaAHZwhRlyBv0S/RVOMxpritawsYOrHV6a
         WlJFezIfXBrWeHUbQqSx2OYKtmTe74Y1UojYEFcI0bfOL4z3eYG5SVczO8JTSs5KbSMM
         A8Fg==
X-Gm-Message-State: AO0yUKWBcxF+Iq9WU40T1i/NP3NyTHnh7Zv6jIRWcKFRg+u18zyKw9GB
        M9LMxTHvrLwUyPhltw6luHNKXQ==
X-Google-Smtp-Source: AK7set9uA8J9hPnS0vlnWcwMtRf84KkJwOekMNfol8X6Euuzn58Q7rv2E10do12tJ2sD8nehQPselQ==
X-Received: by 2002:a17:907:b9da:b0:920:254c:1e2d with SMTP id xa26-20020a170907b9da00b00920254c1e2dmr8972903ejc.39.1679556641524;
        Thu, 23 Mar 2023 00:30:41 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a665:ed1e:3966:c991? ([2a02:810d:15c0:828:a665:ed1e:3966:c991])
        by smtp.gmail.com with ESMTPSA id hy16-20020a1709068a7000b00931d3509af1sm8156064ejc.222.2023.03.23.00.30.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Mar 2023 00:30:41 -0700 (PDT)
Message-ID: <551fe9b4-4c99-74b8-af44-9f431c488af8@linaro.org>
Date:   Thu, 23 Mar 2023 08:30:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 2/6] mfd: Add support for the Lantiq PEF2256 framer
Content-Language: en-US
To:     Herve Codina <herve.codina@bootlin.com>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20230322134654.219957-1-herve.codina@bootlin.com>
 <20230322134654.219957-3-herve.codina@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230322134654.219957-3-herve.codina@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/03/2023 14:46, Herve Codina wrote:
> The Lantiq PEF2256 is a framer and line interface component designed to
> fulfill all required interfacing between an analog E1/T1/J1 line and the
> digital PCM system highway/H.100 bus.
> 
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>


> +static const struct of_device_id pef2256_id_table[] = {
> +	{ .compatible = "lantiq,pef2256" },
> +	{} /* sentinel */
> +};
> +MODULE_DEVICE_TABLE(of, pef2256_id_table);
> +
> +static struct platform_driver pef2256_driver = {
> +	.driver = {
> +		.name = "lantiq-pef2256",
> +		.of_match_table = of_match_ptr(pef2256_id_table),

Drop of_match_ptr. This will case warnings with W=1 and !OF.

Best regards,
Krzysztof

