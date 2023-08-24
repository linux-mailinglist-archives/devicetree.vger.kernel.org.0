Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6253778774B
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 19:51:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231130AbjHXRvU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 13:51:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242335AbjHXRvS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 13:51:18 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F6A01BD9
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 10:51:15 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99bf1f632b8so3607666b.1
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 10:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692899474; x=1693504274;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pJwYbQingK9UzpeC6Ucuw5wzc4dJ8UK8h4zfV1Q1+NY=;
        b=Z+CLJREF2M8lyxWY5zIDOoqiHga4dauarTQz4/i7eLLJKe5iIqh8VpbnihQJDOtIxp
         e0SSgeYTrv/ut/bIAswDmGDi/vpKeJ/JOt1++zFREND+4L5Crq2qxVXaU2yxuqkIA+wZ
         Lk7ZxbJ8+I/FXPxoWe2x+Bn5EymaFwp8B5+Ncf7AWqj+AprxN9nFqnoAYvfa19fhAtAj
         bJt7DWQRVL7mxUNUZ8dEpDetV8zplp/f2q013jHS45gGEr0oy/XCA8PikEZEQsEwWKd/
         r8G8Qaerny1gSFXKyknKkTGUZ9W8BVPz2YktOA5tcXwBfTgGwBLm14ScB5QBPfd5II/p
         ji1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692899474; x=1693504274;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pJwYbQingK9UzpeC6Ucuw5wzc4dJ8UK8h4zfV1Q1+NY=;
        b=LAD4wMYh8k7RkKmmtcfgWDMumOiOoqpaFDe4f3tpG0P+fV36wuvp189Sfu02KgZoZ6
         IW+OzYqcjs67R4LnWdPRv4g7AXkC02QjBc4FWFiLk3qhRL+OEbn/auK5RK2zYoFyKuw6
         Md27juvA68NunxaksCHPRYMBYhM8ExEj+JAXooVdhLJGTzGILBZhPnZNQ5pM5Dfx7/Ys
         W76m/yYnyRn/MRxC9Od4hgVhvXM5ND39IwA0i46DuE8YoQxj2+GEEMP9K3rhLHmW4QA0
         uJw4GsBK+eWOC/NzIsBnMxXF3ln6IeAKOEWi+j/NYAmNxy4ownhk0gLDQJo6ZUEU+aNl
         EJKg==
X-Gm-Message-State: AOJu0Yzs3nee6nBMG9oot8HMY3/tBWn66Cvue0Da4j4ER2NWtojE5K/H
        kO9qsKt5jENQmSi56fRCusNTWQ==
X-Google-Smtp-Source: AGHT+IGo4PFl9cwsmMlNZ0tZch0ldDhPvF4McWX2iykVavsQ/K1xdQi4wrPi04cevJ5GONRmmHpabA==
X-Received: by 2002:a17:906:5daa:b0:99d:d4ec:6c5d with SMTP id n10-20020a1709065daa00b0099dd4ec6c5dmr12191982ejv.73.1692899473913;
        Thu, 24 Aug 2023 10:51:13 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id w20-20020a170906b19400b0098f33157e7dsm11152296ejy.82.2023.08.24.10.51.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 10:51:13 -0700 (PDT)
Message-ID: <1bf12596-d6a1-8bac-1841-ba150cf135ef@linaro.org>
Date:   Thu, 24 Aug 2023 19:51:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v5 1/2] dt-bindings: imx8mm-thermal: Document
 nxp,reboot-on-critical
To:     Fabio Estevam <festevam@gmail.com>, daniel.lezcano@linaro.org
Cc:     linux-pm@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20230824165011.569386-1-festevam@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230824165011.569386-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2023 18:50, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Currently, after the SoC reaches the critical temperature, the board
> goes through a poweroff mechanism.
> 
> In some cases, such behavior does not suit well, as the board may be
> unattended in the field and rebooting may be a better approach.
> 
> The bootloader may also check the temperature and only allow the boot to
> proceed when the temperature is below a certain threshold.
> 
> Introduce the 'nxp,reboot-on-critical' property to indicate that the
> board will go through a reboot after the critical temperature is reached.
> 
> When this property is absent, the default behavior of forcing a shutdown
> is kept.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v4:
> - None. Went back to using device tree property.
> 
>  .../devicetree/bindings/thermal/imx8mm-thermal.yaml         | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> index d2c1e4573c32..9ac70360fd35 100644
> --- a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> +++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> @@ -32,6 +32,12 @@ properties:
>    clocks:
>      maxItems: 1
>  
> +  nxp,reboot-on-critical:
> +    description: Property to indicate that the system will go through a reboot
> +      after the critical temperature is reached. If absent, the system will
> +      go through shutdown after the critical temperature is reached.
> +    type: boolean

It still does not scale. If it is supposed to be DT property, you need
to solve my concerns of relying on specific implementation.

First, you need to cover all possible actions, not reverse existing OS
implementation. As I said before, If Linux decides to reboot by default,
this property becomes useless. No, it must be some sort of enum defining
desired allowed action or actions.

Second, I don't think this is specific to this particular device, so
should be rather common property shared among all thermal handlers (and
in the future any other critical-condition-handler-devices).

Best regards,
Krzysztof

