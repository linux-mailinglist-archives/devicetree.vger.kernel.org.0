Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A7CF770FCC
	for <lists+devicetree@lfdr.de>; Sat,  5 Aug 2023 15:05:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229641AbjHENFj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Aug 2023 09:05:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229513AbjHENFi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Aug 2023 09:05:38 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B50DC10C4
        for <devicetree@vger.kernel.org>; Sat,  5 Aug 2023 06:05:36 -0700 (PDT)
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 456EC3F20E
        for <devicetree@vger.kernel.org>; Sat,  5 Aug 2023 13:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1691240734;
        bh=2/ad3+MbDoymfxhJoThbWbwX8DQQuk7471vPuRmufOw=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=jSOhE9TsgsOk9CRAPJRs0oANqQlDQco7P5gic7Nck7HDqUp2mVaIXAGGj8heoacDH
         XsutBbSQfHSeIRBQ/Ytzx7897p0LVbFDElZJo5L679wC0gABTNDhlLvrzhb2OxXB9v
         S7pLqfI0zSkmI0iN2gaLFcCkJ7CNZdHQqx+Dh4H+uli9o4ELmnjAT2ND5K5BldNW1d
         61nA2N58m9OI/dbyNtiY+/uCiJ5gK5XF2zqQBdUrjuWgH6FGtWgRVU59qGwRaDt4Ww
         0giF2Ne6T1ltS31ES91ZPshcNxCMLJjk05+SJblf+y0px7PHRDR0uzUMhHoRdz4LOB
         cx73S+hEPNaYA==
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-63cf52407d7so36412016d6.0
        for <devicetree@vger.kernel.org>; Sat, 05 Aug 2023 06:05:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691240733; x=1691845533;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2/ad3+MbDoymfxhJoThbWbwX8DQQuk7471vPuRmufOw=;
        b=PhH05eDqrp3WfiZeEmhqgEnLAWkNuw5XaUHmJmSB1gQqXjmWSl8uSWfrFc1Mj2gqLW
         yjMdbGn90DWOfE45EatwSRWuU7K3N4GQDnO544p2WO7W5LXT7zsnKJvKyJhThKoSxDMo
         qYI3T2zNc7HDRkVPPWMthp2yHeXvAKxIe87b9T7UvIBf4k6qbqZsiSxuaCWOc9jd5PFW
         ZKIY1QZcjYeKObtsJo3N4dsIVMFOiqtQf5CpAXb6YSUjPBSND7+fGHRJp87aXeT+IvRa
         pMgEeXdZQp25HvsFLJ5siCtL1ds1ylP0xvQS7o5hh4F+wuB0cnOExZ92FOTbB5rc3okn
         fE/w==
X-Gm-Message-State: AOJu0YzgjBOHqY0PhYAszeEFSx5tUsnDmIqiFw0DOKnCJq+q9zjiLpXo
        NgR4C4yvDIlJotO/06/Wa4VL9v/7JNmguulJ0If8cU5m96pOnXfM43OeHokmvRsv9HJxxRZlNYd
        CVEjQoTiB8dnbvb0o0R3nOwZ7ur6Ep43teKTuMLEyXIJLvcY+pQ/PWzI=
X-Received: by 2002:ac8:5987:0:b0:3f6:ad2f:3922 with SMTP id e7-20020ac85987000000b003f6ad2f3922mr5896424qte.8.1691240733081;
        Sat, 05 Aug 2023 06:05:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+mlQ3pAVkW53oPIRoUJzWUIe+gkRndl3F7nGAF9DwIPOwIfHOlcz0DlbEcgNSrTWEbUadbmKjxGxbbRv9oTA=
X-Received: by 2002:ac8:5987:0:b0:3f6:ad2f:3922 with SMTP id
 e7-20020ac85987000000b003f6ad2f3922mr5896406qte.8.1691240732830; Sat, 05 Aug
 2023 06:05:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230727103949.26149-1-minda.chen@starfivetech.com>
In-Reply-To: <20230727103949.26149-1-minda.chen@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Sat, 5 Aug 2023 15:05:16 +0200
Message-ID: <CAJM55Z-r3EtMGui=g8PhwbkYbuPFJgk8OcAF6S_1LcTRAqbOdw@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] Refactoring Microchip PCIe driver and add StarFive PCIe
To:     Minda Chen <minda.chen@starfivetech.com>
Cc:     =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Daire McNamara <daire.mcnamara@microchip.com>,
        Conor Dooley <conor@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
        Mason Huo <mason.huo@starfivetech.com>,
        Leyfoon Tan <leyfoon.tan@starfivetech.com>,
        Kevin Xie <kevin.xie@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 27 Jul 2023 at 12:40, Minda Chen <minda.chen@starfivetech.com> wrote:
