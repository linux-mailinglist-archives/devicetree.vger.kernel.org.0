Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6915619F4D
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 18:54:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231634AbiKDRyX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 13:54:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231892AbiKDRyW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 13:54:22 -0400
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27FFC2E6A5
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 10:54:17 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id b124so5938503oia.4
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 10:54:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IjFC8G0J+5WrspPW6IoCgVgaHjCOnM51p2Ru3xIstbA=;
        b=BnAJ0Jl+kpbLCHJlqFouQr18k6vJOEe8nGNvkfufe80/b42QBqmZMiBjfxh+Mk81k1
         Ghf7ANRANenNnNQeRDNlbCHebgP3DFWT5jWbz+e9Ntt4Z3h8eFc0YOLv1i6sy37ULjNO
         yk0NRKxjsKowTJciE+emT6O0LMfVSa2LZ40CiLqTeCxSxNPN+7WIRMr4PYkl9lJYRylg
         HOZnmK4jpcQ6lSPp+uiwrt09DNOrOSpzby26zzTdkPGMCQ1o5u0CoQMjUpyt4sEyGATE
         K2unur1qcNGLNVWmVQ7AVekoyVRcKNYK94KAmOUA+T66XmRAfuOJzVNV7O22tSWF0Sox
         uWkg==
X-Gm-Message-State: ACrzQf1U/kC3lZZQX3bXx/63vM39fkA3ar1FvCKdM1IaPTnz74cmW3Ql
        LdjZIxThBlle+WqbICgNYg==
X-Google-Smtp-Source: AMsMyM4xapQR7M5e1kkR5s85hIE81hdU6Doi2k/mJlUiTLGfoGRAN4PiNQxulQ3DYHV9xZ/Xou98/Q==
X-Received: by 2002:a05:6808:1209:b0:353:f187:6c35 with SMTP id a9-20020a056808120900b00353f1876c35mr28935689oil.113.1667584456256;
        Fri, 04 Nov 2022 10:54:16 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id q15-20020a05687101cf00b0013b8b3710bfsm2051913oad.13.2022.11.04.10.54.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 10:54:15 -0700 (PDT)
Received: (nullmailer pid 2078505 invoked by uid 1000);
        Fri, 04 Nov 2022 17:54:15 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>, devicetree@vger.kernel.org
In-Reply-To: <20221104131044.103241-1-marex@denx.de>
References: <20221104131044.103241-1-marex@denx.de>
Message-Id: <166758413629.2069233.494009648070414263.robh@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: imx6q-pcie: Handle various clock
 configurations
Date:   Fri, 04 Nov 2022 12:54:15 -0500
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 04 Nov 2022 14:10:42 +0100, Marek Vasut wrote:
> The i.MX SoCs have various clock configurations routed into the PCIe IP,
> the list of clock is below. Document all those configurations in the DT
> binding document.
> 
> All SoCs: pcie, pcie_bus
> 6QDL, 7D: + pcie_phy
> 6SX:      + pcie_phy          pcie_inbound_axi
> 8MQ:      + pcie_phy pcie_aux
> 8MM, 8MP: +          pcie_aux
> 
> Acked-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: NXP Linux Team <linux-imx@nxp.com>
> To: devicetree@vger.kernel.org
> ---
> V2: - Add AB from Alex
> ---
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 74 +++++++++++++++++--
>  1 file changed, 69 insertions(+), 5 deletions(-)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/


pcie@1ffc000: Unevaluated properties are not allowed ('disable-gpio' was unexpected)
	arch/arm/boot/dts/imx6dl-emcon-avari.dtb
	arch/arm/boot/dts/imx6q-emcon-avari.dtb

pcie@33800000: clock-names:1: 'pcie_bus' was expected
	arch/arm64/boot/dts/freescale/imx8mm-beacon-kit.dtb
	arch/arm64/boot/dts/freescale/imx8mm-beacon-kit.dtb
	arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dtb
	arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dtb
	arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dtb
	arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dtb
	arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mp-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mp-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dtb
	arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dtb
	arch/arm64/boot/dts/freescale/imx8mq-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mq-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dtb
	arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dtb
	arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb

