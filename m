Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37161780D88
	for <lists+devicetree@lfdr.de>; Fri, 18 Aug 2023 16:07:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377638AbjHROGg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 10:06:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377622AbjHROGJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 10:06:09 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A92C2102
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 07:06:08 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-6874a386ec7so125763b3a.1
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 07:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692367568; x=1692972368;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eR23u7rhf2bJViMqwRiTykMNM4H4yseR+TFTHv2cXJA=;
        b=mzOOK6OHUpqe2u4FBqTtdMQ7QWuaIrQLLupyCvBeklg/cCS/g+BJk1/QMU3JwOn0kP
         uvvjdHFHODs1dNZqtlOd8VJ2MOI0JF+Rde39gMRd5JTk5tL/z/eWhbvHMNCislHebIrK
         6fakhL6JAmLudQGaJalScWzC2SJkTCQfeEeEvrLemmnlmEA0SoGXHwiPt/RoidtKw4+J
         /Ff3VsK+HS5+TUUWaV1CVB5UMpvKJNBjJ8gqfx8bYPYPm4zqTHi9MAYZJ3UMF81jQkS/
         h4vmWV0+1vP/WdbpCA3YNTftWIcwlOsHNUkSe3MxQDqerOH5d0QltZOHA7wrfm93xv0D
         gLrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692367568; x=1692972368;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eR23u7rhf2bJViMqwRiTykMNM4H4yseR+TFTHv2cXJA=;
        b=lFWUGz1Nhr0rbj/xVGxRYWyVqcIlJQzy5Qiu5JmRkS7YGYCuZ3HSmBt94Lc/xf2zjg
         XOrPq7WejS6kTGa4dRi6OtYzfIIEf2nVooe7IKGiWC1Grkd5nEpk1VQ2F1Ni1aqA4Tmp
         SHAn9OQY2SsypLnfKVyE68CBaUYaOhAGsg3V//G4sDz21DMUcYhQQ+CeP9S/qWYKfcGh
         6N+9cKIs6URS2Uru9ul1gYjawT2fiBr0p/rGE3T8j9Xywln49HCDgtLidh7qTbwgGA/h
         A6vGMNCyPlTVX9/C0gwoZtMk0g40KU7oIw/T9RV9qdtzVfyAMSXbuOWujXSx9g0tMcNN
         PI7A==
X-Gm-Message-State: AOJu0YxMsTTZfQi2J0XVEfYt2ATGdx/93eOhY5EHQdHIZHcQaWPo5uAY
        kYyUIKivDN6hXcNNRx77ksNQxf3DUqusgFS6ms0=
X-Google-Smtp-Source: AGHT+IGu7ywOMV7AdXtzhR70o/rb0vCkCU+FuTC1iA12347Pi4C75SS41+EoWAYP1wjhDOqxwwhZMv+9D4Ecr9AM8As=
X-Received: by 2002:a17:90a:6806:b0:25c:1ad3:a4a1 with SMTP id
 p6-20020a17090a680600b0025c1ad3a4a1mr2518935pjj.1.1692367567630; Fri, 18 Aug
 2023 07:06:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230814081148.4027053-1-victor.liu@nxp.com> <20230814081148.4027053-2-victor.liu@nxp.com>
In-Reply-To: <20230814081148.4027053-2-victor.liu@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Fri, 18 Aug 2023 11:05:56 -0300
Message-ID: <CAOMZO5BktVaO1hRgv-WvwY2tV3eUrNnNMiQJKH654K+-AT5ECA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm-evk: Add VDDEXT_3V3 fixed regulator
To:     Liu Ying <victor.liu@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, linux-imx@nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Liu,

On Mon, Aug 14, 2023 at 5:07=E2=80=AFAM Liu Ying <victor.liu@nxp.com> wrote=
:

> +       reg_vddext_3v3: regulator-vddext-3v3 {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "VDDEXT_3V3";
> +               regulator-min-microvolt =3D <3300000>;
> +               regulator-max-microvolt =3D <300000>;
> +       };

Booting the dtb with this change will cause this regulator to be
disabled as there is no consumer for it.

I suggest squashing both patches:

Tested-by: Fabio Estevam <festevam@gmail.com>
