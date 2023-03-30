Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D65F6CFAF4
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 07:53:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229512AbjC3Fxa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 01:53:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229889AbjC3Fx3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 01:53:29 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC07812E
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 22:53:28 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id er13so31086176edb.9
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 22:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680155607;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=M40+CQTvWF9fErLwHCr08yZ52iq/ZqLbTfoV/Qx2dd4=;
        b=D01RUuuQjRPATkfIKAocgR6R3xldMyl8bXv/+Anm/4uiaamYH76ymNJfsFHZ2KtQXm
         jtGx90FJjL8/Cqy1iy1+g12kvTqIMFr4iYZy53eHB9Vb4+ko+alfD32/dYdm1jE3Gpdx
         J9tStYbR3yvqtKxD/nnM0IRoJmYuXrvkbHlgdJxOEcxWed+9G90r0nNpmcxPt3ddnn6+
         HqqbKjTtM0RPpeekuLaea9+ke3JpVErCjBmN7R+A1erQb8L/Je0v43E/zZVl7Z32P94b
         pOYhxeq6bMiX6IkS3yB5MJXhLjrEcscFc2QR+szN02bOSPLX3g3zsM3+641lce3Q54FP
         jv0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680155607;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M40+CQTvWF9fErLwHCr08yZ52iq/ZqLbTfoV/Qx2dd4=;
        b=BpK+GHnITENHgEfsZrh/g8b0WaLGPKsIAvLAWKg8EPPn3WLjqEfx2xjg1RUVwy/YdW
         f9de3QObX9sX+mzzhnu/usfI4zdICSAjUWl/6W+/9ylL76gVj/1zLEJzhZvxStE3um9M
         hC8i0lCJLUmG8ymoYYjZ51IIi+hBac+c9qGe30Xvx9izu3pmfLm1BVnhE4yyk2pDhCZX
         1/1HvrBgqi8UItUaRaT4UPwjU6DYloWdcJea5/GER1TuYPpoXx/smcdAnaW3pv08nhRe
         baTqP0sDrtqGbJvcsxQ2NKe6UwAF4UVj84usup0uioXvbHkEuwM0AmmUuahPydmAKrKO
         7JaQ==
X-Gm-Message-State: AAQBX9cf8hOTMR+hJB4BMKw5lr5nQwu/7lMAS8/qWYtRqeqPYqAf4ux8
        4HMO9SZzJI8yhOU43ueS7I4=
X-Google-Smtp-Source: AKy350Z1pVKoRz/cFqJEtiZq4H+sbM1zlzzYTemQe7vW390iBptjAGSrvWclpJLNIaFDhH/55J3oiQ==
X-Received: by 2002:aa7:c609:0:b0:4fc:61a5:b9c8 with SMTP id h9-20020aa7c609000000b004fc61a5b9c8mr22058783edq.11.1680155607242;
        Wed, 29 Mar 2023 22:53:27 -0700 (PDT)
Received: from ?IPV6:2a01:c23:c5e9:c400:dc70:f2b9:c0ea:5b79? (dynamic-2a01-0c23-c5e9-c400-dc70-f2b9-c0ea-5b79.c23.pool.telefonica.de. [2a01:c23:c5e9:c400:dc70:f2b9:c0ea:5b79])
        by smtp.googlemail.com with ESMTPSA id q27-20020a50aa9b000000b004af73333d6esm17688872edc.53.2023.03.29.22.53.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Mar 2023 22:53:26 -0700 (PDT)
Message-ID: <10f2a9d2-3c80-ec9c-2ea9-3701737c7818@gmail.com>
Date:   Thu, 30 Mar 2023 07:53:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: Convert Amlogic
 Meson GPIO interrupt controller binding
From:   Heiner Kallweit <hkallweit1@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <marc.zyngier@arm.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <e06e9f26-cf55-5596-c799-d698e9d7b409@gmail.com>
Content-Language: en-US
In-Reply-To: <e06e9f26-cf55-5596-c799-d698e9d7b409@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12.03.2023 22:29, Heiner Kallweit wrote:
> Convert Amlogic Meson GPIO interrupt controller binding to yaml.
> 
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
> - consider that more than one compatible may be set
> - remove bus part from example
> - remove minItem/maxItem properties for compatible
> - reduce compatible fallback complexity
> - add that 8 or 12 GIC interrupts can be used
> - fix typo
> ---
>  .../amlogic,meson-gpio-intc.txt               | 38 ----------
>  .../amlogic,meson-gpio-intc.yaml              | 72 +++++++++++++++++++
>  2 files changed, 72 insertions(+), 38 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.yaml
> 
Who's going to take this patch?