>
> This patchset final purpose is add PCIe driver for StarFive JH7110 SoC.
> JH7110 using PLDA XpressRICH PCIe IP. Microchip PolarFire Using the
> same IP and have commit their codes, which are mixed with PLDA
> controller codes and Microchip platform codes.
>
> For re-use the PLDA controller codes, I request refactoring microchip
> codes, move PLDA common codes to PLDA files.
> Desigware and Cadence is good example for refactoring codes.
>
> So first step is extract the PLDA common codes from microchip, and
> refactoring the microchip codes.(patch1 - 2)
> Then, add Starfive codes. (patch3 - 4)
>
> This patchset is base on v6.5-rc1
>
> patch1 is move PLDA XpressRICH PCIe host common properties dt-binding
>        docs from microchip,pcie-host.yaml
> patch2 is extracting the PLDA common codes from microchip Polarfire PCIe
>        codes. The change list in the commit message.
> patch3 is add StarFive JH7110 PCIe dt-binding doc.
> patch4 is add StarFive JH7110 Soc PCIe codes.

Hi Minda,

To test this series properly it needs matching nodes in the VisionFive
2 device trees, but it seems to be missing from this version of the
patch series. If I apply the device tree patch from v1 I get errors
like this:

  pcie-starfive 2b000000.pcie: invalid resource (null)
  pcie-starfive 2b000000.pcie: error -EINVAL: failed to map reg memory

It would be great if you included the device tree patch in the next
series so this can actually be tested.

/Emil

> I have noticed that Daire have changed microchip's codes.
> https://patchwork.kernel.org/project/linux-pci/cover/20230630154859.2049521-1-daire.mcnamara@microchip.com/
> I have changed patch2 base on their commits. StarFive
> PCIe driver still can work. But their codes is under reviewed and
> maybe changing. Do not base on their changes first.
> I will base on their commit to change patch2 as soon as
> their commits are accepted.
>
> previous version:
> v1:https://patchwork.kernel.org/project/linux-pci/cover/20230719102057.22329-1-minda.chen@starfivetech.com/
>
> change:
>   v2:
>     patch1:
>       - squash dt-bindings patches to patch1
>       - add 'required' list.
>       - plda doc rename to plda,xpressrich-axi-common.yaml
>     patch2:
>       - squash the microchip modification patch to patch 2.
>     patch3:
>       - remove the plda common required property.
>     patch4:
>       - Sync the hide rc bar ops with config read function.
>       - Revert the T_PVPERL to 100ms and add comments for the source.
>       - Replace the link check function by the standard link ops.
>       - Convert to new pm ops marcos.
>       - Some formats modification.
>       - pcie-plda-host modification merge to patch4.
>     other:
>       - remove the pcie-plda-plat.c
>       - remove the starfive dts patch first. for it depends on
>         stg clock and syscon setting.
>
> Minda Chen (4):
>   dt-bindings: PCI: Add PLDA XpressRICH PCIe host common properties
>   PCI: plda: Get common codes from Microchip PolarFire host
>   dt-bindings: PCI: Add StarFive JH7110 PCIe controller
>   PCI: starfive: Add JH7110 PCIe controller
>
>  .../bindings/pci/microchip,pcie-host.yaml     |  49 +-
>  .../pci/plda,xpressrich3-axi-common.yaml      |  69 ++
>  .../bindings/pci/starfive,jh7110-pcie.yaml    | 133 ++++
>  MAINTAINERS                                   |  19 +-
>  drivers/pci/controller/Kconfig                |   9 +-
>  drivers/pci/controller/Makefile               |   2 +-
>  drivers/pci/controller/plda/Kconfig           |  31 +
>  drivers/pci/controller/plda/Makefile          |   4 +
>  .../{ => plda}/pcie-microchip-host.c          | 594 ++--------------
>  drivers/pci/controller/plda/pcie-plda-host.c  | 665 ++++++++++++++++++
>  drivers/pci/controller/plda/pcie-plda.h       | 242 +++++++
>  drivers/pci/controller/plda/pcie-starfive.c   | 438 ++++++++++++
>  12 files changed, 1645 insertions(+), 610 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/plda,xpressrich3-axi-common.yaml
>  create mode 100644 Documentation/devicetree/bindings/pci/starfive,jh7110-pcie.yaml
>  create mode 100644 drivers/pci/controller/plda/Kconfig
>  create mode 100644 drivers/pci/controller/plda/Makefile
>  rename drivers/pci/controller/{ => plda}/pcie-microchip-host.c (50%)
>  create mode 100644 drivers/pci/controller/plda/pcie-plda-host.c
>  create mode 100644 drivers/pci/controller/plda/pcie-plda.h
>  create mode 100644 drivers/pci/controller/plda/pcie-starfive.c
>
>
> base-commit: 06c2afb862f9da8dc5efa4b6076a0e48c3fbaaa5
> --
> 2.17.1
>
