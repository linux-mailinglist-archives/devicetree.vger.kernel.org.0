Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EAB9950B99
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 15:14:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729099AbfFXNOe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jun 2019 09:14:34 -0400
Received: from mail.kernel.org ([198.145.29.99]:51792 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728944AbfFXNOd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 24 Jun 2019 09:14:33 -0400
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 8FFA62133F;
        Mon, 24 Jun 2019 13:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1561382073;
        bh=9iKvPOTevrUnlhN/sInvHOOlrJKjrfsKl0VU+MOLhA8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=RmThMFuPZVIfHab3wzUC9wAYt/02nUuSlLYIkqtugao2CE/5eXGFvJ4gvmD799szK
         n1yaYAQmXIABNb/OQ2Xw54akmKnRvXWwAq+xqvEVPOp7vlxhxQZLS2e/PtCfsPliHG
         DRLzXkpyfcsjylY2SfZrPPKoxBHcvLufV1gM4gjY=
Date:   Mon, 24 Jun 2019 21:14:18 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     =?iso-8859-1?Q?S=E9bastien?= Szymanski 
        <sebastien.szymanski@armadeus.com>
Cc:     Lothar =?iso-8859-1?Q?Wa=DFmann?= <LW@KARO-electronics.de>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul: fix PWM[1-4] interrupts
Message-ID: <20190624131417.GB16146@dragon>
References: <20190618155834.15545-1-sebastien.szymanski@armadeus.com>
 <20190624004703.GF3800@dragon>
 <670f98af-2c55-de1f-d36c-37d1f33086c7@armadeus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <670f98af-2c55-de1f-d36c-37d1f33086c7@armadeus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 24, 2019 at 09:36:37AM +0200, Sébastien Szymanski wrote:
> Hello,
> 
> On 6/24/19 2:47 AM, Shawn Guo wrote:
> > +Lothar
> > 
> > On Tue, Jun 18, 2019 at 05:58:34PM +0200, Sébastien Szymanski wrote:
> >> According to the i.MX6UL/L RM, table 3.1 "ARM Cortex A7 domain interrupt
> >> summary", the interrupts for the PWM[1-4] go from 83 to 86.
> >>
> >> Fixes: b9901fe84f02 ("ARM: dts: imx6ul: add pwm[1-4] nodes")
> >> Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>
> > 
> > Just curious - did you spot the error by testing PWM or merely by
> > looking at the code and document?
> 
> I spotted the error when trying to play sound with PWM [1].
> The PWM driver (drivers/pwm/pwm-imx27.c) don't use interrupt that's
> probably why nobody notice this error.

Thanks for the info.  Patch applied, thanks.

Shawn

> 
> [1] https://github.com/sasamy/imx-snd-pwm
