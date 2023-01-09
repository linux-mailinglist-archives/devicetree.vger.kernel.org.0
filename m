Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0120E66270C
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 14:30:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236687AbjAINaD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 08:30:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236991AbjAIN3z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 08:29:55 -0500
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 641B71A396
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 05:29:54 -0800 (PST)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-482363a1232so112629447b3.3
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 05:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZOu+YPGL4HyTcJPErwyvfcCw8AgjES/LkJyDaqUA8xo=;
        b=MmIVeiwGGg+w70IfORtKA6uSn4jgusMZs9qTk/5aGLvuqebaBKnrGkH6v+NUOPGYiS
         pUYVE1LkpaG8IeDssdw2Kfc9H49sXT70cp3n3BiXevLPVrBq7cgURKvFKVns547Nes3i
         Ffs6cWYDiTYFeFWs78lXv0zXPqy1UBATpUC3gNQoXF8tdDK+YQirEmupV8NWBBLDXvDU
         86FFej0tZSemF/dgnmgaSd0iU72hGQ6GiUfaFynsSaoILuKh9jsUTGmB5iTbtPElwCiu
         gcQV3iLt4GSV5Zy17yf9NP9SURfc80q1QdEgQaGRrbNXGOK6uNppyuBTOrCwE9XP1GgH
         kIdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZOu+YPGL4HyTcJPErwyvfcCw8AgjES/LkJyDaqUA8xo=;
        b=VR8iZ8Jrg9wXrCxnMQM832Ih3+WtdOi/Jj4xQlUG6JjCmgSrrqieRmjk/PdwhuMbEf
         MVH1Y8OdYzxzGVBXoNEhgs9tDst5t9cFmGEzmr2ya34vXc66TctESl9ivZFLC+Y44idz
         UCs23NFx9iltfCf3TxrBov+9ugC48Iv5ttS+D+S9ffM4e02Y3K5ZOagNvh7IrcWe6UsK
         RDN9JHpW4Y3Hx1+tnUquslOVDxKn+6OWzCWMr0r7hFYHgnAskIiq/Dg0p23nR6rCaVtB
         Df2AiP2MfMV7rRzdxNHKNeeHBfFzf+Zxgz148IyZVVHxIirvKAFDnjDzGzMS7c0HwfP4
         YWNg==
X-Gm-Message-State: AFqh2koLWf6cz8zWGnfnVdXmt83e0U+fMNwesgOyg+gnytTFDMXlSw93
        ZsRGrTUYOJR5zYHX0R4hhmkDR6QEgexR6/LGOa7tng==
X-Google-Smtp-Source: AMrXdXvAcvxObj5g9/LlFQeX9n4DRfwF9usxC+I5SxlLdi4AuXTDLQvYlKlVCo1NrmFyB7wxdhf3+Xniq1G6cR/iSew=
X-Received: by 2002:a81:441c:0:b0:463:e60:e538 with SMTP id
 r28-20020a81441c000000b004630e60e538mr1091802ywa.130.1673270993625; Mon, 09
 Jan 2023 05:29:53 -0800 (PST)
MIME-Version: 1.0
References: <20221221073232.21888-1-clin@suse.com> <20221221073232.21888-3-clin@suse.com>
In-Reply-To: <20221221073232.21888-3-clin@suse.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 9 Jan 2023 14:29:42 +0100
Message-ID: <CACRpkdbwgngAmqB4uU9TxeqcURtvH9S8Y5U38nmX4e7fWM07Fg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] pinctrl: add NXP S32 SoC family support
To:     Chester Lin <clin@suse.com>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, s32@nxp.com,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Larisa Grigore <larisa.grigore@nxp.com>,
        Ghennadi Procopciuc <Ghennadi.Procopciuc@oss.nxp.com>,
        Andrei Stefanescu <andrei.stefanescu@nxp.com>,
        Radu Pirea <radu-nicolae.pirea@nxp.com>,
        Matthias Brugger <mbrugger@suse.com>,
        Matthew Nunez <matthew.nunez@nxp.com>,
        Phu Luu An <phu.luuan@nxp.com>,
        Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Chester,

thanks for your patch!

On Wed, Dec 21, 2022 at 8:33 AM Chester Lin <clin@suse.com> wrote:

> Add the pinctrl driver for NXP S32 SoC family. This driver is mainly based
> on NXP's downstream implementation on CodeAurora[1].
>
> [1] https://source.codeaurora.org/external/autobsps32/linux/tree/drivers/pinctrl/freescale?h=bsp34.0-5.10.120-rt
>
> Signed-off-by: Matthew Nunez <matthew.nunez@nxp.com>
> Signed-off-by: Phu Luu An <phu.luuan@nxp.com>
> Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
> Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
> Signed-off-by: Ghennadi Procopciuc <Ghennadi.Procopciuc@oss.nxp.com>
> Signed-off-by: Andrei Stefanescu <andrei.stefanescu@nxp.com>
> Signed-off-by: Radu Pirea <radu-nicolae.pirea@nxp.com>
> Signed-off-by: Chester Lin <clin@suse.com>

(...)
>  drivers/pinctrl/freescale/Kconfig         |  14 +
>  drivers/pinctrl/freescale/Makefile        |   2 +
>  drivers/pinctrl/freescale/pinctrl-s32.h   |  76 ++
>  drivers/pinctrl/freescale/pinctrl-s32cc.c | 983 ++++++++++++++++++++++
>  drivers/pinctrl/freescale/pinctrl-s32g2.c | 773 +++++++++++++++++

Should this driver really be grouped together with the legacy branded
"freescale" stuff? Does it share any hardware or structure or code
with the Freescale drivers?

Maybe you should bite the bullet and created drivers/pinctrl/nxp?

Also create a new MAINTAINERS entry so we do not get the
Freescale legacy maintainer list.

Overall the driver looks good, I am a bit sceptic about the things
that Kryzstof is talking about as well so that needs to be resolved.

Yours,
Linus Walleij
