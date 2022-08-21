Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0AB659B649
	for <lists+devicetree@lfdr.de>; Sun, 21 Aug 2022 22:24:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231710AbiHUUVk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Aug 2022 16:21:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231698AbiHUUVi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Aug 2022 16:21:38 -0400
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58C221AF1B
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 13:21:37 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id v12-20020a9d7d0c000000b00638e210c995so6452427otn.13
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 13:21:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=bbl6WWvS9q7CkEX0mzN44HflL/PBIS4J4XGwcCYRdbg=;
        b=4PngtHLuJyj2rOGQJM6mB1H9gO9qo/B3D7Fg8lvD5i679qW9NfYTeU1jeArWObmhAm
         ODrcXmReyF18OCzpDgNzsZc2spOoV9btAUXYPtrNVJv+ohF7zUyVUDuaHfCnuIvFlZeJ
         DBiQLqmZHMVdQRaPZL0SqmTVCFh7FcFmhf+p4lgATT4Vj0tMoWHe9BTSePQCKy1smL5K
         aVNhYFECzPEeS25xtaNDWaUKASnkIvFVz0SWuagqdSQkVQQ6sAjVn1VeHuU9MI59DRI2
         XW6JDBK2w/GIYB2rd+ad5616Q2BYI+7XPgJM8Mc32PI06ICN4B4YOhNEwSAd6ZLju7eB
         m1TQ==
X-Gm-Message-State: ACgBeo08ub6GE59rUNuw4tJKvTcwiZaJNbQUWVHQpYVKT8iTKsZOYYrm
        E7kA/ZdIdHUkSepYvNbSsQ==
X-Google-Smtp-Source: AA6agR7/21dAAKonkV/R23b5/RvcOcG2d5akQQtIq1EaZrM9K8uYbJGi8sipOt5pm4hSiCrHLzc4EA==
X-Received: by 2002:a05:6830:160b:b0:637:3719:6c52 with SMTP id g11-20020a056830160b00b0063737196c52mr6575187otr.214.1661113296602;
        Sun, 21 Aug 2022 13:21:36 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s32-20020a056870612000b0011c49bb701asm2621665oae.49.2022.08.21.13.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Aug 2022 13:21:36 -0700 (PDT)
Received: (nullmailer pid 1729163 invoked by uid 1000);
        Sun, 21 Aug 2022 20:21:26 -0000
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Device Tree <devicetree@vger.kernel.org>, arm-soc <arm@kernel.org>,
        Gregory Clement <gregory.clement@bootlin.com>
In-Reply-To: <20220820194804.3352415-6-andrew@lunn.ch>
References: <20220820194804.3352415-1-andrew@lunn.ch> <20220820194804.3352415-6-andrew@lunn.ch>
Subject: Re: [PATCH 05/11] DT: watchdog: Convert marvel.txt to YAML
Date:   Sun, 21 Aug 2022 15:21:26 -0500
Message-Id: <1661113286.970140.1729162.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 20 Aug 2022 21:47:58 +0200, Andrew Lunn wrote:
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> ---
>  .../devicetree/bindings/watchdog/marvel.txt   | 45 ----------
>  .../bindings/watchdog/marvell,orion-wdt.yaml  | 83 +++++++++++++++++++
>  2 files changed, 83 insertions(+), 45 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/marvel.txt
>  create mode 100644 Documentation/devicetree/bindings/watchdog/marvell,orion-wdt.yaml
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/


