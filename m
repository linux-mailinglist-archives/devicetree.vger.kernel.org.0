Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 287B853A5B1
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 15:13:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350040AbiFANNs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 09:13:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236589AbiFANNs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 09:13:48 -0400
Received: from mail-vk1-xa30.google.com (mail-vk1-xa30.google.com [IPv6:2607:f8b0:4864:20::a30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30B0C3CA46
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 06:13:46 -0700 (PDT)
Received: by mail-vk1-xa30.google.com with SMTP id ay20so841150vkb.5
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 06:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3QL5goFK0cF9p6Hn5YhKSPPWeMEiWQcOjTcWDZH9WMg=;
        b=a2JIsGFntvD/rwfrZSXpWf8A6yx1Ikd+gb3MxiuUEr4xEJHvBnuxjr11+mB0djY6Wh
         Fiunr5fouIpZgaqKQfNSGdQOZE6Y3FSnNi04nbjdRj+jH/yVilJt0GOM8+zLiY0hogbu
         omtv/1TGgoNPSwk/WrYCS9nRv12+BHtU2IZfqYWt8kwVFVD5ZNDG86SO4zbv9TGvV0Uu
         h1085Az2Yqyk6gmJlcT+UEwFRc/f4CMah8A9E1RA8vT/g93YEKMwEYdADpfDkWzJKt0x
         +jUpIrWgLo2DbyPG9kE9VXctvpu2V7PDU+BmbMsuaCMC+beZngzG8KXJLPquG1ChDbRd
         oayw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3QL5goFK0cF9p6Hn5YhKSPPWeMEiWQcOjTcWDZH9WMg=;
        b=BPDsOwACckyYImujlNHlFBeu7yRzYZ+dqeqg5E1cT1FIHFyTKz+awYvGCqlx0tx+0K
         19SK2L/CVqCO/AxcYf3f2GUfhthM5xcxkDgETsbVZAN0V/30EVHal8dZVroIar5UcBHO
         RpmMdxg0caMV9xhLbD/DuFie23veiNRrLMrSHk6J3M9hrHHVKA0Qo6Nte7oipckvVqZi
         eAez2lkNE01Drm0uXQjQXdRjlXlnuXXSDomKMW1HI3ldTIPYpKeu0GPgTIv3q91IPkZ7
         H2EiyvZBNmJw2XpWucnZMiwCpoFiZINWfDyzRcLQUXQf2CZBRMBqb8P4pAYVhOfbEL61
         wrgQ==
X-Gm-Message-State: AOAM530vatpa9IwRtGZrvXw3Di+R5sWCo4zCZ5pMvTg/OvG5yGAqfftj
        CRUJUiLpOsKuuzCBzGZpxwWta/+flICJJMga3L8=
X-Google-Smtp-Source: ABdhPJwaqteD6kPQGJFh/uDW6w1D73ZVD206LmxdUG+pBlNgBZn8HXC11I7pYkMASi8gN/ryo7AcNBUGro+o5GyW/NA=
X-Received: by 2002:a1f:a40c:0:b0:357:729c:d7a with SMTP id
 n12-20020a1fa40c000000b00357729c0d7amr19553692vke.32.1654089225210; Wed, 01
 Jun 2022 06:13:45 -0700 (PDT)
MIME-Version: 1.0
References: <20220601125344.60602-1-stefan.wahren@i2se.com> <20220601125344.60602-3-stefan.wahren@i2se.com>
In-Reply-To: <20220601125344.60602-3-stefan.wahren@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Wed, 1 Jun 2022 14:13:26 +0100
Message-ID: <CALeDE9Pgct41peeFJgh8ejjvgT2U-tFA-fmKh9TXuEgUuwHiEg@mail.gmail.com>
Subject: Re: [PATCH V2 02/11] dt-bindings: soc: bcm: bcm2835-pm: Introduce reg-names
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 1, 2022 at 1:54 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>
> Anticipating the introduction of BCM2711, of which we'll need to support
> its new RPiVid ASB, introduce reg-names into bcm2835-pm's binding. This
> will help to have a consistent mapping between resources and their
> meaning.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  .../devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml     | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
> index 5d1ff0f6c8ce..883ab7cb96e9 100644
> --- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
> +++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
> @@ -23,9 +23,13 @@ properties:
>        - const: brcm,bcm2835-pm-wdt
>
>    reg:
> +    minItems: 2
> +    maxItems: 2
> +
> +  reg-names:
>      items:
> -      - description: PM registers
> -      - description: ASB registers
> +      - const: pm
> +      - const: asb
>
>    "#power-domain-cells":
>      const: 1
> @@ -68,6 +72,7 @@ examples:
>          #reset-cells = <1>;
>          reg = <0x7e100000 0x114>,
>                <0x7e00a000 0x24>;
> +        reg-names = "pm", "asb";
>          clocks = <&clocks BCM2835_CLOCK_V3D>,
>                 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
>                 <&clocks BCM2835_CLOCK_H264>,
> --
> 2.25.1
>
