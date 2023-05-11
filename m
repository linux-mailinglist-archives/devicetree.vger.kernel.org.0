Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A9916FF819
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 19:07:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238815AbjEKRHM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 13:07:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238802AbjEKRGy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 13:06:54 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92A636A5A
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 10:06:52 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-96622bca286so1247754766b.1
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 10:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683824811; x=1686416811;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ayyCxGH0foji5L7wUxPjLMBEgCkH5OqBptH4GPUcYDk=;
        b=yQ5Tj7C1ussm/VcwYYhA4Rs12QyIk3aRNikd5NJbYP25dBwJSb4EYVtQhvG8pWTpBH
         T4xirmZIQF6GvaHKEl3CnI6q6yxNmmyJArTKL536EiBHClq2oE9DdnPzvaffsw88f9oQ
         apVjOK+XLIqdMlsPQ8AdpHxkyZxSaQC/q0SOczMoE8nzExFNLJ332OEuk36w9nU25Fis
         oh0U8+Izz6csTiIism28LBA5UWnvkp18HoOaJxdNL8kEEwUAGENOJfeL5tJh4/YhsP50
         d5HhjkKL4Sys9jLGxfFXLt3eWF2KgIXzWpKN5Ix/Hw9lC0yvnEOfcW4a0SMfn/YEA+90
         zksA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683824811; x=1686416811;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ayyCxGH0foji5L7wUxPjLMBEgCkH5OqBptH4GPUcYDk=;
        b=YR0CCLQ6EC3amFM/ehEV0Q9XQUuNON39l+tJFLXS6ql/Y8RmI/MOOdstvqWhfS+Oz+
         9Arn/CPPNxZhGT83cexFf+tMF7+sXIu+f1N2Z5ntWOMgsI932jqCi14F3JvhPYGT7189
         IkEuQq3kSzCfJhK+f4UsWys8gj/quEYw+UhujTO9YPEg+v5SQXpjnRgdli3tf6l1sY9x
         5CJKDB4bDUXsaMarIVaHSpf6bz+S+0Ax9S2Xv2EPm6jdPVB/lMGzPio7gYycFSiTOWfx
         73IGfP5oRai08EHZzfG39tRRV+FWhYHJ9l0Ytsz6dlJYukziwknqo5Qn61u3uaZtpZxQ
         0Y2Q==
X-Gm-Message-State: AC+VfDzS7ERWfgWeDk3fVX8cpH61nbBU0uOqWSQFvDfNkRPM1wTWfNnt
        FEwmCSnxk72/ofIE5UG9p8OlnA==
X-Google-Smtp-Source: ACHHUZ4kcUwO/YhdtrTa+xFa/aeEXoGMeFo5bs2na974KrFHqO2vD2Z8Q1dUjxA1QOC5UsUxODF7gw==
X-Received: by 2002:a17:906:6a1b:b0:968:2b4a:aba3 with SMTP id qw27-20020a1709066a1b00b009682b4aaba3mr14233722ejc.5.1683824810998;
        Thu, 11 May 2023 10:06:50 -0700 (PDT)
Received: from krzk-bin ([2a02:810d:15c0:828:d7cd:1be6:f89d:7218])
        by smtp.gmail.com with ESMTPSA id jl21-20020a17090775d500b00965b5540ad7sm4331348ejc.17.2023.05.11.10.06.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 May 2023 10:06:50 -0700 (PDT)
Date:   Thu, 11 May 2023 19:06:47 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Daniel Golle <daniel@makrotopia.org>
Cc:     Eric Dumazet <edumazet@google.com>,
        SkyLake Huang <SkyLake.Huang@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jakub Kicinski <kuba@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Conor Dooley <conor+dt@kernel.org>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        linux-mediatek@lists.infradead.org,
        Russell King <linux@armlinux.org.uk>,
        Andrew Lunn <andrew@lunn.ch>, Paolo Abeni <pabeni@redhat.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Qingfang Deng <dqfext@gmail.com>,
        Simon Horman <simon.horman@corigine.com>
Subject: Re: [PATCH net-next v4 1/2] dt-bindings: arm: mediatek: add
 mediatek,boottrap binding
Message-ID: <20230511170647.g6c3ezlyqqislzaf@krzk-bin>
References: <cover.1683813687.git.daniel@makrotopia.org>
 <f2d447d8b836cf9584762465a784185e8fcf651f.1683813687.git.daniel@makrotopia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <f2d447d8b836cf9584762465a784185e8fcf651f.1683813687.git.daniel@makrotopia.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 11 May 2023 16:10:20 +0200, Daniel Golle wrote:
> The boottrap is used to read implementation details from the SoC, such
> as the polarity of LED pins. Add bindings for it as we are going to use
> it for the LEDs connected to MediaTek built-in 1GE PHYs.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  .../arm/mediatek/mediatek,boottrap.yaml       | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,boottrap.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/arm/mediatek/mediatek,boottrap.example.dtb: boottrap@1001f6f0: $nodename:0: 'boottrap' was expected
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/arm/mediatek/mediatek,boottrap.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/arm/mediatek/mediatek,boottrap.example.dtb: boottrap@1001f6f0: reg: [[0, 268564208], [0, 32]] is too long
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/arm/mediatek/mediatek,boottrap.yaml


See https://patchwork.ozlabs.org/patch/1780124

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.
