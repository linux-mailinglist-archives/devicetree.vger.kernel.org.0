Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 228783A4D49
	for <lists+devicetree@lfdr.de>; Sat, 12 Jun 2021 09:13:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230115AbhFLHP0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Jun 2021 03:15:26 -0400
Received: from mail.kernel.org ([198.145.29.99]:48834 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230028AbhFLHPZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 12 Jun 2021 03:15:25 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id B018661186;
        Sat, 12 Jun 2021 07:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1623482006;
        bh=vQiIL882adGAoe9WH0GsylasORVVttEa6x2LiS8dka0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=e2u/RbNpMlDytRYNNsYlqKIK9BFGJ/LDm3lQxHhCEmoJn3+4JV1pgH6FDz6K/yoOY
         fZKgHiaHOI8lYjv9DEYkLF6CyMoFjAZYjxLwek4vMNtIN/7oJWobN87RFM/2FHYjF1
         D9aryuD0y8filAcumPVZnJPMBkjM1n5wyVA0QpWVoKD1R92ZexX24KgGQvIlIIsxdo
         cSxTqMULmiU2fqW+KSXTua28HpkzBsrPNDGHbP4cbazMPJpCKE8JvpChP3iIyKFegy
         2PKGw8bX+jpJOrhVfW4CO3NRlWS/VhWadRsEcVnO4l4Wku8dndwAOG/PDcC3eOxhd6
         9acDa2UsnR4uA==
Date:   Sat, 12 Jun 2021 15:13:22 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Li Jun <jun.li@nxp.com>
Cc:     festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm-evk: disable over current for usb1
Message-ID: <20210612071322.GX29138@dragon>
References: <1622201399-3862-1-git-send-email-jun.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1622201399-3862-1-git-send-email-jun.li@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 28, 2021 at 07:29:58PM +0800, Li Jun wrote:
> imx8mm evk board usb1 port does not support over current detection,
> so disable it.
> 
> Signed-off-by: Li Jun <jun.li@nxp.com>

Applied both, thanks.
