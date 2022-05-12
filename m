Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22EB5525124
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 17:20:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350961AbiELPUj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 11:20:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355874AbiELPUi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 11:20:38 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0473725AFBC
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 08:20:36 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id i27so10894138ejd.9
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 08:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LSVMi3sIF030EU435n7TSz+80CX0XXIOGq6LT9c1iJs=;
        b=R93hpC55nIrmmOwCv9ozgHF6+ZEnHvkBliQAm+PzjJ4fRxcR9juR4MHn1tg0IZlYnP
         CnQQh8Snsq7U3+rULyhqoiz6ewotSFb6k/70frKD9FgAmPUEXNDgHCmE/oxf4DpP8f5D
         IBXQ/CfEcH2+c2yK7DrvTsPyCchAC3lE46gfrRIGfS2p659nmV/QAxG+5p3JnZ7EyOSR
         HqmpNvG18HLlgazoMmkwGhjOcarZiv4QymzOCYa/SFtOgOSLbYJGOsd8/MfvIjM9rJ+W
         L2ds0d3chFwZnUa4ex//ufhmLgYweHJ3dVMPse4gNyK1LA6iB1xuJzP+BJAJZvJHQTLI
         vNmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LSVMi3sIF030EU435n7TSz+80CX0XXIOGq6LT9c1iJs=;
        b=TEVlkrAvdx0bumKY94IadsU5Coib9Wv/JtM2qOwv4FyG/3vgyO9SnjMGdw5zft94wt
         Jgp1kLTKPo0MHpYRuFzkNfXvnDgwb4LqAvnCSvj/dIKFzxmo+HxSFgBwWxopcGYKpIr+
         Yw/TdknalTY7pgyTLGvy44ZIU2qbAhugmZjJiGt8nJo7cQxsSD8FrCH3Rvb4rXo5+bVN
         LcCjGw8+IIVuUVWTLmTjjnpLgpyS0cDY6KLVrZuHkNH9IF3Wpojvq9Ai5O4b+Vy3CflG
         9Sn2cnsRK38GI2X9LWDblErupzo8powqVfgGRgqLkmWjx/sDAT00in5u3jL+y38DKs1K
         962w==
X-Gm-Message-State: AOAM5319X22w9eGhgWKt1geeb9oRf4OPOLoeWtuIhnswRYJcd/tDzlG5
        uY0Nj/GOD13ePa2cUpvLuYPgJmLcDxZCFKQl4JPjm7kBKAVab+dq
X-Google-Smtp-Source: ABdhPJyfOvuHWuBNEzCDaf6KWjVCW5+Yh5xV+7u/r/xrZNVTzYvg+dpYbastpgLiZn/zH67ln5iDNrujvtfmyJbpnMI=
X-Received: by 2002:a17:906:58d4:b0:6f4:cebd:c4b with SMTP id
 e20-20020a17090658d400b006f4cebd0c4bmr385389ejs.492.1652368834342; Thu, 12
 May 2022 08:20:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220512013921.164637-1-swboyd@chromium.org> <20220512013921.164637-2-swboyd@chromium.org>
In-Reply-To: <20220512013921.164637-2-swboyd@chromium.org>
From:   Guenter Roeck <groeck@google.com>
Date:   Thu, 12 May 2022 08:20:23 -0700
Message-ID: <CABXOdTe9KAs8conb-LNh09dqZLkbuuhtxFirwtvZaeO=agfROQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: cros-ec: Fix a typo in description
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        patches@lists.linux.dev,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" 
        <devicetree@vger.kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        chrome-platform@lists.linux.dev,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Tzung-Bi Shih <tzungbi@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 11, 2022 at 6:39 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> A 's/pf/of/' on rpmsg-name description.
>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: <devicetree@vger.kernel.org>
> Cc: <chrome-platform@lists.linux.dev>
> Cc: Guenter Roeck <groeck@chromium.org>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Craig Hesling <hesling@chromium.org>
> Cc: Tom Hughes <tomhughes@chromium.org>
> Cc: Alexandru M Stan <amstan@chromium.org>
> Cc: Tzung-Bi Shih <tzungbi@kernel.org>
> Cc: Matthias Kaehlcke <mka@chromium.org>
> Cc: Benson Leung <bleung@chromium.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>

Reviewed-by: Guenter Roeck <groeck@chromium.org>

> ---
>  Documentation/devicetree/bindings/mfd/google,cros-ec.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> index d1f53bd449f7..99eda9ab0651 100644
> --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> @@ -61,7 +61,7 @@ properties:
>    mediatek,rpmsg-name:
>      description:
>        Must be defined if the cros-ec is a rpmsg device for a Mediatek
> -      ARM Cortex M4 Co-processor. Contains the name pf the rpmsg
> +      ARM Cortex M4 Co-processor. Contains the name of the rpmsg
>        device. Used to match the subnode to the rpmsg device announced by
>        the SCP.
>      $ref: "/schemas/types.yaml#/definitions/string"
> --
> https://chromeos.dev
>
