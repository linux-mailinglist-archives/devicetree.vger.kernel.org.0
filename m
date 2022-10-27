Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C6B060F905
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 15:29:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236089AbiJ0N3m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 09:29:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236087AbiJ0N3m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 09:29:42 -0400
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com [IPv6:2607:f8b0:4864:20::834])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DE2923BEF
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 06:29:38 -0700 (PDT)
Received: by mail-qt1-x834.google.com with SMTP id c23so1066133qtw.8
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 06:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TTwpwzBOTSlAfdzeffXJwW5XqdT/26wnvCx1vR6fN88=;
        b=qv4+MlbR8K3ZN+euxZlSZqM+OWMHZZDS2wpH/eO7JYgtfoc4JO8MkbwHp6in9KRUgL
         EKxJZFAD2XJgdpYDd6Impc+m3WR0/i65Kzy+vgOBF4WTCNOIw4eIhgIL4qgXAQKHYBJ8
         k+v0AvhZoHNT/it7B0loctrkhRg4xiw/j7qCqZZDxB/XBJSenlbcMUtNxpoPEsR3kCtS
         xQMqm7RF/3RBQFhCtUurSD49SgmudmIjCPdRwcr2LZomUyTzp5RmoPivJVrEa8ZLoqQQ
         QwKlZq0atgBEh1mx4sJw/Iwk8lfz+idUnJKx8+WjjNayF5jWgAj77YVOf+qLCwzKhnma
         CLNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TTwpwzBOTSlAfdzeffXJwW5XqdT/26wnvCx1vR6fN88=;
        b=Rj2GmVpKTYCXQZx0fg7iHxzV6yxDjkyxk3YXR90gq0WrORkYCbtauRofscBzYEDfIJ
         +s8x9OleC1o8Cw0HyS+tOKkNnduIFQVM0gWAhHjvR33UbH//y+5ZLDmsadkMOKKc1NrC
         pawuiIGn1Padr7Ldyc+TCNNEKRnw4VySmlpaOgQ/u6anhoJ6z1SSrBu24YensjPYmTxJ
         vmNr9tEbgBhNT/7vQtrnmvFkpU9sgl746GGtqDj2dyrEG1hbhf2TUPOdw8rt1e2QGTn8
         tKirOHoYEuodjesSPqTlJKvbVuTZ3P6LfYGlkHz4lR6MTH3Y6/BZjlDh2gV0SLAG+JA2
         lc7Q==
X-Gm-Message-State: ACrzQf3kYKDi+6//4+ckJyUVhYYFBD7A+oXCsVyhoWhQhRH5fenSDSwU
        x4ys41NWFDy6J96JG5ZyleMqpGnHrH2e+w==
X-Google-Smtp-Source: AMsMyM5amd8emuD3HyWk/ILmdeMMES4jzpPlL62uVD1DdECOo2koSyCcCjBVdNr4ZOTDTPegg12wmg==
X-Received: by 2002:a05:620a:438d:b0:6e2:a30c:25d1 with SMTP id a13-20020a05620a438d00b006e2a30c25d1mr34590135qkp.155.1666877366801;
        Thu, 27 Oct 2022 06:29:26 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id j6-20020a05620a288600b006f474e6a715sm927262qkp.131.2022.10.27.06.29.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 06:29:26 -0700 (PDT)
Message-ID: <d90844d5-19c8-06f2-ac99-2befc57e539e@linaro.org>
Date:   Thu, 27 Oct 2022 09:29:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 3/4] dt-bindings: arm: uniphier: Add NX1 boards
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Masami Hiramatsu <mhiramat@kernel.org>
Cc:     soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221027045157.23325-1-hayashi.kunihiko@socionext.com>
 <20221027045157.23325-4-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221027045157.23325-4-hayashi.kunihiko@socionext.com>
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

On 27/10/2022 00:51, Kunihiko Hayashi wrote:
> Add compatible string for NX1 SoM board, evaluation board, and reference
> board support.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

