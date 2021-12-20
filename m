Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E55647AB43
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 15:27:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233638AbhLTO1v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 09:27:51 -0500
Received: from mail-oi1-f177.google.com ([209.85.167.177]:41792 "EHLO
        mail-oi1-f177.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230477AbhLTO1v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 09:27:51 -0500
Received: by mail-oi1-f177.google.com with SMTP id u74so16021429oie.8
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 06:27:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=zDWGu9cBBF+UZjp8vTj9QW+U99MkhuncHEZaTav2MHE=;
        b=opaIMeTK1KTnYDweprQSHXjxHvTyqalPau52XRFaEVUxlfhg0WaE4dmqcicJbBV+9b
         vTgToGh9/DREZDZhHt3QtwYCNTuQEF6kVgOWRnlHZjEbVGIAwr8ZnRe5xS1QEESM9Kwa
         DClQCa22oYz4O5d8moCuzi1D5seXLGGDD9cupZqhyFh/iyQT7gxXPiqZR6aa2XkcSK/e
         X907881OMxwFEUpVRVp0w9fMIIQNIEZv8ndPNFMi0FEGOqeNVz3zgotXHIbUwbGlYrdN
         2X9cNYDMg4JkIg3QYKAWp0wKI6xsznIM0xO80zEEmUC3d2jnllNEtIJ6LOddGhY0QDlN
         rGAA==
X-Gm-Message-State: AOAM532egUf5eUsZ1rvMDpGXrRj+KTb2bqkzODPULGGXT3xqxbCqXDx+
        9apxzyx6B7kT7jzLPbUVQHl5vUtVpQ==
X-Google-Smtp-Source: ABdhPJymnJA4Z6UpMSbt9RnHYH7HHxzlTJRAorVIPXmvkAT2YhfCFGWf8mSZby1/CnTgxJObaa5ggA==
X-Received: by 2002:a54:4401:: with SMTP id k1mr18534287oiw.143.1640010470666;
        Mon, 20 Dec 2021 06:27:50 -0800 (PST)
Received: from robh.at.kernel.org ([12.252.7.226])
        by smtp.gmail.com with ESMTPSA id g17sm3438953oiy.14.2021.12.20.06.27.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 06:27:50 -0800 (PST)
Received: (nullmailer pid 3388824 invoked by uid 1000);
        Mon, 20 Dec 2021 14:27:43 -0000
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     kernel@pengutronix.de,
        =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Peter Geis <pgwipeout@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>, devicetree@vger.kernel.org,
        Andy Yan <andy.yan@rock-chips.com>,
        dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20211220110630.3521121-8-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de> <20211220110630.3521121-8-s.hauer@pengutronix.de>
Subject: Re: [PATCH 07/22] dt-bindings: display: rockchip: dw-hdmi: Make unwedge pinctrl optional
Date:   Mon, 20 Dec 2021 08:27:43 -0600
Message-Id: <1640010463.872107.3388823.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 20 Dec 2021 12:06:15 +0100, Sascha Hauer wrote:
> None of the upstream device tree files has a "unwedge" pinctrl
> specified. Make it optional.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 1 +
>  1 file changed, 1 insertion(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1570970


hdmi@200a0000: clock-names:0: 'iahb' was expected
	arch/arm/boot/dts/rk3228-evb.dt.yaml
	arch/arm/boot/dts/rk3229-evb.dt.yaml
	arch/arm/boot/dts/rk3229-xms6.dt.yaml

hdmi@200a0000: clock-names:1: 'isfr' was expected
	arch/arm/boot/dts/rk3228-evb.dt.yaml
	arch/arm/boot/dts/rk3229-evb.dt.yaml
	arch/arm/boot/dts/rk3229-xms6.dt.yaml

hdmi@200a0000: ports:port: 'endpoint@1' is a required property
	arch/arm/boot/dts/rk3229-xms6.dt.yaml

hdmi@200a0000: Unevaluated properties are not allowed ('reg', 'interrupts', 'pinctrl-0', 'resets', 'reset-names', 'ports' were unexpected)
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

hdmi@ff3c0000: Unevaluated properties are not allowed ('reg', 'interrupts', 'pinctrl-0', '#sound-dai-cells', 'ports' were unexpected)
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

