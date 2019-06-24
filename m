Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9A2BA4FECD
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 03:57:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726695AbfFXB5h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jun 2019 21:57:37 -0400
Received: from mail.kernel.org ([198.145.29.99]:38794 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726631AbfFXB50 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jun 2019 21:57:26 -0400
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 059CD2251B;
        Mon, 24 Jun 2019 00:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1561336688;
        bh=Rkjl5gTApPqzki0DX5HYPABKg7P9yNojh32UtZVda8I=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=bBk74pzZxzkzSSekTD4QzlPWB1hVYYmrstah59PHG1X9JJffa5REdlLWzKqAddzXb
         vDsN4+eyYmiO6CTcae/6KohQIZNW5QOG84X/kBUn82zy757SVkmsS+WjkQ0j4xKBVk
         r/C65rubIN15kKa12mvmJNYXgfM71a7ZwnfMnZEQ=
Date:   Mon, 24 Jun 2019 08:37:56 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, linux-imx@nxp.com, devicetree@vger.kernel.org,
        Gilles.Buloz@kontron.com, frieder.schrempf@kontron.de,
        thomas.schaefer@kontron.com, Stefan.Nickl@kontron.com,
        Michael.Brunner@kontron.com, kernel@pengutronix.de,
        festevam@gmail.com, plaes@plaes.org,
        Michael Grzeschik <m.grzeschik@pengutronix.de>
Subject: Re: [PATCH v2 2/3] ARM: dts: imx6qdl-kontron-samx6i: Add iMX6-based
 Kontron SMARC-sAMX6i module
Message-ID: <20190624003755.GD3800@dragon>
References: <20190617161432.32268-1-m.felsch@pengutronix.de>
 <20190617161432.32268-3-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190617161432.32268-3-m.felsch@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 17, 2019 at 06:14:31PM +0200, Marco Felsch wrote:
> From: Priit Laes <plaes@plaes.org>
> 
> SMARC-sAMX6i is a SMARC (Smart Mobility Architecture) compliant
> module.
> 
> Signed-off-by: Priit Laes <plaes@plaes.org>
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied, thanks.
