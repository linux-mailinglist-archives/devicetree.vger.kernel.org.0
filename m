Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E6B12860B4
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 15:55:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728554AbgJGNzY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 09:55:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728526AbgJGNzX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 09:55:23 -0400
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com [IPv6:2607:f8b0:4864:20::f44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71BC2C061755
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 06:55:23 -0700 (PDT)
Received: by mail-qv1-xf44.google.com with SMTP id di5so1138720qvb.13
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 06:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=QMj5Xs3AcMn+SJugShn3OP+lZCLx/hn0Ukl9O139KTw=;
        b=KC9P+EoCruIpIV+v+DapsON180SQ0hCh7OOQWdNFjQgTxktrrdab9O3vEMRarPeCuR
         9REwfePl5Kw2uui2sqj1PTkcOkyvnFIxagS0BblOk0lztEWCcDK0AlBRzyKDUBN/tJMG
         c41MbV6qqhMumg5cmt9bEMnbAevoypNzMADAhIoC9RB4fMOWIovHpsQ7Vin3irb2+ZEu
         mwKD/pSpQULyd12F/VSxg4pKqjs1ENux+uEbXrT+iOzXMQZaXJwsBXCMpzxZX7GGl4dH
         tp3T/sjlAoQ4k9ch6g2tcmLWRNDk90NKAD+id+xfjWT71Nd+kxRa6iKA8+6TDr8IXCLo
         YOjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=QMj5Xs3AcMn+SJugShn3OP+lZCLx/hn0Ukl9O139KTw=;
        b=Z9eGP3TysDkRkcKB1yV4/Zh3gpiBNgYZ0Bd1NlxW4KLBUiPcbmdbvDe3r2wEegN6IR
         zpJBEk1PSmyT4igv9a0lvAtvoZl6s0VpoRD4CDHg9JfgHV+m8p7DgnjRhBNkLcjLoD15
         3vjdsGvv80lCinClNcpous9jED/y3kOv3xopnhsxDwWpCq3bQrB7yHyX5oVwFZdYw3ZH
         ryrRehGj5MBl2hDGoP9L/T7F6vDim9eJCIP/VMdrycta0KJOMTEywlv/+8OzED+iAGmX
         J6nYLfqnoNl2i7Wcq4LuPK1c2o6kSsRnrZ1grqDbR8s46jH+zSPGXreKvSPsfuOoxSRo
         mynA==
X-Gm-Message-State: AOAM532HbCKUfKHw9mcVkeRRJ109kir/cUky8CdxXFhOU8XJ6VUg0mNI
        KOfsXOmKFw5XZRz+1h9QjAKnW70ttIbR2X8ts5m6/Q==
X-Google-Smtp-Source: ABdhPJwtaBnDn2/UIyN0jX+YcCE6dHNeZF5GxiQryPV1x0fJ0ruNxMHBEckT2fSaLd2hkvPPh1yJ59JurPTTHJ2kZ7A=
X-Received: by 2002:a0c:e054:: with SMTP id y20mr3439251qvk.30.1602078922225;
 Wed, 07 Oct 2020 06:55:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200715070649.18733-1-tn@semihalf.com> <517BB937-1F18-4CCF-81BF-11777BB99779@traviangames.com>
In-Reply-To: <517BB937-1F18-4CCF-81BF-11777BB99779@traviangames.com>
From:   Marcin Wojtas <mw@semihalf.com>
Date:   Wed, 7 Oct 2020 15:55:09 +0200
Message-ID: <CAPv3WKe6jF5bMX-f3MacaOaOTVd_1ypZopm3uOynt4KL-VNQDw@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] Add system mmu support for Armada-806
To:     Denis Odintsov <d.odintsov@traviangames.com>
Cc:     Tomasz Nowicki <tn@semihalf.com>,
        "will@kernel.org" <will@kernel.org>,
        "robin.murphy@arm.com" <robin.murphy@arm.com>,
        "joro@8bytes.org" <joro@8bytes.org>,
        "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "hannah@marvell.com" <hannah@marvell.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "nadavh@marvell.com" <nadavh@marvell.com>,
        "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Denis,