watchdog@20300: interrupts-extended: [[3, 0, 64, 4], [3, 0, 9, 4]] is too long
	arch/arm/boot/dts/armada-381-netgear-gs110emx.dtb
	arch/arm/boot/dts/armada-382-rd-ac3x-48g4x2xl.dtb
	arch/arm/boot/dts/armada-385-atl-x530.dtb
	arch/arm/boot/dts/armada-385-clearfog-gtr-l8.dtb
	arch/arm/boot/dts/armada-385-clearfog-gtr-s4.dtb
	arch/arm/boot/dts/armada-385-db-88f6820-amc.dtb
	arch/arm/boot/dts/armada-385-db-ap.dtb
	arch/arm/boot/dts/armada-385-linksys-caiman.dtb
	arch/arm/boot/dts/armada-385-linksys-cobra.dtb
	arch/arm/boot/dts/armada-385-linksys-rango.dtb
	arch/arm/boot/dts/armada-385-linksys-shelby.dtb
	arch/arm/boot/dts/armada-385-synology-ds116.dtb
	arch/arm/boot/dts/armada-385-turris-omnia.dtb
	arch/arm/boot/dts/armada-388-clearfog-base.dtb
	arch/arm/boot/dts/armada-388-clearfog.dtb
	arch/arm/boot/dts/armada-388-clearfog-pro.dtb
	arch/arm/boot/dts/armada-388-db.dtb
	arch/arm/boot/dts/armada-388-gp.dtb
	arch/arm/boot/dts/armada-388-helios4.dtb
	arch/arm/boot/dts/armada-388-rd.dtb

watchdog@20300: 'oneOf' conditional failed, one must be fixed:
	arch/arm/boot/dts/armada-370-c200-v2.dtb
	arch/arm/boot/dts/armada-370-db.dtb
	arch/arm/boot/dts/armada-370-dlink-dns327l.dtb
	arch/arm/boot/dts/armada-370-mirabox.dtb
	arch/arm/boot/dts/armada-370-netgear-rn102.dtb
	arch/arm/boot/dts/armada-370-netgear-rn104.dtb
	arch/arm/boot/dts/armada-370-rd.dtb
	arch/arm/boot/dts/armada-370-seagate-nas-2bay.dtb
	arch/arm/boot/dts/armada-370-seagate-nas-4bay.dtb
	arch/arm/boot/dts/armada-370-seagate-personal-cloud-2bay.dtb
	arch/arm/boot/dts/armada-370-seagate-personal-cloud.dtb
	arch/arm/boot/dts/armada-370-synology-ds213j.dtb
	arch/arm/boot/dts/armada-375-db.dtb
	arch/arm/boot/dts/armada-398-db.dtb
	arch/arm/boot/dts/armada-xp-axpwifiap.dtb
	arch/arm/boot/dts/armada-xp-crs305-1g-4s-bit.dtb
	arch/arm/boot/dts/armada-xp-crs305-1g-4s.dtb
	arch/arm/boot/dts/armada-xp-crs326-24g-2s-bit.dtb
	arch/arm/boot/dts/armada-xp-crs326-24g-2s.dtb
	arch/arm/boot/dts/armada-xp-crs328-4c-20s-4s-bit.dtb
	arch/arm/boot/dts/armada-xp-crs328-4c-20s-4s.dtb
	arch/arm/boot/dts/armada-xp-db.dtb
	arch/arm/boot/dts/armada-xp-db-dxbc2.dtb
	arch/arm/boot/dts/armada-xp-db-xc3-24g4xg.dtb
	arch/arm/boot/dts/armada-xp-gp.dtb
	arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dtb
	arch/arm/boot/dts/armada-xp-linksys-mamba.dtb
	arch/arm/boot/dts/armada-xp-matrix.dtb
	arch/arm/boot/dts/armada-xp-netgear-rn2120.dtb
	arch/arm/boot/dts/armada-xp-openblocks-ax3-4.dtb
	arch/arm/boot/dts/armada-xp-synology-ds414.dtb

