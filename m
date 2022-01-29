Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BFBE4A2BFD
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 06:29:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234333AbiA2F3X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 00:29:23 -0500
Received: from ams.source.kernel.org ([145.40.68.75]:50738 "EHLO
        ams.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231374AbiA2F3X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Jan 2022 00:29:23 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 829B9B810AA
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 05:29:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87D75C340E5;
        Sat, 29 Jan 2022 05:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643434160;
        bh=jGEyqTzuRsgePnAfR/TccMtNHrSfNY5pAoxFZFh7Gw0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qS/ijChqOjMmhWaBHELsTMWjbcxbEO76dE6bBPkKGJP58HZDR755LnmENPt9rBjng
         a+FdeUt8FuWYt2LWRpwe/rJsbCDJe0281Ho16NRRgIL7HertXnMGVGYW2WaiGnuZsg
         iEVDjjuIsLRgLD2a678R+mbPLWFynfRHHz2vBD6w1SXFUbll254xaTyBLSDEu63QCP
         3j6/GJxE/CW4jL/chlZsjVaUYxWJSxOJuP24xmZ3pwuCoJpoXSkjNlJXyS53Tsj/iz
         POtP60ra8Coa6l929KLENJ1mpq/kDk+R0vRho729Q+FywJnSXgcxQWxxICeNlnGsUf
         F9YBQsvPwFnHg==
Date:   Sat, 29 Jan 2022 13:29:14 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: freescale: Fix sound card model for
 MBa8Mx
Message-ID: <20220129052914.GM4686@dragon>
References: <20220114085906.629218-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220114085906.629218-1-alexander.stein@ew.tq-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 14, 2022 at 09:59:06AM +0100, Alexander Stein wrote:
> The audio codec connection on MBa8Mx is identical to MBa7 (imx7) and MBa6
> (imx6). Use the same sound card model as well.
> 
> Fixes commit dfcd1b6f7620 ("arm64: dts: freescale: add initial device tree
> for TQMa8MQML with i.MX8MM")
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