Thank you for your report.

wt., 6 pa=C5=BA 2020 o 17:17 Denis Odintsov <d.odintsov@traviangames.com> n=
apisa=C5=82(a):
>
> Hi,
>
> > Am 15.07.2020 um 09:06 schrieb Tomasz Nowicki <tn@semihalf.com>:
> >
> > The series is meant to support SMMU for AP806 and a workaround
> > for accessing ARM SMMU 64bit registers is the gist of it.
> >
> > For the record, AP-806 can't access SMMU registers with 64bit width.
> > This patches split the readq/writeq into two 32bit accesses instead
> > and update DT bindings.
> >
> > The series was successfully tested on a vanilla v5.8-rc3 kernel and
> > Intel e1000e PCIe NIC. The same for platform devices like SATA and USB.
> >
> > For reference, previous versions are listed below:
> > V1: https://lkml.org/lkml/2018/10/15/373
> > V2: https://lkml.org/lkml/2019/7/11/426
> > V3: https://lkml.org/lkml/2020/7/2/1114
> >
>
> 1) After enabling SMMU on Armada 8040, and ARM_SMMU_DISABLE_BYPASS_BY_DEF=
AUL=3Dy by default in kernel since 954a03be033c7cef80ddc232e7cbdb17df735663=
,
> internal eMMC is prevented from being initialised (as there is no iommus =
property for ap_sdhci0)
> Disabling "Disable bypass by default" make it work, but the patch highly =
suggest doing it properly.
> I wasn't able to find correct path for ap_sdhci for iommus in any publicl=
y available documentation,
> would be highly appreciated addressed properly, thank you!

According to my knowledge and the docs AP IO devices cannot be
virtualized, only ones connected via CP110/CP115. We'd need to check
what should be done in such configuration and get back to you.


>
> 2) Second issue I got (btw I have ClearFog GT 8k armada-8040 based board)=
 is mpci ath10k card.
> It is found, it is enumerated, it is visible in lspci, but it fails to be=
 initialised. Here is the log:
