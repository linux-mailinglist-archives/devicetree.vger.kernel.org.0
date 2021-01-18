Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6164B2F9A88
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 08:31:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726727AbhARHah (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 02:30:37 -0500
Received: from mail.kernel.org ([198.145.29.99]:42956 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726139AbhARHaf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 18 Jan 2021 02:30:35 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 931B8205CB;
        Mon, 18 Jan 2021 07:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610954993;
        bh=T4Q0LhklakFWM8QdAvfIAz72UQHEaV+nd4PfSOGvIPI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=EeAwTYvfp62D77ARGBJTUpn/w7QozbeAaP7Ufq0yMBHglYDUxAa1IE35ofS3GvS8h
         DHCgu6Jr9xnwnMsmJO5DHbuUoN7m07yzKJ2QRNUY+5o53mqBDzf9IHZFhMhkqbTCPz
         FA94ryf1l5sSSyroVucGBVx7Ej0rumLnty6/aGaNdt+7AUfb3MLzEVB1qzxB4dxMnb
         ctHK53klw+5Vxsdcl4xjrO4b+s7Tmq9/RnWiDHh7NJHARihtvkokqWRDcmpzRUb04X
         74g5WojLoScioGQSqMBuYmzPbqcG/YJjn/d9iJ3OCnOApHhXUQsteamkeHe/i1f2e1
         v0XS3Mfp7Aojg==
Date:   Mon, 18 Jan 2021 15:29:47 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     robh+dt@kernel.org, s.hauer@pengutronix.de, krzk@kernel.org,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        kernel@pengutronix.de
Subject: Re: [PATCH] arm64: dts: imx8mp: Correct the gpio ranges of gpio3
Message-ID: <20210118072947.GP28365@dragon>
References: <20210115011805.3253897-1-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210115011805.3253897-1-ping.bai@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 15, 2021 at 09:18:05AM +0800, Jacky Bai wrote:
> On i.MX8MP, The GPIO3's secondary gpio-ranges's 'gpio controller offset'
> cell value should be 26, so correct it.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Applied, thanks.
