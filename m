Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0184E26FE77
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 15:30:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726174AbgIRN2p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 09:28:45 -0400
Received: from foss.arm.com ([217.140.110.172]:42378 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726126AbgIRN2p (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Sep 2020 09:28:45 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E09F330E;
        Fri, 18 Sep 2020 06:28:44 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.37])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 83A0A3F718;
        Fri, 18 Sep 2020 06:28:43 -0700 (PDT)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, mark.rutland@arm.com,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, alisaidi@amazon.com, tsahee@amazon.com,
        harb@amperecomputing.com, tuanphan@os.amperecomputing.com,
        james.yang@arm.com, patrik.berglund@arm.com
Subject: [PATCH v2 0/3] Arm CMN-600 PMU driver
Date:   Fri, 18 Sep 2020 14:28:36 +0100
Message-Id: <cover.1600357241.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

Here's an update with some very minor cleanup tweaks, plus a proposal
for some more in-depth debug information. Given that nobody seems to
have any significant complaints about the interface, I assume we're all
happy to merge the basic driver as-is and fix anything later if needed.

Robin.


Robin Murphy (3):
  perf: Add Arm CMN-600 DT binding
  perf: Add Arm CMN-600 PMU driver
  perf/arm-cmn: Add debugfs topology info

 Documentation/admin-guide/perf/arm-cmn.rst    |   65 +
 Documentation/admin-guide/perf/index.rst      |    1 +
 .../devicetree/bindings/perf/arm,cmn.yaml     |   57 +
 drivers/perf/Kconfig                          |    7 +
 drivers/perf/Makefile                         |    1 +
 drivers/perf/arm-cmn.c                        | 1790 +++++++++++++++++
 6 files changed, 1921 insertions(+)
 create mode 100644 Documentation/admin-guide/perf/arm-cmn.rst
 create mode 100644 Documentation/devicetree/bindings/perf/arm,cmn.yaml
 create mode 100644 drivers/perf/arm-cmn.c

-- 
2.28.0.dirty

