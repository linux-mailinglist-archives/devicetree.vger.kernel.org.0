Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6CB9A1759CE
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2020 12:54:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727517AbgCBLyu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Mar 2020 06:54:50 -0500
Received: from mail.kernel.org ([198.145.29.99]:54174 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727485AbgCBLyu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 2 Mar 2020 06:54:50 -0500
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 32CB92086A;
        Mon,  2 Mar 2020 11:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1583150090;
        bh=g1ZYQNRudb7dOHHtDC/0u7w+QrmM8esVYtHWRpxBXmI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=JHIpMEqSIMeQ1uGz9HkhnZBTFmkCkXwSpJMCU0w32GcqOK8PhZd5ZMU5Wk0tbAEfh
         IlVulhuXZbXPDcBp3Z6yFjPjhO9pGfenykNa8lR7gft34vUDlUTuNZmDDjW8VE9qkO
         hgNcPYD5qNAd7djLgLdKE0EGubjhBEHoaGynPn9k=
Date:   Mon, 2 Mar 2020 11:54:46 +0000
From:   Will Deacon <will@kernel.org>
To:     Mark Rutland <mark.rutland@arm.com>
Cc:     Robin Murphy <robin.murphy@arm.com>, catalin.marinas@arm.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 5/5] arm64: perf: Support new DT compatibles
Message-ID: <20200302115445.GB9233@willie-the-truck>
References: <cover.1582312530.git.robin.murphy@arm.com>
 <6e5087621bd8112a35733054689d7c785b4bdde5.1582312530.git.robin.murphy@arm.com>
 <20200228121712.GF36089@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200228121712.GF36089@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 28, 2020 at 12:17:13PM +0000, Mark Rutland wrote:
> On Fri, Feb 21, 2020 at 07:35:32PM +0000, Robin Murphy wrote:
> > Add support for matching the new PMUs. For now, this just wires them up
> > as generic PMUv3 such that people writing DTs for new SoCs can do the
> > right thing, and at least have architectural and raw events be usable.
> > We can come back and fill in event maps for sysfs and/or perf tools at
> > a later date.
> > 
> > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> 
> Thanks for putting this together!
> 
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> 
> Will, are you happy to queue this and the previous patch?

Yup, I'll pick these two up shortly.

Will
