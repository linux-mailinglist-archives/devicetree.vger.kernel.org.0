Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF19C629F54
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 17:43:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238685AbiKOQnk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 11:43:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238289AbiKOQn1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 11:43:27 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 185091F3
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 08:43:24 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id s24so18265392ljs.11
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 08:43:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZEBDvtJhWomLw8sN0K421zPrOXrpSvCJSM+NflGpqes=;
        b=HgJHHgbtARUmX8OopoBXVK8pmzYnZlP4d6obs2+NVxGtmI6mfDtZOYURXLnfSFeW3u
         ATv7IdfwsfVJXM9pfBME3Vq3frWJlEdsn/RYll98Bdc8VKTTZb9ejMWQGBHuzSP9KLl7
         niGqyVDFv/ehAnLesHQTOE5Z2aJZeiihT5IIvB4drGXT5GIK3JulfmyuVkav/LINvkc9
         wo92oj8J0E5iWwpa/DNfTESEY3rcn6S+ujHSCIFaL7YFwCz/MQglQMr+Ovlf5eZWgtYY
         pLlFvXrxnRoom6ihKycnmTtDIF3XN/xsNr6vn0eTq1W1CbKlUbifvh6ZJ+P+Wie+8ZdJ
         XxUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZEBDvtJhWomLw8sN0K421zPrOXrpSvCJSM+NflGpqes=;
        b=IaxvaIQjLlnyPeePNbz4GGZu1XHk7BcJ3MT22GJjE6MynFLSa7ebdGs4aO4I6qhjAt
         g5hFvRFdrdLFQ8U56wGmyobzLW633xP37hqiWkZ8yNi0pY3CPifxX2CYI09sCcIP7nul
         VvOCE4iHmZD5ZNgDM105+fXnGEhHIi2BUhUvbHjuCSwn1hzKXE1Crw9116WDX2Tllirg
         IaLt3beulUsdONY0nbsY6pPdfnAQAkfUhO7vers/dx6cUN6Lox62jX3Zw2KYsaDmpB5C
         CERunnfBAkDiyhTtS1FYQcwXOmKpj3jZMqtQXETFMcCoeU3cgPkn/DDzpqPaNVY6UrC1
         bUWA==
X-Gm-Message-State: ANoB5pnd2NUKTyUONqZBrds628HLi10Ce84tOzzew0d8JXx5jbmeLkT7
        9A1iAB1KHPpzOGXO1x8HYBFesQ==
X-Google-Smtp-Source: AA0mqf6ASnYVoOk4ydWsFVmdX++xvXFWnY1ekGXnfw8oopXx57hQW1SUDaf3emce/ap+pTicd5NB4Q==
X-Received: by 2002:a2e:bf1b:0:b0:277:6d79:8936 with SMTP id c27-20020a2ebf1b000000b002776d798936mr6776017ljr.362.1668530602456;
        Tue, 15 Nov 2022 08:43:22 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n5-20020a056512388500b00492ea54beeasm2266501lft.306.2022.11.15.08.43.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 08:43:22 -0800 (PST)
Message-ID: <baaa34ca-4241-c66b-9cf0-ee0988667610@linaro.org>
Date:   Tue, 15 Nov 2022 17:43:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 07/11] soc: qcom: socinfo: Add MSM8956/76 SoC IDs to
 the soc_id table
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, agross@kernel.org
Cc:     andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, jassisinghbrar@gmail.com,
        srinivas.kandagatla@linaro.org, jic23@kernel.org, lars@metafoo.de,
        keescook@chromium.org, tony.luck@intel.com, gpiccoli@igalia.com,
        evgreen@chromium.org, gregkh@linuxfoundation.org,
        a39.skl@gmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-iio@vger.kernel.org, linux-hardening@vger.kernel.org,
        marijn.suijten@somainline.org, kernel@collabora.com, luca@z3ntu.xyz
References: <20221111120156.48040-1-angelogioacchino.delregno@collabora.com>
 <20221111120156.48040-8-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221111120156.48040-8-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/11/2022 13:01, AngeloGioacchino Del Regno wrote:
> Add SoC ID table entries for MSM8956 and MSM8976 chips.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  drivers/soc/qcom/socinfo.c | 2 ++
>  1 file changed, 2 insertions(+)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