pcie@33800000: clock-names:2: 'pcie_aux' was expected
	arch/arm64/boot/dts/freescale/imx8mm-beacon-kit.dtb
	arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dtb
	arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dtb
	arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mp-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dtb

pcie@33800000: clock-names:2: 'pcie_bus' is not one of ['pcie_phy', 'pcie_aux']
	arch/arm64/boot/dts/freescale/imx8mm-beacon-kit.dtb
	arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dtb
	arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dtb
	arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mp-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dtb

pcie@33800000: clock-names:3: 'pcie_aux' was expected
	arch/arm64/boot/dts/freescale/imx8mq-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dtb
	arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb

pcie@33800000: clock-names:3: 'pcie_bus' is not one of ['pcie_inbound_axi', 'pcie_aux']
	arch/arm64/boot/dts/freescale/imx8mq-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dtb
	arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb

pcie@33800000: power-domains: [[102, 3]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-dev.dtb

pcie@33800000: power-domains: [[102]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb

pcie@33800000: power-domains: [[103]] is too short
	arch/arm/boot/dts/imx7d-colibri-emmc-iris.dtb
	arch/arm/boot/dts/imx7d-colibri-iris.dtb

pcie@33800000: power-domains: [[104]] is too short
	arch/arm/boot/dts/imx7d-colibri-aster.dtb
	arch/arm/boot/dts/imx7d-colibri-emmc-aster.dtb
	arch/arm/boot/dts/imx7d-colibri-emmc-iris-v2.dtb
	arch/arm/boot/dts/imx7d-colibri-iris-v2.dtb

pcie@33800000: power-domains: [[106]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dev.dtb

pcie@33800000: power-domains: [[107]] is too short
	arch/arm/boot/dts/imx7d-colibri-emmc-eval-v3.dtb
	arch/arm/boot/dts/imx7d-colibri-eval-v3.dtb

pcie@33800000: power-domains: [[108]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dev.dtb

pcie@33800000: power-domains: [[125]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dtb

pcie@33800000: power-domains: [[126]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-librem5-r3.dtb
	arch/arm64/boot/dts/freescale/imx8mq-librem5-r4.dtb

pcie@33800000: power-domains: [[49, 3]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp-edimm2.2.dtb

pcie@33800000: power-domains: [[55]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-ctouch2.dtb
	arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dtb

pcie@33800000: power-domains: [[59]] is too short
	arch/arm/boot/dts/imx7d-cl-som-imx7.dtb

pcie@33800000: power-domains: [[60, 3]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dtb

pcie@33800000: power-domains: [[61]] is too short
	arch/arm/boot/dts/imx7d-sbc-imx7.dtb

pcie@33800000: power-domains: [[63]] is too short
	arch/arm/boot/dts/imx7d-zii-rmu2.dtb

pcie@33800000: power-domains: [[64, 3]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-evk.dtb

pcie@33800000: power-domains: [[64]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx-0x.dtb
	arch/arm/boot/dts/imx7d-remarkable2.dtb

pcie@33800000: power-domains: [[67]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dtb

pcie@33800000: power-domains: [[68]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb
	arch/arm/boot/dts/imx7d-meerkat96.dtb

pcie@33800000: power-domains: [[70, 3]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dtb

pcie@33800000: power-domains: [[70]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dtb
	arch/arm64/boot/dts/freescale/imx8mq-phanbell.dtb
	arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dtb

pcie@33800000: power-domains: [[72]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-kontron-bl.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x.dtb

pcie@33800000: power-domains: [[73]] is too short
	arch/arm/boot/dts/imx7d-flex-concentrator.dtb
	arch/arm/boot/dts/imx7d-flex-concentrator-mfg.dtb
	arch/arm/boot/dts/imx7d-smegw01.dtb

pcie@33800000: power-domains: [[75]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-kontron-bl-osm-s.dtb

pcie@33800000: power-domains: [[76, 3]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-msc-sm2s-ep1.dtb

pcie@33800000: power-domains: [[76]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-emcon-avari.dtb
	arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dtb

pcie@33800000: power-domains: [[77]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dtb

pcie@33800000: power-domains: [[78]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb
	arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dtb

pcie@33800000: power-domains: [[79]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dtb

pcie@33800000: power-domains: [[80]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dtb

pcie@33800000: power-domains: [[81]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-nitrogen-r2.dtb
	arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mq-evk.dtb

pcie@33800000: power-domains: [[82]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-beacon-kit.dtb
	arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dtb
	arch/arm64/boot/dts/freescale/imx8mq-thor96.dtb

pcie@33800000: power-domains: [[83, 3]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dtb

pcie@33800000: power-domains: [[84]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dtb

pcie@33800000: power-domains: [[86, 3]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dtb

pcie@33800000: power-domains: [[86]] is too short
	arch/arm/boot/dts/imx7d-nitrogen7.dtb
	arch/arm/boot/dts/imx7d-pico-nymph.dtb

pcie@33800000: power-domains: [[87]] is too short
	arch/arm/boot/dts/imx7d-sdb-reva.dtb

pcie@33800000: power-domains: [[88]] is too short
	arch/arm/boot/dts/imx7d-pico-dwarf.dtb
	arch/arm/boot/dts/imx7d-pico-hobbit.dtb
	arch/arm/boot/dts/imx7d-sdb.dtb
	arch/arm/boot/dts/imx7d-sdb-sht11.dtb

pcie@33800000: power-domains: [[89]] is too short
	arch/arm/boot/dts/imx7d-pico-pi.dtb
	arch/arm/boot/dts/imx7d-zii-rpu2.dtb

pcie@33800000: power-domains: [[92]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dtb

pcie@33800000: power-domains: [[96]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dtb
	arch/arm/boot/dts/imx7d-mba7.dtb

pcie@33800000: power-domains: [[97, 3]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-dev.dtb

pcie@33800000: power-domains: [[97]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dtb

pcie@33800000: power-domains: [[98]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb

pcie@33800000: reset-names:0: 'pciephy' was expected
	arch/arm64/boot/dts/freescale/imx8mm-beacon-kit.dtb
	arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dtb
	arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-emcon-avari.dtb
	arch/arm64/boot/dts/freescale/imx8mm-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-ctouch2.dtb
	arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dtb
	arch/arm64/boot/dts/freescale/imx8mm-kontron-bl.dtb
	arch/arm64/boot/dts/freescale/imx8mm-kontron-bl-osm-s.dtb
	arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dtb
	arch/arm64/boot/dts/freescale/imx8mm-nitrogen-r2.dtb
	arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dtb
	arch/arm64/boot/dts/freescale/imx8mp-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp-edimm2.2.dtb
	arch/arm64/boot/dts/freescale/imx8mp-msc-sm2s-ep1.dtb
	arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dtb
	arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dtb
	arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-dev.dtb

pcie@33800000: reset-names:1: 'apps' was expected
	arch/arm64/boot/dts/freescale/imx8mm-beacon-kit.dtb
	arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dtb
	arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-emcon-avari.dtb
	arch/arm64/boot/dts/freescale/imx8mm-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-ctouch2.dtb
	arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dtb
	arch/arm64/boot/dts/freescale/imx8mm-kontron-bl.dtb
	arch/arm64/boot/dts/freescale/imx8mm-kontron-bl-osm-s.dtb
	arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dtb
	arch/arm64/boot/dts/freescale/imx8mm-nitrogen-r2.dtb
	arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dtb
	arch/arm64/boot/dts/freescale/imx8mp-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp-edimm2.2.dtb
	arch/arm64/boot/dts/freescale/imx8mp-msc-sm2s-ep1.dtb
	arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dtb
	arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dtb
	arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-dev.dtb

pcie@33800000: reset-names: ['apps', 'turnoff'] is too short
	arch/arm64/boot/dts/freescale/imx8mm-beacon-kit.dtb
	arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dtb
	arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-emcon-avari.dtb
	arch/arm64/boot/dts/freescale/imx8mm-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-ctouch2.dtb
	arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dtb
	arch/arm64/boot/dts/freescale/imx8mm-kontron-bl.dtb
	arch/arm64/boot/dts/freescale/imx8mm-kontron-bl-osm-s.dtb
	arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dtb
	arch/arm64/boot/dts/freescale/imx8mm-nitrogen-r2.dtb
	arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dtb
	arch/arm64/boot/dts/freescale/imx8mp-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp-edimm2.2.dtb
	arch/arm64/boot/dts/freescale/imx8mp-msc-sm2s-ep1.dtb
	arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dtb
	arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dtb
	arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-dev.dtb

pcie@33800000: resets: [[101, 26], [101, 27]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-dev.dtb

pcie@33800000: resets: [[25, 28], [25, 29]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-ctouch2.dtb
	arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dtb

pcie@33800000: resets: [[26, 28], [26, 29]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb

pcie@33800000: resets: [[27, 28], [27, 29]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-kontron-bl.dtb
	arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dtb

pcie@33800000: resets: [[28, 28], [28, 29]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-beacon-kit.dtb
	arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-emcon-avari.dtb
	arch/arm64/boot/dts/freescale/imx8mm-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-kontron-bl-osm-s.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dtb

pcie@33800000: resets: [[29, 28], [29, 29]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-nitrogen-r2.dtb

pcie@33800000: resets: [[31, 28], [31, 29]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dtb

pcie@33800000: resets: [[34, 28], [34, 29]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dtb

pcie@33800000: resets: [[40, 28], [40, 29]] is too short
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dev.dtb

pcie@33800000: resets: [[48, 26], [48, 27]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp-edimm2.2.dtb

pcie@33800000: resets: [[59, 26], [59, 27]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dtb

pcie@33800000: resets: [[63, 26], [63, 27]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-evk.dtb

pcie@33800000: resets: [[69, 26], [69, 27]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dtb

pcie@33800000: resets: [[75, 26], [75, 27]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-msc-sm2s-ep1.dtb

pcie@33800000: resets: [[82, 26], [82, 27]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dtb

pcie@33800000: resets: [[85, 26], [85, 27]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dtb

pcie@33800000: resets: [[96, 26], [96, 27]] is too short
	arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-dev.dtb

pcie@33800000: Unevaluated properties are not allowed ('clock-names', 'power-domains', 'reset-names', 'resets' were unexpected)
	arch/arm64/boot/dts/freescale/imx8mm-beacon-kit.dtb
	arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dtb
	arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dtb
	arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dtb
	arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb
	arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-nonwifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mp-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dtb

pcie@33800000: Unevaluated properties are not allowed ('epdev_on-supply', 'hard-wired', 'power-domains' were unexpected)
	arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dtb

pcie@33800000: Unevaluated properties are not allowed ('power-domains', 'reset-names', 'resets' were unexpected)
	arch/arm64/boot/dts/freescale/imx8mm-emcon-avari.dtb
	arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-ctouch2.dtb
	arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dtb
	arch/arm64/boot/dts/freescale/imx8mm-kontron-bl.dtb
	arch/arm64/boot/dts/freescale/imx8mm-kontron-bl-osm-s.dtb
	arch/arm64/boot/dts/freescale/imx8mm-nitrogen-r2.dtb
	arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dtb
	arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dtb
	arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp-edimm2.2.dtb
	arch/arm64/boot/dts/freescale/imx8mp-msc-sm2s-ep1.dtb
	arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dtb
	arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-dev.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-dahlia.dtb
	arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-dev.dtb

pcie@33800000: Unevaluated properties are not allowed ('power-domains' was unexpected)
	arch/arm64/boot/dts/freescale/imx8mq-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dtb
	arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dtb
	arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dtb
	arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dtb
	arch/arm64/boot/dts/freescale/imx8mq-librem5-r3.dtb
	arch/arm64/boot/dts/freescale/imx8mq-librem5-r4.dtb
	arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dtb
	arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dtb
	arch/arm64/boot/dts/freescale/imx8mq-phanbell.dtb
	arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dtb
	arch/arm64/boot/dts/freescale/imx8mq-thor96.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb
	arch/arm/boot/dts/imx7d-cl-som-imx7.dtb
	arch/arm/boot/dts/imx7d-colibri-aster.dtb
	arch/arm/boot/dts/imx7d-colibri-emmc-aster.dtb
	arch/arm/boot/dts/imx7d-colibri-emmc-eval-v3.dtb
	arch/arm/boot/dts/imx7d-colibri-emmc-iris.dtb
	arch/arm/boot/dts/imx7d-colibri-emmc-iris-v2.dtb
	arch/arm/boot/dts/imx7d-colibri-eval-v3.dtb
	arch/arm/boot/dts/imx7d-colibri-iris.dtb
	arch/arm/boot/dts/imx7d-colibri-iris-v2.dtb
	arch/arm/boot/dts/imx7d-flex-concentrator.dtb
	arch/arm/boot/dts/imx7d-flex-concentrator-mfg.dtb
	arch/arm/boot/dts/imx7d-mba7.dtb
	arch/arm/boot/dts/imx7d-meerkat96.dtb
	arch/arm/boot/dts/imx7d-nitrogen7.dtb
	arch/arm/boot/dts/imx7d-pico-dwarf.dtb
	arch/arm/boot/dts/imx7d-pico-hobbit.dtb
	arch/arm/boot/dts/imx7d-pico-nymph.dtb
	arch/arm/boot/dts/imx7d-pico-pi.dtb
	arch/arm/boot/dts/imx7d-remarkable2.dtb
	arch/arm/boot/dts/imx7d-sbc-imx7.dtb
	arch/arm/boot/dts/imx7d-sdb.dtb
	arch/arm/boot/dts/imx7d-sdb-reva.dtb
	arch/arm/boot/dts/imx7d-sdb-sht11.dtb
	arch/arm/boot/dts/imx7d-smegw01.dtb
	arch/arm/boot/dts/imx7d-zii-rmu2.dtb
	arch/arm/boot/dts/imx7d-zii-rpu2.dtb

pcie@33c00000: 'bus-range' is a required property
	arch/arm64/boot/dts/freescale/imx8mq-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dtb
	arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dtb
	arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb

pcie@33c00000: clock-names:1: 'pcie_bus' was expected
	arch/arm64/boot/dts/freescale/imx8mq-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mq-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dtb
	arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dtb
	arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dtb
	arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dtb
	arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb

pcie@33c00000: clock-names:3: 'pcie_aux' was expected
	arch/arm64/boot/dts/freescale/imx8mq-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dtb
	arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dtb
	arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb

pcie@33c00000: clock-names:3: 'pcie_bus' is not one of ['pcie_inbound_axi', 'pcie_aux']
	arch/arm64/boot/dts/freescale/imx8mq-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dtb
	arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dtb
	arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb

pcie@33c00000: power-domains: [[102]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb

pcie@33c00000: power-domains: [[125]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dtb

pcie@33c00000: power-domains: [[126]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-librem5-r3.dtb
	arch/arm64/boot/dts/freescale/imx8mq-librem5-r4.dtb

pcie@33c00000: power-domains: [[70]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-phanbell.dtb
	arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dtb

pcie@33c00000: power-domains: [[78]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dtb

pcie@33c00000: power-domains: [[79]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dtb

pcie@33c00000: power-domains: [[80]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dtb

pcie@33c00000: power-domains: [[81]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-evk.dtb

pcie@33c00000: power-domains: [[82]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dtb
	arch/arm64/boot/dts/freescale/imx8mq-thor96.dtb

pcie@33c00000: power-domains: [[92]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dtb

pcie@33c00000: power-domains: [[97]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dtb

pcie@33c00000: power-domains: [[98]] is too short
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb

pcie@33c00000: Unevaluated properties are not allowed ('epdev_on-supply', 'hard-wired', 'power-domains' were unexpected)
	arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dtb

pcie@33c00000: Unevaluated properties are not allowed ('power-domains' was unexpected)
	arch/arm64/boot/dts/freescale/imx8mq-evk.dtb
	arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dtb
	arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dtb
	arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dtb
	arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dtb
	arch/arm64/boot/dts/freescale/imx8mq-librem5-r3.dtb
	arch/arm64/boot/dts/freescale/imx8mq-librem5-r4.dtb
	arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dtb
	arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dtb
	arch/arm64/boot/dts/freescale/imx8mq-phanbell.dtb
	arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dtb
	arch/arm64/boot/dts/freescale/imx8mq-thor96.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb
	arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb

