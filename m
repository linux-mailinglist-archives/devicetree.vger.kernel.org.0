Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9FBA64D99E
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 11:37:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229448AbiLOKhU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 05:37:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229838AbiLOKhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 05:37:18 -0500
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BBA92C66B
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 02:37:16 -0800 (PST)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-3cbdd6c00adso34946997b3.11
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 02:37:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8xobVd8f5cIr7Kkj75EnRmTNDqYZhm2cXmeUBp3q7Z4=;
        b=hWAknL/ycG5f/6vZyK+0mgTB4/u3qknPTFFRKWIE9SopJ4SYh46RzRqGRYNvY4JYhQ
         KfGE9bW0DiH24HzhrdCy1GA4Pj6MfpQweh2bXwYgz9pWKGrf38XkP5TZ/OaGEFEdfqe7
         Azm7tauswLZ8HQRoW2p+PtaBaBaWLTdZ3SPI8Xs8/s2uVd5bBqCVuVT9BsIkevFQZDfC
         yUgDiAVEPjAzDkWET0HFGuQYQJG0nbW4JrMuBchs9xRAaZEdc7tcixe4gxIoNA+PKP18
         CxMZmhdPO/JrsdxiW3uYikiQQ62GL+fjl0/NwMh6SCsy0IcggFlbHOEGk6sazyZo0jUf
         RFKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8xobVd8f5cIr7Kkj75EnRmTNDqYZhm2cXmeUBp3q7Z4=;
        b=1sSNvhMgzZX/7ysmh8/nxQlngjrvZpCUkJTsupXMNz6Y2gjLu4en0QG8X+eJKbjiSf
         sVeek2X6rsP5gkg3l6NqfypJQF+aGbIYN1vnEd+3g7Oe5qyB+kCFKFxRX1SavYmFvZxc
         bCT0EwJetekkoRJYDwDExmbBN7e2xq6Ibx+xLWcXFkBV3R1gnMWZ6P1Fue16+mZsdnA2
         Il9pGFfyj9zirUjhBkUodSxh9me94lli8Qi2/UbS8gIQI3pQNKPQ5cbbJmmFRAcxruFs
         odt4YXAReII6ZV3+wA7yIYeEDw9VsgPL2Oyd0oqvB3z/f8hW76DslOqeT3EnEVVXPEWI
         e5Wg==
X-Gm-Message-State: ANoB5plqFORqS86g9vOJJ3mba5Vv3nl8Mx9Je4dha/WYlCQQGg0h6nQm
        faaWPIq0ViEA7PSE57QCCvK6S0HccuABt0UPwwQkTg==
X-Google-Smtp-Source: AA0mqf6bx5onp0asvYUodNc+Cdhrc3Wqz8dd/iTAPqLXE25zD3UFR76dPXpXK7xK71bI4aD5Sny+Dtzy2iH3uPTd6PM=
X-Received: by 2002:a81:b54b:0:b0:391:f64b:e3bb with SMTP id
 c11-20020a81b54b000000b00391f64be3bbmr26235170ywk.49.1671100635548; Thu, 15
 Dec 2022 02:37:15 -0800 (PST)
MIME-Version: 1.0
References: <20221214180611.109651-1-macroalpha82@gmail.com> <20221214180611.109651-4-macroalpha82@gmail.com>
In-Reply-To: <20221214180611.109651-4-macroalpha82@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 15 Dec 2022 11:37:03 +0100
Message-ID: <CACRpkdZjX7E7Sm7F5sPCwUmnnw6A9imYwytfSb_R1S_qsdgo0A@mail.gmail.com>
Subject: Re: [PATCH V5 3/4] drm/panel: Add Magnachip D53E6EA8966 Panel Driver
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, Chris Morgan <macromorgan@hotmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Chris,

looks good to me, just very minor nitpicks:

On Wed, Dec 14, 2022 at 7:06 PM Chris Morgan <macroalpha82@gmail.com> wrote:
>
> From: Chris Morgan <macromorgan@hotmail.com>
>
> Support Magnachip D53E6EA8966 based panels such as the Samsung
> AMS495QA01 panel as found on the Anbernic RG503. Note this driver
> supports only the AMS495QA01 today which receives video signals via DSI,
> however it receives commands via 3-wire SPI.

using DBI.

>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>

Is your Kconfig snippet missing:

        depends on BACKLIGHT_CLASS_DEVICE

?

> +#include <linux/of_device.h>
> +#include <linux/of_graph.h>

Not needed anymore, right?

With these fixed:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
