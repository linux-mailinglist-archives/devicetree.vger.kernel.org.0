Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A20116C050F
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 21:58:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230094AbjCSU6j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 16:58:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229987AbjCSU6i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 16:58:38 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7D5616ADF
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 13:58:36 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id j7so10840918ybg.4
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 13:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679259516;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=slTlotxx3fcOIiVEZmXgPk8gsXyMX9Tm5yjiLh1yu78=;
        b=Esl4BDoUuM2GdiJWGFjVzUqn6XsO4j+Vy23XiW1cYGU7/3p294trptkJ/Ohnf7DKjt
         St61+kvqCPtQnB/W/OkK38195AvIe/FGFLCu6mchGB7UT1LPeEwNwl7YCOH5YgQ2aeBG
         3Ya5xRIKCUWOgKs/AdaObSzyOGS3GUmZxCXb7xg0BQTQZ9q6x5Id/ef/mv5AW1A0j577
         hxKxTUiXN9dX8iGAP3azmX05ZuDIKH2UcD+nAVnn++yZXVe8Lid7l2TUtQKQrFFKL8/C
         hfEo00yLT5ppwMmbHALhrxhS1Hz5d6fz4Xf6jD28Xt/z5BfunnCI615t3L6AAGGJEFIu
         asfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679259516;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=slTlotxx3fcOIiVEZmXgPk8gsXyMX9Tm5yjiLh1yu78=;
        b=1OS7GTRPWl7o3reJK2TkWuM3LL3pfYTYJRbgyuci1DII3NkhaNn6imKlR57EJTeklh
         hoh4d8LH3/w4dI+OHkQUpFo5OYrvmB3fZ6MZd0k0/zCEblG2GYbt1aYvvmsFeBIddLVX
         stPwLkLirxYCU6mn3rSnSf3UdSjyiOTS07msmSwUvMTuDBMSh7c65TvhHbW7TZdNTuF5
         e4PVHVOyg7sEF+MDWJrFJXFmgeRHDRlZSJRahvqNO5Vqmc6sW16sJHuCeWs5WQ87q6Vc
         douvRwOIs02j3l49eohwKYAdoVe6lUhvSMQzkmZ0U6M8zClg+3gVOqx25yK/96quS03H
         lEMg==
X-Gm-Message-State: AO0yUKVUo+U37PCpSR0sOlx3lJYG8Itj1b/UfNL/17RjZwcEvSxc2Fnx
        gex4boEuZsKUh5/6r8zgQlgDVJ7zrMJnl56i2WbDIw==
X-Google-Smtp-Source: AK7set9N7HBHhQUfyexxk65xztbNCbM/NotsRK4cg8qus2nO+Zgi2xnzAgTVdxSDjoFozWKrNI49lPoh5u52J04PEhQ=
X-Received: by 2002:a05:6902:110e:b0:b26:47f3:6cb with SMTP id
 o14-20020a056902110e00b00b2647f306cbmr3225716ybu.4.1679259515943; Sun, 19 Mar
 2023 13:58:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230315155228.1566883-1-nm@ti.com>
In-Reply-To: <20230315155228.1566883-1-nm@ti.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 19 Mar 2023 21:58:25 +0100
Message-ID: <CACRpkdYPZ6CROjdta2_3dSuoiT_7FJDAqvTD1LpKCyUB05U91w@mail.gmail.com>
Subject: Re: [PATCH V2 0/3] pinctrl/arm: dt-bindings: k3: Deprecate header
 with register constants
To:     Nishanth Menon <nm@ti.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Eric Dumazet <edumazet@google.com>,
        "David S. Miller" <davem@davemloft.net>,
        Sekhar Nori <nsekhar@ti.com>, linux-gpio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, netdev@vger.kernel.org,
        Tero Kristo <kristo@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 15, 2023 at 4:52=E2=80=AFPM Nishanth Menon <nm@ti.com> wrote:

> This is an updated series to move the pinctrl bindings over to arch as
> the definitions are hardware definitions without driver usage.
>
> This series was triggered by the discussion in [1]

Acked-by: Linus Walleij <linus.walleij@linaro.org>

As mentioned by the DT maintainer I think this best all go
into the same tree as the DTS files, so let's merge it all
through the TI SoC tree.

Yours,
Linus Walleij
