Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C43C46FF81C
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 19:08:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238838AbjEKRIa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 13:08:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238777AbjEKRI3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 13:08:29 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70DD165A7
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 10:08:28 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-965fc25f009so1327830766b.3
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 10:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683824907; x=1686416907;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W7pSkCu4jw+MIqLM1X/GSl2Ww2yA7vaTQ5eDNYGJp+k=;
        b=J31xoz4Ek1HYwjey22pRfKmWA07NmmCjA8326SQ9D9ewwvDE0Wnx1uKLrJJgoEYrlg
         1GrCv7/iLST7Fra9rl2qVFB/g8kP3GZDQgvu75F8ZzsE3nqCHzO0RNKErHPGyrGtl4NK
         4lMQOMqWzy/aFu3LSOAMcNysSPXuJdZ2bzRPfqGy6yriUl0bJG+tT/HQBjZEj1+cT1Gw
         5ft0pvlLPcF4kcFAZw/Y+ZWgcJAUzwiAvTcltIH4/9zf8TjINCPYi6xqHnzWRKXp8TGj
         FgeIgg5l2Yuy48phBjILEWpgVdLliEjQXo0Praa632cAAVvHtebVjMkDHDANxT8DIURe
         A67A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683824907; x=1686416907;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W7pSkCu4jw+MIqLM1X/GSl2Ww2yA7vaTQ5eDNYGJp+k=;
        b=TA6uTL0b+MsWxvVPIk7qIKsd9/PD0QUwMirC2LtLKF68bSlybQmyX9t3QZrXM3EQ3l
         pTcKtDyAdwR5kOlBLOtt0fM6j0/+npWYnHwS4eXR1k5KrrtOUwp7Qg2tSrPNff4VxsI2
         t4m3CfVdlMZLzrpxSH4zWJ3xqJEVof73PfgYG8rIJ91L815wweFy/dqsV4834P1+OjVy
         NOi5JcPKBjRnIVDLSuI3ECCu0LLkHFB/p8I59O3R4joGtzOnQ0NzHd76N8iqX81q+nut
         V7WUmPOiQDIBGFOCCPdxQPV+4aCfNQjEghYTUULGWC3MOgixDRVuWVYYU/tI+46AaStN
         L8bg==
X-Gm-Message-State: AC+VfDz5SIEAlCYnFt4sJ4/7gWOwYcibwa7S4iWK92e6srowon3HFw8I
        b/Zur7pDzWSTmnDXVXdn/7pq2Q==
X-Google-Smtp-Source: ACHHUZ7Mq8DfwN2CS1Qv3Zb95a/ZqyQv3M1eXU6+CuA4vYkR4lU3I3lNaZpnt0FSbPkEAtWs090WiQ==
X-Received: by 2002:a17:907:6e03:b0:96a:440b:d5dc with SMTP id sd3-20020a1709076e0300b0096a440bd5dcmr5278769ejc.54.1683824906914;
        Thu, 11 May 2023 10:08:26 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d7cd:1be6:f89d:7218? ([2a02:810d:15c0:828:d7cd:1be6:f89d:7218])
        by smtp.gmail.com with ESMTPSA id f20-20020a17090660d400b00965ac8f8a3dsm4264298ejk.173.2023.05.11.10.08.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 May 2023 10:08:26 -0700 (PDT)
Message-ID: <47ddf347-f6f9-742d-949a-c7a315dfdf24@linaro.org>
Date:   Thu, 11 May 2023 19:08:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: Add adi,ssm3515 amp schema
Content-Language: en-US
To:     =?UTF-8?Q?Martin_Povi=c5=a1er?= <povik+lin@cutebit.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        =?UTF-8?Q?Nuno_S=c3=a1?= <nuno.sa@analog.com>
Cc:     asahi@lists.linux.dev, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230511150546.8499-1-povik+lin@cutebit.org>
 <20230511150546.8499-2-povik+lin@cutebit.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230511150546.8499-2-povik+lin@cutebit.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/05/2023 17:05, Martin Povišer wrote:
> Add a DT schema for the SSM3515 amp by Analog Devices. It's a simple
> mono amplifier with digital input.
> 
> Signed-off-by: Martin Povišer <povik+lin@cutebit.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

