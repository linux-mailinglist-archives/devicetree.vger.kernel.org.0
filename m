Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 363B770F16E
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 10:50:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240271AbjEXIun (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 04:50:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239804AbjEXIum (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 04:50:42 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC4C8189
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 01:50:40 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5617d793160so9477057b3.2
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 01:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684918240; x=1687510240;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zGfPKtHi5YOURAKsGDBHNQ7Aw/Turw8EB6RVImptoek=;
        b=YIkEN8ATkeNZxa7Mk3mbyV192nlB7YMPJPNSkXfiFqr28AKnkNNRH6A/eTOp8E+BEd
         GSEPeHgc3yW/Jz+W3w4hQXY5E3bpabbgw3llzDDcTe4Mxgmn42vhJdXosJ3oD/Olzy/j
         iGtXTVMWOKbhKlhx5oztIjQutpIodTOXJe3767/fzk6uQemgQEZxcUS3t5fKXi5uoYKU
         i4ztF+p82OUX41uz0wQe+WILZwL+8riedL/zjPEgyJFkuD2XZSQmgSK50Tnh5Xeus6gk
         1os/zGmWbpltBptHUS+8Du/py8fXHvdhzsN/ulLptUWrt/GB0/dUQcqCdFvxCJ+QQBFp
         LrNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684918240; x=1687510240;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zGfPKtHi5YOURAKsGDBHNQ7Aw/Turw8EB6RVImptoek=;
        b=Op1XRDaZY8kF2mq3/futFj807IJC8NN0JFqDGjrHhAkId6asGiRSp0CvxCVH6FHp1/
         BCJoFO7KBL0F4jrIePZSE37awywFTL8vl3XgOiFax/ApqnXpcqoa2lUfHw2E4bKVrD+W
         6f/JdFRM9EVeXavuBnp8TzC4cGYS3Zz+EGxLIuKkuYw1dJ5DF3Ay+xumQpZmJ5LUg8J9
         wz9OLwsk8d4pgRuFfoypbcKMWFAuqwYykcCbd1qhqQWjRFqFNV0jdGWvL35Kf9ifiW8V
         PoOEG4za45Exuxy04q4Ui3/2cBdFpBghy2rwGeVgHnO/uPkBs36XGEeQSIFOmjnX8Ei+
         z0qg==
X-Gm-Message-State: AC+VfDzUbliwT/a+/Or266LnQkom6Fenv3ZIrhPl+vESgJYhYTQhK1sx
        5p02S0acjZIEgG0rDQIjOaHTqVnoiUsx8yspxJeyIw==
X-Google-Smtp-Source: ACHHUZ6JMVJuTBYZznceLzTr1vHSBnMxk50VKqVAZA8KovHY2Aqs+HHvUl/yyU49U4TubZXIzY++bmGE7xzSYZjB9M0=
X-Received: by 2002:a81:a50b:0:b0:562:7f3:beec with SMTP id
 u11-20020a81a50b000000b0056207f3beecmr17945345ywg.41.1684918239982; Wed, 24
 May 2023 01:50:39 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1684313910.git.Ryan.Wanner@microchip.com> <d898c31277f6bce6f7d830edf4332ff605498c7b.1684313910.git.Ryan.Wanner@microchip.com>
In-Reply-To: <d898c31277f6bce6f7d830edf4332ff605498c7b.1684313910.git.Ryan.Wanner@microchip.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 24 May 2023 10:50:29 +0200
Message-ID: <CACRpkdZewDs7ZFxjC+Rem57OJ0icdMh_w2q_ReemEBJXb82NQQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: at91-pio4: Enable Push-Pull configuration
To:     Ryan.Wanner@microchip.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, nicolas.ferre@microchip.com,
        alexandre.belloni@bootlin.com, claudiu.beznea@microchip.com,
        ludovic.desroches@microchip.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 17, 2023 at 1:54=E2=80=AFPM <Ryan.Wanner@microchip.com> wrote:

> From: Ryan Wanner <Ryan.Wanner@microchip.com>
>
> Enable push-pull configuration. Remove integer value argument from
> open-drain configuration as it is discarded when pinconf function is
> called from gpiolib. Add push-pull do debug and get functions.
>
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>

I fixed up the two style issues pointed out by Andy and applied.
No need to resend.

Yours,
Linus Walleij
