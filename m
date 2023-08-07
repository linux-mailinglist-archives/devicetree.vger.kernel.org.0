Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9905A7724C6
	for <lists+devicetree@lfdr.de>; Mon,  7 Aug 2023 14:55:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231292AbjHGMzr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Aug 2023 08:55:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232693AbjHGMzp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Aug 2023 08:55:45 -0400
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 964B310FD
        for <devicetree@vger.kernel.org>; Mon,  7 Aug 2023 05:55:40 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-d299ed34bacso7886848276.1
        for <devicetree@vger.kernel.org>; Mon, 07 Aug 2023 05:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691412940; x=1692017740;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5BfX6arEp17J1ApuZYgVDOdLXWCnkGmD0eG9nrcMvUg=;
        b=ChEFz+t5kaMKFpe2jJ5x53CigMiXd9t5Je2Z+hV5pL5nF1xYgl44Y46vsURMayKRTs
         sCyh6CM5EhZ08D9Cxq8tflRhGCkfqL1ZdfkCGS7CWLvIGMwTsEuwe9Wwp0/+SWSDA/YP
         BAH2qXENMJJW13xvhHMsaZMapXNOPAC8Zvk4HdChEmGO2TXHCCC9/kLnr5z7QInuaOoq
         DEaKwDsrtpodFVI4IL2qasaWBSXrUfdjM5PQR3Wg49qjta68P4kWcvja5Np1waUz0HnP
         QeMPndPopdTaT/S//11k7wQ8AHRbgKL35UhAExVtoZUUI2HQCoNura2q1owu2Ck+8Na8
         YvIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691412940; x=1692017740;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5BfX6arEp17J1ApuZYgVDOdLXWCnkGmD0eG9nrcMvUg=;
        b=h10IjXX2MyE1fFzSmRWh+9hSoOSM4Ip9xt4SCSJYPr3dYCyNfBfzEz7+UX+QU4eo0L
         7/A7iRVUtaY9q1yui3aoVF1l2c35yALXEebd2ikw13vUcQTDXFyzbsmmcSTczaljwduo
         HxRa7VqNZ3tdNnSdQX9jVb7y30vjivNPaxvSFov2DS4mX9SsajxGl7ElgH5Jr050pOmv
         FCqiO6TdHP3ACqMSdWIJNepeHCMd5XW+C1hN2UvdtQPFJwZ1ZC/rD574nQlNB4CaZgvZ
         duhF7NxkNNUqjrCbPc196kmr7C0sBF0p35gLLOyk87IsA8tPGlPApLQuryc5avSWXqwf
         3yxA==
X-Gm-Message-State: AOJu0YyWy71VP3bF9jA96t+PeI/6Xg7sz211wHAYJlvJt8If+JvkeNMK
        oUDDjWrZEftOVYuEsgHqJDeBtxthpIMlbHRrDKHNmw==
X-Google-Smtp-Source: AGHT+IEBEw7X+sUekghvFs/pg7p7r8rTjn5GmiFSMqpTqd2GgLQW8CZaYlcMzQteiBhViqFLcWuQesWbPI6GF/4kX0g=
X-Received: by 2002:a25:2943:0:b0:cef:b734:57fc with SMTP id
 p64-20020a252943000000b00cefb73457fcmr7974595ybp.25.1691412939852; Mon, 07
 Aug 2023 05:55:39 -0700 (PDT)
MIME-Version: 1.0
References: <20230726090409.16606-1-tychang@realtek.com>
In-Reply-To: <20230726090409.16606-1-tychang@realtek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 7 Aug 2023 14:55:28 +0200
Message-ID: <CACRpkdYpFMwAMGnFuC-9agY4sV6HJo8hYBL35oacnGFvJxLJ-Q@mail.gmail.com>
Subject: Re: [PATCH 0/7] Add pinctrl driver support for Realtek DHC SoCs
To:     TY Chang <tychang@realtek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi TY Chang,

thanks for the patches!

On Wed, Jul 26, 2023 at 11:06=E2=80=AFAM TY Chang <tychang@realtek.com> wro=
te:

> These patches add the bindings and the pinctrl drivers for Realtek
> DHC(Digital Home Center) RTD SoCs(RTD1619B, RTD1319D and RTD1315E).

I really like the architecture with a central driver an modules for each So=
C
that makes this nicely maintainable in the future.

There are some questions around the NMOS/PMOS totempole config
(I guess that is what it is) so we need to hash that out into the
documentation, then I think the rest falls into place pretty naturally.

Yours,
Linus Walleij
