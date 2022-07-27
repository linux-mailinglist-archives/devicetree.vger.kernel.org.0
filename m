Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0B5D5820F2
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 09:20:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230044AbiG0HUi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 03:20:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229846AbiG0HUh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 03:20:37 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C17314D0F
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 00:20:35 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id z22so20280180edd.6
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 00:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=B/3cwhkrY8tQUxDVkHJfLpRrQkQ3c6JStKlEhPbpXlQ=;
        b=x9H/KCvxdJ3kObn/7BSsQE2qoNllZH8xzlRFwHYYzkYb3z4HYZ/5++haePJ1pb6RRE
         E3bIFjVYh2sfF9WBMgfTkZ2ANiE2R1RL5Bsge9/xKFlf3wEt42OItYicN1+lwUzj4LVY
         nHc9mjC5s+LUeK72Dz51hvMbAL9NEbdQtKD8YWSrCwQMwCiD7tZpLwc0lRwTG3oTasuo
         mpjQPm0s7NpgJJSkqm3FpbneDbwkoJcc/mqqsBhrAheYoPdh1t5Ummsce6HrfOASsLoY
         G+pQXS9sD3NVWF+zX6582lbCqLKzZ52DK4hTJBTaGsSnjl3iLNklzn3Q5J5YA6gosF8X
         6/9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=B/3cwhkrY8tQUxDVkHJfLpRrQkQ3c6JStKlEhPbpXlQ=;
        b=0bPYM1aJTiUClOab82Th6eVdq7qwoUsU0xQ3a9z99ra44g25UT27GF/0leD2ErMX7U
         oYTpTc+q0DV64qNAHmVfJyHRFe0jaxM+QA2wKjb3YKkPaYAcXnvKatTILjSzkxPhGumz
         J50Cz5Fi7OVd9aqq3xUrjMCKd3YHANEWqkl4+Cj6kJKIU1yZF3Bc3HN+KWguEonMVmNw
         tr/QF/CDiyq9Mq7/XMxb1wZ3/NtRSshHNspO/OXkZ/6HsWeaLS+Isq3i/D09VIyuF0BU
         EYuOlkynZTl5Nn2gB6Nd1YQaJKccR25Y1mCDm/5rH56G9CVJtQ08fUIHBTHUKo1hLdq1
         dSwA==
X-Gm-Message-State: AJIora8OFqHOzmeX9DG02uLf8KzmSV1LgOgpcNwFlMExK2FUY+B9Qf/L
        pKzgczwGyNEUJZIfeieI+rfphMtSDCCdrdtasoEAzw==
X-Google-Smtp-Source: AGRyM1uBVF7miPhsnFCu5Pn4C3OdzCgB5q7YaQg4Yn5UCnA8KzBYJa5NRIcW4OdO/CavM2YUzALCe9FNOZa2Ytd0EPQ=
X-Received: by 2002:a05:6402:26cd:b0:43b:e3eb:241b with SMTP id
 x13-20020a05640226cd00b0043be3eb241bmr18635775edd.133.1658906433770; Wed, 27
 Jul 2022 00:20:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220725151703.319939-1-marex@denx.de>
In-Reply-To: <20220725151703.319939-1-marex@denx.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 27 Jul 2022 09:20:22 +0200
Message-ID: <CACRpkdZKt_z7sFEiPjUY7chFz1OTyL0bO3fW-rx-TuK-5L=Kow@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: sitronix,st7701: Add
 Densitron DMT028VGHMCMI-1A TFT
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, robert.foss@linaro.org,
        =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 25, 2022 at 5:17 PM Marek Vasut <marex@denx.de> wrote:

> Add compatible string for Densitron DMT028VGHMCMI-1A TFT matrix.
> This is a DSI-attached 480x640 2.83 inch panel.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Guido G=C3=BCnther <agx@sigxcpu.org>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: devicetree@vger.kernel.org

Patch applied to drm-next!

Yours,
Linus Walleij
