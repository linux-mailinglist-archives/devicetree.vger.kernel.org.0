Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD129649A84
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 09:57:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231254AbiLLI5d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 03:57:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231492AbiLLI5c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 03:57:32 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4042EE8A
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 00:57:31 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id q6so7345571lfm.10
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 00:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LXScs9rztSpSkNJbictXJleoicIE9mkkluz/f8rPEuI=;
        b=evszpntVaflCXd4CGXUCTJsFAKUtGM2d5iQZ4WhP2TVqSsqVrwxUgSpH5z8Oq82SI2
         xGonyC70r1Np3X7PJ6SBTCc8enF08988DsryyvFqpYnFYN1KPUprx03KAD4Zc1SZVppV
         TRr1Pnr9ZPFVjpBlo/eBv8ncOO3kElArAJxg6FbzNvykWuVStd3aF+VgG3JzXMm+n9Bb
         nizrGaO8PIFp4SFM/CXWk3yjUI7GGOveNUWgV+K2FzVBMBwDj+tfHyCGjKALYI9qe2+W
         ZyjyUEjc6MkZdCm5dliqevS0B5TBQfEDvkM0idcY/gFDu48pGLDBySQsHAbzhrROcxKn
         Sakw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LXScs9rztSpSkNJbictXJleoicIE9mkkluz/f8rPEuI=;
        b=V+CjD3fez5PVSn0jZeA3FRdbJN4YsDA3MQ3qVaCRgy0VWXWgQR3Ms7Mh/3A9kWRvGR
         VckIlzvQnv7sK8SoAKb8Ta4QVH9VT2Fcs/RBPAiWkbJmBre0R5MihiQa5dwhCdoRrS5k
         r1lYe7g+CCx2aYuyqhTDA9J/kfpZRsTlP/QJpvIqx6e/tvXjEUF3gwJ0K2FVCK6JbS1P
         7749l1fuNruFvZd7joQ2Hf/0fHNJH/lRwICHvDiXfYGlDlZ2zHYLNpM/rvS/kMJ1W8gS
         PWOrsVGcO6uf4EVxoRp4ahd07SXvD9giJ6Ao9riAaLDwqK3PKQb7JKpin5BTMrsNrtMr
         TTNg==
X-Gm-Message-State: ANoB5plFEdUxeCgz3eRg40MCcBxrW46smX7TwhKey+GXEIhfGU7E6Gcy
        nVGbGxyg8OedSBQxwaXOsxRhgxgShACBenY7YoM=
X-Google-Smtp-Source: AA0mqf5jImk0G0RSAS+KhYzDbVKkOT9DpX38l0bz8lRsruXfyA5vqggWpIv9IiMGwQ00klhm6n+XTg==
X-Received: by 2002:a05:6512:298f:b0:4b6:ee97:36d2 with SMTP id du15-20020a056512298f00b004b6ee9736d2mr440283lfb.40.1670835449630;
        Mon, 12 Dec 2022 00:57:29 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z10-20020a19504a000000b0048b0696d0b1sm1569757lfj.90.2022.12.12.00.57.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Dec 2022 00:57:29 -0800 (PST)
Message-ID: <3ebdec68-be1e-fd93-e909-2acd0b400e92@linaro.org>
Date:   Mon, 12 Dec 2022 09:57:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 1/2] dt-bindings: rtc: m41t80: Convert text schema to
 YAML one
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rtc@vger.kernel.org
References: <20221211205124.23823-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221211205124.23823-1-marex@denx.de>
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

On 11/12/2022 21:51, Marek Vasut wrote:
> Convert the m41t80 text schema to YAML schema.
> 
> Add "#clock-cells" requirement, which is required by clock-output-names.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

