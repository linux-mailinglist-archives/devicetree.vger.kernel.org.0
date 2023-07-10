Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFBBC74D4B4
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 13:41:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230114AbjGJLle (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 07:41:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229493AbjGJLle (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 07:41:34 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1DD1F4
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 04:41:32 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2b6fbf0c0e2so66169031fa.2
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 04:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688989291; x=1691581291;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y+GpTMSa7FtahKW3K+ogQY9/JpH7LlE374nc+bcRsug=;
        b=zh3b+RPhsZm6SwQ1vSTDABCfc2sQppGuTRGsTu78M71pWVciNI5SnQtV2sg+TAfx0/
         /VtaKI492MkI/0gRnI4YBcbitOVgg6V+8FaAPhufEmNmuHuqFOe4HAj4fKHrLt9eofzN
         z1xyXudZxTX0pfZuh29hhZ24mt4meBHr9AfBxJn/f1ZSH2n6VoaBPg4/wwIxoOL5D1vW
         Z+lTxuLNINyZmaxsSxXLyLlKpdMyAcSESctXsmloW4IYMu0gybnGwAiNnPhdp26AG4ta
         f3ZGk/NBafGGzJSXzV4Lid5RBYj+oEuMq8Oo9Bb+1cd76UaOPaZKHJeKPEpi3WEbkzYa
         sUkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688989291; x=1691581291;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y+GpTMSa7FtahKW3K+ogQY9/JpH7LlE374nc+bcRsug=;
        b=NL4ijLs2ZN4oxAJ18mr7DV4sGtNHW/awz+opvDgGLkVli6zxyzT56jyXwaFVpAHcRu
         Sox6zLOB6TFXewd0Ab81bIFQaeRxF16EWdx3YjGyWADlgcuJC/KVG1Rlywg8khHkdRfw
         FmqcbsVc2ON83d5f994ltFvwTSINaXucyEGLZ1xMZB7GnyaOyH6H5Od6+TG7+T/+hHLn
         6uXpZ2/2Sfo3kz1R497OMjFo3TLy78nkVa4rlSEV/WUSzINMIH4ZACqfatHwDBeeCKNg
         TW2tHhsd1My0tGJiWgbeKq1U7g8DZyQoUzG6KGY5LIDDTEuBu5a7wumvaNNmqwMxelmF
         wpIg==
X-Gm-Message-State: ABy/qLZ8w6y3gr9m80G7/QtSHdaQtwrvodYDYnf+wvIMskEDymUhjWmU
        YcBBdI9rGs/SFvZsSqgpvdsekw==
X-Google-Smtp-Source: APBJJlEWIfXyZdhk1Cz3YmapVUjVVyfvH/CVm0XhutuH5ygtJiLzMeAbE/KaNslx2WBKXBSFWUcbkQ==
X-Received: by 2002:a2e:3c07:0:b0:2b6:b98e:fe8f with SMTP id j7-20020a2e3c07000000b002b6b98efe8fmr9413337lja.32.1688989290818;
        Mon, 10 Jul 2023 04:41:30 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id u27-20020a1709060b1b00b009929c39d5c3sm6039924ejg.95.2023.07.10.04.41.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jul 2023 04:41:30 -0700 (PDT)
Message-ID: <d136d58d-9582-3833-861f-086b64c1ad36@linaro.org>
Date:   Mon, 10 Jul 2023 13:41:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] dt-bindings: ti-serdes-mux: Add defines for SERDES4 in
 J784S4 SoC
Content-Language: en-US
To:     Jayesh Choudhary <j-choudhary@ti.com>, peda@axentia.se,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        s-vadapalli@ti.com
References: <20230710102712.155195-1-j-choudhary@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230710102712.155195-1-j-choudhary@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/07/2023 12:27, Jayesh Choudhary wrote:
> SERDES4 has 4 lanes. Add lane definitions for it.
> 
> Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
> ---
>  include/dt-bindings/mux/ti-serdes.h | 20 ++++++++++++++++++++

Where are the users of this binding constants? IOW, why do you need to
add these?

I don't see users of existing constants either...


Best regards,
Krzysztof

