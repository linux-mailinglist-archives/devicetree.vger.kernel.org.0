Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 697186FE04F
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 16:31:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237484AbjEJObf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 10:31:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237457AbjEJObe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 10:31:34 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 462F56A4B
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 07:31:29 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-96622bca286so929124866b.1
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 07:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683729087; x=1686321087;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cn0gXvavZtBwmdJAtlCH96N4CTt9EytZ8Lua/2SC4BQ=;
        b=kJ3va5hoU6RcKtZ4LvdGJlrKKU3KctL9lL5EKbjtBm5jTD1OyK2sowgv0BQlU3VhN8
         2hSIKNiLRFTR0x+UNksyZXdJ0tvcQ3l1OK0wzj9waLhSJDmiyCMbCTsoVwdfk8dFa77s
         WivMbBkrBGVlPcM/V/RcA+shf2gagnaK/yP1ahDds+6QZUUlPp/eg7X1LY9/x7yh6tdV
         eiFd3NnelaRFjjrIdV93OkKNGgxLLn4G1npEQaBRhUF2AwxrHLcwu0bRSTjSOjlx5y4X
         d0vWQRvSw/aYxUk44WkInsldx9J2IZW68YX7Z0T/Ju41BWTdbp9qih1gOdwPzfqQ+vA3
         fzdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683729087; x=1686321087;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cn0gXvavZtBwmdJAtlCH96N4CTt9EytZ8Lua/2SC4BQ=;
        b=eqaDBfEaKUS/EaeQrwuyAaLiDkT4i/XfQQWlOlJ4/2IZ2Id55lQI538iKFdY9fKLj2
         uWl3UdchRZKauVYAiiKh5Fv48zcrQI4gesaRC2s+kwv5/MD4BMk5kxZOyzJ7nw0nYMyn
         1G2op5NEK+iMkIHEJgW5yGQJJSggWt+/X+hUw+5DQTcb8UbgizmMQA2n05kP67G00/Pj
         XOq5pwT2hQh9XEXjhCYi3weIv6/ZqsgNayFWd01FiDdX4BcHz8OGxa4S7XKTnYlbTma5
         Tysrb5k6elsINMh2vojCX5WN4+ATy6tb92Q1SaPu++oefjaYbXlmQS+PUvzqr0/zK3+R
         u0wg==
X-Gm-Message-State: AC+VfDyJM0miitK1owp783JcLWDHhu0PDU5oeQUYantf8Fvk8LOAT39e
        +Nuw6NKodb3ygyspTeM9CcJPyw==
X-Google-Smtp-Source: ACHHUZ63BVA8ub2upwdscr2q4LTtV0cQuVHnAWjOTuTQ/PAB1qoL2a7fIMzAu5W8F08IaHNzD8ZJRQ==
X-Received: by 2002:a17:907:1b08:b0:94e:d951:d4e7 with SMTP id mp8-20020a1709071b0800b0094ed951d4e7mr16114511ejc.59.1683729087732;
        Wed, 10 May 2023 07:31:27 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id ig13-20020a1709072e0d00b0096623c00727sm2755807ejc.136.2023.05.10.07.31.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 07:31:27 -0700 (PDT)
Message-ID: <d699705d-abb7-2f91-3d84-5be82d5aeaca@linaro.org>
Date:   Wed, 10 May 2023 16:31:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v4 8/8] arm64: defconfig: Enable IPQ5018 SoC base configs
Content-Language: en-US
To:     Sricharan Ramabadhran <quic_srichara@quicinc.com>,
        agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, ulf.hansson@linaro.org,
        linus.walleij@linaro.org, catalin.marinas@arm.com, will@kernel.org,
        p.zabel@pengutronix.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230510134121.1232286-1-quic_srichara@quicinc.com>
 <20230510134121.1232286-9-quic_srichara@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510134121.1232286-9-quic_srichara@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 15:41, Sricharan Ramabadhran wrote:
> Enables clk & pinctrl related configs
> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> ---
>  arch/arm64/configs/defconfig | 3 +++


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

