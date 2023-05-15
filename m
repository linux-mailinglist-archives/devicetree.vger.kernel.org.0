Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21F8A7031DF
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 17:51:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240266AbjEOPvr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 11:51:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232079AbjEOPvq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 11:51:46 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74FDF1FE1
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 08:51:43 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-965cc5170bdso1987755466b.2
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 08:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684165902; x=1686757902;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kdNz3qj51SwfZ+r+b09kzPJZyDa4Ig5/xBmsTKTUjEQ=;
        b=f5nuVdhZ+hRRBZQFY9CfxX4RUOG49IB73A/FZEkdPmLju2E14owoT7kHmviZf5NJ75
         mJprvxfbO2ssflDOSJ5qpTQq3SiUXn3OFrGUzRNAjH8ukkiRgsL53czi/0G+8k9nkMLM
         1DUdF4+5W9wKimMn/mY7zRT8YumgRpxSwAz/wpLnFMzdcqwQHBtz6miSr9+cK/ADoM2q
         yRcz6LejFZ0dln7w2F8Gs9ZYnKTenveUpBKYKUb1tN6h07qrl6YBoPsQzZESayTBUhKJ
         KnrQjvhVX/SHTBx6jAwfgZQOgYUb8fdF541vguWy0w62MVO1hgmaZ4OUucweuynqUI5j
         6vFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684165902; x=1686757902;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kdNz3qj51SwfZ+r+b09kzPJZyDa4Ig5/xBmsTKTUjEQ=;
        b=Je4TGzj8STSn74xiXv1SiM4Ffz9DbneSC5tt9flxd/dXM+4yY5K82DKMx8k1hmbANl
         lwfVcOjXOGZRM7fgRjL3k8BaVEvwISKa47pubcqOlLc6aEH/XYsSQsSGoQUWCOvRla/J
         g7M+E/srcpt8yqNcV1BOfKYqXEg+ZDsN3PgrTbRFVEI81b4golIr0gS23NCm9pEkKJGB
         lPnxtqsYyJdSWfQWsl0Ig2YMJGlWvG/RRMrboEpvmEyLCEmqlgroiL4hoZfGmRxRCfaC
         QeXgY0b6QOvdlE3br9gX6lqlsVJgLhN+1NKbbFA6U/zS7rKaJW5z8PpTr/q2T7HuWxn9
         ZKWg==
X-Gm-Message-State: AC+VfDyggEoqU/6CUftqSMfe7Y3mcKZdys4Hdbste5umIrzYbfnZEz0J
        2TNpj3NweV3uBuFuikRLXJ9MFB6BzwaXqOnrjc0=
X-Google-Smtp-Source: ACHHUZ5jN17XrGaPHyCGUhm5wC27WVRKpROAOuSRrGeFBkg1hTTaBXVX7+9yVJD+NdrVG9eG+IklPQ==
X-Received: by 2002:a17:906:da88:b0:93a:353d:e38b with SMTP id xh8-20020a170906da8800b0093a353de38bmr32619468ejb.37.1684165901929;
        Mon, 15 May 2023 08:51:41 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6470:25b8:7c2d:1992? ([2a02:810d:15c0:828:6470:25b8:7c2d:1992])
        by smtp.gmail.com with ESMTPSA id u18-20020a170906069200b00967004187b8sm9635438ejb.36.2023.05.15.08.51.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 May 2023 08:51:41 -0700 (PDT)
Message-ID: <a63df7fa-5bd0-97fe-5a6e-74aca1d50599@linaro.org>
Date:   Mon, 15 May 2023 17:51:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2] ASoC: dt-bindings: nau8824: Convert to dtschema
Content-Language: en-US
To:     David Lin <CTLIN0@nuvoton.com>, broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
References: <20230515065557.614125-1-CTLIN0@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230515065557.614125-1-CTLIN0@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/05/2023 08:55, David Lin wrote:
> Convert the NAU8824 audio CODEC bindings to DT schema.
> 
> Signed-off-by: David Lin <CTLIN0@nuvoton.com>
> ---
> Change:


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

