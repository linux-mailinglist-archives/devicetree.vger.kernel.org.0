Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BF46949A67
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 09:22:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725913AbfFRHWl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 03:22:41 -0400
Received: from mail.kernel.org ([198.145.29.99]:42952 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725963AbfFRHWl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 Jun 2019 03:22:41 -0400
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 18BCD20673;
        Tue, 18 Jun 2019 07:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1560842561;
        bh=3xjzZ7MvLMWn2Bw0AvLVoKhAWyPcHguGkP43zNfeZRc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=v9KXiixtlAq+Ftzhu1YMXH0tO3neacl2rbkNQP0sWYopDI+VV61OovzzLDsnkaceh
         iovmBXs0pwBrBZTQUvmVXForXQaVB0cnPD2IrlTvs4xxMxpCGxwDOTKJQB+6bx9nKV
         M+SVNmMqASztJbQ1L11o+TK6TSfpb8eY+YX3rZPc=
Date:   Tue, 18 Jun 2019 15:18:30 +0800
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
Subject: Re: [PATCH v2 1/1] ARM: dts: imx6ul: Add PXP node
Message-ID: <20190618071827.GH29881@dragon>
References: <20190613102355.20580-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190613102355.20580-1-sebastien.szymanski@armadeus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 13, 2019 at 12:23:55PM +0200, Sébastien Szymanski wrote:
> Add PXP node for i.MX6UL/L SoC.
> 
> Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>

Applied, thanks.
