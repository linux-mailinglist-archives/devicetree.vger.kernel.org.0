Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1288A3807A9
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 12:47:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232048AbhENKsK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 06:48:10 -0400
Received: from mail.kernel.org ([198.145.29.99]:48072 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231600AbhENKsJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 14 May 2021 06:48:09 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8ED3C61408;
        Fri, 14 May 2021 10:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1620989218;
        bh=Ux8YzJnBSwRgnaSNa08UTSzDAiWaxXMm8YbEFnJGvEU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mQH0FQQhZUw30gwfPpibEfzK/SMLWnRm6Flgv3/OZA7an8lWB7gZHJbJJ3xXRCAm/
         GB6nVvynaCNdTjD8ShC6gLgcn2W0S9sbDxo801wx4ehNIvQf+R0fXiCvlLcNnz1vRy
         +wQT3Ity+uF0gzLNfM+9dSh/CMuiE/vM5Xx575u1VYF3dlVNx+0lEpKhrSrfBgbaNu
         IqTyJED6fXmsxBu+7iRPZOCp6BRVCOUplU6B1WuS/jkEXPvWjcLCKgMpMWtjiG7E8p
         d22y/N92eko3eLUK23CXafxVGwwuWoELBnLd50ix1+oP3QLB49pYzgkgiQn2rxIS2c
         1EZc0rK/PFs/g==
Date:   Fri, 14 May 2021 16:16:54 +0530
From:   Vinod Koul <vkoul@kernel.org>
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     kishon@ti.com, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, robh+dt@kernel.org,
        linux-staging@lists.linux.dev, gregkh@linuxfoundation.org,
        neil@brown.name, ilya.lipnitskiy@gmail.com
Subject: Re: [PATCH RESEND v2 0/6] phy: ralink: mt7621-pci-phy: some
 improvements
Message-ID: <YJ5VHnZaLi4o31vL@vkoul-mobl.Dlink>
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08-05-21, 09:09, Sergio Paracuellos wrote:
> Hi all,
> 
> This series contains some improvements in the pci phy driver
> for MT7621 SoCs.
> 
> MT7621 SoC clock driver has already mainlined in
> 'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
> 
> Because of this we can update schema documentation and device tree
> to add related clock entries and avoid custom architecture code
> in favour of using the clock kernel framework to retrieve clock
> frequency needed to properly configure the PCIe related Phys.
> 
> After this changes there is no problem to properly enable this
> driver for COMPILE_TEST.
> 
> Configuration has also modified from 'tristate' to 'bool' depending
> on PCI_MT7621 which seems to have more sense.

Applied 2-6, thanks

-- 
~Vinod
