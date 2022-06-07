Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7A1A534202
	for <lists+devicetree@lfdr.de>; Wed, 25 May 2022 19:09:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232450AbiEYRJK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 May 2022 13:09:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245536AbiEYRJI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 May 2022 13:09:08 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30240A7E3E
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 10:09:05 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id v9so15914188lja.12
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 10:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=XH75s2ibfYOnYvdn8gNCgozNpY03+JL9zHVitvmbL7o=;
        b=W6RomVh8+2pw0mKlmg9fXmIEeZvIHkem2uMvEqHf1zVpKgGtKrHJ0gifzyutYouqcT
         FrdiiYrsnZIy0ZjHQ82V1DFUjOtQ2fxuEzLjeyxcj1nBM0HLcnTm2Uf+Z5B+QBP0ORgC
         kbcojdgmazItre//BUH3KtXBicqPPlRXNT4Wm+p/6RLHXpq9n7JHaXZVZLbrQ4inKqoV
         uZT1jP3PLT3MlsuBWxxzUUsT5FSvzF8mZO/OTgqW8OOv7q6SLa7Oa+delRALjVnAu0dR
         Rnb0beTAkCIcmdMO9xjI7AjfnvjYTgRGkeysxajRRq+9vhuuUjq9x4dSsUnZom8xkeyU
         R9kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=XH75s2ibfYOnYvdn8gNCgozNpY03+JL9zHVitvmbL7o=;
        b=lj/mBMuSPE+P3wUyV5wD42ooYyKK6mrPHF9/XU/4Xlr9p5oK3qHtSc5+XwOmesSB+N
         rJuenNFOEizmWKSc7ODsl1wFlYPKQ+hXK+yQ0tVy85wYnCyqHjTgmaIVtlF4Oj3KPPk+
         N0ONl4o3FDTMUT3vYUqJv3ujTXZo8SBU/z5Iy0Q6Fzc/f8V356oFiJv6uajdlIoG1d84
         T0FpmTjUi7xs73oL+3CuvGQkuVw/IbwgC+Bagt3u1YP9+i2rFhaQw99b+lfbmBWEPbIS
         Cu+Kq1Cbp8rhzmHU60n1w/iheaHtmSVuAamA3gHASKx+JbpDT9kTXEIt9Q0BWCvzu0yM
         ZI2A==
X-Gm-Message-State: AOAM5330O65M4B87jzjYbj66qTAiznqVnmgceQCAuVahExmr3TZT43C9
        Uev9X68rOWViq3rhjvYSIusRRA==
X-Google-Smtp-Source: ABdhPJwOx4xSigkJYaEAd82a2/KIUm7V2pXrOMfC5VXgjwlfxVNMBS8pwPkw/Q0jxG+QmZoCutuopA==
X-Received: by 2002:a05:651c:211a:b0:253:df5a:f821 with SMTP id a26-20020a05651c211a00b00253df5af821mr15175594ljq.414.1653498543429;
        Wed, 25 May 2022 10:09:03 -0700 (PDT)
Received: from localhost (h-85-24-188-65.A463.priv.bahnhof.se. [85.24.188.65])
        by smtp.gmail.com with ESMTPSA id l9-20020a2e8689000000b0024f3d1daeb5sm3131649lji.61.2022.05.25.10.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 10:09:02 -0700 (PDT)
Date:   Wed, 25 May 2022 19:09:02 +0200
From:   Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund@ragnatech.se>
To:     Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc:     linux-renesas-soc@vger.kernel.org,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: thermal: rcar-gen3-thermal: Add r8a779f0
 support
Message-ID: <Yo5irmDuQokhfZdN@oden.dyn.berto.se>
References: <20220525151040.24024-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220525151040.24024-1-wsa+renesas@sang-engineering.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Wolfram,

Thanks for your work.

On 2022-05-25 17:10:40 +0200, Wolfram Sang wrote:
> Add support for R-Car S4. The S4 IP differs a bit from its siblings in
> such way that it has 3 out of 4 TSC nodes for Linux and the interrupts
> are not routed to the INTC-AP but to the ECM.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Niklas S�derlund <niklas.soderlund@ragnatech.se>

> ---
>  .../devicetree/bindings/thermal/rcar-gen3-thermal.yaml    | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/rcar-gen3-thermal.yaml b/Documentation/devicetree/bindings/thermal/rcar-gen3-thermal.yaml
> index 1368d90da0e8..b863c0a935ec 100644
> --- a/Documentation/devicetree/bindings/thermal/rcar-gen3-thermal.yaml
> +++ b/Documentation/devicetree/bindings/thermal/rcar-gen3-thermal.yaml
> @@ -8,9 +8,10 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: Renesas R-Car Gen3 Thermal Sensor
>  
>  description:
> -  On R-Car Gen3 SoCs, the thermal sensor controllers (TSC) control the thermal
> -  sensors (THS) which are the analog circuits for measuring temperature (Tj)
> -  inside the LSI.
> +
> +  On most R-Car Gen3 and later SoCs, the thermal sensor controllers (TSC)
> +  control the thermal sensors (THS) which are the analog circuits for
> +  measuring temperature (Tj) inside the LSI.
>  
>  maintainers:
>    - Niklas S�derlund <niklas.soderlund@ragnatech.se>
> @@ -27,6 +28,7 @@ properties:
>        - renesas,r8a77965-thermal # R-Car M3-N
>        - renesas,r8a77980-thermal # R-Car V3H
>        - renesas,r8a779a0-thermal # R-Car V3U
> +      - renesas,r8a779f0-thermal # R-Car S4
>  
>    reg: true
>  
> -- 
> 2.35.1
> 

-- 
Kind Regards,
Niklas S�derlund
