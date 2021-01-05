Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 755EA2EA3A5
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 04:07:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728155AbhAEDGz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 22:06:55 -0500
Received: from mail.kernel.org ([198.145.29.99]:32908 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728001AbhAEDGz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Jan 2021 22:06:55 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 90B1622573;
        Tue,  5 Jan 2021 03:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1609815974;
        bh=Kgg+A/cVZgamKmVdDfqWZcSREjjfaILflFi12eb+eP4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IvxTs1ftobRSHLgO0a8KeodTQYxTfCdir31Gb9ZXKEYSB6O5nR3ca+RHQVvJQTLqX
         IuPL/erDQRRSdvKnjyWPuq1+45E2GfBy9eDowgF1A8s0dAljXy1Gm6i4hLGisNz7/c
         a+ZTfue6+gwkzv8Dy//P9pgptfE460jjCu552leF0ir/yaSpYdA1fINcOodPgCp7fc
         2XQagmWXRWGYZnUCdAUwkZdDR3fF5dFy0LcfLPZxwZuORCDgQTELNkDHmTbCb992z6
         XrDlFEaDUMNpniaCQClZaLeStTLVeLgT95YP5G92FpzjHx1UwWBw3aRf3tIm7a6uG2
         6C2F7juGgOqMA==
Date:   Tue, 5 Jan 2021 11:06:09 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, festevam@gmail.com,
        u.kleine-koenig@pengutronix.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: Re: [PATCH] ARM: dts: imx6qdl-kontron-samx6i: fix pwms for
 lcd-backlight
Message-ID: <20210105030608.GL4142@dragon>
References: <20201202180558.14541-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201202180558.14541-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 02, 2020 at 07:05:58PM +0100, Marco Felsch wrote:
> The pwms property have to specify the no-/inverted flag since
> commit fa28d8212ede ("ARM: dts: imx: default to #pwm-cells = <3>
> in the SoC dtsi files").
> 
> Fixes: fa28d8212ede ("ARM: dts: imx: default to #pwm-cells = <3> in the SoC dtsi files")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied, thanks.
