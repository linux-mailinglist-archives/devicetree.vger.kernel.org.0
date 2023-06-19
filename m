Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B246C735391
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 12:46:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232055AbjFSKqc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 06:46:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232068AbjFSKp7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 06:45:59 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 680FC10C7
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 03:45:42 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-988b75d8b28so99866266b.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 03:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687171541; x=1689763541;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eh/xEN8ZoQ3pNye9VltW5fZDqWzM6yI1qKViGRDRdiY=;
        b=rqTYqUUTVe57oQpB+Ft9U+W8FPy4dFCXen2XpmKQ0wJrXTvC3q0+KEymkrWeetraEi
         Bpugef9gb87MjX+9RQ8EwTLZD3rWDVDvpKD9H31DbgNd9i9vVwNQ8Ef1LmTFwtFQ/0Dy
         9E1sPN+q0iQQeMzKfiGHgn12LSoOc2ta9N4alAbyHSgexjizvPDdQlf5RA/q2b7Kv9i0
         EoPVj4oEH42A9P9bRCTas2WIbm01d6LmZnjfQC0XTnQzf5xix9shSRciLCGcQjMpdu1l
         EQwZf0oMDSSoutUEzyKQKU8g4JPbsxJXIeUzIyNQMOmEF7Z8M7awmqXUru2gHUrq+mSY
         /05Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687171541; x=1689763541;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eh/xEN8ZoQ3pNye9VltW5fZDqWzM6yI1qKViGRDRdiY=;
        b=Yjd2yurh/T1iDRBaC/igO3iX6Q8XqQzQCv74L9E4uDOQgH5IUIpjZCPLHrZvkNbXS8
         lgYX1C25kYdSxJAAGDeBG+NlD9mSz5/M390IrdzjieNMwHG6Tjds/TCfKEwih49XcU19
         NbqrU3NoLOQ0R2vK68FuB71RAViTH8AAsadaEDJeEgm+Q5zICIH8XRfzm2RnnFly67X/
         v207T7QX8QVsjXQjcgNgjNf9BQkcYh6NJajTHh+ZnUZu9t/0fM0Lqp/X0wLIXig9jHzg
         Tha8u74P1QvdKvXG9hZTZksu3iytsBIhnFqQ5qtCYL+y9IWa19ZP5wb/Fbresv30EVQY
         hnoA==
X-Gm-Message-State: AC+VfDz1MTC1piEcxeSZlYP+xCxB5/CRfh5hiv2Kr4y/MKaJCOg6LP0b
        2EtR/fmir2Cn8eTOu6+1FZ9PpA==
X-Google-Smtp-Source: ACHHUZ7K4NAj4rNtt9jgjDaJR4bgrKsAlcdjXlyfsrJet+E/I+0CLGjpP7j/NDpzL5plm+vdydDsvA==
X-Received: by 2002:a17:906:4fc5:b0:982:9b01:a582 with SMTP id i5-20020a1709064fc500b009829b01a582mr8634753ejw.1.1687171540958;
        Mon, 19 Jun 2023 03:45:40 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id e23-20020a1709067e1700b00988a364023bsm1399646ejr.127.2023.06.19.03.45.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jun 2023 03:45:40 -0700 (PDT)
Message-ID: <fbca7f11-c382-7e07-f314-b199827daabb@linaro.org>
Date:   Mon, 19 Jun 2023 12:45:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v5 5/6] arm64: dts: qcom: sm8550-mtp: add pmic glink
 port/endpoints
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230601-topic-sm8550-upstream-type-c-v5-0-9221cd300903@linaro.org>
 <20230601-topic-sm8550-upstream-type-c-v5-5-9221cd300903@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230601-topic-sm8550-upstream-type-c-v5-5-9221cd300903@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/06/2023 10:07, Neil Armstrong wrote:
> Add nodes to support Type-C USB/DP functionality.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 59 +++++++++++++++++++++++++++++++--
>  1 file changed, 57 insertions(+), 2 deletions(-)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

