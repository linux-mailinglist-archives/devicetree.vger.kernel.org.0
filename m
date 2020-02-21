Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E68B91682B8
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2020 17:05:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728699AbgBUQFD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Feb 2020 11:05:03 -0500
Received: from foss.arm.com ([217.140.110.172]:42520 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728364AbgBUQFC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 21 Feb 2020 11:05:02 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6836730E;
        Fri, 21 Feb 2020 08:05:02 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.37])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 91A0C3F68F;
        Fri, 21 Feb 2020 08:05:01 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] arm64 CPU DT binding updates
Date:   Fri, 21 Feb 2020 16:04:55 +0000
Message-Id: <cover.1582300927.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

Since A55 and others are now starting to show up in upstream
DT postings, it seems high time to get these updated.

I haven't yet found the chance to sit down and go through the
time-consuming part of cross-referencing TRMs to fill out the
event maps, but it seems worth getting the fundamental definitions
in sooner rather than later to at least un-block DT authors.

Thanks,
Robin.


Robin Murphy (3):
  dt-bindings: ARM: Add recent Cortex/Neoverse CPUs
  dt-bindings: ARM: Add recent Cortex/Neoverse PMUs
  arm64: perf: Support new DT compatibles

 Documentation/devicetree/bindings/arm/cpus.yaml | 9 +++++++++
 Documentation/devicetree/bindings/arm/pmu.yaml  | 9 +++++++++
 arch/arm64/kernel/perf_event.c                  | 8 ++++++++
 3 files changed, 26 insertions(+)

-- 
2.23.0.dirty

