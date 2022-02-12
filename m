Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 176AB4B362C
	for <lists+devicetree@lfdr.de>; Sat, 12 Feb 2022 17:02:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231480AbiBLQCg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Feb 2022 11:02:36 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231680AbiBLQCf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Feb 2022 11:02:35 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CF9C20E
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 08:02:31 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 19FB0402B4
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 16:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644681749;
        bh=l/sqa866xdKsWTgSNCB9rWLOZm4vGLLE7QTLVaTsoZU=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=AVKTtzVYjWktiPLBp0C2chxqg5u2pEGQKlZc9Io66M8beZSiLOXhaQUOGe1YcDnuJ
         RimgWUAXCptzB2cX8bOXqHiPhJ8hOtnwotxfdOy4Hh+gF9cGBO9pffs0YKevPZH4+S
         sfnn/erTPS2Eh/svgmilAjBoGfiqhuJPQlfhudvUB9AHbiuPPJtA0jffG9MlIClrpj
         dYbXmAcqlzQghzU7q8V5W9bm6oUqhbN3exgWrKKiTgcb1J0ASFF1VO5U0WlEZ8mZ8M
         q/nnAxCT/iauBMF8JXqRR+WRTklzecPM1+I7PfEPVwHRWDQQd5/KgXbV5sOUoZUbhP
         3SAmdjNhOIUow==
Received: by mail-ej1-f70.google.com with SMTP id kw5-20020a170907770500b006ba314a753eso4857094ejc.21
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 08:02:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=l/sqa866xdKsWTgSNCB9rWLOZm4vGLLE7QTLVaTsoZU=;
        b=A3+asBuBwNsFVY4XcFElsU6/+XuJUq0KYn98akIKqu4g/DAKoSzxKcA+OL1Efe9cXB
         5exNSV7fop2nDHlT944r/451FZ5/bvXCXMwjUYE0sTESkmszRsP+JCslJPEJY9OJJyqB
         xRvnbhKoQF6dAi9Nyv3IncsE9TbNXsyZ0kyEqO9Q17mrWkiIWSNaei3MZWEuMaTbZ6d3
         YAwJYkJV6r3KyW773+EErIPt1d7/jknAurStnX/lqbbLgYB12Qw9igJwC6E0KHFa9j5t
         AhBDUWuq7P+IkdGq9BU+P9zQnW/jxIX38yKZ3Oo7Qz2i0s6byKeTrV7lnEPgT6sWHRN/
         nEfg==
X-Gm-Message-State: AOAM530H34aY7CDC/QpYl0OOnLS45eRoz4bmfSqxmVaI/lpB+ATiv7SJ
        RL83qxNWNkJ27afTFZ/OURABKzO+Ds8wgfKRipX/3ur0FETt0aWdk8Xt8qvXskEGznPo/CztfJe
        Dd9jN04s1xVWG1qpaJA6Oeh1+b2dUKndGYQwGq2g=
X-Received: by 2002:a05:6402:50cf:: with SMTP id h15mr7182466edb.102.1644681748426;
        Sat, 12 Feb 2022 08:02:28 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxCqbWilwt1HbUpSsc2cvzvmt39AYbiXm7khxjJiFy20aciawo2HRz4CMjXWjBdjSCj4Q/WLQ==
X-Received: by 2002:a05:6402:50cf:: with SMTP id h15mr7182452edb.102.1644681748216;
        Sat, 12 Feb 2022 08:02:28 -0800 (PST)
Received: from [192.168.0.101] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id b14sm5098399ejb.160.2022.02.12.08.02.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Feb 2022 08:02:27 -0800 (PST)
Message-ID: <78327112-a979-fdc8-50a6-35738c9017a7@canonical.com>
Date:   Sat, 12 Feb 2022 17:02:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3] dt-bindings: crypto: convert rockchip-crypto to yaml
Content-Language: en-US
To:     Corentin Labbe <clabbe@baylibre.com>, davem@davemloft.net,
        heiko@sntech.de, herbert@gondor.apana.org.au, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org
References: <20220211115925.3382735-1-clabbe@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220211115925.3382735-1-clabbe@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/02/2022 12:59, Corentin Labbe wrote:
> Convert rockchip-crypto to yaml
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
> Changes since v1:
> - fixed example
> - renamed to a new name
> - fixed some maxItems
> 
> Change since v2:
> - Fixed maintainers section
> 
>  .../crypto/rockchip,rk3288-crypto.yaml        | 66 +++++++++++++++++++
>  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
>  2 files changed, 66 insertions(+), 28 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
>  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
