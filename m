Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07AE76CED2F
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 17:42:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230463AbjC2Pme (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 11:42:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229879AbjC2Pm2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 11:42:28 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D58C1BC
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 08:42:27 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id cf7so19886333ybb.5
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 08:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680104547;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pS8+AD3cQkxrFzJTH9IweCQbyHIF0dM/9S7t8SUlbGM=;
        b=jzRBMBOaiXKQFHZWv5P8YP92yyqIgYT7vNvIUCw/4L5P+zdAXFTXuCjFQZOpSrIv3L
         eLXqewuo8uv5esSacojCB96yvbNEo7E0Gb4t2Xe8/NxbP3WA8f6/1RvtGEYPkLPlc1Sn
         a0rtap6GhrqHYJLN8Tc2xDzLa4HI7lGwW/NRQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680104547;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pS8+AD3cQkxrFzJTH9IweCQbyHIF0dM/9S7t8SUlbGM=;
        b=Y1dkqMTZdEHoPk67TIjoOW/bG71cbdOg1La02J/sdiJsvYnRsxCuSBOKlu5yznngdb
         VDtOkd+4zpJKueM7ple2imVZaGQiW461TBuQX/Jxxc0XSrr26Jt4TMmAN1sSP4TLyHoE
         0ILHsLKkh1xB0cjIaGIs1heY5ntT/fUjJC9Z2Fi2Sm7xzqQ4NUpP0PW4VdKGPb7tfm4M
         eczz36DBZHpqbOAylol75ARFQkOf35CRuQhEtYLjXMvu279K+Rwzr2y1RrHXGfUqOOyS
         49Ara3jFUIOexcB0RZdqFAHL4oMimscNG4cogbkcaBd4tFquZpzl6P/K4mYMuGKD5Bgj
         vA/w==
X-Gm-Message-State: AAQBX9fduTFA0zonDMgKu0inalE13Ud3bOaH0LM5vgMl6e33pRAzWmLw
        x9I/o0b3SpbCvVylqdfDknuhrR6swlrrR/ppaopojQ==
X-Google-Smtp-Source: AKy350bJqV9lEqGaTrn1zxndLS8oYHTNrILsVhExwkudwcLjG0SpWZe5ey3aRXvbk610+0fMyI64Rzp/yPi80ZHWedQ=
X-Received: by 2002:a05:6902:154a:b0:b3c:637f:ad00 with SMTP id
 r10-20020a056902154a00b00b3c637fad00mr13586904ybu.5.1680104546805; Wed, 29
 Mar 2023 08:42:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230329144155.699196-1-festevam@gmail.com> <20230329144155.699196-2-festevam@gmail.com>
In-Reply-To: <20230329144155.699196-2-festevam@gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 29 Mar 2023 21:12:15 +0530
Message-ID: <CAMty3ZBBXNp4Fju0TsOW=cD-34pj6qs3FBA5gMrND2-fnWQOPw@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/exynos: Implement support for DSI clock and data
 lane polarity swap
To:     Fabio Estevam <festevam@gmail.com>
Cc:     neil.armstrong@linaro.org, inki.dae@samsung.com, marex@denx.de,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 29, 2023 at 8:12=E2=80=AFPM Fabio Estevam <festevam@gmail.com> =
wrote:
>
> From: Marek Vasut <marex@denx.de>
>
> Implement support for DSI clock and data lane DN/DP polarity swap by
> means of decoding 'lane-polarities' DT property. The controller does
> support DN/DP swap of clock lane and all data lanes, the controller
> does not support polarity swap of individual data lane bundles, add
> a check which verifies all data lanes have the same polarity.
>
> This has been validated on an imx8mm board that actually has the MIPI DSI
> clock lanes inverted.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---

Prefix would be "drm: bridge: samsung-dsim: "

Otherwise look good to me, I will give a test and update.

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
