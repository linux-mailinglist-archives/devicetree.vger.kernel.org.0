Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C051A285AA6
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 10:40:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726702AbgJGIk3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 04:40:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726041AbgJGIk3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 04:40:29 -0400
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EE83C061755
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 01:40:29 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C5nph0gQVz1rwZx;
        Wed,  7 Oct 2020 10:40:28 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C5npg6rFkz1qrgK;
        Wed,  7 Oct 2020 10:40:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id 1srEJkgDHoi1; Wed,  7 Oct 2020 10:40:26 +0200 (CEST)
X-Auth-Info: MKrpgmAK/1ibrtG5F7pcXywmEVavczhdkYTHpiNkXqg=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed,  7 Oct 2020 10:40:26 +0200 (CEST)
Subject: Re: [PATCH v2 3/7] dt-bindings: display: mxsfb: Add a bus-width
 endpoint property
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org
Cc:     Stefan Agner <stefan@agner.ch>, devicetree@vger.kernel.org,
        =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
References: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
 <20201007012438.27970-4-laurent.pinchart@ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
Message-ID: <7b8df7af-5ca8-708b-4975-2fdf4280116f@denx.de>
Date:   Wed, 7 Oct 2020 10:40:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201007012438.27970-4-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/7/20 3:24 AM, Laurent Pinchart wrote:

[...]

> +          bus-width:
> +            enum: [16, 18, 24]
> +            description: |
> +              The output bus width. This value overrides the configuration
> +              derived from the connected device (encoder or panel). It should
> +              only be specified when PCB routing of the data signals require a
> +              different bus width on the LCDIF and the connected device. For
> +              instance, when a 18-bit RGB panel has its R[5:0], G[5:0] and
> +              B[5:0] signals connected to LCD_DATA[7:2], LCD_DATA[15:10] and
> +              LCD_DATA[23:18] instead of LCD_DATA[5:0], LCD_DATA[11:6] and
> +              LCD_DATA[17:12], bus-width should be set to 24.

The iMX6 IPUv3 uses interface-pix-fmt which is a bit more flexible, but
I'm not sure whether it's the right way to go about this, see:
Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt
