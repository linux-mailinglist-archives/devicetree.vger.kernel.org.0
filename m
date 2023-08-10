Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1088777685
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 13:09:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231317AbjHJLJl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 07:09:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232779AbjHJLJl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 07:09:41 -0400
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44D94213B
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 04:09:40 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-d4b74a4a6daso720964276.2
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 04:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691665779; x=1692270579;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nrCDrSaxkOnoskPLNX6of9fGrq30kSTTjPQNs9alzXw=;
        b=mqLUcZGAdm5yKSkxr9BjWFd3B/wUgzQDxpBtajmOQByxwqT23HnyN/9GslCSZdK1fl
         XPRSPd86ZfFgTeyzaFb+TWwfQvH/OcUU3cOb8JJxV0aszhV6F+Gygl3giB9wR7/22vQd
         fr96lqsvFYBLfMFQj74BJc8X+ujWkyxK3+IT6vhsagBTakO1UTJBPLQ6pwlqp+29R80Y
         +7P9PmZVTXiu2+pjGX0M8OzvxA+EGEtXmt740D8gvDJmHbs4fxAfV4rgABNkOha3fB0j
         JFdZEXCtBXJj3rmY3JLWWBCdyQoJsa5OrLis8hsudww1mKFZVGQ4+l3g2MByzHJphERJ
         Eorw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691665779; x=1692270579;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nrCDrSaxkOnoskPLNX6of9fGrq30kSTTjPQNs9alzXw=;
        b=HowVx0ltVjugB0XvtCy4VmpSt13tEFY4WJ2dArAD5XYJmiDo/rtcy5dsoqDNIGEFy1
         ATKsInT23ZziZzotSV9PJuELs2kr727Hykuq0k2ZG9kWAmGoQwLwFL7De4xnImWgsAGl
         ryvSOPwwghB9wazjZWXQJ364mHvDzZO2Vm/ZDhhVEkUdOm1vbY+B2skEchxhtfVtDGoR
         a6CLXKaKTC+GiG8il+5xEGtykfqRyE6hcZDM37xVaAe2RtRjmNxAYbLIsELaYh5ERW7x
         WTsNY1qcM2izFAPXVoPgwliwPZ0wrI74mn21N+VARybtWvh5D17agB1tfNDhUawm0gnk
         snAg==
X-Gm-Message-State: AOJu0YzeSk7okYyJ+9MULCpzDR/KzUHTtH2750PbBddzLTTnhbZRTG55
        Q5Z1nZWZZ9rmR3l7ZFjwNPAyetpfW6gjoL0N8htu/g==
X-Google-Smtp-Source: AGHT+IHZFiJvDdRFwWsv0IC08dq5P2mWN3KmjsdIo4AKS3FUz9cw2DydAD6qCbnSHw/Inw5OMg6uQe9d0pHzlI0Agpc=
X-Received: by 2002:a25:734b:0:b0:d4e:f64d:97bd with SMTP id
 o72-20020a25734b000000b00d4ef64d97bdmr2277019ybc.63.1691665779441; Thu, 10
 Aug 2023 04:09:39 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1691606520.git.agx@sigxcpu.org> <d7a0be6a2688a9829077cc21ca4a5bf9528f9eb1.1691606520.git.agx@sigxcpu.org>
In-Reply-To: <d7a0be6a2688a9829077cc21ca4a5bf9528f9eb1.1691606520.git.agx@sigxcpu.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 10 Aug 2023 13:09:03 +0200
Message-ID: <CAPDyKFrhBqvkqnJngSBSx+nqnNwo9BXjfiUjt2uk_TbCsd95Ug@mail.gmail.com>
Subject: Re: [PATCH v1 2/5] dt-bindings: mmc: Fix reference to pwr-seq-simple
To:     =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        kernel@puri.sm, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        David Heidelberg <david@ixit.cz>
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

On Wed, 9 Aug 2023 at 20:50, Guido G=C3=BCnther <agx@sigxcpu.org> wrote:
>
> It's a YAML file nowadays.
>
> Signed-off-by: Guido G=C3=BCnther <agx@sigxcpu.org>

Applied for next, thanks!

Kind regards
Uffe

> ---
>  Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/=
Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> index 86c73fd825fd..58ae298cd2fc 100644
> --- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> @@ -269,7 +269,7 @@ properties:
>    post-power-on-delay-ms:
>      description:
>        It was invented for MMC pwrseq-simple which could be referred to
> -      mmc-pwrseq-simple.txt. But now it\'s reused as a tunable delay
> +      mmc-pwrseq-simple.yaml. But now it\'s reused as a tunable delay
>        waiting for I/O signalling and card power supply to be stable,
>        regardless of whether pwrseq-simple is used. Default to 10ms if
>        no available.
> --
> 2.40.1
>
