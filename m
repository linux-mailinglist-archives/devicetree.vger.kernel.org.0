Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F9F550919F
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 22:51:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382229AbiDTUvw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 16:51:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232385AbiDTUvv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 16:51:51 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89BE8109E
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 13:49:04 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id b95so5108342ybi.1
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 13:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LpRJb08UNsAeD/BGStPXY1JWld5Gs95lH64pYZ6orgE=;
        b=PeI41Cw+3CrJgCF7NF0DdwSj7RBlF44kughU3RlOvBrzMjU1Uq/7E9/Bf42CLQ2U5z
         1IwvhHEmCScfEAq2kRy+7SWZchlZzvzzXl5PGAcCLORbwijG3U+0/KriZKxPMSruHm8P
         gCfU5qVgw+XaLOjTys/QlVH/L5dA9uNQzp5PaH6zE8Ek42JWEBnXxI5vfqAdvcX60A1R
         QVFWD2qMdauzF+7hbiNQkVzclCfx5V3IxK6OqDJr7RNGDZEf5dE8lMM/oj/RQ4ihC8xX
         4aVRxdLbPv0Lu6dzR5il3WJawpwXOXm7eFcoMOiRfTUZyYbhfPjAEhREIwGa3G3FU93O
         tdBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LpRJb08UNsAeD/BGStPXY1JWld5Gs95lH64pYZ6orgE=;
        b=OyzgSnTWDQCprKdGJ7G3OJhT6GQ9XaBvEGp7XjHipcp6jUkb/pmGeYj4e+idLIQWFw
         /aKTrahJryArg9E8wvs7xX70cvCEhaoDP1wnlpNQ3ySsIimrP7quAlMCesFv6x143wuA
         nyK4xZDxjx4kk9BI3GHvqpzrT6HE4iNf4EQf/JQ1TIuS1Ves8omNPu4aox/kJ9veeE/u
         qmMcV3N5X4oFKKOi0+ylQjTiZCnciFc9/AcJlwTrKoMKnShuxxLMh/YPgrXbiziQU1r+
         RrYxksSzi7s9LBfDiLdU2hIrlIciAQ1/cMlIgQqcFhyPKs6+HvKdh+2KkfdOOOn/mI4p
         w2Zw==
X-Gm-Message-State: AOAM530eAJREzj0wFXUZsf9eMrhdlpBofsO+ZNWB/zYbirYfo5R/B5ko
        Has6NsspqySCXyCl7curJaJlRvGy3DMsQ+l5H/DQkA==
X-Google-Smtp-Source: ABdhPJzkRs3dHVJIbaNrCahjZbRnpps/qnUhYxpcB/UsWZPjZ6hfdX7hgHxrmzA5Dt6HYz1lYiN1b76YPMPL00KHXuk=
X-Received: by 2002:a25:73cc:0:b0:644:f4a3:6f4f with SMTP id
 o195-20020a2573cc000000b00644f4a36f4fmr17566471ybc.369.1650487743526; Wed, 20
 Apr 2022 13:49:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220414081916.11766-1-xiazhengqiao@huaqin.corp-partner.google.com>
 <20220414081916.11766-2-xiazhengqiao@huaqin.corp-partner.google.com>
In-Reply-To: <20220414081916.11766-2-xiazhengqiao@huaqin.corp-partner.google.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 20 Apr 2022 22:48:52 +0200
Message-ID: <CACRpkdZ--RCgM65nnEd=ebFQpQAPqZDvrBotynYTf+sdisAbsQ@mail.gmail.com>
Subject: Re: [RESEND v2 2/2] dt-bindings: display: Add STARRY 2081101QFH032011-53G
To:     xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
Cc:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 14, 2022 at 10:19 AM xiazhengqiao
<xiazhengqiao@huaqin.corp-partner.google.com> wrote:

> Add dt-bindings for 10.1" TFT LCD module called STARRY 2081101
> QFH032011-53G.
>
> Signed-off-by: xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

(...)

> +  enable-gpios:
> +    description: a GPIO spec for the enable pin

The way this is used in the code makes me suspect this should
be named reset-gpios. What is the name of the pin on the
panel?

It also appears you should tag this as active low so in that case
write that in the description "always tag with GPIO_ACTIVE_LOW"
(and alter the code in the driver to match the inversion)

> +  pp1800-supply:
> +    description: core voltage supply

Hm the name of this supply makes me think the display controller is
actually named pp1800. Is this correct?

> +            enable-gpios = <&pio 45 0>;

Don't use ordinal flags in examples.

examples:
  - |
    #include <dt-bindings/gpio/gpio.h>
(...)
    reset-gpios = <&gpio4 11 GPIO_ACTIVE_LOW>;

Yours,
Linus Walleij
