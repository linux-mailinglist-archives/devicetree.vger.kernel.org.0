Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED26646C293
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 19:20:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236070AbhLGSYT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 13:24:19 -0500
Received: from foss.arm.com ([217.140.110.172]:38332 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231712AbhLGSYT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 7 Dec 2021 13:24:19 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 70FF611FB;
        Tue,  7 Dec 2021 10:20:48 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4DBC23F73B;
        Tue,  7 Dec 2021 10:20:47 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, catalin.marinas@arm.com, robh+dt@kernel.org
Cc:     mark.rutland@arm.com, suzuki.poulose@arm.com,
        thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH 0/5] arm64: DT binding/PMU updates
Date:   Tue,  7 Dec 2021 18:20:38 +0000
Message-Id: <cover.1638900542.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

Here's another bunch of PMU-related updates I've been accruing lately.
Patch #1 is rebased on Thierry's patch already adding the Cortex-A78
compatible so probably wants to go via Rob to avoid further conflicts.

Thanks,
Robin.

Robin Murphy (5):
  dt-bindings: arm: Catch up with Cortex/Neoverse CPUs again
  arm64: perf: Simplify registration boilerplate
  arm64: perf: Support new DT compatibles
  dt-bindings: perf: Convert Arm DSU to schema
  dt-bindings: perf: Add compatible for Arm DSU-110

 .../devicetree/bindings/arm/arm-dsu-pmu.txt   | 27 --------
 .../devicetree/bindings/arm/cpus.yaml         |  6 ++
 .../devicetree/bindings/arm/pmu.yaml          |  6 ++
 .../devicetree/bindings/perf/arm,dsu-pmu.yaml | 45 ++++++++++++
 arch/arm64/kernel/perf_event.c                | 68 +++++++++++++------
 5 files changed, 104 insertions(+), 48 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/arm-dsu-pmu.txt
 create mode 100644 Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml

-- 
2.28.0.dirty

