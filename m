Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C0A76CED30
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 17:42:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229786AbjC2Pmx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 11:42:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229753AbjC2Pmw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 11:42:52 -0400
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CC4D135
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 08:42:52 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-536af432ee5so301156897b3.0
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 08:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680104571;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=10pB1ZFq83fYs1zuTZu6lxTnqmTWS6Y+MzNSuQ9y+DE=;
        b=nJ7gJHi78lKpN91bz57CNaqm6iaAv8FtXYr3rWlX6HVImjCXQCNUcsf0MqJIi9+/je
         gjNDF35IM1ffoU60VKxE5HQ8qvwp1KBcEdw7D+oh8t5MHaPIVPRAgSZdb68EiFMkGreo
         iKMXVTrIsNONghpJipfVT4py5dLu3IgMD5SYU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680104571;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=10pB1ZFq83fYs1zuTZu6lxTnqmTWS6Y+MzNSuQ9y+DE=;
        b=IzmnEMQly13M6y8eR0td/1H3yM8IjvSLlBW04MuZlQ/+igKQCK5m6Jy57NmnFRRdYH
         qkxxDuzRCfptKjEknr5QNEDqdSX21EWPbMHRGvXZQXdqN9SgGDlK7gWQu4FsAXl2cia2
         0KihuvfKMd5T6W5dxg6RU20r1Sgx7U+WnmhORGy4Q4zyb0S276bRpH+eNtd//qZjGLE+
         tquybjrW0IXtt7SCdw51DyWJvsodkNIf+W4a9UkLH75Es0I9zdtxOcnZnt0KR/wVHGOV
         oCizwTfu2pxyC7mBTA3Tu7ChJRfIcv6efv4rj3WAV7Q1U/Lqlnqk8kUaEEJKhCC9wnpf
         sX+g==
X-Gm-Message-State: AAQBX9cNB21fPMjYadi7ag/BXzlL1FAqwzTA+Y7fMCdtRVvU+MpkZkwL
        fPrjPcyVFnyUAi/TKqNtFe6vIGs6sXlm142gcz/mQw==
X-Google-Smtp-Source: AKy350bF9W8wRS9Q25G4IPhRri+HwV58jWEFiVECSTzvsRrArCHQ/I2Nf7fpNz/yR4DEJVi2ndAzEecJM2On8YNE82U=
X-Received: by 2002:a81:ae23:0:b0:53c:6fda:835f with SMTP id
 m35-20020a81ae23000000b0053c6fda835fmr9473072ywh.0.1680104571505; Wed, 29 Mar
 2023 08:42:51 -0700 (PDT)
MIME-Version: 1.0
References: <20230329144155.699196-1-festevam@gmail.com>
In-Reply-To: <20230329144155.699196-1-festevam@gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 29 Mar 2023 21:12:40 +0530
Message-ID: <CAMty3ZCVgya5P2zKoyZit0ZXEHeEy1haiV4XUtGhDPOxJ2rnWA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: exynos: dsim: Add 'lane-polarities'
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
> From: Fabio Estevam <festevam@denx.de>
>
> The Samsung DSIM IP block allows the inversion of the clock and
> data lanes.
>
> Add an optional property called 'lane-polarities' that describes the
> polarities of the MIPI DSI clock and data lanes.
>
> This is property is useful for properly describing the hardware
> when the board designer decided to switch the polarities of the MIPI DSI
> clock and/or data lanes.
>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
