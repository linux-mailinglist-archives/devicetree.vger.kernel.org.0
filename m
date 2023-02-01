Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0810686650
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 13:59:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231357AbjBAM7D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 07:59:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbjBAM7C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 07:59:02 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DFCEB451
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 04:59:00 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id h16so17195365wrz.12
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 04:59:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TkRgoBvsamoZEywHKvCbV9XJyi8yWA+6MbvImGKamXs=;
        b=hBTgJjuMuqMdpBJHlKBExlPRRNfyr43zRQIVCYYhHv3Pj/65MJVea6JwDlt9kIVcnS
         rq+pDRMRQk5aFUKi4QxPpbhagu0uVnI3llVEkytALJ9BIseU1fqj34s9KHM/QA+jJu+a
         aFffmNTQYWGBeCleAZLH3hSwTItAMWv+UgZVKcuGAYRtXFytvtECeXB0/G4xDAeroYMD
         CAhIZ6yaDQe5+aEwequcRV8W3HOkErwd6tVkxnx1WN2M1EGu0iFsIknKTU9RMW2ex62I
         Bh6j6dZIvGic4WKnFuE9WOULb6MIRe0GN2wcoEvLlBhjRXOn1CbhDSW40Ge62HQf741c
         4g0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TkRgoBvsamoZEywHKvCbV9XJyi8yWA+6MbvImGKamXs=;
        b=OL5vPLJJqZtpm19ktMjrIdK57VRhLXvRRyzNL+BVkNFxEQGxs/Z6fYcR6FEaAAZCSQ
         qnNLi8h08EgTWwZS3TdThrl63x3X8pU5cMY3lcjRiBKqZRHNJ267in4CRce1w3/7gWEj
         GvctHP/KFzVy+GCg8FirSXEKgiclBdKh3Gox9aSki3o80Jyh3G6gtINriQ6J4Ct+1hfG
         sOzrvuIXuJNSsnQNk5zV3EdhaqCPugfrZnEDs9cb7h+akY/iiBRJB+nIQu4SAoXbUDl/
         wm7yVveLJGK0YEZKNDh9H2LLy/KPPFqv1tGDL7ZjHHKQ6SrM2kJb4jTq3yDQqP8AQ5Vv
         Y6GQ==
X-Gm-Message-State: AO0yUKX/YXnhbTG0sRTWHHE7DagxVK4M9lvq+dAhWlZUmmU+sDmDNvq0
        V0h6jxH3PvzWOuMpvfURbJKAeg==
X-Google-Smtp-Source: AK7set+ETqVjMTMjZpLUkwhOb9Vi3pV69kQ/Xge9mO9uq+whMqZKH4SBd3uJuKrlCR1q6hKJS1jMbw==
X-Received: by 2002:a5d:53ca:0:b0:2bf:cefa:fd8f with SMTP id a10-20020a5d53ca000000b002bfcefafd8fmr1584833wrw.44.1675256338708;
        Wed, 01 Feb 2023 04:58:58 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id k7-20020adfb347000000b002bfe5efca78sm10431486wrd.98.2023.02.01.04.58.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Feb 2023 04:58:57 -0800 (PST)
Message-ID: <a6e89f75-7391-171e-3cab-77d3b9f9a0cf@linaro.org>
Date:   Wed, 1 Feb 2023 13:58:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] ASoC: dt-bindings: irondevice,sma1303.yaml: Fix about
 breaking the checks
To:     Kiseok Jo <kiseok.jo@irondevice.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>
References: <20230131050946.14385-1-kiseok.jo@irondevice.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230131050946.14385-1-kiseok.jo@irondevice.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/01/2023 06:09, Kiseok Jo wrote:
> Fix the bindings checks like syntax error.
> 
> Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
> Reported-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/sound/irondevice,sma1303.yaml          | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml b/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml
> index eb87374cc812..162c52606635 100644
> --- a/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml
> +++ b/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml

I would actually prefer to revert... patch was never reviewed (never
CC'ed to all maintainers as requested by get_maintainer.pl) and will
need more fixes after that fix. Eh, more patches to come.

Best regards,
Krzysztof

