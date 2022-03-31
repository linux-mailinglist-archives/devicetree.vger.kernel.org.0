Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9E2D4ED378
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 07:50:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230050AbiCaFwL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 01:52:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230032AbiCaFwJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 01:52:09 -0400
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com [IPv6:2607:f8b0:4864:20::f35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AC6D1EF
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 22:50:23 -0700 (PDT)
Received: by mail-qv1-xf35.google.com with SMTP id f3so18960068qvz.10
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 22:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=2oBpHtrBdpM0TGFuOASxC4p1tI7RPpF06aJ0LQ4yyNY=;
        b=QONXwZBYl68by23h+aqXxcvVrpAmyM13ha2EKDpwQPkRvt5bIFsl6+t7jzFrbFe3FF
         bqEkvNqd3PyKCNIvQajvODv6hZ6HwtIPhLxP2kD23ichzQkNpvB4s4mkL+VHFIVojsZL
         hch26KOlqKQ1O3DkETMoNhQ1Zb/cH8hCSgWa4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=2oBpHtrBdpM0TGFuOASxC4p1tI7RPpF06aJ0LQ4yyNY=;
        b=BgUi5YHTLFz4RKAWO+nVURstzQjOLSm46z5/uSDOnbPK0Sy8tVF1iGeECgkyAPXLkI
         t8+eGaUkekcMwgIVIRZvXzliYmX0m3Mcn7Ow+k+h4C+qbFNMyOpt5TvaRbVD/WubH86u
         1h5GVnmRo0jqHd24akRGRKOVfSIKVt/lFgUq1owrgZf3mFKoBBRHRN5RdnFhW6Z+Eo5+
         FVkJP/HZZc7hqKgyb0/QsgzHrG463Vsz7ZzxOLnSE7j2777PVbRStDRfFVvvYxP1n+Q8
         OlKl6/a2O2cdwK5JCUcfkb26LwWxgPTT35omuBI/j2gYUzd+5fdnvcJNXmRmdBWomWR1
         e0pA==
X-Gm-Message-State: AOAM530zQF27pSoLWs8Aq5HlZDddp7Ibvktf6jUGJeKyvAqUFwaLcKCx
        X/4R/nK1Jm19iIuxJ9GFE1UFBj9Qg9fDTxDhQ3w=
X-Google-Smtp-Source: ABdhPJy14y1rZ/Fa9UzlR9zIAvnQEzWiwJB0Dy2xlYMEZuCiIsR/C1QoNXpzjR5oLu+5kC5ushrdfnh1NkPe50mihYk=
X-Received: by 2002:a05:6214:c27:b0:441:1e99:4de3 with SMTP id
 a7-20020a0562140c2700b004411e994de3mr33853973qvd.49.1648705822234; Wed, 30
 Mar 2022 22:50:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
In-Reply-To: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Thu, 31 Mar 2022 05:50:10 +0000
Message-ID: <CACPK8Xed5Kh_Y2B3NY41bjgoALvz1gC4zbNfmUaHn_8EbHio4g@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Fix AST2600 quad mode SPI pinmux settings
To:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
Cc:     Andrew Jeffery <andrew@aj.id.au>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 29 Mar 2022 at 17:40, Jae Hyun Yoo <quic_jaehyoo@quicinc.com> wrote=
:
>
> I=E2=80=99m sending this patch series to fix current issues in AST2600 pi=
nmux
> settings while enabling quad mode SPI support.
>
> FWSPI18 pins are basically 1.8v logic pins that are different from the
> dedicated FWSPI pins that provide 3.3v logic level, so FWSPI18 pins can=
=E2=80=99t
> be grouped with FWSPIDQ2 and FWSPIDQ3, so this series fix the issue.
>
> Also, fixes QSPI1 and QSPI2 function settings in AST2600 pinctrl dtsi to
> make it able to enable quad mode on SPI1 and SPI2 interfaces.
>
> With this series, quad mode pinmux can be set like below.
>
> FW SPI:
> &fmc {
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&pinctrl_fwqspi_default>;
> }
>
> SPI1:
> &spi1 {
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&pinctrl_qspi1_default>;
> }
>
> SPI2:
> &spi2 {
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&pinctrl_qspi2_default>;
> }

Thanks. I hope to see a board from you that uses this soon :)

I'll send the patches as fixes once -rc1 is out.

>
> Please review.
>
> Thanks,
> Jae
>
> Changes in v3:
>  * Added bindings patches. (Andrew)
>
> Changes in v2:
>  * Rebased it on the latest.
>
> Jae Hyun Yoo (5):
>   ARM: dts: aspeed-g6: remove FWQSPID group in pinctrl dtsi
>   pinctrl: pinctrl-aspeed-g6: remove FWQSPID group in pinctrl
>   dt-bindings: pinctrl: aspeed-g6: remove FWQSPID group
>   dt-bindings: pinctrl: aspeed-g6: add FWQSPI function/group
>   ARM: dts: aspeed-g6: fix SPI1/SPI2 quad pin group
>
> Johnny Huang (2):
>   pinctrl: pinctrl-aspeed-g6: add FWQSPI function-group
>   ARM: dts: aspeed-g6: add FWQSPI group in pinctrl dtsi
>
>  .../pinctrl/aspeed,ast2600-pinctrl.yaml         |  4 ++--
>  arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi        | 10 +++++-----
>  drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c      | 17 ++++++++---------
>  3 files changed, 15 insertions(+), 16 deletions(-)
>
> --
> 2.25.1
>
