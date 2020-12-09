Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32EBF2D443D
	for <lists+devicetree@lfdr.de>; Wed,  9 Dec 2020 15:26:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732953AbgLIO01 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Dec 2020 09:26:27 -0500
Received: from mail.kernel.org ([198.145.29.99]:37062 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732439AbgLIO0W (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 9 Dec 2020 09:26:22 -0500
From:   Will Deacon <will@kernel.org>
Authentication-Results: mail.kernel.org; dkim=permerror (bad message/signature format)
To:     Joakim Zhang <qiangqing.zhang@nxp.com>, john.garry@huawei.com,
        robh+dt@kernel.org
Cc:     catalin.marinas@arm.com, kernel-team@android.com,
        Will Deacon <will@kernel.org>, frank.li@nxp.com,
        devicetree@vger.kernel.org, linux-imx@nxp.com
Subject: Re: [PATCH V2 0/2] perf/imx_ddr: Add sysfs identifier file
Date:   Wed,  9 Dec 2020 14:25:35 +0000
Message-Id: <160752324312.2133676.14450835352331888728.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201130114202.26057-1-qiangqing.zhang@nxp.com>
References: <20201130114202.26057-1-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 30 Nov 2020 19:42:00 +0800, Joakim Zhang wrote:
> Add sysfs identifier file for imx ddr perf.
> 
> ChangeLogs:
> V1->V2:
> 	* don't show identifier file if not set.
> 
> Joakim Zhang (2):
>   bindings: perf: imx-ddr: add compatible string
>   perf/imx_ddr: Add system PMU identifier for userspace
> 
> [...]

Applied to will (for-next/perf), thanks!

[1/2] bindings: perf: imx-ddr: add compatible string
      https://git.kernel.org/will/c/d0c00977a16a
[2/2] perf/imx_ddr: Add system PMU identifier for userspace
      https://git.kernel.org/will/c/881b0520504a

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev
