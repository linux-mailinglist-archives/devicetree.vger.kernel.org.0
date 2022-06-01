Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9170D53A5B0
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 15:13:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244534AbiFANM7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 09:12:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236589AbiFANM7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 09:12:59 -0400
Received: from mail-vs1-xe30.google.com (mail-vs1-xe30.google.com [IPv6:2607:f8b0:4864:20::e30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E56D13C718
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 06:12:56 -0700 (PDT)
Received: by mail-vs1-xe30.google.com with SMTP id 67so1642717vsh.2
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 06:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DRpTw9lz1S9Cy/78ZuzDLS3h2kMwDjueGV7Qm96SuiM=;
        b=SdUmbZT4XJWTaXfK4FVsTTAaH/zOcJEsgXhu1DoG0Y6cIofVWtoqMkXfRRilP++OrM
         QtQhPWJgxKPbZHkAkwFrhrnBUSF42Yqm0d/Vlon0ALYGA9jXsDJpJQ8jxxkPjPnAl9ml
         bnWiVGR8pPySULPcCXAkgOpLOk0U2aRYZ0v4UwUuX/5I4uhEHA6uEl0Bp7WLOqrOtbvg
         923pmPYIKX4DOMSVzxRNPZdbYmTYQkL/eF8WU/fIo7xbWUkZu16FfZjvwdTYzrWNWSL8
         s6kxnLYt5ISXGYkBgpxNM1kfJdgI1yGgozHv49MuC9UJTXmAuyx5jgYjb+X8r+2xDizr
         fIIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DRpTw9lz1S9Cy/78ZuzDLS3h2kMwDjueGV7Qm96SuiM=;
        b=wyBiDe7VY4M8XMStcSb4C93gBV9XOFxpbZpXBJiLOMZKfAZD9Jc5WBy0Q6su1JwQo9
         7COXNIlX5ctZJXfAgz/5zyt5yJ841wE8fHMf8eKLM++enxU7mXAqvNpIDTq+T4pB0Vpv
         9b/UplDW9R6nKTKR8fqwaN/Mp8krnG75tJK1kAkv3v0aEYmyjH/CqXIAOnjhJVhnJ9pA
         lCVNHFckleas7PqzozBF6eWFAHm5ZjkLbuxsM/eSRCWLcGOFVRBsfDyfuIKMLqDI9g0D
         8Uaueb3WdsmMeT8hiG5nUQtwqDQJpCoM/ue/4d0NvbLxr8AVjUu8TmgFL7OpTklB+cnh
         gbNA==
X-Gm-Message-State: AOAM5328wWlR/Ur2wm/tmSkP+ZeBA4Ih7dBnw7ztj8dORcuQ998Pd6k5
        vxr4qCm79ukSoHUTYu22mtx/zOT4Uk0LfHMlawA=
X-Google-Smtp-Source: ABdhPJxDR1qqE73F2Dd2/7gM+wPzBFo+C3IE6ImDZUPjGfXe3r8PPNHJ8YwA1B/Zp/2zAfanZAgtSECEA021tZ37JGU=
X-Received: by 2002:a67:cb95:0:b0:337:e29b:c824 with SMTP id
 h21-20020a67cb95000000b00337e29bc824mr15185750vsl.19.1654089171376; Wed, 01
 Jun 2022 06:12:51 -0700 (PDT)
MIME-Version: 1.0
References: <20220601125344.60602-1-stefan.wahren@i2se.com> <20220601125344.60602-4-stefan.wahren@i2se.com>
In-Reply-To: <20220601125344.60602-4-stefan.wahren@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Wed, 1 Jun 2022 14:12:38 +0100
Message-ID: <CALeDE9PxwWGp5ghzx1+ekYOR_w49hBn9vZvwVjp7yGHW_DQzwQ@mail.gmail.com>
Subject: Re: [PATCH V2 03/11] dt-bindings: soc: bcm: bcm2835-pm: Add support
 for bcm2711
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
        linux-arm-kernel@lists.infradead.org
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
> Add a new compatible string for BCM2711 and the option to provide a
> third reg property for the board's new RPiVid ASB.
>
> In BCM2711 the new RPiVid ASB took over V3D, which is our only consumer
> of this driver so far. The old ASB is still be present with ISP and H264
> bits but no V3D.
>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  .../devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml   | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
> index 883ab7cb96e9..f448f034a33a 100644
> --- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
> +++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
> @@ -19,17 +19,21 @@ allOf:
>  properties:
>    compatible:
>      items:
> -      - const: brcm,bcm2835-pm
> +      - enum:
> +          - brcm,bcm2835-pm
> +          - brcm,bcm2711-pm
>        - const: brcm,bcm2835-pm-wdt
>
>    reg:
> -    minItems: 2
> -    maxItems: 2
> +    minItems: 1
> +    maxItems: 3
>
>    reg-names:
> +    minItems: 2
>      items:
>        - const: pm
>        - const: asb
> +      - const: rpivid_asb
>
>    "#power-domain-cells":
>      const: 1
> --
> 2.25.1
>
