Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FF136FBF77
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 08:45:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232230AbjEIGpa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 02:45:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234991AbjEIGpZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 02:45:25 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 409F119B1
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 23:45:24 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-965e93f915aso812824966b.2
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 23:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683614723; x=1686206723;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KkkwZGYc3R6aqGWovPS6fL3TwhS7zHuNiOUzftljdYo=;
        b=oNnHNclQiQqyOFs1sVKNd2+HUhAREXxl2b8JDMMgjtnbUL6nvEQC2QndHPYuSk9CVu
         uy5uS68vT+ksMA0ETaz4q0ij+r8pGxg8LslRgwnyYy++a+wMiBJjx0e3FshaSGZMwIKw
         Hv4/dyjjJOtOTCrkx0+7Mr+iixHmy6yWGbUWVp3dmGBQYqTmxKL/QU2Ho9F2/YGyHZ6J
         2Q1vuGHyY1ahOqPZ4waWXesqiOZaWtY8ARiGobOttDOw4O9baQK6GSXXVg79YBmkLQa3
         aafDqN7zfgFLssEbd3doHTJiDtVqwIA6ZDVcA7ozPfe/K+Rm6xnN40S7uC9qG/QMnN3i
         p+cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683614723; x=1686206723;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KkkwZGYc3R6aqGWovPS6fL3TwhS7zHuNiOUzftljdYo=;
        b=EJExBAx9+o6rFgpIYLfqjsGlW2QletcNbj8ZSTLiG+AGnzG8+Ek0ciced6eQmhIFf7
         ZaxJJDXGznsnyvGIP1uDC86+GkT0koqSJCs+u1CQixRYEcX3pVJOlphhdgoRbu9EqNAd
         KdDRxBEs23xMQDu5AS6KfNEilyfjQjPDv3zsP37ncbqJoNCjfSQAgq/Bt0S9qsOnCeDp
         0+VlZxMOq7cItFl+MBWP8kJD8G3fEBiplpo7924mL1qt1XVMNtajkGTuwlNupyBPnyac
         QEh2m87SNnQgN2DnntF+YKYuRGmGawPjmCOEsK+Z4jlK/P7qb0uTed+zeskNa5PLy8cG
         rJoQ==
X-Gm-Message-State: AC+VfDzYsd+pRBUoviqtgLA1Af3+q6OcGVy5/RolfE4UelvU37EV+9fl
        viGp0OOpNRwUc1hc86YjyCPcvg==
X-Google-Smtp-Source: ACHHUZ4iebzY5pxA7CUQn0rCWjzuhqoulxx93nLAgMs6mvQTCKJHPxKnwE7U5KDVs3ej41XJI9pwBA==
X-Received: by 2002:a17:907:7f1b:b0:966:37b2:7354 with SMTP id qf27-20020a1709077f1b00b0096637b27354mr7154990ejc.31.1683614722744;
        Mon, 08 May 2023 23:45:22 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id k21-20020a170906055500b009584c5bcbc7sm906896eja.49.2023.05.08.23.45.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 23:45:21 -0700 (PDT)
Message-ID: <01be24b3-aaf2-e27b-d00e-f8649a497463@linaro.org>
Date:   Tue, 9 May 2023 08:45:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH V2 1/2] dt-bindings: nvmem: imx-ocotp: support i.MX93
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
        srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>
References: <20230508114639.1525521-1-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230508114639.1525521-1-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2023 13:46, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add i.MX93 OCOTP support
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V2:


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

