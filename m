Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 741E55667A6
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 12:18:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230245AbiGEKS6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 06:18:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231332AbiGEKS5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 06:18:57 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3151A13FA4
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 03:18:56 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id z21so19680594lfb.12
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 03:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Y5xxTy64j/IXBvCi+UqEMeFH3+HKluv0ERR26SN793Q=;
        b=ShbD8KVHYEBcL9LRw9qfy6xw+WbCyxIo4MmO6Rco9eNztxwwK+J8EdEpAtS/CSUMnV
         Yl7ja7yrdX+V9ziX5WX7k8C1npjSj1jgJXkOaJubu0OA/1lWKYPiZn+k0U4GJB+p7tM2
         FEiVR2XKuMAGXOB8NeYhzTrdnGSf3m/Tg54XkMoW4lcMVHRwcsIc3kqjfhCntjTGL5K1
         oJOiUFO1ovQqnC2dWlqPmB7ggNstNVUdShx0PxSrodZigDSxnM12cA4jMKOrmyvauJSp
         CNrDou6negNaeAfGGrqTP8PXDCj144N2eWegeRrKY2/xBQi4Q6u/roPrj+x5CawMZiiI
         cXIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Y5xxTy64j/IXBvCi+UqEMeFH3+HKluv0ERR26SN793Q=;
        b=KtS0DJWBfKJMxQbagZX2ufUCk5MQ6J5VKdWJNkAeawwM5iUPBnDJg+WEPHcouXs6Sw
         MKu2RGBhY1xu/snycxgOYv7vCuTz1YxC1XbCoBv82zfFEB2f6Bp2PysYO/A8aAwZQyhe
         WoWNQ7IB3n6skakUFA3s1XbV+K7N1vP2kBKrUX+GfyHui0VsjO8yXfwIgkTFIwIGWpxb
         IIBpHgVfvBvcw+oU+gxu0DzzSU3oY44pYhIkUR/C9WLxoukBrZZtqRvVrDD1MSC+y+JV
         bAT7SYZl3j7LZhXh5LV2tx11zdVCPCa8ZRCxNnVIdG06ziOjcZGyxXY2BwhuyeKExo8s
         xeWw==
X-Gm-Message-State: AJIora+5yv5c9ZvaypP9jFhc1t1bEOb0o6DF62ZokIQkK8RmckB6txEm
        p05st9gZmawl3d8SWdaAJNZnYw==
X-Google-Smtp-Source: AGRyM1vi/9AQ0rFfXa1qV1eAVB2hWBksCtW/Bu9a8xbqhzOHB3YAxZ1ou0nh9spOXllZ6Lw7YYpMzw==
X-Received: by 2002:a05:6512:1053:b0:481:18b4:a90 with SMTP id c19-20020a056512105300b0048118b40a90mr21331495lfb.22.1657016334548;
        Tue, 05 Jul 2022 03:18:54 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id z6-20020a2eb526000000b0025a94f8fadasm5283789ljm.67.2022.07.05.03.18.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:18:53 -0700 (PDT)
Message-ID: <4ed57143-d182-fef2-7570-a8b000a88f58@linaro.org>
Date:   Tue, 5 Jul 2022 12:18:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 18/43] dt-bindings: phy: qcom,qmp-pcie: add example node
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-19-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-19-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2022 11:42, Johan Hovold wrote:
> Add an example node based on a cleaned up version of sm8250.dtsi.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 

Should be squashed.


Best regards,
Krzysztof
