Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C0AB64C8BD
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 13:10:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238435AbiLNMKS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 07:10:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238214AbiLNMJu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 07:09:50 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A21E286FA
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 04:07:12 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id bp15so10026915lfb.13
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 04:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oO6OQbyVZHBWFN7wCZzgZS1jReX06W9IiwEvWKYUx7c=;
        b=MeWjvxBPv/0uVMc5lClxB9LmH+Iax8ut5QGev0K8O7TGMNeQoSuCTsd+taKnxR4F5T
         eauguV5zB9v3Kse/EP0FIXGncpB77WURmALeacYysxr05rntfQq2aahjW+6UmOPIVNB6
         TYpjrKjUY+W5LHW/9iPGKsx0tWWCfd2ltQAbSMyg/W2O5j2lWjrsC9AJzVSXPxYK18zx
         chDRCIPbZeYQOanhV28seZEdQzu1sGNOdbkSShk3DL3P2u8w5WEk2TdLueli+RuTdk3E
         Gc6b8XZQd6+quAYANavva1MUYOrlFOugWRJAWEcmFkDboL/K3EDxO/OwfD26GXgUmGaq
         at9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oO6OQbyVZHBWFN7wCZzgZS1jReX06W9IiwEvWKYUx7c=;
        b=0LG1ObpG3NTdg/NEaw97eV3LczmU/E+ci9jd3gmE4zlm9vo0QB3JzytHdctkJXe4OC
         dT6nLK6UnyHn+STZNZ9V0PHoQj+hh9UuWDrpLJ/xUlX48HqeW1JHo8fhlPR46kUTsPdM
         KOV4iP7LEVy1Pw9ReG8IsiQHuCsACyCGoC/jJE5z7vU/wAS+952acCXrMw209h+8mpzI
         FIVZXgZxXszUuzZArG/2xnfHHLt3y01aVktDbSAq3nsp/YiPiILxOGg8jPePO6lgKJyf
         LF4Dfo57xsOIm5avEAJD/JCIlHrQS84uqVxDJ2ZvDknqEP//ygVYCESKBxB3QGy5KYUO
         JE2g==
X-Gm-Message-State: ANoB5pkF1liW9mD1GwxMQJKoZjIQ1rNOQlShsVZ7qGHOthhiFogaGL0x
        bj8/9jS/mnbZestVQKHpVcWMyg==
X-Google-Smtp-Source: AA0mqf4MnQ+EQSXZsF5vW4nIO6uH93fw/FdgEz9YB7bxjFhAItjAkDTxrH4UwM9TJrmd3bFLH0CSdg==
X-Received: by 2002:a05:6512:6d1:b0:4a4:68b7:e731 with SMTP id u17-20020a05651206d100b004a468b7e731mr7493747lff.27.1671019630625;
        Wed, 14 Dec 2022 04:07:10 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u30-20020ac25bde000000b004b49025f96dsm785456lfn.187.2022.12.14.04.07.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 04:07:10 -0800 (PST)
Message-ID: <69947e2f-c4c2-606e-6d02-7ab18938bb8c@linaro.org>
Date:   Wed, 14 Dec 2022 13:07:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 09/17] dt-bindings: soc: socionext: Add UniPhier system
 controller
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221213082449.2721-1-hayashi.kunihiko@socionext.com>
 <20221213082449.2721-10-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213082449.2721-10-hayashi.kunihiko@socionext.com>
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

On 13/12/2022 09:24, Kunihiko Hayashi wrote:
> Add devicetree binding schema for the system controller implemented on
> Socionext Uniphier SoCs.
> 
> This system controller has multiple functions such as clock control,
> reset control, internal watchdog timer, thermal management, and so on.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

