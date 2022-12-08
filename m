Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A886B646BE7
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 10:29:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229928AbiLHJ3E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 04:29:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbiLHJ3D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 04:29:03 -0500
Received: from mail-ua1-x929.google.com (mail-ua1-x929.google.com [IPv6:2607:f8b0:4864:20::929])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ADA31A22E
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 01:29:01 -0800 (PST)
Received: by mail-ua1-x929.google.com with SMTP id c26so255445uak.5
        for <devicetree@vger.kernel.org>; Thu, 08 Dec 2022 01:29:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Qb787sHaORfdLtfoTYCIuVG5UOrlAlBZu8TBiM4YuyU=;
        b=vrwGABWCLqr6D6b18CXMqufA+ZUX9Qa7ZA+Sr73JFKrrwi16RxdOSntEcFOdHgez/q
         gNtrJ3wnHIDflm9vEEDzZ48VYQ+oM0tsMQojhtEGfHT6JmWtQF7/Lk0tWFbhhEJk8PB1
         eswZUBYan100SLo6Edd0aN1of1whpOhcZmzT0MpvYA52i1oJmQssElgFTbYgDfWgeRFn
         hJuPi93Wcwq2WjgnP+KkoaguwtB2Y6X+vJkiNT9Zo6eWKJ1P23HyLLUu2SkLxqrATH66
         W70cdOhfU5Fx3Ce6Rkl5SXzEP1KaINvfqJYyOwm+W7qrgAQWe8LKJ2sNBC7l1PucUoPw
         8FZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qb787sHaORfdLtfoTYCIuVG5UOrlAlBZu8TBiM4YuyU=;
        b=EgmD86177PXAkl95whJ2XJ/LsEGywMoIKiwKPLQ0QcFkoLEOIvyk9+I6vrh0Mq5qLc
         lFjlVB5pnl4UlegFTp12Y7fc75iTRp7ZT8GxXUIJswiO27/ipj2wzlVLdCZ2ad4BUZt6
         GE+oVWWRx+ggHci+wnJXnG6ZwfX3D6mBBGmFYRkFsRY1Z5PER2cXPb3+rh87lIApiFw/
         ioyTeEjJS9fLXbFxR0e04Dg0qJp/wB1g+fwRfG0YF1CjOhzXN3k5/ktlWD/f+S+RLqXB
         yI2DHDumt1jEHiWCpYZVbfauyOU4d1t2GND7ODzXF+QIwWEipZdhURikgKJ6y5p3vCBy
         Dzkg==
X-Gm-Message-State: ANoB5pm+v10ZndsTtC65DVy2rGbaz6qJHYp3fW9I/50poKF0kIsABkvk
        TGIWkUuU1FWFbkGeKqxXgfOxKOFGr/gB5d4dsa7NMw==
X-Google-Smtp-Source: AA0mqf64mt46S4cpX6BNxJtL5eXG0iRM55MSaZxp/YQrhztbBj2290MCPjNsQN9LAKdGlmP/GNvi8ojgrNi8T3ZWC14=
X-Received: by 2002:ab0:734e:0:b0:419:18c7:58d with SMTP id
 k14-20020ab0734e000000b0041918c7058dmr28519144uap.119.1670491740702; Thu, 08
 Dec 2022 01:29:00 -0800 (PST)
MIME-Version: 1.0
References: <20221207204327.2810001-1-robh@kernel.org> <20221207204327.2810001-2-robh@kernel.org>
In-Reply-To: <20221207204327.2810001-2-robh@kernel.org>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Thu, 8 Dec 2022 10:28:50 +0100
Message-ID: <CAMRc=Mf6oKE30d4h-Fg=bPzGqUndL-vWiOFcTUD_UAG+z3q3oQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: leds: Add missing references to common
 LED schema
To:     Rob Herring <robh@kernel.org>
Cc:     Pavel Machek <pavel@ucw.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Yi Xin <Yixin.zhu@intel.com>,
        Mallikarjuna reddy <mallikarjunax.reddy@intel.com>,
        Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 7, 2022 at 9:43 PM Rob Herring <robh@kernel.org> wrote:
>
> 'led' nodes should have a reference to LED common.yaml schema. Add it where
> missing and drop any duplicate properties.
>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

>  .../devicetree/bindings/leds/leds-max77650.yaml  |  9 ++-------

> diff --git a/Documentation/devicetree/bindings/leds/leds-max77650.yaml b/Documentation/devicetree/bindings/leds/leds-max77650.yaml
> index c6f96cabd4d1..fdb08f44a45d 100644
> --- a/Documentation/devicetree/bindings/leds/leds-max77650.yaml
> +++ b/Documentation/devicetree/bindings/leds/leds-max77650.yaml
> @@ -30,9 +30,8 @@ properties:
>
>  patternProperties:
>    "^led@[0-2]$":
> -    type: object
> -    description: |
> -      Properties for a single LED.
> +    $ref: common.yaml#
> +    unevaluatedProperties: false
>
>      properties:
>        reg:
> @@ -41,10 +40,6 @@ patternProperties:
>          minimum: 0
>          maximum: 2
>
> -      label: true
> -
> -      linux,default-trigger: true
> -
>  required:
>    - compatible
>    - "#address-cells"

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
