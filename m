Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96E162833EE
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 12:21:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725914AbgJEKVV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 06:21:21 -0400
Received: from mail.kernel.org ([198.145.29.99]:58158 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725887AbgJEKVV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 5 Oct 2020 06:21:21 -0400
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 4B2552078D;
        Mon,  5 Oct 2020 10:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1601893281;
        bh=p7zOFWU6TjCp1H2ynwV/u/w9TC19/+n+r6JrcQ+a+pI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=PeZqP/LM6613dLTtF6hiYeD701sNkZe0csZkiPCo/X6WSbx4eYzKc49oFBzpMuQtc
         Qwr2MkJhYv5KLcKTaTSZOCzG1A/0bLHazQTEw305s47fQJfPYZSKaVgJWRGtLWxUHs
         LaKYuZf8TN+5eapaAJLXMB+FNa5s9ulRMlc3a4mk=
Date:   Mon, 5 Oct 2020 11:21:15 +0100
From:   Will Deacon <will@kernel.org>
To:     "Zidenberg, Tsahi" <tsahee@amazon.com>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "Saidi, Ali" <alisaidi@amazon.com>,
        "harb@amperecomputing.com" <harb@amperecomputing.com>,
        "tuanphan@os.amperecomputing.com" <tuanphan@os.amperecomputing.com>,
        "james.yang@arm.com" <james.yang@arm.com>,
        "patrik.berglund@arm.com" <patrik.berglund@arm.com>
Subject: Re: [PATCH v2 0/3] Arm CMN-600 PMU driver
Message-ID: <20201005102115.GA23702@willie-the-truck>
References: <cover.1600357241.git.robin.murphy@arm.com>
 <55205AE5-EBBD-47F3-AA22-3B2A370CCF22@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <55205AE5-EBBD-47F3-AA22-3B2A370CCF22@amazon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 05, 2020 at 09:16:13AM +0000, Zidenberg, Tsahi wrote:
> 
> 
> ﻿On 18/09/2020, 16:29, "Robin Murphy" <robin.murphy@arm.com> wrote:
>     > Here's an update with some very minor cleanup tweaks, plus a proposal
>     > for some more in-depth debug information. Given that nobody seems to
>     > have any significant complaints about the interface, I assume we're all
>     > happy to merge the basic driver as-is and fix anything later if needed.
>     >
>     > Robin.
> 
> Agree with merging the driver as-is.
> Tested both the updated driver and the debugfs on Graviton2 (ACPI). 
> Both map and initial numbers seem right.
> 
> Tested-by: Tsahi Zidenberg <tsahee@amazon.com>
> 
> May I offer a small addition to the documentation?
> Something along these lines:
> 
> --- a/Documentation/admin-guide/perf/arm-cmn.rst
> +++ b/Documentation/admin-guide/perf/arm-cmn.rst
> @@ -41,8 +41,14 @@ specified by "occupid".
>  
>  By default each event provides an aggregate count over all nodes of the
>  given type. To target a specific node, "bynodeid" must be set to 1 and
> -"nodeid" to the appropriate value derived from the CMN configuration
> -(as defined in the "Node ID Mapping" section of the TRM).
> +"nodeid" to the appropriate value derived from the CMN configuration.
> +
> +The CMN map is available in /sys/kernel/debug/arm-cmn/map.
> +A nodeid could be calculated with this formulae:
> +  node-id = d | (p << 2) | (y << 3) | (x << (3 + xybits))
> +where:
> +  x,y,p,d are node location as can be seen in the map
> +  xybits is 2 for meshes <= 2*2, and 3 otherwise.

I already queued the driver, but if you send this as a stand-alone patch (on
top of the arm64 for-next/perf branch) then I'm happy to take it.

Thanks,

Will

>  Watchpoints
>  -----------
> 