watchdog@20300: Unevaluated properties are not allowed ('interrupts-extended' was unexpected)
	arch/arm/boot/dts/armada-381-netgear-gs110emx.dtb
	arch/arm/boot/dts/armada-382-rd-ac3x-48g4x2xl.dtb
	arch/arm/boot/dts/armada-385-atl-x530.dtb
	arch/arm/boot/dts/armada-385-clearfog-gtr-l8.dtb
	arch/arm/boot/dts/armada-385-clearfog-gtr-s4.dtb
	arch/arm/boot/dts/armada-385-db-88f6820-amc.dtb
	arch/arm/boot/dts/armada-385-db-ap.dtb
	arch/arm/boot/dts/armada-385-linksys-caiman.dtb
	arch/arm/boot/dts/armada-385-linksys-cobra.dtb
	arch/arm/boot/dts/armada-385-linksys-rango.dtb
	arch/arm/boot/dts/armada-385-linksys-shelby.dtb
	arch/arm/boot/dts/armada-385-synology-ds116.dtb
	arch/arm/boot/dts/armada-385-turris-omnia.dtb
	arch/arm/boot/dts/armada-388-clearfog-base.dtb
	arch/arm/boot/dts/armada-388-clearfog.dtb
	arch/arm/boot/dts/armada-388-clearfog-pro.dtb
	arch/arm/boot/dts/armada-388-db.dtb
	arch/arm/boot/dts/armada-388-gp.dtb
	arch/arm/boot/dts/armada-388-helios4.dtb
	arch/arm/boot/dts/armada-388-rd.dtb

