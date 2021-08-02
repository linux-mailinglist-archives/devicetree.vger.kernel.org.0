Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C2F33DD397
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 12:25:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233081AbhHBKZf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 06:25:35 -0400
Received: from mail.kernel.org ([198.145.29.99]:52424 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232973AbhHBKZf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 2 Aug 2021 06:25:35 -0400
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 5AB2360F6D;
        Mon,  2 Aug 2021 10:25:26 +0000 (UTC)
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
        by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <maz@kernel.org>)
        id 1mAV8O-002QL1-HD; Mon, 02 Aug 2021 11:25:24 +0100
MIME-Version: 1.0
Date:   Mon, 02 Aug 2021 11:25:24 +0100
From:   Marc Zyngier <maz@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/9] ARM: dts: bcm2711: fix emmc2bus node name
In-Reply-To: <1627820932-7247-2-git-send-email-stefan.wahren@i2se.com>
References: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
 <1627820932-7247-2-git-send-email-stefan.wahren@i2se.com>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <1072417634cf20c7dc46e545e9fcd242@kernel.org>
X-Sender: maz@kernel.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: stefan.wahren@i2se.com, robh+dt@kernel.org, nsaenz@kernel.org, f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com, maxime@cerno.tech, devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-08-01 13:28, Stefan Wahren wrote:
> Fix the node name to get the rid of the following DT schema warning:
> 'emmc2bus' does not match '^([a-z][a-z0-9\\-]+-bus|bus|soc|axi|ahb|apb)
> (@[0-9a-f]+)?$'
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---
>  arch/arm/boot/dts/bcm2711.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/bcm2711.dtsi 
> b/arch/arm/boot/dts/bcm2711.dtsi
> index b8a4096..afe0ef8 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -405,7 +405,7 @@
>  	 * The firmware will find whether the emmc2bus alias is defined, and 
> if
>  	 * so, it'll edit the dma-ranges property below accordingly.
>  	 */
> -	emmc2bus: emmc2bus {
> +	emmc2bus: emmc2-bus {

There was a recent breakage on rk3399 because of a similar change.

This is a userspace visible change (it affects the sysfs paths),
which will break people's scripts. It would be a lot better to
add an annotation to the DT to acknowledge the issue and keep
the checker quiet.

         M.
-- 
Jazz is not dead. It just smells funny...
