Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1997370E3AC
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 19:47:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237797AbjEWReR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 13:34:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237919AbjEWReQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 13:34:16 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FB141A6
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 10:33:52 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-babb985f9c8so7605738276.1
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 10:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684863228; x=1687455228;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lxJT2l9AQiSzolKv87z4T+nj/6Voqeaq5rKuGn4L58s=;
        b=NszQYt8L7vYkm2To4A082HXzf99FoYGffUy1WJs0IxDiKVOBKNIZF4LS8bzJP4U9Xb
         FsbiTsVNDdLLO9Of0VWtDdM9HjmJ8Fa0XOqMUAkOVIdCF9F9+SGWpxExplm0xqL+eVeR
         n1QcsrICYT3cFla8/FwSnnDBvbshHMlOilkW8bkXqFbv2/EgaolJPeOD9816GfD7BerT
         X+l2GmVnc+Rf/e8zNFVSRWCvASTB1ECiX5BE3ROF8deLdC5sOaLrZC6p4pSjtFYSYQxv
         TJ8D9YPiDGYxcvy97IVEBRWhnZ+uI32T3E8TRAB96y0E3fA2QkewP+VJ0ckw2nIlRBeP
         2IEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684863228; x=1687455228;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lxJT2l9AQiSzolKv87z4T+nj/6Voqeaq5rKuGn4L58s=;
        b=M/KnqZRhmW5Fk/zVmLIyFI0Tyd+E13IHdFZ1+evEtFsfD58SLu8z7zMPLhCmuR3QOh
         s2ubVEgva1X5eLR7eo2jQ3lsMk5MctTkDooJgTivYvfg6DA2Oi2fVN2gaOCAjNbn2x5/
         9ao64HAVw6nIbKVjFk6wwzt1Ca+PYM5el/cVLvP6iRA/h7t5vJvhdow+JcZ907nIX4cb
         yHYw1nRUf/sonGlALQ0ZKXglEc5CTM+Hq4aTmuUuQ2xJDzN/plpibmIned4LqGZvZwhg
         d1+6Kfi6NqDkETTTgzpcbFLb7E+BHh0oFuQKNhSVeqKZslW6+NO6dYXRrotLlxHstwWT
         wRyQ==
X-Gm-Message-State: AC+VfDwQGrO4r1hZgeHGk3U+qFFoSK/smIvbg7c9NV/E/K7Q5yr0XQMJ
        AmZnzRifsKg93IM6sJWiha87enuu024fenkDmbuAWDOGz27M9dD1/34=
X-Google-Smtp-Source: ACHHUZ7CvU4JrLWdiw8GNueFAwAmwyblmrdIcjrSDreVSwbYIvgWidxnuleSI1/e3yufGf6NDzI1RndQMl1F02Ag8X4=
X-Received: by 2002:a25:541:0:b0:bab:534f:d8a4 with SMTP id
 62-20020a250541000000b00bab534fd8a4mr14934833ybf.55.1684863228586; Tue, 23
 May 2023 10:33:48 -0700 (PDT)
MIME-Version: 1.0
References: <20230519142456.2588145-1-pavacic.p@gmail.com> <20230519142456.2588145-3-pavacic.p@gmail.com>
In-Reply-To: <20230519142456.2588145-3-pavacic.p@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 23 May 2023 19:33:37 +0200
Message-ID: <CACRpkda8Q+zy-J9Hs28eJuioaE6eEzDmFE6ftEGgs9ot0t4Y6g@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/panel-fannal-c3004: Add fannal c3004 DSI panel
To:     Paulo Pavacic <pavacic.p@gmail.com>
Cc:     neil.armstrong@linaro.org, sam@ravnborg.org, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 19, 2023 at 4:25=E2=80=AFPM Paulo Pavacic <pavacic.p@gmail.com>=
 wrote:

> +//macro for writing to DSI
> +#define WRITE_DSI(dsi, seq...)                                          =
         \
> +       {                                                                =
        \
> +               const u8 d[] =3D { seq };                                =
          \
> +               int ret =3D mipi_dsi_generic_write(dsi, d, ARRAY_SIZE(d))=
;         \
> +               if (ret < 0) {                                           =
        \
> +                       dev_err(&dsi->dev,                               =
        \
> +                               "Error (%d) occurred while trying to"    =
        \
> +                               " write MIPI DSI command: %s (decimal val=
ue)\n", \
> +                               ret, d);                                 =
        \
> +               }                                                        =
        \
> +       }

As said for the other patch, this reinvents mipi_dsi_dcs_write_seq()
so use that instead.

mipi_dsi_dcs_write_seq(dsi, 0xFF, 0x77, 0x01, 0x00, 0x00, 0x13);
etc.

Yours,
Linus Walleij
