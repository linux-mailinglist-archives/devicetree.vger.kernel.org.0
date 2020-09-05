Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B98C625E5DF
	for <lists+devicetree@lfdr.de>; Sat,  5 Sep 2020 08:46:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726261AbgIEGqd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Sep 2020 02:46:33 -0400
Received: from mail.kernel.org ([198.145.29.99]:51976 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726065AbgIEGqd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 5 Sep 2020 02:46:33 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 43E7820797;
        Sat,  5 Sep 2020 06:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1599288392;
        bh=M9LlcFJpBc9JtzVRuk3IbanupfoKaky7cZ3mZjKAGZM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FWWPzUGOtqknB0NljWQj2jl4xwRAloBTdY0+41dv9X5aJ+U7UP0b246ytEb+es7dH
         HyfcjJ55oEnkeFXtFItLVVRWhj7TBgQXDpYBUzbssEcYyq99KUrqtFIPtBnM2A6qrI
         38aX82anBxSUmGB90Qiwc5u6TfnFGAPHRiJNtDXo=
Date:   Sat, 5 Sep 2020 14:46:27 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: imx6qdl: add enet_out clk support
Message-ID: <20200905064626.GG9261@dragon>
References: <20200831133018.25713-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200831133018.25713-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 31, 2020 at 03:30:18PM +0200, Marco Felsch wrote:
> Like the other i-MX devices the i.MX6 family can output the enet tx
> clock on the pad to feed the connected device. Add the missing clk here
> to avoid local fixups like: arch/arm/boot/dts/imx6qdl-tx6.dtsi.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied, thanks.
