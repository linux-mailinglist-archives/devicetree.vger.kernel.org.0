Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A50F5A7D97
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 14:40:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229692AbiHaMkW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 08:40:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbiHaMkT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 08:40:19 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41CAF4D4FA
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 05:40:16 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id u9so28118400ejy.5
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 05:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=a4juxeAAulsXmDrJb36ig59wvWAlzfmtIuDcR0ZWcMU=;
        b=cVvQdejj1xh4k3nxjYSt5s0vZsxpXN2i7pF/rCWGkRd6NPibNRhJi/T4D2DkynEaYx
         QcjG/cIxhl4/6qzg7X7eXjHD4RVNoVqSPvPSjDxijwnxr5mmiQJLl7UIAWf7ct/R4USZ
         y6sVrnyqIeNZMPpfg22hsgcsonH5HBXg249mPi8ZJxmcLLW1tLQIpelOq4DwLHExAgrh
         nj9nlyAUV/AfcOq2TXTeoshWdB/KJ269XkbCeLwKIRo79cEguCOenMVI1Y3U/tZfJwPU
         UY0JdycIpFs47eT2tFz0Vzv23IcWLQQ5KjodRB2m2DLUCJmJY4rBCOAwSwaoMhFJGv5D
         wmJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=a4juxeAAulsXmDrJb36ig59wvWAlzfmtIuDcR0ZWcMU=;
        b=IC7iOCAerE+NTHyatbaMgLvpnjeEU/Oi6jofHmN/YwWTRQSOlx7gPNd6/+mRqga/ep
         u6FBbuEYVM245XIkCEM2hASuiJ7c4EE3p0HhOEusNuUJ82ELd8QgcHaNaUMtm8MhVwWW
         RswEP0kz0BZugtHEKd4johFsHMvV25uklbT8aPsXFh2KbslxYVXCT9iwu8DLuEiT8lM4
         rx6nvMwtJyiKBjlezuF4X+LnJtSGbGpD9s4olihTNKdwLBlz2eZ+dF9Q+JzUYsM0E3cc
         S4BUcAITid2rxmRdSYKtMZoMUsKnAvvHrYLQvDzi1hCCPlj+PGXF5+9xCWznzPPH88PS
         t8/g==
X-Gm-Message-State: ACgBeo0UrjUZjM5+ce1xDL1Jtg8DqzY5K1OBMGpch4iCK1R8vlKOdzKd
        pjqFa8KQr1kShsVKM3tpY6j+wYnGRFJKMqPVoYYp1w==
X-Google-Smtp-Source: AA6agR4BiTjPadhITkWlY6Fuohq9FtVy0uscgtHalamLR2uaklr48naucP5D/EiAs2TmQsaDRBmuAdsp/q+qOhJljUI=
X-Received: by 2002:a17:907:7394:b0:73a:d077:9ba1 with SMTP id
 er20-20020a170907739400b0073ad0779ba1mr19414625ejc.697.1661949615282; Wed, 31
 Aug 2022 05:40:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220825143522.3102546-1-conor.dooley@microchip.com>
In-Reply-To: <20220825143522.3102546-1-conor.dooley@microchip.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Wed, 31 Aug 2022 14:40:04 +0200
Message-ID: <CAMRc=MdQkP-Dd0MrJ5DvxKgvyC-1WO+f98t7-ASs3qrNJL+uAw@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: gpio: mpfs-gpio: allow parsing of hog
 child nodes.
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 25, 2022 at 4:36 PM Conor Dooley <conor.dooley@microchip.com> wrote:
>
> The SD card and eMMC on PolarFire SoC are sometimes muxed using a GPIO
> by the bootloader. Add a hog child property to facilitate this.
>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> Changes since v1:
> - move addtionalProperties up under type:
> - drop the explicit match group syntax
> ---
>  .../bindings/gpio/microchip,mpfs-gpio.yaml     | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/microchip,mpfs-gpio.yaml b/Documentation/devicetree/bindings/gpio/microchip,mpfs-gpio.yaml
> index 110651eafa70..fdc16822fd4b 100644
> --- a/Documentation/devicetree/bindings/gpio/microchip,mpfs-gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/microchip,mpfs-gpio.yaml
> @@ -44,6 +44,24 @@ properties:
>
>    gpio-controller: true
>
> +patternProperties:
> +  "^.+-hog(-[0-9]+)?$":
> +    type: object
> +
> +    additionalProperties: false
> +
> +    properties:
> +      gpio-hog: true
> +      gpios: true
> +      input: true
> +      output-high: true
> +      output-low: true
> +      line-name: true
> +
> +    required:
> +      - gpio-hog
> +      - gpios
> +
>  required:
>    - compatible
>    - reg
> --
> 2.36.1
>

Applied, thanks!

Bart
