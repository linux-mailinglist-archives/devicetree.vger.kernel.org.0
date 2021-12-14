Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EC9C474AF7
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 19:33:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234152AbhLNSde (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 13:33:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbhLNSde (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 13:33:34 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0D34C061574
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 10:33:33 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7A9C0616AF
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 18:33:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E099FC34604;
        Tue, 14 Dec 2021 18:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1639506812;
        bh=qsLZ0GRNKuc0Rn98RTEffc2nd7ljiXNOz7pm7SbnCT8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=CEjIlxVyG4RK64S+/c7POkJnGTc6Wrg93c3gLajPUxqqJoMDr5Wiv7xFUi/t1b95J
         Yj5uoT25PiBJgRbbkNBAdzBZpakwx0WMF/WXJ2rC16g3Tx8/cKkSrseWgE61y3UP+q
         Wn5gpVXtCGQq5ZyekcJrd1nM+jSV7ylS7Ydhp0zcaOe8A3Jr7LAS1CDD/ZoOMpz4RN
         mvIP/sVNjKDhdyyLVH2RzEnqXXqTsin+PXd6L1TIcWPHIzeA0L8I6NfoC/Zk3+J1YQ
         DljawJKgUr/kDuF2KH+Wd1sB9/CI1gETYw+KqWf1n4NKHiSAq6VcQJQi4b3cD8derU
         0lEwGVoxp3OBA==
From:   Will Deacon <will@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>, robh+dt@kernel.org,
        mark.rutland@arm.com
Cc:     catalin.marinas@arm.com, kernel-team@android.com,
        Will Deacon <will@kernel.org>, suzuki.poulose@arm.com,
        devicetree@vger.kernel.org, thierry.reding@gmail.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/5] arm64: PMU updates
Date:   Tue, 14 Dec 2021 18:33:26 +0000
Message-Id: <163950511279.725168.3379356222366423286.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1639490264.git.robin.murphy@arm.com>
References: <cover.1639490264.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Dec 2021 14:16:12 +0000, Robin Murphy wrote:
> Here's v2, with the DSU binding actually finished (oh the shame...) and
> the NVIDIA PMU patch pulled in to benefit from the cleanup and keep
> things manageably together. The initial binding patch from v1 is no
> longer included since Rob has picked it up separately.
> 
> Refactoring arm_pmu's probing to be more modular turns out to be a
> substantial yak to shave, so in the end I decided it *is* worth
> implementing Mark's macro suggestion now - after all, it can simply be
> converted from a function template to a structure template as and when
> the time comes.
> 
> [...]

Applied first three to will (for-next/perf-cpu), thanks!

[1/5] arm64: perf: Support Denver and Carmel PMUs
      https://git.kernel.org/will/c/d4c4844a9b47
[2/5] arm64: perf: Simplify registration boilerplate
      https://git.kernel.org/will/c/6ac9f30bd43b
[3/5] arm64: perf: Support new DT compatibles
      https://git.kernel.org/will/c/893c34b60a59

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev
