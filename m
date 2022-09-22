Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 193E95E69A4
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 19:29:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231869AbiIVR30 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 13:29:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231618AbiIVR3Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 13:29:24 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64A90105D50
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 10:29:22 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id a10so11914055ljq.0
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 10:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=CvZGODSHXfe2qDQBF8M0YqQ7IJQUTtK3MjZMfL5pJoU=;
        b=wyxLufnOxJgOp9zOszeHuEx4JwfK3vKMV8AkSc+h4Vn5LHGX7nt31zfR9uA48gGZX1
         aO/ZnG2uDhDAIXqL/XDfngkbXbLa7XJbwR71f5rkcq9rICmzHxWg2vo/ccATfw4iPYTm
         iBAs4JQ492Si5hZGH5hfwmNRpk7lpnz+c4/2MkXScoqRDxipV+CeMFFbFUvzR1v9QWea
         N8v7BJfkQ9N+ykvby0qiLGlD3mPqiS0TQepb6ZXsXxPz/XBZoMBmYPBYzVAhXEFvH8uP
         GfC08+c6tTRKnPJxBBfhoZzUuUPeIklTSqLrFiMZvVkLxJrFkdtgH43x+t3AvGII4YC1
         1tSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=CvZGODSHXfe2qDQBF8M0YqQ7IJQUTtK3MjZMfL5pJoU=;
        b=npGE83UYYuOk6h5nBOf+7vqNH9dQHW9mu11ibn8v7WmFTd4zI52MHkJlPbq54rh3Ma
         NLSB2v/47u28JdgQ82d9j300xCQhoZKcQsQKASGkhi0dtAWiZs3kIyOCxm0ZTy+JvNAN
         JadKzLeRmjgflB22ac/9jJWJ7/oHR9MrX4WMn9qLAdDQZPjGKVZPn/hjWY6EFuB4KBsa
         ORNJXUkcVPgWB2tWJjXlFgrxD+o32gOW6ZVVK7zCbxF0SBcOwrpuXC8I24pnKD2w+oI7
         HT/1T+6pXcXbzTdTjBhyoJ9uEkciHG8vsAckOGuinUMrMiNDSUTGO29fjEvxhXOJGBvT
         iAxw==
X-Gm-Message-State: ACrzQf1Fp0/yzjgNQEHj+SipBmrZIkSvWqr1aZNfKWaYhmOYxB5xDS5k
        uRU6Autenifodi6aUr1NHTeclQ==
X-Google-Smtp-Source: AMsMyM47meZ9OSO5xTf8YhjmWCydR+psTRg8aw/prbjr/EGxY8a51Szfl1ryDQSMv61sDC5b9YA5iQ==
X-Received: by 2002:a2e:bc04:0:b0:26c:5e:c186 with SMTP id b4-20020a2ebc04000000b0026c005ec186mr1564145ljf.118.1663867760677;
        Thu, 22 Sep 2022 10:29:20 -0700 (PDT)
Received: from krzk-bin (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u16-20020ac248b0000000b00498f871f33fsm1032905lfg.86.2022.09.22.10.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Sep 2022 10:29:20 -0700 (PDT)
Date:   Thu, 22 Sep 2022 19:29:18 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Jerry Ray <jerry.ray@microchip.com>
Cc:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Paolo Abeni <pabeni@redhat.com>, linux-kernel@vger.kernel.org,
        "David S. Miller" <davem@davemloft.net>,
        Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [internal][PATCH] dt-bindings: dsa: lan9303: Add lan9303 yaml
Message-ID: <20220922172918.hsvqgiipj5wiuz5k@krzk-bin>
References: <20220922152438.350-1-jerry.ray@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220922152438.350-1-jerry.ray@microchip.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 22 Sep 2022 10:24:38 -0500, Jerry Ray wrote:
> Adding the dt binding yaml for the lan9303 3-port ethernet switch.
> The microchip lan9354 3-port ethernet switch will also use the
> same binding.
> 
> Signed-off-by: Jerry Ray <jerry.ray@microchip.com>
> ---
>  .../devicetree/bindings/net/dsa/lan9303.txt   | 100 +-----------
>  .../bindings/net/dsa/microchip,lan9303.yaml   | 143 ++++++++++++++++++
>  MAINTAINERS                                   |   8 +
>  3 files changed, 152 insertions(+), 99 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/dsa/microchip,lan9303.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/dsa/microchip,lan9303.example.dtb: switch@0: Unevaluated properties are not allowed ('mdio' was unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/dsa/microchip,lan9303.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1681194

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.
