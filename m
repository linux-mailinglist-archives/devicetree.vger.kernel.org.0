Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 847F0420A94
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 14:05:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233140AbhJDMHj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 08:07:39 -0400
Received: from mail.kernel.org ([198.145.29.99]:44784 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232591AbhJDMHf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Oct 2021 08:07:35 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2BCEB613D5;
        Mon,  4 Oct 2021 12:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633349147;
        bh=R6dz7pO6OG6fmGkY234lfGDjKO98fbK8hK91/ADTI20=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=r6zYcHhTvwIKFGoyPpvyaQEqD7hoQlLHgKwiJ9EkslxdrF15gKV0WEksGSZkEx7oy
         degp/UJXwJwK8gLIDvreb6ywDz2cbuVanh7GiTbyFOwt9iKRqEpRVW6RuPglJs8yST
         shtE9AIWwJrWvil9QK+Da1dbBdEPfhkCzr3dIhiiolaXc5yp3aTEqCjy7dAMmHVKRd
         xauI8fjwP/3c65JNAZl6/TrgG0NxAwlqcwceDmw9l4e/gV8fZxAuNOsVtJQweHBj1G
         szK6OhHFF3eAJIjQ1i8QBXg1udK63jjRIYuTqarIdezL4XpL1CRTOynFg+oC5LXkQA
         aRQatk6YTgRvw==
From:   Will Deacon <will@kernel.org>
To:     robh+dt@kernel.org, Loic Poulain <loic.poulain@linaro.org>,
        joro@8bytes.org
Cc:     catalin.marinas@arm.com, kernel-team@android.com,
        Will Deacon <will@kernel.org>, robin.murphy@arm.com,
        shawn.guo@linaro.org, devicetree@vger.kernel.org,
        iommu@lists.linux-foundation.org, bjorn.andersson@linaro.org
Subject: Re: [PATCH 1/2] iommu: arm-smmu-qcom: Add compatible for qcm2290
Date:   Mon,  4 Oct 2021 13:05:34 +0100
Message-Id: <163334827414.2617486.6663969645889307910.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1633096832-7762-1-git-send-email-loic.poulain@linaro.org>
References: <1633096832-7762-1-git-send-email-loic.poulain@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 1 Oct 2021 16:00:31 +0200, Loic Poulain wrote:
> 


Applied to will (for-joerg/arm-smmu/updates), thanks!

[1/2] iommu: arm-smmu-qcom: Add compatible for qcm2290
      https://git.kernel.org/will/c/756a622c8f06
[2/2] dt-bindings: arm-smmu: Add qcm2290 compatible strings
      https://git.kernel.org/will/c/f1edce3db543

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev
