Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4D9F31812DD
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2020 09:25:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728263AbgCKIZ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Mar 2020 04:25:29 -0400
Received: from mail.kernel.org ([198.145.29.99]:55036 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726097AbgCKIZ3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 11 Mar 2020 04:25:29 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 7C647206B7;
        Wed, 11 Mar 2020 08:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1583915128;
        bh=rAHlhHRvPjjKS+aeeYULdqr+5huBitTjNZ7B6PG4kE8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=D6s0DPuKTNoV91xWeMPOWtKXZvnFMCXUglm37l6Lz3dBxDlRLCwDLH41cswHo9JnY
         FOv2tEKEyUhTyYb94KC7fy4Xw6XT7qKV40/RfW298y3trJle3SxFPV8rpJsdGFnRIP
         VxRpHxTrqRIbf9fhM+ngiBUKbNxb1bTODmk8/ax8=
Date:   Wed, 11 Mar 2020 16:25:22 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Vitor Massaru Iha <vitor@massaru.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org, mark.rutland@arm.com, s.hauer@pengutronix.de,
        festevam@gmail.com, marco.franchi@nxp.com, linux-imx@nxp.com,
        lkcamp@lists.libreplanetbr.org
Subject: Re: [PATCH v6] arm64: dts: imx8mq-phanbell: Add gpio-fan/thermal
 support
Message-ID: <20200311082521.GB29269@dragon>
References: <20200303011516.14946-1-vitor@massaru.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200303011516.14946-1-vitor@massaru.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 02, 2020 at 10:15:16PM -0300, Vitor Massaru Iha wrote:
> It was based on Google Source Code for Coral Edge TPU Mendel release:
> https://coral.googlesource.com/linux-imx/
> 
> It was tested on Coral Dev Board using this command:
>   sudo stress --cpu 4 --timeout 3600
> 
> Signed-off-by: Vitor Massaru Iha <vitor@massaru.org>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.
