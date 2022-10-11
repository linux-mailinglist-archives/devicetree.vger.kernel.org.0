Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE8A05FBBE1
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 22:10:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229764AbiJKUKz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 16:10:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229786AbiJKUKw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 16:10:52 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7495B7CABF
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 13:10:51 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id fw14so13440528pjb.3
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 13:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gdwf1KGq05Jj2wBDUsBe9H2+KCNJMFX0ODf5icvl56Y=;
        b=YkR7uAg5WXHLuK+YB1M8Ivl3ryL5ttl3PLx8SDWmIk5lSJKuGIzsAHyc3wXjJjswhf
         5RwXRItZh+nBi2hMD8JvcXfubJi94JUg997gSQ7Ue9VHPQx7I9BkqoNrO0iB1W5UemoE
         4125IB2XHOy9l409FliXKklm7etV1o3mddhmDMEQvgK0+fMSYy0/U8uGjvERAUF/EBbQ
         NFBBpaJuDANPwNJ8EZN9wF4CoilYffJ4cFSlzGHod/K+kybE7FUGu0RfGq+d93mrHTiY
         eE09Aj/iUHQWFOQJwLa+pzIGD9zH/QRnO+OsGGx/No6c3Wa/GocDvlE/0DbFXJnkt6a2
         WEnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gdwf1KGq05Jj2wBDUsBe9H2+KCNJMFX0ODf5icvl56Y=;
        b=ZW9qpSLUn2Nk7/9CT7zhLcr8FGgqn5GWi8f6UkZTndTbmEMQOOx2TLM+fg+WeGCW94
         D9j9EL3iF8p66gwdikohHs/ZIuWPmV95mXqzbZPEgNXQ2XDTrkMWXzBji9kjG03HDI7a
         2mZjpDviYqGEFkhblhwlUZvTpG78pNvatkQoYhaPytf0ChOHmgcbWYYK10sBQ3R1kAx2
         cESnV0X15vQfAN/2h8262xqH/zfITsGcjdAhTS4iUY9+56xtx30LbBlF28TvJhEpjeam
         +y8+YnqL7g1JI0dppztSsa7GGzjMsZibIFbTMUfu4jfstTpo5OoZWv3+CptTuuQf/IaV
         WIgA==
X-Gm-Message-State: ACrzQf28bb//xCIT3cWG6zYu/HLwbHBhaH/R+hTNXFZSgTDxcKKFWR0s
        sbBLXDRudmUACugNi0Q3vmvwMNVFeOFqz1X+QYlsCw==
X-Google-Smtp-Source: AMsMyM508ceCmi/EResRMaolUhhT5785fFLEEM2lQzYkZA2L+M/ZK2bABzAGyKsCygnQdtEGlLmtXhO5OWYAmKavRQA=
X-Received: by 2002:a17:902:eb8e:b0:17f:637b:9548 with SMTP id
 q14-20020a170902eb8e00b0017f637b9548mr25784213plg.158.1665519050412; Tue, 11
 Oct 2022 13:10:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220708085632.1918323-1-peng.fan@oss.nxp.com>
In-Reply-To: <20220708085632.1918323-1-peng.fan@oss.nxp.com>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Tue, 11 Oct 2022 13:10:39 -0700
Message-ID: <CAJ+vNU3uYtDGMd6fPi7skWKL8UNXntfAEODARF0NVz9k7DCT7w@mail.gmail.com>
Subject: Re: [PATCH V4 0/7] imx: blk-ctrl: Add interconnect for i.MX8MP
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc:     djakov@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        festevam@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, abelvesa@kernel.org,
        abailon@baylibre.com, l.stach@pengutronix.de,
        laurent.pinchart@ideasonboard.com, marex@denx.de,
        paul.elder@ideasonboard.com, Markus.Niebel@ew.tq-group.com,
        aford173@gmail.com, kernel@pengutronix.de,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-imx@nxp.com, Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 8, 2022 at 1:57 AM Peng Fan (OSS) <peng.fan@oss.nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> V4:
>  Because the header is not included when adding NoC node, the fsl,imx8mp.h
>  needs be included in this patchset. So include it in patch 6
>
> V3:
>  Move adding NoC node patch to i.MX8MP ICC driver patchset
>  Per Lucas's comments, warn once when icc bulk get not return probe defer and continue.
>
> V2:
>  Use a low bandwidth value instead INT_MAX
>  Minor fix to move fsl,imx8mp.h out to dts patch, not driver patch
>  Add A-b tag from DT maintainer
>
> i.MX8MP NoC settings is invalid after related power domain up. So
> need to set valid values after power domain up.
>
> This patchset is to bind interconnect for each entry in blk ctrl.
>
> This patchset is not include DVFS DDRC feature.
>
> Peng Fan (7):
>   dt-bindings: soc: imx: add interconnect property for i.MX8MP media blk
>     ctrl
>   dt-bindings: soc: imx: add interconnect property for i.MX8MP hdmi blk
>     ctrl
>   dt-bindings: soc: imx: add interconnect property for i.MX8MP hsio blk
>     ctrl
>   soc: imx: add icc paths for i.MX8MP media blk ctrl
>   soc: imx: add icc paths for i.MX8MP hsio/hdmi blk ctrl
>   arm64: dts: imx8mp: add interconnects for media blk ctrl
>   arm64: dts: imx8mp: add interconnect for hsio blk ctrl
>
>  .../soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml     |  9 +++++
>  .../soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml     | 10 +++++
>  .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 14 +++++++
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi     | 18 +++++++++
>  drivers/soc/imx/imx8m-blk-ctrl.c              | 39 +++++++++++++++++++
>  drivers/soc/imx/imx8mp-blk-ctrl.c             | 35 +++++++++++++++++
>  6 files changed, 125 insertions(+)
>
> --
> 2.25.1
>

Hi Peng,

I built origin/master from commit 041bc24d867a today for an imx8mp
board and am running into errors that appear to be introduced by this
series:
[   15.177372] platform 381f0040.usb-phy: deferred probe pending
[   15.183155] platform 382f0040.usb-phy: deferred probe pending
[   15.188928] platform 33800000.pcie: deferred probe pending
[   15.194439] platform 32ec0000.blk-ctrl: deferred probe pending
[   15.200287] platform 38330000.blk-ctrl: deferred probe pending
[   15.206129] platform 32f10000.blk-ctrl: deferred probe pending
[   15.211974] platform 32f10100.usb: deferred probe pending
[   15.217382] platform 32f10108.usb: deferred probe pending
[   15.222791] platform cpufreq-dt: deferred probe pending
# cat /sys/kernel/debug/devices_deferred
381f0040.usb-phy        platform: supplier 32f10000.blk-ctrl not ready
382f0040.usb-phy        platform: supplier 32f10000.blk-ctrl not ready
33800000.pcie   platform: supplier 32f10000.blk-ctrl not ready
32ec0000.blk-ctrl       imx8m-blk-ctrl: failed to get noc entries
38330000.blk-ctrl       imx8m-blk-ctrl: failed to get noc entries
32f10000.blk-ctrl       imx8mp-blk-ctrl: failed to get noc entries
32f10100.usb    platform: supplier 32f10000.blk-ctrl not ready
32f10108.usb    platform: supplier 32f10000.blk-ctrl not ready
cpufreq-dt

Is there a driver I'm perhaps missing that is needed now or are there
some patches that come from a different unmerged tree needed?

Best Regards,

Tim
