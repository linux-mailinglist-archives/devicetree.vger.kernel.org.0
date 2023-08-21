Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5641A782717
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 12:31:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234706AbjHUKbI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 06:31:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234711AbjHUKbG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 06:31:06 -0400
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25901DC
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 03:31:04 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-58fc4d319d2so18045497b3.1
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 03:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692613863; x=1693218663;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9fEE32aL5Rb4gj0b/8MH38oOPs9iq+wkUzldyyh0kHg=;
        b=oAQKaXXAOfvZMkVX1sZGkpxGXS4x4DaEZAWSEzowre8QtNUoAchfv2KRvdP6crS+Pr
         WDSsX/G78kKRR3Q6icaIVKmRfHqZ49jDPsCnjVZFu9pxT+pV4LgaJpFlNAl+rh9U5ym6
         cGUgkOdXHKQido7b+x34hw+9bPoFveQFqCq14YAO/Nu3hrmbdK4rIubb9YaeOeAtjirJ
         WX4Duc+OployEFuX6GTT8BcocEs1ASHhlVSH1/ULvCKFxtexBucwa7bk4PQgWTY+3Mes
         smZCCQIw8FHs19sIyVbD2gUyzfnPDQPcs7l/34HSESQNVNyf+rLwuk90LcPB4IHaGbtA
         7nIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692613863; x=1693218663;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9fEE32aL5Rb4gj0b/8MH38oOPs9iq+wkUzldyyh0kHg=;
        b=BI9U87Ir+yaPCDRMJyoKpHBzlUtfUEb2FMbQ1tdtMlIEKFRLURmQefLKQn0CRiw98c
         OvAlVp//EP6BD3L1LTn7z/8q2bObMoALxZ1plSC7afh7oh/wjUksGveou2cQSfZqak25
         NoZiTAA72jBPOyFvfWcqVz23znAHrBB0tC+agDqoBTUnpYJSxGbO8n2XlbZZfr0XNeaR
         Kdtjswxqa8FcfVl+90t7Dzbv6hMhTlywNoFzDOh09UfaLGyx1PH3tinqpIE8efiu9pLL
         MPIUbge7X9TH9SZ42dmOrE4zWROA4yzYBZMkkSsVTlRxVe8akzcnw78fS0bx/eklR/0Q
         dtGg==
X-Gm-Message-State: AOJu0Ywy4K61DJZ4733qWmHfnFMGxymaVKOmwnLzr77U5PlUBmPSAF4J
        WcqUfaHUtJSGoze0K6MG8EcTnu5sG/B3UYuZOq+fxg==
X-Google-Smtp-Source: AGHT+IF6Mfo/+8vVARSN95eC1x7RexyXH+sNO3+jYibcHUydhVyzIiiYt4PyLHBfRnqEn7V+mLG3SANopIr+t8lBV5U=
X-Received: by 2002:a25:6b45:0:b0:c60:1036:2082 with SMTP id
 o5-20020a256b45000000b00c6010362082mr6274051ybm.22.1692613863152; Mon, 21 Aug
 2023 03:31:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230819010946.916772-1-robh@kernel.org>
In-Reply-To: <20230819010946.916772-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 21 Aug 2023 12:30:51 +0200
Message-ID: <CACRpkdb6J65TjD357z4fZgjO5UR55L8v9tX2Wo4-rhFk6q0T3Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: Drop 'phandle' properties
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        Magnus Damm <magnus.damm@gmail.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Jacopo Mondi <jacopo+renesas@jmondi.org>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
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

On Sat, Aug 19, 2023 at 3:09=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:

> 'phandle' properties are implicitly supported on all nodes, so it
> shouldn't be listed in schemas.
>
> dtschema had a bug where 'phandle' and other implicit properties weren't
> being added under 'additionalProperties' schemas. That was fixed in
> v2023.07 release.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Patch applied, thanks for fixing this!

Yours,
Linus Walleij
