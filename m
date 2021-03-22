Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A932344B42
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 17:27:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231547AbhCVQ1T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 12:27:19 -0400
Received: from foss.arm.com ([217.140.110.172]:34776 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231910AbhCVQ1M (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Mar 2021 12:27:12 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 255F61042;
        Mon, 22 Mar 2021 09:27:11 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CF81E3F719;
        Mon, 22 Mar 2021 09:27:09 -0700 (PDT)
Date:   Mon, 22 Mar 2021 16:27:06 +0000
From:   Andre Przywara <andre.przywara@arm.com>
To:     Ivan Uvarov <i.uvarov@cognitivepilot.com>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v2 3/4] dt-bindings: arm: add compatible strings for
 Forlinx OKA40i-C
Message-ID: <20210322162706.2cd9d32a@slackpad.fritz.box>
In-Reply-To: <20210322105538.3475183-4-i.uvarov@cognitivepilot.com>
References: <20210322105538.3475183-1-i.uvarov@cognitivepilot.com>
        <20210322105538.3475183-4-i.uvarov@cognitivepilot.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Mar 2021 13:55:37 +0300
Ivan Uvarov <i.uvarov@cognitivepilot.com> wrote:

Hi,

> The OKA40i-C is a carrier/development board for the Forlinx FETA40i-C SoM
> based on the Allwinner R40/A40i SoC.
> 
> This patch adds the relevant dt-binding documentation in preparation for
> the next patch, which adds a devicetree for the SoM and board.
> 
> Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>
> 
>  2 files changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
> index 08607c7ec1..096405aedc 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -224,6 +224,11 @@ properties:
>            - const: empire-electronix,m712
>            - const: allwinner,sun5i-a13
>  
> +      - description: Forlinx OKA40i-C Development board
> +        items:
> +          - const: forlinx,oka40i-c

I think you should add the SoM name in here, compare:
arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts

Cheers,
Andre


> +          - const: allwinner,sun8i-r40
> +
>        - description: FriendlyARM NanoPi A64
>          items:
>            - const: friendlyarm,nanopi-a64
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index f6064d84a4..e2ea1a731e 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -403,6 +403,8 @@ patternProperties:
>      description: Firefly
>    "^focaltech,.*":
>      description: FocalTech Systems Co.,Ltd
> +  "^forlinx,.*":
> +    description: Baoding Forlinx Embedded Technology Co., Ltd.
>    "^frida,.*":
>      description: Shenzhen Frida LCD Co., Ltd.
>    "^friendlyarm,.*":

