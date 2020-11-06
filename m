Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D658D2A9301
	for <lists+devicetree@lfdr.de>; Fri,  6 Nov 2020 10:42:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726610AbgKFJm6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Nov 2020 04:42:58 -0500
Received: from mail.kernel.org ([198.145.29.99]:58696 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726139AbgKFJm6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 6 Nov 2020 04:42:58 -0500
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 6E3BD208FE;
        Fri,  6 Nov 2020 09:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1604655778;
        bh=g00gdWIk4p9Pliq9PH6u7KZdMYOMYE8udyfLX1rpXPU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=bPfAw8+tmUrlWgMNTdSyBpXAec9KNT/HeAvJSK19IuuhCqoqbTAklPXCPfTaPsl7v
         C3Vga9XmgULkAHc88ZzXYq8DYd0XPdTmTT6aFODv3G7lr4WbCi+DAgpc0wn/BuOo4E
         rlPha2h6MyuRjRP8HwlVULvR3w4leJ6Of12WUhnU=
Date:   Fri, 6 Nov 2020 10:43:44 +0100
From:   Greg KH <gregkh@linuxfoundation.org>
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     kishon@ti.com, devel@driverdev.osuosl.org,
        devicetree@vger.kernel.org, vkoul@kernel.org, robh+dt@kernel.org,
        neil@brown.name
Subject: Re: [PATCH v4 4/4] staging: mt7621-pci-phy: remove driver from
 staging
Message-ID: <20201106094344.GA2641594@kroah.com>
References: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
 <20201031122246.16497-5-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201031122246.16497-5-sergio.paracuellos@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 31, 2020 at 01:22:46PM +0100, Sergio Paracuellos wrote:
> Remove this driver from staging because it has been moved
> into its properly place in the kernel.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  drivers/staging/Kconfig                       |   2 -
>  drivers/staging/Makefile                      |   1 -
>  drivers/staging/mt7621-pci-phy/Kconfig        |   8 -
>  drivers/staging/mt7621-pci-phy/Makefile       |   2 -
>  drivers/staging/mt7621-pci-phy/TODO           |   4 -
>  .../mediatek,mt7621-pci-phy.yaml              |  36 --
>  .../staging/mt7621-pci-phy/pci-mt7621-phy.c   | 373 ------------------
>  7 files changed, 426 deletions(-)
>  delete mode 100644 drivers/staging/mt7621-pci-phy/Kconfig
>  delete mode 100644 drivers/staging/mt7621-pci-phy/Makefile
>  delete mode 100644 drivers/staging/mt7621-pci-phy/TODO
>  delete mode 100644 drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml
>  delete mode 100644 drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
