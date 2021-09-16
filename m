Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72B0040D582
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 11:04:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235394AbhIPJFa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 05:05:30 -0400
Received: from foss.arm.com ([217.140.110.172]:35050 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235122AbhIPJF3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Sep 2021 05:05:29 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1BFAE6D;
        Thu, 16 Sep 2021 02:04:09 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2CC373F5A1;
        Thu, 16 Sep 2021 02:04:08 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rob Herring <robh@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Andre Przywara <andre.przywara@arm.com>
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/5] Arm VExpress/Juno motherboard bus clean-ups
Date:   Thu, 16 Sep 2021 10:03:51 +0100
Message-Id: <163178289328.1737689.4625475759509108887.b4-ty@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819184239.1192395-1-robh@kernel.org>
References: <20210819184239.1192395-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Aug 2021 13:42:34 -0500, Rob Herring wrote:
> I noticed we once again have warnings on VExpress/Juno bus nodes as the
> simple-bus schema now expects child nodes to have a unit-address.
> Digging into this I noticed the arm,vexpress-juno.yaml schema is out of
> date and missing some properties (some of which are unused). I found the
> 'ranges' handling to be odd as well. This series fixes all those issues.
>
> Rob
>
> [...]

Applied 3-5/5 to sudeep.holla/linux (for-next/juno), thanks!
Please take 1-2/5 via your DT tree. I plan to send these as fixes for v5.15
soon.

[3/5] arm: dts: vexpress: Drop unused properties from motherboard node
      https://git.kernel.org/sudeep.holla/c/55c71dc69e
[4/5] arm: dts: vexpress-v2p-ca9: Fix the SMB unit-address
      https://git.kernel.org/sudeep.holla/c/2e9edc07df
[5/5] arm: dts: vexpress: Fix addressing issues with 'motherboard-bus' nodes
      https://git.kernel.org/sudeep.holla/c/bb3adfb3bd

--
Regards,
Sudeep

