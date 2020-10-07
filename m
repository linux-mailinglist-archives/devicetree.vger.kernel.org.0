Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E205285A8B
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 10:32:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727569AbgJGIc6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 04:32:58 -0400
Received: from mail-out.m-online.net ([212.18.0.9]:35719 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726463AbgJGIc6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 04:32:58 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C5ndz4TCmz1r7RL;
        Wed,  7 Oct 2020 10:32:55 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C5ndz3J0Xz1qrgJ;
        Wed,  7 Oct 2020 10:32:55 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id kGQVMSLCmoAp; Wed,  7 Oct 2020 10:32:54 +0200 (CEST)
X-Auth-Info: pcvUSIzQLY05+7/obRnGy3wsZnEASLSEanb0nc8p0nE=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed,  7 Oct 2020 10:32:54 +0200 (CEST)
Subject: Re: [PATCH v2 1/7] dt-bindings: display: mxsfb: Convert binding to
 YAML
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org
Cc:     Stefan Agner <stefan@agner.ch>, devicetree@vger.kernel.org,
        =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
References: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
 <20201007012438.27970-2-laurent.pinchart@ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
Message-ID: <daabffc8-24e9-4963-58a9-6c62724e7a11@denx.de>
Date:   Wed, 7 Oct 2020 10:32:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201007012438.27970-2-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/7/20 3:24 AM, Laurent Pinchart wrote:
[...]
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx23-lcdif
> +      - fsl,imx28-lcdif
> +      - fsl,imx6sx-lcdif
> +      - fsl,imx8mq-lcdif

There is no fsl,imx8mq-lcdif in drivers/gpu/drm/mxsfb/mxsfb_drv.c,
so the DT must specify compatible = "fsl,imx8mq-lcdif",
"fsl,imx28-lcdif" (since imx28 is the oldest SoC with LCDIF V4).

Should the compatible be added to drivers/gpu/drm/mxsfb/mxsfb_drv.c or
dropped from the YAML file or neither ?

[...]
