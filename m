Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA4C6755751
	for <lists+devicetree@lfdr.de>; Sun, 16 Jul 2023 23:12:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229956AbjGPVM1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Jul 2023 17:12:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229585AbjGPVM0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Jul 2023 17:12:26 -0400
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B06910C
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 14:12:25 -0700 (PDT)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-579ed2829a8so34346287b3.1
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 14:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689541944; x=1692133944;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d3b8UztauwV0ipqVWs+m4z5CuiHs0HTjuwiinV+KW6c=;
        b=iJE8TnKnGNUVcHSbBHKe81kuBytUmh/nX7RWrJ4hWhiaxg7kZSEMRkAHryEj/emUoK
         G8zLTRQrdrD08I+i3WrGYu8BjLZBQnfr4MovpIdbAA+xR7mQ7f5sgQhH3EjkxbdcZvXI
         /eCLrVWANcrIhH9h8rsrpb+PVPHo27zbvUg2X9Tw9lcOmzgB6OVKN3d3LroBpYoq7jKo
         aPG+Gf8a93XgRAvjV0hitpKVzqI0RxyPGPXOsL60WOG4gRC5TwTeU1+RSsdO1qablql9
         bt+qzWDalevoGP8CaXGDl3DJnvPE9EVZcnJ5/BEFhuDaGuEGgPAf/ffqWqYMzqKMHkYp
         l20w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689541944; x=1692133944;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d3b8UztauwV0ipqVWs+m4z5CuiHs0HTjuwiinV+KW6c=;
        b=VdSgBCA0YOhzq1Ipdbyb3nvOAI2O08rjCH9GVncTTUd1rxSluFeOVz5wuxVc+3Q+b/
         DsWhti3GyZOZOk1/nUCDjCvez2EVIXSOD+ZDSx9K/YtqP1d2QOGW7q7Nr23iykkrBRS1
         D95PiBlDCQ17keWv8IVhtfO/viFdzJULvTOuU/QObAZW131z7xtTicftDvxP/NRTHXXO
         GFSiDbKP8hhDgISqlgGVQL9cAGBMAInVt/J6bs9wItdQ7DcGHV3ixtbBEsA+EIHFsRX4
         PufSaRugBeYOj23M1w1k6rn3E7ytRsRzHv+YROp/RKJHWMGSszH5C+fkzgi4NuGpH4ci
         ZnXA==
X-Gm-Message-State: ABy/qLbgL0oKBpSzIlThddf6GViDUh/hJSPDuAJ8PfMVTlufQ/FfYvdM
        92Is8100dJ8OKpKIOwq2TcOS7A7wdFu/PkQtKU4+lw==
X-Google-Smtp-Source: APBJJlFnnja0vtO/UNtiX8CqwYqlRiXKXzfhukb7/r++zNdWsfbBOvheL5nmnz2B7/+XfmeDKz1PdXeMoyOcfp2IvpE=
X-Received: by 2002:a81:68c3:0:b0:570:8482:4074 with SMTP id
 d186-20020a8168c3000000b0057084824074mr10302376ywc.42.1689541944469; Sun, 16
 Jul 2023 14:12:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230705194544.100370-1-nick.hawkins@hpe.com>
In-Reply-To: <20230705194544.100370-1-nick.hawkins@hpe.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 16 Jul 2023 23:12:13 +0200
Message-ID: <CACRpkdavmueFkzMDfck+OMXGqjxT55_1XhomTXYdtXoGDYKi_w@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] ARM: Add GPIO support
To:     nick.hawkins@hpe.com
Cc:     verdun@hpe.com, brgl@bgdev.pl, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, jdelvare@suse.com,
        linux@roeck-us.net, andy.shevchenko@gmail.com,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 5, 2023 at 9:49=E2=80=AFPM <nick.hawkins@hpe.com> wrote:

> From: Nick Hawkins <nick.hawkins@hpe.com>
>
> The GXP SoC supports GPIO on multiple interfaces. The interfaces are
> CPLD and Host. The GPIOs are a combination of both physical and virtual
> I/O across the interfaces. The gpio-gxp-pl driver covers the CPLD which
> takes physical I/O from the board and shares it with GXP via a proprietar=
y
> interface that maps the I/O onto a specific register area of the GXP.
> The CPLD interface supports interrupts.
>
> Notes:
>
> Based on previous feedback the gpio-gxp.c driver has been discarded in
> favor of it going into a separate larger patchset. This leaves behind
> only the gpio-gxp-pl.c driver.

The kernel certainly looks better after this change than before, so
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
