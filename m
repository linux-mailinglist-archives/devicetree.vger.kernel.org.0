Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 35F7E922F7
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2019 14:01:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726717AbfHSMBz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Aug 2019 08:01:55 -0400
Received: from mail.kernel.org ([198.145.29.99]:45794 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726491AbfHSMBz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 19 Aug 2019 08:01:55 -0400
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id D52602085A;
        Mon, 19 Aug 2019 12:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1566216114;
        bh=iBYdvJu5KJRvj4Vlml19as63DfcbSfAnly0zDNpq7Xs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IAwHtVs10x8zS8wjbcyg9AzH9DsCjyJ7O37UcutYNYHufpG2LtleGkEmwk4zkJSQl
         Nzd3PCFg0LJIQMKSdKsmiLwflkycD/E6M7IDkZJN2JCZDtEsOGDv0zssk0GSjeD70Y
         Hmehhija/xNiaKeGJ1gpvMV1ZJNHlWslCq7lRjy0=
Date:   Mon, 19 Aug 2019 14:01:42 +0200
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, devicetree@vger.kernel.org,
        kernel@pengutronix.de
Subject: Re: [PATCH 1/2] ARM: dts: imx6: replace simple-bus by simple-mfd for
 anatop
Message-ID: <20190819120140.GC5999@X250>
References: <20190814075558.2319-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190814075558.2319-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 14, 2019 at 09:55:57AM +0200, Marco Felsch wrote:
> Replace it to fix the following DTC warnings:
> 
> arch/arm/boot/dts/imx6qdl.dtsi:702.19-715.7: Warning (simple_bus_reg): /soc/aips-bus@2000000/anatop@20c8000/regulator-1p1: missing or empty reg/ranges property
> arch/arm/boot/dts/imx6qdl.dtsi:717.19-730.7: Warning (simple_bus_reg): /soc/aips-bus@2000000/anatop@20c8000/regulator-3p0: missing or empty reg/ranges property
> arch/arm/boot/dts/imx6qdl.dtsi:732.19-745.7: Warning (simple_bus_reg): /soc/aips-bus@2000000/anatop@20c8000/regulator-2p5: missing or empty reg/ranges property
> arch/arm/boot/dts/imx6qdl.dtsi:747.32-762.7: Warning (simple_bus_reg): /soc/aips-bus@2000000/anatop@20c8000/regulator-vddcore: missing or empty reg/ranges property
> arch/arm/boot/dts/imx6qdl.dtsi:764.29-779.7: Warning (simple_bus_reg): /soc/aips-bus@2000000/anatop@20c8000/regulator-vddpu: missing or empty reg/ranges property
> arch/arm/boot/dts/imx6qdl.dtsi:781.31-796.7: Warning (simple_bus_reg): /soc/aips-bus@2000000/anatop@20c8000/regulator-vddsoc: missing or empty reg/ranges property
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied both, thanks.