watchdog-timer@20300: $nodename:0: 'watchdog-timer@20300' does not match '^watchdog(@.*|-[0-9a-f])?$'
	arch/arm/boot/dts/kirkwood-b3.dtb
	arch/arm/boot/dts/kirkwood-blackarmor-nas220.dtb
	arch/arm/boot/dts/kirkwood-c200-v1.dtb
	arch/arm/boot/dts/kirkwood-cloudbox.dtb
	arch/arm/boot/dts/kirkwood-d2net.dtb
	arch/arm/boot/dts/kirkwood-db-88f6281.dtb
	arch/arm/boot/dts/kirkwood-db-88f6282.dtb
	arch/arm/boot/dts/kirkwood-dir665.dtb
	arch/arm/boot/dts/kirkwood-dns320.dtb
	arch/arm/boot/dts/kirkwood-dns325.dtb
	arch/arm/boot/dts/kirkwood-dockstar.dtb
	arch/arm/boot/dts/kirkwood-dreamplug.dtb
	arch/arm/boot/dts/kirkwood-ds109.dtb
	arch/arm/boot/dts/kirkwood-ds110jv10.dtb
	arch/arm/boot/dts/kirkwood-ds111.dtb
	arch/arm/boot/dts/kirkwood-ds112.dtb
	arch/arm/boot/dts/kirkwood-ds209.dtb
	arch/arm/boot/dts/kirkwood-ds210.dtb
	arch/arm/boot/dts/kirkwood-ds212.dtb
	arch/arm/boot/dts/kirkwood-ds212j.dtb
	arch/arm/boot/dts/kirkwood-ds409.dtb
	arch/arm/boot/dts/kirkwood-ds409slim.dtb
	arch/arm/boot/dts/kirkwood-ds411.dtb
	arch/arm/boot/dts/kirkwood-ds411j.dtb
	arch/arm/boot/dts/kirkwood-ds411slim.dtb
	arch/arm/boot/dts/kirkwood-goflexnet.dtb
	arch/arm/boot/dts/kirkwood-guruplug-server-plus.dtb
	arch/arm/boot/dts/kirkwood-ib62x0.dtb
	arch/arm/boot/dts/kirkwood-iconnect.dtb
	arch/arm/boot/dts/kirkwood-iomega_ix2_200.dtb
	arch/arm/boot/dts/kirkwood-is2.dtb
	arch/arm/boot/dts/kirkwood-km_kirkwood.dtb
	arch/arm/boot/dts/kirkwood-l-50.dtb
	arch/arm/boot/dts/kirkwood-laplug.dtb
	arch/arm/boot/dts/kirkwood-linkstation-lsqvl.dtb
	arch/arm/boot/dts/kirkwood-linkstation-lsvl.dtb
	arch/arm/boot/dts/kirkwood-linkstation-lswsxl.dtb
	arch/arm/boot/dts/kirkwood-linkstation-lswvl.dtb
	arch/arm/boot/dts/kirkwood-linkstation-lswxl.dtb
	arch/arm/boot/dts/kirkwood-linksys-viper.dtb
	arch/arm/boot/dts/kirkwood-lschlv2.dtb
	arch/arm/boot/dts/kirkwood-lsxhl.dtb
	arch/arm/boot/dts/kirkwood-mplcec4.dtb
	arch/arm/boot/dts/kirkwood-mv88f6281gtw-ge.dtb
	arch/arm/boot/dts/kirkwood-nas2big.dtb
	arch/arm/boot/dts/kirkwood-net2big.dtb
	arch/arm/boot/dts/kirkwood-net5big.dtb
	arch/arm/boot/dts/kirkwood-netgear_readynas_duo_v2.dtb
	arch/arm/boot/dts/kirkwood-netgear_readynas_nv+_v2.dtb
	arch/arm/boot/dts/kirkwood-ns2.dtb
	arch/arm/boot/dts/kirkwood-ns2lite.dtb
	arch/arm/boot/dts/kirkwood-ns2max.dtb
	arch/arm/boot/dts/kirkwood-ns2mini.dtb
	arch/arm/boot/dts/kirkwood-nsa310a.dtb
	arch/arm/boot/dts/kirkwood-nsa310.dtb
	arch/arm/boot/dts/kirkwood-nsa320.dtb
	arch/arm/boot/dts/kirkwood-nsa325.dtb
	arch/arm/boot/dts/kirkwood-openblocks_a6.dtb
	arch/arm/boot/dts/kirkwood-openblocks_a7.dtb
	arch/arm/boot/dts/kirkwood-openrd-base.dtb
	arch/arm/boot/dts/kirkwood-openrd-client.dtb
	arch/arm/boot/dts/kirkwood-openrd-ultimate.dtb
	arch/arm/boot/dts/kirkwood-pogo_e02.dtb
	arch/arm/boot/dts/kirkwood-pogoplug-series-4.dtb
	arch/arm/boot/dts/kirkwood-rd88f6192.dtb
	arch/arm/boot/dts/kirkwood-rd88f6281-a.dtb
	arch/arm/boot/dts/kirkwood-rd88f6281-z0.dtb
	arch/arm/boot/dts/kirkwood-rs212.dtb
	arch/arm/boot/dts/kirkwood-rs409.dtb
	arch/arm/boot/dts/kirkwood-rs411.dtb
	arch/arm/boot/dts/kirkwood-sheevaplug.dtb
	arch/arm/boot/dts/kirkwood-sheevaplug-esata.dtb
	arch/arm/boot/dts/kirkwood-t5325.dtb
	arch/arm/boot/dts/kirkwood-topkick.dtb
	arch/arm/boot/dts/kirkwood-ts219-6281.dtb
	arch/arm/boot/dts/kirkwood-ts219-6282.dtb
	arch/arm/boot/dts/kirkwood-ts419-6281.dtb
	arch/arm/boot/dts/kirkwood-ts419-6282.dtb

wdt@20300: $nodename:0: 'wdt@20300' does not match '^watchdog(@.*|-[0-9a-f])?$'
	arch/arm/boot/dts/orion5x-kuroboxpro.dtb
	arch/arm/boot/dts/orion5x-lacie-d2-network.dtb
	arch/arm/boot/dts/orion5x-lacie-ethernet-disk-mini-v2.dtb
	arch/arm/boot/dts/orion5x-linkstation-lschl.dtb
	arch/arm/boot/dts/orion5x-linkstation-lsgl.dtb
	arch/arm/boot/dts/orion5x-linkstation-lswtgl.dtb
	arch/arm/boot/dts/orion5x-lswsgl.dtb
	arch/arm/boot/dts/orion5x-maxtor-shared-storage-2.dtb
	arch/arm/boot/dts/orion5x-netgear-wnr854t.dtb
	arch/arm/boot/dts/orion5x-rd88f5182-nas.dtb

