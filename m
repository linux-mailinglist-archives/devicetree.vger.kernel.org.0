Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 648BE600F85
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 14:52:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230354AbiJQMww (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 08:52:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229961AbiJQMwu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 08:52:50 -0400
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21B5118393
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 05:52:48 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-35befab86a4so106162317b3.8
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 05:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JMJ/TdUjxEkE2UQx3Cdts8R536GMC9UDdcwOtE/jc3E=;
        b=U2qsNFPIV7kv+5ipD8iE6cw6KS1gLyXS7FSs7QsHOqnmy9e2b3JNfEGo2SjSAN71ox
         2KWddhwblzTDugMe5XG7r65K7iO4/04d6lcp1g8qIWk818tYZAtg2NNoyH/vSDxKa2Y5
         CEGQ5gp7+1ePuSvcJ0RpYAZCJ4X6GwAr7dO8sOhXHTsONNqsKKl7bC5LJRfCe+kD4DtZ
         KzYqlE20c+6Qq8UhDccoA5DgkMAHZrIUtLKZU9OLqgJsLR0u/EAL7ougj/NEvT7T3BWy
         QkoJKGvgOQFTncPDojSXcfTPRfzXHBE8Z1Xmyw7Fk6Z2Cm0mDICCR6EcTkAN/tZ0bxR/
         eHLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JMJ/TdUjxEkE2UQx3Cdts8R536GMC9UDdcwOtE/jc3E=;
        b=IeB28kLsZUXNgd9MSvBeLgUMTFxdpKIgzpiSAEnaWbIPxPXjugWJQbcMxBpSclNRkw
         tQvW3yhmXpM3g88cupmCf398hu0SMOsmBnJl/G7CXShAi767rHO7m89fJq+Sst0rBNGi
         n8pyVL856sbtIljfjCgb/pWgb4OAOg6ScgyyfmeiGKMYBORL/g9NgDu5/weEHjnSe1M9
         XueGRn68M801mdtsDeR0QDqXFg7hfjirocYU0DPt2iJiqOM8j13QT/8yDGPT6UornzC3
         GquQ8llANx2DCZXcmG6sJm9vphTaXbGfipF1rJEdAceX4Lnez3MR/pbPCIbXcVTqWBwJ
         NU3Q==
X-Gm-Message-State: ACrzQf2DzqvM+xBJHpC4Op39/LbUqi+jbunqu+ndNGZKZE25ufYqSKt5
        c5TsyqI2r5ifgqYEPyaqIIpIMO0bfI1J7sLdXUb8OQ==
X-Google-Smtp-Source: AMsMyM7eK17Dgh1nO6rqD+fKiwPgpc4L22CnLNTsCFvd+XvbC9fE0S0X2gbVZAdHBXZnCtewz7Ehp1eHRosUmckAcMs=
X-Received: by 2002:a0d:c3c7:0:b0:364:1f53:11b8 with SMTP id
 f190-20020a0dc3c7000000b003641f5311b8mr9147278ywd.202.1666011167219; Mon, 17
 Oct 2022 05:52:47 -0700 (PDT)
MIME-Version: 1.0
References: <20221014213254.30950-1-mig@semihalf.com> <20221014213254.30950-2-mig@semihalf.com>
 <166596083428.3897181.16535515589194840767.robh@kernel.org>
In-Reply-To: <166596083428.3897181.16535515589194840767.robh@kernel.org>
From:   Marcin Wojtas <mw@semihalf.com>
Date:   Mon, 17 Oct 2022 14:52:36 +0200
Message-ID: <CAPv3WKcCtORYd8Y-ouqoPSZWYY2OvSunsGVFycV6dzF5F4EzKA@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: net: marvell,pp2: convert to json-schema
To:     Rob Herring <robh@kernel.org>
Cc:     =?UTF-8?Q?Micha=C5=82_Grzelak?= <mig@semihalf.com>,
        davem@davemloft.net, krzysztof.kozlowski+dt@linaro.org,
        upstream@semihalf.com, kuba@kernel.org, edumazet@google.com,
        netdev@vger.kernel.org, pabeni@redhat.com,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux@armlinux.org.uk
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

pon., 17 pa=C5=BA 2022 o 00:58 Rob Herring <robh@kernel.org> napisa=C5=82(a=
):
>
> On Fri, 14 Oct 2022 23:32:52 +0200, Micha=C5=82 Grzelak wrote:
> > Convert the marvell,pp2 bindings from text to proper schema.
> >
> > Move 'marvell,system-controller' and 'dma-coherent' properties from
> > port up to the controller node, to match what is actually done in DT.
> >
> > Rename all subnodes to match "^(ethernet-)?port@[0-2]$" and deprecate
> > port-id in favour of 'reg'.
> >
> > Signed-off-by: Micha=C5=82 Grzelak <mig@semihalf.com>
> > ---
> >  .../devicetree/bindings/net/marvell,pp2.yaml  | 305 ++++++++++++++++++
> >  .../devicetree/bindings/net/marvell-pp2.txt   | 141 --------
> >  MAINTAINERS                                   |   2 +-
> >  3 files changed, 306 insertions(+), 142 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/net/marvell,pp2.y=
aml
> >  delete mode 100644 Documentation/devicetree/bindings/net/marvell-pp2.t=
xt
> >
>
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
>
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
>
> Full log is available here: https://patchwork.ozlabs.org/patch/
>
>
> ethernet@0: 'eth0', 'eth1', 'eth2' do not match any of the regexes: '^(et=
hernet-)?port@[0-2]$', 'pinctrl-[0-9]+'
>         arch/arm64/boot/dts/marvell/armada-7040-db.dtb
>         arch/arm64/boot/dts/marvell/armada-7040-mochabin.dtb
>         arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dtb
>         arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dtb
>         arch/arm64/boot/dts/marvell/armada-8040-db.dtb
>         arch/arm64/boot/dts/marvell/armada-8040-db.dtb
>         arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtb
>         arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtb
>         arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dtb
>         arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dtb
>         arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dtb
>         arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dtb
>         arch/arm64/boot/dts/marvell/cn9130-crb-A.dtb
>         arch/arm64/boot/dts/marvell/cn9130-crb-B.dtb
>         arch/arm64/boot/dts/marvell/cn9130-db-B.dtb
>         arch/arm64/boot/dts/marvell/cn9130-db.dtb
>         arch/arm64/boot/dts/marvell/cn9131-db-B.dtb
>         arch/arm64/boot/dts/marvell/cn9131-db-B.dtb
>         arch/arm64/boot/dts/marvell/cn9131-db.dtb
>         arch/arm64/boot/dts/marvell/cn9131-db.dtb
>         arch/arm64/boot/dts/marvell/cn9132-db-B.dtb
>         arch/arm64/boot/dts/marvell/cn9132-db-B.dtb
>         arch/arm64/boot/dts/marvell/cn9132-db-B.dtb
>         arch/arm64/boot/dts/marvell/cn9132-db.dtb
>         arch/arm64/boot/dts/marvell/cn9132-db.dtb
>         arch/arm64/boot/dts/marvell/cn9132-db.dtb
>
> ethernet@f0000: 'eth0', 'eth1' do not match any of the regexes: '^(ethern=
et-)?port@[0-2]$', 'pinctrl-[0-9]+'
>         arch/arm/boot/dts/armada-375-db.dtb
>

These warnings are addressed by the other 2 patches in this patchset:
[PATCH v5 2/3] arm64: dts: marvell: Update network description to match sch=
ema
[PATCH v5 3/3] ARM: dts: armada-375: Update network description to match sc=
hema

Can you please re-run check in your setup with the above applied?

Best regards,
Marcin
