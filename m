Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F13A6FEE93
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 11:20:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232935AbjEKJUK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 05:20:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237522AbjEKJTZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 05:19:25 -0400
Received: from mail-vk1-xa2c.google.com (mail-vk1-xa2c.google.com [IPv6:2607:f8b0:4864:20::a2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A10479EC1
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 02:18:48 -0700 (PDT)
Received: by mail-vk1-xa2c.google.com with SMTP id 71dfb90a1353d-44fd3c2300dso3010137e0c.1
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 02:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1683796727; x=1686388727;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mCpJk3R8UEUc900fWaZ36e4XkCAv/PqWqpOGayqH3do=;
        b=IJ2xCqITqQxYd2j21guIc8CZ8a3qzOQddlNmBPpwRr3wVfJWaXyJI/ZKssRhmcOTgA
         ilyj2rg2fCrteFz+fjY/juhlucDO3hu6UGVP/mhHZ/5db2Ph3NG2SEHP5q6avENqPQEw
         vd7GdnA5jMAlyOsQA09qOdBp7bqPEQ/s8ZXp8QFwSB7RC/I3DqQbtiDdGq6uemVS2Ld0
         x0bGAOvDLv5PbDm8I88MTMA4AP3yIQlfKTU+4zyo27lkONLtPWZOXMYYdHg9qekj+JYY
         lSKV46S0nCXogvNJCBGFhU8sEupT0DaXqxj9jwiG6qCwOmNnPzyk2uadn5QFM2mO4lxW
         LegQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683796727; x=1686388727;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mCpJk3R8UEUc900fWaZ36e4XkCAv/PqWqpOGayqH3do=;
        b=Eo68CQpFUejL0WquM94sgZMmPAdRjBEWQNEHTFKOB3P/ApWpHdMyJO++NoHG1RjAVW
         mXH+IlTvFr0fK7fF+Brt84mmoK+vTHrqExdC8VzFIOfCkeTIuEnFb+X4HCEPFC+efDmm
         wch6+mkw4yPBPA8fSWC7qChIHXfFwJw3x4LOkRXOukArUWdbGKNRBBfbtEQ2LWAsGZo0
         TXt+gP+/ZOc+iPMa9ijxji51DNJa7AiZhLNPTIV/krx8nLjJyqw1GuIijsE5wobkG/7l
         p6wsnncAhU0zONDqrYg0UYDsO07WqPglyTFj/OsEgBaRw1xWhlZvefdxvbJitd++qwSm
         EHMw==
X-Gm-Message-State: AC+VfDxcotVKsRAkorhIEPC4Zt0F6r7OfoTy1kgtPyYHEJGNkIToGDpo
        m3LTrlhn3JNB9nisZC/qSivS0NjyVZ+bKFviWI87qw==
X-Google-Smtp-Source: ACHHUZ7PfcbhhIISYu9xCWNbAAg7XKAZcsN35LL5BB55uAZP1vndrSeFKFLrjV9j0Mzf8/9C95DuBCkC6LahVX2mBwE=
X-Received: by 2002:a05:6102:2857:b0:436:158:cf6c with SMTP id
 az23-20020a056102285700b004360158cf6cmr4794491vsb.6.1683796727674; Thu, 11
 May 2023 02:18:47 -0700 (PDT)
MIME-Version: 1.0
References: <20230413160607.4128315-1-sean.anderson@seco.com> <20230413160607.4128315-4-sean.anderson@seco.com>
In-Reply-To: <20230413160607.4128315-4-sean.anderson@seco.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Thu, 11 May 2023 11:18:36 +0200
Message-ID: <CAMRc=Mft9a3PNo78jiSGfKaZDhAkpPTrcTfarcr=tSmLWzj-Qw@mail.gmail.com>
Subject: Re: [PATCH v14 03/15] dt-bindings: Convert gpio-mmio to yaml
To:     Sean Anderson <sean.anderson@seco.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-phy@lists.infradead.org,
        Madalin Bucur <madalin.bucur@nxp.com>,
        linux-arm-kernel@lists.infradead.org,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linuxppc-dev@lists.ozlabs.org,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        =?UTF-8?Q?Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 13, 2023 at 6:06=E2=80=AFPM Sean Anderson <sean.anderson@seco.c=
om> wrote:
>
> This is a generic binding for simple MMIO GPIO controllers. Although we
> have a single driver for these controllers, they were previously spread
> over several files. Consolidate them. The register descriptions are
> adapted from the comments in the source. There is no set order for the
> registers, and some registers may be omitted. Because of this, reg-names
> is mandatory, and no order is specified.
>
> Rename brcm,bcm6345-gpio to brcm,bcm63xx-gpio to reflect that bcm6345
> has moved.
>
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> Linus or Bartosz, feel free to pick this up as the rest of this series
> may not be merged any time soon.
>

Applied, thanks!

Bart
