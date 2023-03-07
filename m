Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92B2F6AD9C8
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 10:00:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230139AbjCGJAu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 04:00:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230115AbjCGJAs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 04:00:48 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9044E51CBB
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 01:00:46 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id g3so49497142eda.1
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 01:00:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678179645;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g0vYkOa0PoBId8dXA1mab0Y6HwS+Gs0X3+n+J6uDR48=;
        b=NV1Nd45GytToNw9aOikhQ9L8GzQvpYRbnNuIYOKVEo7JC+kURcPxlt+GROykAFoDEb
         rIAx6QgPWEtDz6GU31X52VBqcMtUggzwZghOHSgL35MNZMAN3bkgLKgNKtYK6ZK4IWbn
         OqXSO6ccpSvh7OgzhIXHXzLBP+XNPm2VgrzeMYSBFvKrxZPOKgcsK17TO85oYVAx1Hp3
         77jpgIT0laLuTw11bNB25AOLGSDboQx3hpVKR8SoJSb7/uEgEV2R0ITBPo1fmlWKkpzD
         oxRntkUT+4WIpFwmW721KLNCtY3+TPfEqr4MNo96mhC1kbIffLrUD8//jKnLXo9CheGM
         niDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678179645;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g0vYkOa0PoBId8dXA1mab0Y6HwS+Gs0X3+n+J6uDR48=;
        b=g+4TTvVVhqFZ/PZx0ykyRftBwwBJsONfrIOxRA7l2+hzeKgn96JKPhrh2EbMcjvTFX
         CNJtF0z3NaHzWtY/b+bj7IZULpcsgbkTSHislli5rFWzI16ZymZyoPmCQvZlE9rL+xbX
         Qbqwfp36gDnjS9AOb75Jr7BWmqNpdSLvIyRycz4n6G46YpcovI6TUI2Bvq8AXHdRO7MI
         +Ac039tTrv4HXUeSB26ij0Fp/l16IZm2c4uSSb2CtCn2bKFg4C3IcwwG0/Z0M6kZXrCa
         xdrBQDpI44NxLzJR+zIJ+zaD+usB6dTUTmmQ4qM9r3UW1nPud/6ICJpQ/Jthv4QxRdZM
         6uEQ==
X-Gm-Message-State: AO0yUKXNfv1TffxN3PC/enrN2MlKrhyBQgmLg0N6CNBt1sMqb8EmataP
        Ru3RkGmiJnPG+a7sUdUC/6gAfw==
X-Google-Smtp-Source: AK7set92Dtb5JAFq5WWkgalNVpDdJ8rm6dEQZckxT+FZE6VibN618Liy1j3PEiMosIKVpJcCzfe10w==
X-Received: by 2002:a17:906:da82:b0:88f:9f5e:f40 with SMTP id xh2-20020a170906da8200b0088f9f5e0f40mr19949227ejb.68.1678179645007;
        Tue, 07 Mar 2023 01:00:45 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:5310:35c7:6f9e:2cd3? ([2a02:810d:15c0:828:5310:35c7:6f9e:2cd3])
        by smtp.gmail.com with ESMTPSA id v18-20020a17090606d200b008ca37f3eae9sm5730748ejb.131.2023.03.07.01.00.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 01:00:44 -0800 (PST)
Message-ID: <39ba7357-541b-a70e-5793-91bb9e038938@linaro.org>
Date:   Tue, 7 Mar 2023 10:00:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 1/2] dt-bindings: syscon: Add StarFive syscon doc
Content-Language: en-US
To:     William Qiu <william.qiu@starfivetech.com>,
        devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        linux-riscv@lists.infradead.org
References: <20230307024646.10216-1-william.qiu@starfivetech.com>
 <20230307024646.10216-2-william.qiu@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230307024646.10216-2-william.qiu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2023 03:46, William Qiu wrote:
> Add documentation to describe StarFive System Controller Registers.

Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching). This is not "syscon" subsystem, but rather
starfive.

> 
> Signed-off-by: William Qiu <william.qiu@starfivetech.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../bindings/soc/starfive/jh7110-syscon.yaml  | 41 +++++++++++++++++++
>  MAINTAINERS                                   |  5 +++
>  2 files changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/starfive/jh7110-syscon.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/starfive/jh7110-syscon.yaml b/Documentation/devicetree/bindings/soc/starfive/jh7110-syscon.yaml
> new file mode 100644
> index 000000000000..72c8850602b5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/starfive/jh7110-syscon.yaml

Filename: starfive,jh7110-syscon.yaml



Best regards,
Krzysztof

