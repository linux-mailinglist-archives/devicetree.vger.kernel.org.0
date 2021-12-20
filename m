Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B97FB47AB40
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 15:27:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233526AbhLTO1s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 09:27:48 -0500
Received: from mail-oi1-f174.google.com ([209.85.167.174]:38751 "EHLO
        mail-oi1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230477AbhLTO1r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 09:27:47 -0500
Received: by mail-oi1-f174.google.com with SMTP id r26so16031442oiw.5
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 06:27:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=+RHoxMpuEpHG0UzNs2k3zfnd4Ojr3kUgEGPH8PnzgdQ=;
        b=FsqvhwdxT85NvPkpmAOCLRmxijLUrHacZAjbSIzZJHY9JUzaxm7IoFcwMovILQNlii
         mTnnuNFL9kwB/0tPNRqdmpsEHnvgKr7aewjcQuqcMVoFneQOoimk4tRVGyOsZswy7RU0
         MzKVm77Xj7SdCdlrHo0aNAZ4/49HerbwhvAnIeX6+ZLVS9Cc7o1dsfkpJAYwOsotfGp3
         2vnFiUpPCA+eydNCNNLtO+HrKGzOLpVvbyX7x/bKr6UTjN8y/EPF0b42YCpgowKSUzVE
         25U6kzaNsIsy9yKVfL4ECIn4WLXNXKL5MIW/GjtSGiS8O77QT31OMV8+cxyRbEzNPsCu
         D2Hg==
X-Gm-Message-State: AOAM532FUFCyYVa58IynYEGJz3+s6NsWqhlTvXdmWQ8qSct06ZbrdDFe
        z30hr7xA6aV46bSMZgmTzQ==
X-Google-Smtp-Source: ABdhPJyjP75XwCukBG7nWeGcCx4c0dVbMWVgeytmYBFDArfVl+OVzUPBh/RyWLS0aCiQ6qQVAmYt3w==
X-Received: by 2002:a05:6808:1597:: with SMTP id t23mr12132474oiw.24.1640010467360;
        Mon, 20 Dec 2021 06:27:47 -0800 (PST)
Received: from robh.at.kernel.org ([12.252.7.226])
        by smtp.gmail.com with ESMTPSA id 23sm3245049oty.6.2021.12.20.06.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 06:27:46 -0800 (PST)
Received: (nullmailer pid 3388826 invoked by uid 1000);
        Mon, 20 Dec 2021 14:27:43 -0000
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20211220110630.3521121-10-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de> <20211220110630.3521121-10-s.hauer@pengutronix.de>
Subject: Re: [PATCH 09/22] dt-bindings: display: rockchip: dw-hdmi: Add regulator support
Date:   Mon, 20 Dec 2021 08:27:43 -0600
Message-Id: <1640010463.883061.3388825.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 20 Dec 2021 12:06:17 +0100, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1570969


hdmi@200a0000: clock-names:0: 'iahb' was expected
	arch/arm/boot/dts/rk3228-evb.dt.yaml
	arch/arm/boot/dts/rk3229-evb.dt.yaml
	arch/arm/boot/dts/rk3229-xms6.dt.yaml

hdmi@200a0000: clock-names:1: 'isfr' was expected
	arch/arm/boot/dts/rk3228-evb.dt.yaml
	arch/arm/boot/dts/rk3229-evb.dt.yaml
	arch/arm/boot/dts/rk3229-xms6.dt.yaml

hdmi@200a0000: pinctrl-names: ['default'] is too short
	arch/arm/boot/dts/rk3228-evb.dt.yaml
	arch/arm/boot/dts/rk3229-evb.dt.yaml
	arch/arm/boot/dts/rk3229-xms6.dt.yaml

hdmi@200a0000: ports:port: 'endpoint@1' is a required property
	arch/arm/boot/dts/rk3229-xms6.dt.yaml

hdmi@200a0000: Unevaluated properties are not allowed ('reg', 'interrupts', 'pinctrl-names', 'pinctrl-0', 'resets', 'reset-names', 'ports' were unexpected)
	arch/arm/boot/dts/rk3228-evb.dt.yaml
	arch/arm/boot/dts/rk3229-evb.dt.yaml
	arch/arm/boot/dts/rk3229-xms6.dt.yaml

hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
	arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-rock64.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-pc.dt.yaml

hdmi@ff3c0000: pinctrl-names: ['default'] is too short
	arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-rock64.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-pc.dt.yaml

hdmi@ff3c0000: ports:port: 'endpoint@0' is a required property
	arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-rock64.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-pc.dt.yaml

hdmi@ff3c0000: ports:port: 'endpoint@1' is a required property
	arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-rock64.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-pc.dt.yaml

hdmi@ff3c0000: Unevaluated properties are not allowed ('reg', 'interrupts', 'pinctrl-names', 'pinctrl-0', '#sound-dai-cells', 'ports' were unexpected)
	arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-rock64.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-pc.dt.yaml

hdmi@ff940000: clock-names:4: 'vpll' was expected
	arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-ficus.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-firefly.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-inx.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-kd.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-captain.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-v.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-nanopi-neo4.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-orangepi.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock960.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-sapphire.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml

hdmi@ff940000: pinctrl-names: ['default'] is too short
	arch/arm64/boot/dts/rockchip/rk3399-ficus.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-firefly.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-captain.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-v.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-nanopi-neo4.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock960.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dt.yaml

hdmi@ff980000: pinctrl-names: ['default'] is too short
	arch/arm/boot/dts/rk3288-firefly-reload.dt.yaml
	arch/arm/boot/dts/rk3288-rock-pi-n8.dt.yaml
	arch/arm/boot/dts/rk3288-tinker-s.dt.yaml

