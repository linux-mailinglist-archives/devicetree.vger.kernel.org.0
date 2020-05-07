Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06DA11C8D7D
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2020 16:05:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726467AbgEGOFE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 May 2020 10:05:04 -0400
Received: from mail.kernel.org ([198.145.29.99]:55228 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726267AbgEGOFE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 7 May 2020 10:05:04 -0400
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa [217.169.31.236])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 32DE4205C9;
        Thu,  7 May 2020 14:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1588860304;
        bh=do7jj4xNiV93/Ok5rLnVTv8RM5tgiHm8W42BbdTJhtg=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=ihvV3xfnDKpebQZ3Ywf5sLUtP522MrZXgyFJFLL6xvm1K7NICybc9EkWnEBnUvrt3
         zpw1blEz4xFNQjy1YPstcN3IqAWG46LTywYV4IaOyqnEiAfIJVg8v1FctIjfohU9GN
         HJcEKsTlK1EWrOs9YMTszd52O2RkDWjFiekG+nfY=
From:   Will Deacon <will@kernel.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Rob Herring <robh@kernel.org>,
        Andre Przywara <andre.przywara@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     catalin.marinas@arm.com, Will Deacon <will@kernel.org>,
        Marc Zyngier <maz@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 00/17] dts/dt-bindings: Fix Arm Ltd. ARMv8 "boards"
Date:   Thu,  7 May 2020 15:04:53 +0100
Message-Id: <158885788096.89602.16621379341221804648.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507112430.183940-1-andre.przywara@arm.com>
References: <20200507112430.183940-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 7 May 2020 12:24:13 +0100, Andre Przywara wrote:
> Just some small fixes in v2: changing the GIC binding instead of the
> compatible strings used for Juno, re-ordering the patches, and, most
> importantly, (hopefully) fixing the subject lines ;-)
> I keep the last two patches in, even though I agree that there should be
> a more generic solution.
> -----------------------------------
> 
> [...]

Applied the SMMU patch to will (for-joerg/arm-smmu/updates), thanks!

[01/17] dt-bindings: arm-smmu: Allow mmu-400, smmu-v1 compatible
        https://git.kernel.org/will/c/bd0d696023cb

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev
