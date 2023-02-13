Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7F906954F4
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 00:48:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231195AbjBMXs4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 18:48:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229976AbjBMXsv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 18:48:51 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B97D1632D
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 15:48:50 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id g9so9060087pfo.5
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 15:48:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1676332130;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vMGp5jpDI56FIhgoLwzO01KLRWgFG/thqIKmC+ewf1A=;
        b=DQ2gARKC+AcuFhGsEEWyLEtJbIYjQZu6fz02qaq7o5HGZcUvs8MWTuMw+UuTQ+6yNb
         hcQdZ/vASB85DaAIGTri0H8dujwMo11jgf9DiRPXQU7R1VlNjfxjWjtpJnaK3MESazVB
         lOr5q1vP/QM99/k6v0ymhVidxHQmIx8Pj16CthPTIVT++Lmj/nZ/mGgU/cJbUUzrV8Hu
         b5JRStjxOK1deZvALcUwB3eXNG1Q7FG/FrF544MkQR3+hCDbdWxj6Wwim2ScwuVcvHvv
         zKk1S8zEROYZb9eHNctBYjhxrvOUGzfSVx7vpFbsCiI5YQWM/wS4d2vXBkN4qtvavb7a
         tkDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676332130;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vMGp5jpDI56FIhgoLwzO01KLRWgFG/thqIKmC+ewf1A=;
        b=Nai+5p+TwPKkx9mJGr2Sg476MWx0/JtlCRxIj9ArHQQDNJ805M8HeakubVQpoV283/
         0Mtz9plUK3dv7Zk/McLkaSNcLKoMnW9G7glVtW0fzl3kh3dk9QNglVqW6hQAzzB2vh9m
         MaHom2RaqMvsfj4THXZkd/LWN5yT55QZgPQSkZdtCHnl2a0n5K9VFFkbzrMR54uhBiCi
         BS7B0P61YtlLdRikwSJqwaoxZfYx9ywXr+a/ydrGV3nQu2oSHXQzIFqHJ6mWmu60kTdi
         EXm5b0XkvIWI3w3y5R15CXeSyHdURy9Vp3jD0SAiIQXSngQEA056pdoqYIqSmuA2X0sn
         PgAA==
X-Gm-Message-State: AO0yUKVT+Njw5mO3SrwxL6lzzD5hQG0TP0XQbxyLfV8HRSLkP5g4Nki9
        9e916rtQwStT/W9n599xOiClojbcINX/1WetiKf9/Q==
X-Google-Smtp-Source: AK7set8V9hjhzOSK7rhKHPbJn3smFBOI2QVV6lFBTEca2/3/LxJDzhigIc+QP4F9IXGKHjuBKsz5axhh1mR/l91nt2I=
X-Received: by 2002:a62:1784:0:b0:5a8:bdd1:6c53 with SMTP id
 126-20020a621784000000b005a8bdd16c53mr59229pfx.9.1676332129756; Mon, 13 Feb
 2023 15:48:49 -0800 (PST)
MIME-Version: 1.0
References: <20230129130059.1322858-1-j.neuschaefer@gmx.net>
In-Reply-To: <20230129130059.1322858-1-j.neuschaefer@gmx.net>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 14 Feb 2023 00:48:13 +0100
Message-ID: <CAPDyKFqUEPXbRWy7kStGi5vEuM=3=N6VS+o9HTHVTPatYRaYUQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: fsl-imx-esdhc: Improve grammar and fix
 a typo
To:     =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
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

On Sun, 29 Jan 2023 at 14:01, Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.n=
et> wrote:
>
> This makes the text read a little better.
>
> Signed-off-by: Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.net>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/D=
ocumentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> index dc6256f04b423..1c79b68753da0 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> @@ -98,7 +98,7 @@ properties:
>        Specify the number of delay cells for override mode.
>        This is used to set the clock delay for DLL(Delay Line) on overrid=
e mode
>        to select a proper data sampling window in case the clock quality =
is not good
> -      due to signal path is too long on the board. Please refer to eSDHC=
/uSDHC
> +      because the signal path is too long on the board. Please refer to =
eSDHC/uSDHC
>        chapter, DLL (Delay Line) section in RM for details.
>      default: 0
>
> @@ -127,7 +127,7 @@ properties:
>        Specify the increasing delay cell steps in tuning procedure.
>        The uSDHC use one delay cell as default increasing step to do tuni=
ng process.
>        This property allows user to change the tuning step to more than o=
ne delay
> -      cells which is useful for some special boards or cards when the de=
fault
> +      cell which is useful for some special boards or cards when the def=
ault
>        tuning step can't find the proper delay window within limited tuni=
ng retries.
>      default: 0
>
> --
> 2.39.0
>