>
> [    1.743754] armada8k-pcie f2600000.pcie: host bridge /cp0/pcie@f260000=
0 ranges:
> [    1.751116] armada8k-pcie f2600000.pcie:      MEM 0x00f6000000..0x00f6=
efffff -> 0x00f6000000
> [    1.964690] armada8k-pcie f2600000.pcie: Link up
> [    1.969379] armada8k-pcie f2600000.pcie: PCI host bridge to bus 0000:0=
0
> [    1.976026] pci_bus 0000:00: root bus resource [bus 00-ff]
> [    1.981537] pci_bus 0000:00: root bus resource [mem 0xf6000000-0xf6eff=
fff]
> [    1.988462] pci 0000:00:00.0: [11ab:0110] type 01 class 0x060400
> [    1.994504] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x000fffff]
> [    2.000843] pci 0000:00:00.0: supports D1 D2
> [    2.005132] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> [    2.011853] pci 0000:01:00.0: [168c:003c] type 00 class 0x028000
> [    2.018001] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x001fffff 64b=
it]
> [    2.025002] pci 0000:01:00.0: reg 0x30: [mem 0x00000000-0x0000ffff pre=
f]
> [    2.032111] pci 0000:01:00.0: supports D1 D2
> [    2.049409] pci 0000:00:00.0: BAR 14: assigned [mem 0xf6000000-0xf61ff=
fff]
> [    2.056322] pci 0000:00:00.0: BAR 0: assigned [mem 0xf6200000-0xf62fff=
ff]
> [    2.063142] pci 0000:00:00.0: BAR 15: assigned [mem 0xf6300000-0xf63ff=
fff pref]
> [    2.070484] pci 0000:01:00.0: BAR 0: assigned [mem 0xf6000000-0xf61fff=
ff 64bit]
> [    2.077880] pci 0000:01:00.0: BAR 6: assigned [mem 0xf6300000-0xf630ff=
ff pref]
> [    2.085135] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> [    2.090384] pci 0000:00:00.0:   bridge window [mem 0xf6000000-0xf61fff=
ff]
> [    2.097202] pci 0000:00:00.0:   bridge window [mem 0xf6300000-0xf63fff=
ff pref]
> [    2.104539] pcieport 0000:00:00.0: Adding to iommu group 4
> [    2.110232] pcieport 0000:00:00.0: PME: Signaling with IRQ 38
> [    2.116141] pcieport 0000:00:00.0: AER: enabled with IRQ 38
> [    8.131135] ath10k_pci 0000:01:00.0: Adding to iommu group 4
> [    8.131874] ath10k_pci 0000:01:00.0: enabling device (0000 -> 0002)
> [    8.132203] ath10k_pci 0000:01:00.0: pci irq msi oper_irq_mode 2 irq_m=
ode 0 reset_mode 0
>
> up to that point the log is the same as without SMMU enabled, except "Add=
ing to iommu group N" lines, and IRQ being 37
>
> [    8.221328] ath10k_pci 0000:01:00.0: failed to poke copy engine: -16
> [    8.313362] ath10k_pci 0000:01:00.0: failed to poke copy engine: -16
> [    8.409373] ath10k_pci 0000:01:00.0: failed to poke copy engine: -16
> [    8.553433] ath10k_pci 0000:01:00.0: failed to poke copy engine: -16
> [    8.641370] ath10k_pci 0000:01:00.0: failed to poke copy engine: -16
> [    8.737979] ath10k_pci 0000:01:00.0: failed to poke copy engine: -16
> [    8.807356] ath10k_pci 0000:01:00.0: Failed to get pcie state addr: -1=
6
> [    8.814032] ath10k_pci 0000:01:00.0: failed to setup init config: -16
> [    8.820605] ath10k_pci 0000:01:00.0: could not power on hif bus (-16)
> [    8.827111] ath10k_pci 0000:01:00.0: could not probe fw (-16)
>
> Thank you!

The PCIE was validated when booting from edk2 + using pci-host-generic
driver and standard intel NIC. Not sure if it makes any difference vs
the Designware driver ("marvell,armada8k-pcie"), but we need to
double-check that.

Best regards,
Marcin

>
> > v3 -> v4
> > - call cfg_probe() impl hook a bit earlier which simplifies errata hand=
ling
> > - use hi_lo_readq_relaxed() and hi_lo_writeq_relaxed() for register acc=
essors
> > - keep SMMU status disabled by default and enable where possible (DTS c=
hanges)
> > - commit logs improvements and other minor fixes
> >
> > Hanna Hawa (1):
> >  iommu/arm-smmu: Workaround for Marvell Armada-AP806 SoC erratum
> >    #582743
> >
> > Marcin Wojtas (1):
> >  arm64: dts: marvell: add SMMU support
> >
> > Tomasz Nowicki (2):
> >  iommu/arm-smmu: Call configuration impl hook before consuming features
> >  dt-bindings: arm-smmu: add compatible string for Marvell Armada-AP806
> >    SMMU-500
> >
> > Documentation/arm64/silicon-errata.rst        |  3 ++
> > .../devicetree/bindings/iommu/arm,smmu.yaml   |  4 ++
> > arch/arm64/boot/dts/marvell/armada-7040.dtsi  | 28 ++++++++++++
> > arch/arm64/boot/dts/marvell/armada-8040.dtsi  | 40 +++++++++++++++++
> > arch/arm64/boot/dts/marvell/armada-ap80x.dtsi | 18 ++++++++
> > drivers/iommu/arm-smmu-impl.c                 | 45 +++++++++++++++++++
> > drivers/iommu/arm-smmu.c                      | 11 +++--
> > 7 files changed, 145 insertions(+), 4 deletions(-)
> >
> > --
> > 2.17.1
> >
> > _______________________________________________
> > iommu mailing list
> > iommu@lists.linux-foundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/iommu
> >
>
