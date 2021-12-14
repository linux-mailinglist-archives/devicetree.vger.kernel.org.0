Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74271474494
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 15:16:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232418AbhLNOQX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 09:16:23 -0500
Received: from foss.arm.com ([217.140.110.172]:57012 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232406AbhLNOQX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Dec 2021 09:16:23 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 86B4B6D;
        Tue, 14 Dec 2021 06:16:22 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 60B243F793;
        Tue, 14 Dec 2021 06:16:21 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com
Cc:     catalin.marinas@arm.com, suzuki.poulose@arm.com,
        thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 0/5] arm64: PMU updates
Date:   Tue, 14 Dec 2021 14:16:12 +0000
Message-Id: <cover.1639490264.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

Here's v2, with the DSU binding actually finished (oh the shame...) and
the NVIDIA PMU patch pulled in to benefit from the cleanup and keep
things manageably together. The initial binding patch from v1 is no
longer included since Rob has picked it up separately.

Refactoring arm_pmu's probing to be more modular turns out to be a
substantial yak to shave, so in the end I decided it *is* worth
implementing Mark's macro suggestion now - after all, it can simply be
converted from a function template to a structure template as and when
the time comes.

Cheers,
Robin.


Robin Murphy (4):
  arm64: perf: Simplify registration boilerplate
  arm64: perf: Support new DT compatibles
  dt-bindings: perf: Convert Arm DSU to schema
  dt-bindings: perf: Add compatible for Arm DSU-110

Thierry Reding (1):
  arm64: perf: Support Denver and Carmel PMUs

 .../devicetree/bindings/arm/arm-dsu-pmu.txt   |  27 -----
 .../devicetree/bindings/perf/arm,dsu-pmu.yaml |  45 +++++++
 arch/arm64/kernel/perf_event.c                | 111 +++++++-----------
 3 files changed, 88 insertions(+), 95 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/arm-dsu-pmu.txt
 create mode 100644 Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml

-- 
2.28.0.dirty

