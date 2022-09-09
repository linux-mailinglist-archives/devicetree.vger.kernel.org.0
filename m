Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC3BA5B38F7
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 15:28:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230183AbiIIN11 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 09:27:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbiIIN10 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 09:27:26 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE93CAE860
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 06:27:25 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id lc7so4075374ejb.0
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 06:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=x6dtTTKuQg5Hl95gNtkSaQuTWihn/s7pXEzSe6FByCA=;
        b=FTjcNkY2AKeVd9cFFudSH6Zv040oGtMWrpMouYkOyWFwGlkMaH/WylCGp6g9EytE7Q
         H1oFTVQIujkvLtzuC73oS3gLEoefy4OjoA1Q2dK8OjWyTU++yWEoId+mxaIbFxyYSZrQ
         ZjtJytfCItxNR4rALD0+iR+hxKWEt62COiiULCMcCjtC2Zgb8mVwYdrmY7tCX3bV1N5N
         A9qzHVBBE5KVsnbmJOPXhjpbdPlN9MS5E42wkLWUABcbHquO55+FfstJQz0/Jy8irzCG
         j5sV4X0S189i4rhv2X4vDD3YaHs6z0fMi1StTaFDCGY7Csk2y4u0Od/ESLJuI0iXUeDc
         OveQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=x6dtTTKuQg5Hl95gNtkSaQuTWihn/s7pXEzSe6FByCA=;
        b=VqrKgpu7OlMN4Vz7kl6oJF3uAe9mwhC2L6rGwOwLm0uKdXMYRF4OMfMLHd+Yjae2Ya
         jkx2xLNuVcs1Ecnr82loSXaopia0RUqey2LCm6VKrhjeSSOTmWBXoxya5hlfVck4j0VF
         2DZNWAe5CNMawt2D9Xl1RdloRDF7WCnFeNkPFVEbeAYNSplwDAa5ZU0izTwDbJU7i/A0
         Rbg1SXKZaD5iqYx3+MnSdf8L4atxTx1MFHpL+TPHguJjcL5HDRzTjRV8FF6rOz62yfqr
         2JYNO0TeZQ8L9ayMlryPdJAYt+N97Q5zQWxKukfQjIJA3SdQEGUzqP7mT+q0wa2fWrn3
         5eSA==
X-Gm-Message-State: ACgBeo1+mcEwYeqpOmsNdVxia6CSj9mbIMBse074BEmCg0MvMgHnm2Kr
        /TCnkmP08derY/9Yklen6UbuxTv2p6a45W6gcALcRg==
X-Google-Smtp-Source: AA6agR6OrdUpbYb5XqrKDupGFJMcSc9iBEQ8k8IVrIFkICb548aBpeUZSlkfxvBxNEn3IAajwFhMcChTczpC/tqaPWM=
X-Received: by 2002:a17:907:2722:b0:731:2aeb:7942 with SMTP id
 d2-20020a170907272200b007312aeb7942mr9646800ejl.734.1662730044307; Fri, 09
 Sep 2022 06:27:24 -0700 (PDT)
MIME-Version: 1.0
References: <20220906082820.4030401-1-martyn.welch@collabora.co.uk>
In-Reply-To: <20220906082820.4030401-1-martyn.welch@collabora.co.uk>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Fri, 9 Sep 2022 15:27:13 +0200
Message-ID: <CAMRc=Mek_oaZA7c2Pb1Fueyp7pz-4txKQY+JPCxK0KUoX=k+9g@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: vendor-prefixes: add Diodes
To:     Martyn Welch <martyn.welch@collabora.co.uk>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Martyn Welch <martyn.welch@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 6, 2022 at 10:28 AM Martyn Welch
<martyn.welch@collabora.co.uk> wrote:
>
> From: Martyn Welch <martyn.welch@collabora.com>
>
> Diodes Incorporated is a manufacturer of application specific standard
> products within the discrete, logic, analog, and mixed-signal semiconductor
> markets.
>
> https://www.diodes.com/
>
> Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>
> Changes in v2:
>  - None
>
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 2f0151e9f6be..7ee9b7692ed1 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -328,6 +328,8 @@ patternProperties:
>      description: Digi International Inc.
>    "^digilent,.*":
>      description: Diglent, Inc.
> +  "^diodes,.*":
> +    description: Diodes, Inc.
>    "^dioo,.*":
>      description: Dioo Microcircuit Co., Ltd
>    "^dlc,.*":
> --
> 2.35.1
>

Picked up the entire series, thanks!

Bart
