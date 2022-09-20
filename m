Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 768C15BDFDA
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 10:21:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231437AbiITIV3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 04:21:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231240AbiITIUQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 04:20:16 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25657CE28
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 01:18:44 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id b24so2049738ljk.6
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 01:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=VgLmEzPIecZSC3MjYpPVUH86WqTbJd8woh8yOpcfqDU=;
        b=AT31RTdDAle87hJvO/3kTcU9kt9Lkl1u97mOBIhexbOrbmSq8D8sS2QeNLxbw/mhEd
         3dLdonv/6owGqgz70lzL4ciz8RwBIqC4TsGBN9WbwvqYx3DbzOoHPLETd3/BHapHOCwq
         vrzG128qYXTDJnbu/J0WuKhbmXDy9BxRKQ3BrOr6nV0kK0fKEDy/ldbKoW5wK0/jiy8x
         gJK/Se0YMqWjiPWJa8RiQPVl6na9R8VKCqodtVj4ykcaZbtGgDa+hPJ1qA4ULwxC0pGg
         iIV9a/yKOhqMOTf/G5KqVwcUMbza9u/lEz/R2MuC3mjfkIDAT2E7cVilCBP6Yat/0uhN
         Bfbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=VgLmEzPIecZSC3MjYpPVUH86WqTbJd8woh8yOpcfqDU=;
        b=pg6Mm6OSqCnCIhP8ZVZAoN/UbcR7o4VUKlEQLh7GMcULTpKHSAhoyiHVe2ZWkPvUPk
         3UMc5eWDli+FJL38YSPdLmzV9F56BBeWXZSRfF+6k5+OeWcJSObfczrow3JyrQiVzIKs
         /s7CnokZTGAyM5/XtDz31+xfyv4OM6NnKBdNSvkcR0RlnSH7vIMt93PUHKArsSAIRyP6
         P4uAh9ZGPTs99DMWKl0gAcS80t51ymwtC/RNtwZV8/Z9tnQtEjmj3JZvFlcj/hetbYVN
         g9qDRHEyj2dR+T3wWNAjQ04/IZm/cEe9ej2bGTiBDinaEnjlYSbYFFEfnKnsSYc7HCXh
         MpCA==
X-Gm-Message-State: ACrzQf2mOMqgDgmQ3KddwUrZSf9cnZ2+aP2+oHp8iadWjNM1JXwzS0wV
        iu64ubFHrtT7iJIR98gODa0IqA==
X-Google-Smtp-Source: AMsMyM5zRjJJPYotMEvfsPRUR4vDhywoNUaKPLs5B7eMo1tU6DOqqU7rZDZOmHR+OcqE93aw/KaECQ==
X-Received: by 2002:a2e:2e0b:0:b0:26b:f760:1c51 with SMTP id u11-20020a2e2e0b000000b0026bf7601c51mr6335172lju.494.1663661922472;
        Tue, 20 Sep 2022 01:18:42 -0700 (PDT)
Received: from krzk-bin (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b4-20020a056512070400b0049464d89e40sm197345lfs.72.2022.09.20.01.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 01:18:42 -0700 (PDT)
Date:   Tue, 20 Sep 2022 10:18:39 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Asmaa Mnebhi <asmaa@nvidia.com>
Cc:     Khalil Blaiech <kblaiech@nvidia.com>, robh@kernel.org,
        linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: Re: [PATCH v4 8/8] i2c: i2c-mlxbf.c: Update binding devicetree
Message-ID: <20220920081839.2wq2h2vsodphaqh7@krzk-bin>
References: <20220919213431.8045-1-asmaa@nvidia.com>
 <20220919213431.8045-9-asmaa@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220919213431.8045-9-asmaa@nvidia.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 19 Sep 2022 17:34:31 -0400, Asmaa Mnebhi wrote:
> In the latest version of the i2c-mlxbf.c driver, the "Smbus block"
> resource was broken down to 3 separate resources "Smbus timer",
> "Smbus master" and "Smbus slave" to accommodate for BlueField-3
> SoC registers' changes.
> 
> Reviewed-by: Khalil Blaiech <kblaiech@nvidia.com>
> Signed-off-by: Asmaa Mnebhi <asmaa@nvidia.com>
> ---
>  .../bindings/i2c/mellanox,i2c-mlxbf.yaml      | 49 ++++++++++++++-----
>  1 file changed, 37 insertions(+), 12 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i2c/mellanox,i2c-mlxbf.yaml: properties:reg: {'minItems': 3, 'maxItems': 6, 'items': [{'description': 'Smbus block registers'}, {'description': 'Cause master registers'}, {'description': 'Cause slave registers'}, {'description': 'Cause coalesce registers'}, {'description': 'Smbus timer registers'}, {'description': 'Smbus master registers'}, {'description': 'Smbus slave registers'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i2c/mellanox,i2c-mlxbf.yaml: ignoring, error in schema: properties: reg
Error: Documentation/devicetree/bindings/i2c/mellanox,i2c-mlxbf.example.dts:26.19-20 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:384: Documentation/devicetree/bindings/i2c/mellanox,i2c-mlxbf.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1420: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.
