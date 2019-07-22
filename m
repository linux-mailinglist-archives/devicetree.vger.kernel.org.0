Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CB96A6F9C0
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 08:56:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726871AbfGVG4C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 02:56:02 -0400
Received: from mail.kernel.org ([198.145.29.99]:48034 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725920AbfGVG4B (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Jul 2019 02:56:01 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id DAA9821E72;
        Mon, 22 Jul 2019 06:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563778561;
        bh=WHx/8PtqilzenP+A33iHgPhQ7REahuw7ZkuciVDraP4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=0QkVA3V+q0c4XZXOncQBixEbeJ6rU3fHZtNe5kEoycPCqH815FvMiPjLblF6arwin
         espVqWgCx0/ZUFBfgSjUptBbm+RmJFNAATt01Z7RUB999mKD+gTMsqLcYxF5cnNL5V
         cK6aHFEKC2irb/iVlE9meYyTZPYTPTO+e9wOGgGs=
Date:   Mon, 22 Jul 2019 14:55:33 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     =?iso-8859-1?Q?S=E9bastien?= Szymanski 
        <sebastien.szymanski@armadeus.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/2] ARM: dts: opos6uldev: use OF graph to describe the
 display
Message-ID: <20190722065531.GD3738@dragon>
References: <20190704142324.17675-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190704142324.17675-1-sebastien.szymanski@armadeus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 04, 2019 at 04:23:23PM +0200, Sébastien Szymanski wrote:
> To make use of the new eLCDIF DRM driver OF graph description is
> required. Describe the display using OF graph nodes.
> 
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>

Applied, thanks.
