Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76B21758567
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 21:16:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbjGRTQd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 15:16:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjGRTQd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 15:16:33 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3791FF0
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 12:16:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C850A616CF
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 19:16:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34506C433C9
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 19:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689707791;
        bh=tvdiNmY7Wo5jPx6GVCtg6XE0HlZN1odUk3totm62pJE=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=r5HMn3JAmOvu9TqqEx5DaAsWDLHBdRvE1hJBlRo4CURyCAytCx1Hi4gOP9Dt42G5s
         SX47l4ObXbIpshHhUa6JhRhOPIyKekIAMa+lujZtlptYu0KYiRRKaQWz36sLEs41GX
         K8FGcC80Oae2Uj5+fLHMQDNc4EsQJAQ8l68OeglXcAlB+6RPzDzZm+Yhq+CMVTCIaH
         j0Cy505pwcTczDsEs74mX/goCjq3OCzQbsGxn+sxkQced5MIw9Ytlt/Nny0lDBxrdR
         1Lf9XdY30ELxnchN7mh7TqNXABa5FrjwiIsA7BqiTZmRqbl2gcfCoTNXfgIet/gLmQ
         HF/pgI6vOuzAQ==
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-4fba86f069bso9896811e87.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 12:16:31 -0700 (PDT)
X-Gm-Message-State: ABy/qLZYMf9aXEe+QiyQys7XRp9kwdP16YmkGkGg2ra5GcYmwmbSHV7S
        r7xGcgTJTyhFsp3cdyEIL9weazhkwfGcEqmprQ==
X-Google-Smtp-Source: APBJJlHETf96Bki/UYRbGLoJimhSw8y2gNHvBQm7fYIvSvIcqQfcTQhBhqDjR2eMzCGndzzkTocIswv62D+mJmvQI8Y=
X-Received: by 2002:a05:6512:2208:b0:4f9:710f:f3a9 with SMTP id
 h8-20020a056512220800b004f9710ff3a9mr317809lfu.58.1689707789225; Tue, 18 Jul
 2023 12:16:29 -0700 (PDT)
MIME-Version: 1.0
References: <4D2BD944-7A50-4FB9-9156-A02C77E6338E@hpe.com>
In-Reply-To: <4D2BD944-7A50-4FB9-9156-A02C77E6338E@hpe.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 18 Jul 2023 13:16:17 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+FhtGj4qyiQNA8+ykv+2DMxQHuT_joS1jVB17kDby_ig@mail.gmail.com>
Message-ID: <CAL_Jsq+FhtGj4qyiQNA8+ykv+2DMxQHuT_joS1jVB17kDby_ig@mail.gmail.com>
Subject: Re: Query about Implementing Device tree for Networking on HPE BMC
To:     "Hawkins, Nick" <nick.hawkins@hpe.com>
Cc:     "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 10, 2023 at 2:33=E2=80=AFPM Hawkins, Nick <nick.hawkins@hpe.com=
> wrote:
>
> Greetings Rob and Krzysztof,
>
> I am attempting to describe the HPE GXP BMCs networking interfaces for
> the device tree.
>
> Here are the details: The GXP contains two Ethernet MACs that can be
> connected externally to several physical devices. From an external
> interface perspective the BMC provides two SERDES interface connections
> capable of either SGMII or 1000Base-X operation. The BMC also provides
> a RMII interface for sideband connections to external Ethernet controller=
s.
>
> The primary MAC (umac0) can be mapped to either SGMII/1000-BaseX
> SERDES interface.  The secondary MAC (umac1) can be mapped to only
> the second SGMII/1000-Base X Serdes interface or it can be mapped for
> RMII sideband.
>
> The MDIO(mdio0) interface from the primary MAC (umac0) is used for
> external PHY status and configuration. The MDIO(mdio1) interface from
> the secondary MAC (umac1) is routed to the SGMII/100Base-X IP blocks
> on the two SERDES interface connections.
>
> I cannot find any examples of something currently like this in linux and
> I am looking for suggestions.

What is your question? Do I know of hardware like this? No. Maybe ask
networking folks.

> Below is this previous attempt that was used to describe this architectur=
e:
>
> mdio0: mdio@4080 {
>         compatible =3D "hpe,gxp-umac-mdio";
>         reg =3D <0x4080 0x10>;
>         #address-cells =3D <1>;
>         #size-cells =3D <0>;
>         ext_phy0: ethernt-phy@0 {
>                 compatible =3D "marvell,88e1415","ethernet-phy-ieee802.3-=
c22";
>                 phy-mode =3D "sgmii";
>                 reg =3D <0>;
>         };
> };
>
> mdio1: mdio@5080 {
>         compatible =3D "hpe,gxp-umac-mdio";
>         reg =3D <0x5080 0x10>;
>         #address-cells =3D <1>;
>         #size-cells =3D <0>;
>         int_phy0: ethernt-phy@0 {
>                 compatible =3D "ethernet-phy-ieee802.3-c22";
>                 phy-mode =3D "gmii";
>                              reg =3D <0>;
>         };
>
>         int_phy1: ethernt-phy@1 {
>                 compatible =3D "ethernet-phy-ieee802.3-c22";
>                 phy-mode =3D "gmii";
>                 reg =3D <1>;
>         };
> };
>
> umac0: umac@4000 {
>         compatible =3D "hpe, gxp-umac";
>         reg =3D <0x4000 0x80>;
>         interrupts =3D <10>;
>         interrupt-parent =3D <&vic0>;
>         mac-address =3D [94 18 82 16 04 d8];
>         phy-handle =3D <&ext_phy0>;
>         int-phy-handle =3D <&int_phy0>;

This is the only thing that stands out to me.

Are both phys usable on a given system? If not, then you shouldn't
need to describe both. Otherwise, we could allow 'phy-handle' to take
more than 1 entry if we don't already. Then you can define which entry
is which interface.

Rob
