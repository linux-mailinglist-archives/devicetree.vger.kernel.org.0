Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 421996E690A
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 18:11:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230036AbjDRQL3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 12:11:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230429AbjDRQL2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 12:11:28 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A0EAE67
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 09:11:27 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id xd13so40659185ejb.4
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 09:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681834286; x=1684426286;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qzlup9m14Hkt7XbevRQcpzW+iiwUkbXn1QlFhZAj2MQ=;
        b=M9ILneZdnP7r4k/FrXPDHowXoYkrh0Tu8aKNawLfSSwpmI2w9x2L47mRDnF9PjaAgO
         NXIZsCxkjrEjvv9Nj21yfu3ZwoWV6Ip/YTtTUFEano8JTJbmLWhMn2rpOp5TVEFolEP0
         o7WHXispvnevfRn48LOp/qtGizqz2do9+Ya+ZCRGoTd0Wu3ocnmVrQherb+7cnnzKWKh
         KpMhikR3LFA9DJexYpNA3gM0ZqfubbPaPIc9WVlpdKOYo+l5T4ZeVF3wYsXdE08TCZic
         6kUTKq367XMj4rXr5oI2F+Tz9rR4zSI/3sYslxqYu2HMlQH4fH4JNY8vdWPDOP8IU5ji
         rddw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681834286; x=1684426286;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qzlup9m14Hkt7XbevRQcpzW+iiwUkbXn1QlFhZAj2MQ=;
        b=kSc9eXsn5LTzfqTi8pkdPnVPqI/X7Wk6cJUPTWGTdtYMhU7mDVbROYGHJ505NtZ703
         g05eG08kj2PiX5D782PXTBUOeA2IV1TgFnBDVQGoY/Z/dFY3RpzLrcxXwFXB3d9F5l3X
         hVM3Oa2crHGN/EBZBTdNsMPAqsqq8WahyCAd/dui0CMAqNk4/NJadBT6IzLCsnq5OWxn
         KEZ52aN198+c0XCf3Yifci9sZMEM6Zg/mbE6tvDPzD59uqf9F78h1Bin/K6hZ6+027Dh
         bTaVqGdOXevkhFNJHqcQYgD2wL/3uL2LnHMblV/BjdzwoCJNKnPuJ/NGUTaNLV9SsN6l
         ZaAg==
X-Gm-Message-State: AAQBX9dMdbgc7icBTwyFgUTVajA8a5vJ9sWy+gnw9e/KvqH3CoP6M9fW
        /RxZ+wQGIg77dLltJ1RegaRCnQ==
X-Google-Smtp-Source: AKy350Zi+EWKvmUkS0nisEPCIt5eZ+u94MN+YHhmWvbS2hs01swFIkPSocb9MZr64PZnlcdfpjLzsg==
X-Received: by 2002:a17:906:3e88:b0:94a:92e8:932c with SMTP id a8-20020a1709063e8800b0094a92e8932cmr9223798ejj.41.1681834286011;
        Tue, 18 Apr 2023 09:11:26 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a276:7d35:5226:1c77? ([2a02:810d:15c0:828:a276:7d35:5226:1c77])
        by smtp.gmail.com with ESMTPSA id v15-20020a17090606cf00b0095336e8e012sm346590ejb.176.2023.04.18.09.11.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 09:11:25 -0700 (PDT)
Message-ID: <8c400c55-fa4a-2300-23b3-01322c76f51e@linaro.org>
Date:   Tue, 18 Apr 2023 18:11:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 1/4] dt-bindings: mfd: x-powers,axp152: Document the
 AXP15060 variant
Content-Language: en-US
To:     Shengyu Qu <wiagn233@outlook.com>, lee@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        wens@csie.org, lgirdwood@gmail.com, broonie@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230417090537.6052-1-wiagn233@outlook.com>
 <TY3P286MB2611439E0FA49C224D639062989C9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <TY3P286MB2611439E0FA49C224D639062989C9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/04/2023 11:05, Shengyu Qu wrote:
> The X-Powers AXP15060 is a PMIC seen on Starfive Visionfive 2 board. Add
> relative compatible item and CPUSLDO support for it.
> 
> Changes since v1:
> - Move cpusldo before drivevbus (Krzysztof Kozlowski)
> 

Changelog usually goes after ---, especially for such trivial stuff.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

This is an automated instruction, just in case, because many review tags
are being ignored. If you do not know the process, here is a short
explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tools like b4 can help
here. However, there's no need to repost patches *only* to add the tags.
The upstream maintainer will do that for acks received on the version
they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

Best regards,
Krzysztof

