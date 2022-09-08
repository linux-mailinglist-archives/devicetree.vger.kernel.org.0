Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16E9B5B1F43
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 15:33:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232426AbiIHNd1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 09:33:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231858AbiIHNdI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 09:33:08 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD1A41D0D3
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 06:31:58 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id z23so19941484ljk.1
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 06:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Ohu6CozGjy5GhPmh3m1Q0H8HEbccCG50CgwFnCzBG1M=;
        b=ptC5lx8ui2N6P9aJgfgD/F4uhtNhf8ZhMAdQGSWGNJjjsoGCpVpb5iWXuz3JTUDXdP
         fJ++bXHzabeC1AT1bMDCssosOPFRXmMhsJueCRRtQk4JPstA0V+AKgvPi2HDoWButk+2
         6jYHd1d5/4QHSccAePsM42YVSYsxWZ68NYKC5vfMDqgiv7xRvIr6oHaTfgCjoqb1bwpW
         tXnXth03V8x03pU+cnwNOvuld4SD1H911urQ08y5dL1A2mC9txdftm0dHz9c8NcSLMSF
         0jhGk4sXoxMxM0fhdM1yFKP4kTz/HK4bnAVkX9FuvicMKiPe6lYJRHnfj2myLr1uihWi
         ChqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Ohu6CozGjy5GhPmh3m1Q0H8HEbccCG50CgwFnCzBG1M=;
        b=wU/Pi+oIu/9iZSHopFhNNIzPnMjNJGUo4e677Qc9hCzsK8g/nMMi/P4Z2NHdiO24yL
         tFibbIGH5N7CeGePbSQKRsN8lo//+JYi3vUmQrzi5FyW6pTup4EzPl/baPYK3PTUYYLH
         ZySYJRnBp+Ady+eVYwvnwn22qVi02XKbzvwkmX9zySSL+qHT78O9gXD36G7jeCo3YZxP
         v1icYVOvIpCVWPbENHxAROIh7TICqNEVaFLfrf+HUoMjEpyqGr44BFFPqsgEMIYQ/Ma2
         +C+2kX2XA4wjGvuvbbTNGLPPRboUPA4pKk/QPmkW7r55//YMkGFDiD85riT4Gw4Mh7Xk
         kNgA==
X-Gm-Message-State: ACgBeo0D5zfqNYHHpPCZUolsRBmmbFWixFTbA9MFisTu6MC9qyYKDtR8
        1NK5OqHU9RsC0p+JWopYUbVyKQ==
X-Google-Smtp-Source: AA6agR7Mn8Ot0yeAgeYYRNMj+qOLoKvpoqnimvLBQxheimGNxcIm97oXVTGZg8bmOEsl1kwDWwNeHQ==
X-Received: by 2002:a2e:a787:0:b0:26b:ded1:7652 with SMTP id c7-20020a2ea787000000b0026bded17652mr125008ljf.263.1662643916226;
        Thu, 08 Sep 2022 06:31:56 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a27-20020a05651c031b00b00263630ab29dsm3192690ljp.118.2022.09.08.06.31.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 06:31:55 -0700 (PDT)
Message-ID: <6e6b12aa-f516-6ea1-58e5-f46033b84985@linaro.org>
Date:   Thu, 8 Sep 2022 15:31:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 3/4] ASoC: qcom: sm8250: move some code to common
Content-Language: en-US
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, bgoswami@quicinc.com,
        perex@perex.cz, tiwai@suse.com, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220908063448.27102-1-srinivas.kandagatla@linaro.org>
 <20220908063448.27102-4-srinivas.kandagatla@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220908063448.27102-4-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2022 08:34, Srinivas Kandagatla wrote:
> SM8450 machine driver code can be reused across multiple Qualcomm SoCs,
> Atleast another 2 of them for now (SM8450 and SM8250XP).

s/Atleast/At least/

> 
> Move some of the common SoundWire stream specific code to common file
> so that other drivers can use it instead of duplicating.
> 
> This patch is to prepare the common driver to be able to add new SoCs support
> with less dupication.

s/dupication/duplication/


> 

Assuming there were no changes against v2:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
