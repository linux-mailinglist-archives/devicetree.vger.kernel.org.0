Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77A5D39F5D0
	for <lists+devicetree@lfdr.de>; Tue,  8 Jun 2021 13:57:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232026AbhFHL7j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Jun 2021 07:59:39 -0400
Received: from mail.kernel.org ([198.145.29.99]:49632 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231919AbhFHL7i (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 8 Jun 2021 07:59:38 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id CB1516124B;
        Tue,  8 Jun 2021 11:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1623153465;
        bh=GGJs+1QkQswkHHplFDnB+MysQ+rfCwc+5iUQFPHS7Eo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=QiFd1Q6bW5/5k3H2aMh9ENlFTgO0jH5LZB936pP9BRIAnlvK1mWUroOVr/KBYb6UL
         WtViW9vZGoiGUNGrQWajMX01wkmVPqWWs7fmLyHSnFnYpWlr17+yt8uJCSukyVLKyh
         Cw5XmeZIqgONgWM3dYpBSC9JbepMqYGzq8dxSkwcQdLQm6091x9wdbiaVKiiRfRHU0
         YHTVTocdYX+IaaN+jtLrhbQM0cc+IBOH7mFODerN6vLxRM58hCuCrczhcAajMSWUny
         hFpiWAZQN257eEgguHVkA0HHVkp+yGstPwQD6vGBzVZGugJdSBwsOUlFEviPTeo5oQ
         hDVbyFwtG2sLQ==
Date:   Tue, 8 Jun 2021 19:57:41 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Zhen Lei <thunder.leizhen@huawei.com>
Cc:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/1] arm64: dts: freescale: Separate each group of data
 in the property 'reg'
Message-ID: <20210608115738.GB29138@dragon>
References: <20210521092042.8365-1-thunder.leizhen@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210521092042.8365-1-thunder.leizhen@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 21, 2021 at 05:20:42PM +0800, Zhen Lei wrote:
> Do not write the 'reg' of multiple groups of data into a uint32 array,
> use <> to separate them. Otherwise, the errors similar to the following
> will be reported by reg.yaml.
> 
> arch/arm64/boot/dts/freescale/fsl-ls1012a-frdm.dt.yaml:
>  soc: pcie@3400000:reg:0: \
>  [0, 54525952, 0, 1048576, 64, 0, 0, 8192] is too long
> 
> Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>

Applied, thanks.
