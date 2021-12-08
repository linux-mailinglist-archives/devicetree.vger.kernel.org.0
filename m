Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7AD846D898
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 17:35:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234688AbhLHQjX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 11:39:23 -0500
Received: from foss.arm.com ([217.140.110.172]:36156 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237137AbhLHQjQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 8 Dec 2021 11:39:16 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 55774101E;
        Wed,  8 Dec 2021 08:35:44 -0800 (PST)
Received: from [10.57.34.58] (unknown [10.57.34.58])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 45FB63F5A1;
        Wed,  8 Dec 2021 08:35:42 -0800 (PST)
Message-ID: <948a1248-29b4-cf4c-4d12-4889afee80a7@arm.com>
Date:   Wed, 8 Dec 2021 16:35:38 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH 08/18] dt-bindings: display: rockchip: dw-hdmi: Add
 regulator support
Content-Language: en-GB
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-9-s.hauer@pengutronix.de>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20211208151230.3695378-9-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-12-08 15:12, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   .../bindings/display/rockchip/rockchip,dw-hdmi.yaml         | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index 2ab6578033da2..b9dca49aa6e05 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -28,6 +28,12 @@ properties:
>     reg-io-width:
>       const: 4
>   
> +  avdd-0v9-supply:
> +    description: A 0.9V supply that powers up the SoC internal circuitry.

Might be worth calling out the actual pin name so it's abundantly clear 
for DT authors cross-referencing schematics. Annoyingly, some SoCs have 
HDMI_AVDD_1V0 instead of HDMI_AVDD_0V9 - I'm not sure it's worth 
splitting hairs that far in terms of the property name itself, but I'll 
leave that for others to decide.

> +  avdd-1v8-supply:
> +    description: A 1.8V supply that powers up the SoC internal circuitry.

At least HDMI_AVDD_1V8 seems more consistent.

Thanks,
Robin.

> +
>     clocks:
>       minItems: 2
>       items:
> 
