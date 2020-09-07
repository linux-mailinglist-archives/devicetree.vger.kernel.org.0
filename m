Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 153C925F8B9
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 12:45:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728622AbgIGKpQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 06:45:16 -0400
Received: from mail.kernel.org ([198.145.29.99]:38626 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728509AbgIGKpO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Sep 2020 06:45:14 -0400
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 4EA0C20768;
        Mon,  7 Sep 2020 10:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1599475513;
        bh=7SHeUOONq1ESlkt5d2PJb9hKuT6Sg1Zy90mIQgARjc8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=saSQ18vTUtNhzccz1D42hswaeJ/JG3pqskOgBdVKbUrDRqCgAmyTM2cE+rVwerkGU
         UEW1yFzPqmb1xWRwyEsIgasJr302eB5SMc2FdwzamRbNzyHXHZG1q7/sr66DR4BQ6V
         KiD8Hp9RfmNjP6CcLqtPERdD2Ib3++PPEDHfED8g=
Date:   Mon, 7 Sep 2020 11:45:09 +0100
From:   Will Deacon <will@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, alisaidi@amazon.com, tsahee@amazon.com,
        harb@amperecomputing.com, tuanphan@os.amperecomputing.com,
        james.yang@arm.com
Subject: Re: [PATCH 2/2] perf: Add Arm CMN-600 PMU driver
Message-ID: <20200907104508.GC11970@willie-the-truck>
References: <cover.1596631695.git.robin.murphy@arm.com>
 <7f184a18890ef20632eae98b6c105c36f4eb0cd3.1596631695.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7f184a18890ef20632eae98b6c105c36f4eb0cd3.1596631695.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 05, 2020 at 01:56:50PM +0100, Robin Murphy wrote:
> Initial driver for PMU event counting on the Arm CMN-600 interconnect.
> CMN sports an obnoxiously complex distributed PMU system as part of
> its debug and trace features, which can do all manner of things like
> sampling, cross-triggering and generating CoreSight trace. This driver
> covers the PMU functionality, plus the relevant aspects of watchpoints
> for simply counting matching flits.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  Documentation/admin-guide/perf/arm-cmn.rst |   65 +
>  Documentation/admin-guide/perf/index.rst   |    1 +
>  drivers/perf/Kconfig                       |    7 +
>  drivers/perf/Makefile                      |    1 +
>  drivers/perf/arm-cmn.c                     | 1653 ++++++++++++++++++++
>  5 files changed, 1727 insertions(+)
>  create mode 100644 Documentation/admin-guide/perf/arm-cmn.rst
>  create mode 100644 drivers/perf/arm-cmn.c

I'm assuming some of the folks on cc care about this, so it would be great
to get some reviews, tested-bys and comments on the questions in the cover
letter.

Cheers,

Will
