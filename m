Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0531559FE3F
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 17:26:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239248AbiHXP0I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 11:26:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238902AbiHXP0H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 11:26:07 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A57B7FFB2
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 08:26:04 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id gt3so21772338ejb.12
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 08:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=+REtIHQgWG0CyX06a0bJ3AbJyKU8duln9BUWF3D/+sc=;
        b=NS/sWXSH8u/FJaGqY/cQK1Vs9FroETLZmL8iQTV6Vs3gAeO4NYg7ZMBaULqCAeYM8b
         cehi9lldGwWNNivBjF0I1baLZCNtH1zRBZuTgbAct/hZemxMe+QXpCHw8KaBC+BUrTSM
         s8TPj55628lFkV8F3PlbbvuvYvn7xXN7imsCc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=+REtIHQgWG0CyX06a0bJ3AbJyKU8duln9BUWF3D/+sc=;
        b=fkusRMr0pPd/+3tLYN6FApcGIWCOtYlUAxZvhBH4wFLrQyfMtrg3hrmylMu8BR4LQN
         pbmU4iJ9DKyE1mpVGh8sWL2MaGHD3GWgbFWvymVNmTjl5bTXopl6nFfka1GfcYMFqqh/
         MyNKJ+fgqjx+cB0dm6vTpoTyhEjmIWbWa3PRMk8erQl/sg3FD3oafRsZM+W7Jm5PRmaI
         NSOoPdrEnxPpXpfv9R4a61/23kvMfqCeQdk4gdxB4wygkTRCrQ42Rj4Vkz7ROXOyfgqF
         O3NtxADSB85EX3tcAzR05vKorBZualClJGvpH6WTfijCYczBtVvdCKGzGW3KU8jzig/0
         O1eQ==
X-Gm-Message-State: ACgBeo2jwRh6j5rlTIU4hcK8FY/K58QDtoluSy2MgLrXw0p12ZqO+cja
        kEk9TGx5MgNSwJLrMEhH5iGqtYjatY9xguYT
X-Google-Smtp-Source: AA6agR5YYCboLYomoe+g3H0B02RQyq7ic4Ayoc5HbjCeO9hNYv+rtaEQquLxna71yXI0yIkpA/Smfg==
X-Received: by 2002:a17:906:9b8b:b0:732:d464:92ea with SMTP id dd11-20020a1709069b8b00b00732d46492eamr3358717ejc.3.1661354762491;
        Wed, 24 Aug 2022 08:26:02 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id ej28-20020a056402369c00b0043d5ead65a6sm3296732edb.84.2022.08.24.08.26.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 08:26:01 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id bq11so14632827wrb.12
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 08:26:01 -0700 (PDT)
X-Received: by 2002:a05:6000:2ce:b0:225:2c5f:3ba8 with SMTP id
 o14-20020a05600002ce00b002252c5f3ba8mr16836784wry.138.1661354761632; Wed, 24
 Aug 2022 08:26:01 -0700 (PDT)
MIME-Version: 1.0
References: <20220726094549.263899-1-jinghung.chen3@hotmail.com>
 <SG2PR03MB5006B0C3E57803E3B1E0EDBCCC949@SG2PR03MB5006.apcprd03.prod.outlook.com>
 <93bf8a59-34e3-e461-35c9-4f0f344dee32@quicinc.com>
In-Reply-To: <93bf8a59-34e3-e461-35c9-4f0f344dee32@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 24 Aug 2022 08:25:47 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VNUh7NT5bx0uRT259CKk2ndbji6nh2=xoRNBEC1yg-XA@mail.gmail.com>
Message-ID: <CAD=FV=VNUh7NT5bx0uRT259CKk2ndbji6nh2=xoRNBEC1yg-XA@mail.gmail.com>
Subject: Re: [PATCH v8 3/3] arm64: dts: qcom: Add LTE SKUs for sc7280-villager family
To:     Sibi Sankar <quic_sibis@quicinc.com>
Cc:     Jimmy Chen <jinghung.chen3@hotmail.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Alan Huang <alan-huang@quanta.corp-partner.google.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Aug 24, 2022 at 3:11 AM Sibi Sankar <quic_sibis@quicinc.com> wrote:
>
> Hey Jimmy,
>
> Thanks for the patch.
>
> On 7/26/22 3:15 PM, Jimmy Chen wrote:
> > This adds LTE skus for villager device tree files.
> >
> > Signed-off-by: Jimmy Chen <jinghung.chen3@hotmail.com>
> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >
> > (no changes since v6)
> >
> > Changes in v6:
> > - Remove v5 accidentally added sc7280-herobrine-herobrine-r1-lte.dts
> >
> > Changes in v5:
> > - Reorder '.dtb' in Makefile
> > - Put the "interconnects" line back
> >
> > Changes in v4:
> > - Reorder 'status' last
> >
> >   arch/arm64/boot/dts/qcom/Makefile               |  2 ++
> >   .../boot/dts/qcom/sc7280-chrome-common.dtsi     | 11 -----------
> >   .../boot/dts/qcom/sc7280-herobrine-crd.dts      |  1 +
> >   .../dts/qcom/sc7280-herobrine-herobrine-r1.dts  |  1 +
> >   .../boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi | 17 +++++++++++++++++
> >   .../qcom/sc7280-herobrine-villager-r0-lte.dts   | 14 ++++++++++++++
> >   .../qcom/sc7280-herobrine-villager-r1-lte.dts   | 14 ++++++++++++++
> >   arch/arm64/boot/dts/qcom/sc7280-idp.dts         |  1 +
> >   8 files changed, 50 insertions(+), 11 deletions(-)
> >   create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi
> >   create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0-lte.dts
> >   create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1-lte.dts
> >
> > diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> > index 2c1605e00d349..24eacbf330880 100644
> > --- a/arch/arm64/boot/dts/qcom/Makefile
> > +++ b/arch/arm64/boot/dts/qcom/Makefile
> > @@ -103,7 +103,9 @@ dtb-$(CONFIG_ARCH_QCOM)   += sc7180-trogdor-r1-lte.dtb
> >   dtb-$(CONFIG_ARCH_QCOM)     += sc7280-herobrine-crd.dtb
> >   dtb-$(CONFIG_ARCH_QCOM)     += sc7280-herobrine-herobrine-r1.dtb
> >   dtb-$(CONFIG_ARCH_QCOM)     += sc7280-herobrine-villager-r0.dtb
> > +dtb-$(CONFIG_ARCH_QCOM)      += sc7280-herobrine-villager-r0-lte.dtb
> >   dtb-$(CONFIG_ARCH_QCOM)     += sc7280-herobrine-villager-r1.dtb
> > +dtb-$(CONFIG_ARCH_QCOM)      += sc7280-herobrine-villager-r1-lte.dtb
> >   dtb-$(CONFIG_ARCH_QCOM)     += sc7280-idp.dtb
> >   dtb-$(CONFIG_ARCH_QCOM)     += sc7280-idp2.dtb
> >   dtb-$(CONFIG_ARCH_QCOM)     += sc7280-crd-r3.dtb
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> > index cfe2741456a1a..25f31c81b2b74 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> > @@ -83,17 +83,6 @@ spi_flash: flash@0 {
> >       };
> >   };
> >
> > -/* Modem setup is different on Chrome setups than typical Qualcomm setup */
> > -&remoteproc_mpss {
> > -     status = "okay";
> > -     compatible = "qcom,sc7280-mss-pil";
> > -     iommus = <&apps_smmu 0x124 0x0>, <&apps_smmu 0x488 0x7>;
> > -     interconnects = <&mc_virt MASTER_LLCC 0 &mc_virt SLAVE_EBI1 0>;
> > -     memory-region = <&mba_mem>, <&mpss_mem>;
> > -     firmware-name = "qcom/sc7280-herobrine/modem/mba.mbn",
> > -                     "qcom/sc7280-herobrine/modem/qdsp6sw.mbn";
> > -};
> > -
> >   &remoteproc_wpss {
> >       status = "okay";
> >       firmware-name = "ath11k/WCN6750/hw1.0/wpss.mdt";
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
> > index e9ca6c5d24a16..921eccfec39ae 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
> > +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
> > @@ -9,6 +9,7 @@
> >
> >   #include "sc7280-herobrine.dtsi"
> >   #include "sc7280-herobrine-audio-wcd9385.dtsi"
> > +#include "sc7280-herobrine-lte-sku.dtsi"
> >
> >   / {
> >       model = "Qualcomm Technologies, Inc. sc7280 CRD platform (rev5+)";
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
> > index c1647a85a371a..c1a6719687252 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
> > +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
> > @@ -8,6 +8,7 @@
> >   /dts-v1/;
> >
> >   #include "sc7280-herobrine.dtsi"
> > +#include "sc7280-herobrine-lte-sku.dtsi"
> >
> >   / {
> >       model = "Google Herobrine (rev1+)";
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi
> > new file mode 100644
> > index 0000000000000..a92eeccd2b2a9
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi
> > @@ -0,0 +1,17 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Google Herobrine dts fragment for LTE SKUs
> > + *
> > + * Copyright 2022 Google LLC.
> > + */
> > +/* Modem setup is different on Chrome setups than typical Qualcomm setup */
> > +
> > +&remoteproc_mpss {
> > +     compatible = "qcom,sc7280-mss-pil";
> > +     iommus = <&apps_smmu 0x124 0x0>, <&apps_smmu 0x488 0x7>;
> > +     interconnects = <&mc_virt MASTER_LLCC 0 &mc_virt SLAVE_EBI1 0>;
> > +     memory-region = <&mba_mem>, <&mpss_mem>;
> > +     firmware-name = "qcom/sc7280-herobrine/modem/mba.mbn",
> > +                     "qcom/sc7280-herobrine/modem/qdsp6sw.mbn";
> > +     status = "okay";
> > +};
>
> We shoud probably move the mpss_mem, mba_mem and rmtfs_mem here as
> well, that way we save an additional ~255M.

That sounds like a great idea. I wonder if it would be possible for
Bjorn to land Jimmy's patches as-is and perhaps you could send a
follow-up patch?

-Doug
