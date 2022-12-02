Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB71563FD6F
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 02:02:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230238AbiLBBCV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 20:02:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbiLBBCV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 20:02:21 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81E2CDE93
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 17:02:20 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id 130so3486875pfu.8
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 17:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6RbPKa0bMOhoI6ZZTdeBQWODfjh0GcmWYZjoJGzwqLQ=;
        b=ApqDjexZF7uBcC556B9tJaauD/1dXhs/ee5fidp91tA2Ihs6FMpiz+psAtR1qqA/bx
         bUVbz8rD97USxAcmHLUa8GAj4j1N0flGQk52qXNAvn1yK3qzFTm1FEGO7cFPTp5wAdBH
         qdpTJ8ozhZod8QYI4PAMyiU77g4f1kLK0p3wC1fd/47jvgrQM86kt/W1JZYEXQIjURdg
         ZreB/tXYaBfFvdxxE2DwyFgZNUOzfzlwCiBM8rMIGbdF7YYhUZxScEdDcUnQVxZ9pWU4
         8hU426gTBHtMcCdiF/oydLj7wCLEGORg+kFdlfgDyoUARDZ4ZiZRZ1QnB3kBi5LcMifO
         G8bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6RbPKa0bMOhoI6ZZTdeBQWODfjh0GcmWYZjoJGzwqLQ=;
        b=sFLGelnHVGmAw2BNVUBdlRgk5uyPevwvalX0BvDyNzp/M3QfVHwBC8Rq0PdzypzSCI
         zMwD0lni6MCH9Lb2eQixP9/CnaRb/HLrRBHiGhgagGNUL43twphBHMrB8bm02AprDqQD
         5BSwwdLPQoekkb/5Qv4t7jCUpKCk3ggJHWN85v297BzfaAeAku2vTPq9JDGsHHxKZDTf
         sjtC2ARX+PpOXF47wb8whHErXFcAMqzjExg+K0o+1Hxgr+GI6cbZR6kTkokX0XmqOymA
         SGeSRz4opQqrWntGVm85XNWFAqn65+aNHDekgD3ALes4u82DF2p8Ca84HE3XGx3r19RJ
         WnmA==
X-Gm-Message-State: ANoB5pmDPU9MX97aTqWfuICZOEXdZtQZu6E6A0Eelz3TVTi0UFGUZho2
        XFBs+4AVc8b9gikvGJUoImaOhgpJIu0P0xbCfvM=
X-Google-Smtp-Source: AA0mqf5tefT1KilM2fU//QzAhUaZ2rqXqhj4Vbddqoj9CHTQzp5APiuKVC+/CxLSTwkkLIv7GKWU6digKboWWbZhwa8=
X-Received: by 2002:a62:d10b:0:b0:575:ad52:ba94 with SMTP id
 z11-20020a62d10b000000b00575ad52ba94mr14080335pfg.74.1669942940014; Thu, 01
 Dec 2022 17:02:20 -0800 (PST)
MIME-Version: 1.0
References: <20221201003109.448693-1-tharvey@gateworks.com>
In-Reply-To: <20221201003109.448693-1-tharvey@gateworks.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Thu, 1 Dec 2022 22:02:08 -0300
Message-ID: <CAOMZO5Ba6Kmt-a7FMxj-gN5rEyMJJ=9CFRkS0vQkPf_-72rR2w@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx6qdl-gw5904: add internal mdio nodes
To:     Tim Harvey <tharvey@gateworks.com>, Andrew Lunn <andrew@lunn.ch>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Vladimir Oltean <vladimir.oltean@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tim,

[Adding Andrew]

On Wed, Nov 30, 2022 at 9:31 PM Tim Harvey <tharvey@gateworks.com> wrote:
>
> Complete the switch definition by adding the internal mdio nodes.
>
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

> ---
>  arch/arm/boot/dts/imx6qdl-gw5904.dtsi | 35 +++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
>
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
> index 612b6e068e28..08463e65dca3 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
> @@ -212,6 +212,27 @@ switch@0 {
>                         compatible = "marvell,mv88e6085";
>                         reg = <0>;
>
> +                       mdio {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               sw_phy0: ethernet-phy@0 {
> +                                       reg = <0x0>;
> +                               };
> +
> +                               sw_phy1: ethernet-phy@1 {
> +                                       reg = <0x1>;
> +                               };
> +
> +                               sw_phy2: ethernet-phy@2 {
> +                                       reg = <0x2>;
> +                               };
> +
> +                               sw_phy3: ethernet-phy@3 {
> +                                       reg = <0x3>;
> +                               };
> +                       };
> +
>                         ports {
>                                 #address-cells = <1>;
>                                 #size-cells = <0>;
> @@ -219,27 +240,41 @@ ports {
>                                 port@0 {
>                                         reg = <0>;
>                                         label = "lan4";
> +                                       phy-handle = <&sw_phy0>;
> +                                       phy-mode = "internal";
>                                 };
>
>                                 port@1 {
>                                         reg = <1>;
>                                         label = "lan3";
> +                                       phy-handle = <&sw_phy1>;
> +                                       phy-mode = "internal";
>                                 };
>
>                                 port@2 {
>                                         reg = <2>;
>                                         label = "lan2";
> +                                       phy-handle = <&sw_phy2>;
> +                                       phy-mode = "internal";
>                                 };
>
>                                 port@3 {
>                                         reg = <3>;
>                                         label = "lan1";
> +                                       phy-handle = <&sw_phy3>;
> +                                       phy-mode = "internal";
>                                 };
>
>                                 port@5 {
>                                         reg = <5>;
>                                         label = "cpu";
>                                         ethernet = <&fec>;
> +                                       phy-mode = "rgmii-id";
> +
> +                                       fixed-link {
> +                                               speed = <1000>;
> +                                               full-duplex;
> +                                       };
>                                 };
>                         };
>                 };
> --
> 2.25.1
>
