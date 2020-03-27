Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D1630195B3D
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2020 17:37:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727769AbgC0QhI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Mar 2020 12:37:08 -0400
Received: from foss.arm.com ([217.140.110.172]:48530 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727726AbgC0QhH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 27 Mar 2020 12:37:07 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 566091FB;
        Fri, 27 Mar 2020 09:37:07 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 67FE13F71F;
        Fri, 27 Mar 2020 09:37:06 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>
Cc:     Sudeep Holla <sudeep.holla@arm.com>, f.fainelli@gmail.com,
        linux-imx@nxp.com
Subject: [PATCH 0/4] firmware: arm_scmi: Extend SMC/HVC to support multiple channels
Date:   Fri, 27 Mar 2020 16:36:50 +0000
Message-Id: <20200327163654.13389-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

While merging SMC/HVC transport to SCMI, I did a quick hack to extend
it to support multiple channels. I may be missing something obvious, if
not the changes required look simple. Some of them could be merged into
original patch, but since I am unable to test, I preferred to keep them
separate, easy to revert if things break.

Regards,
Sudeep
--

Sudeep Holla (4):
  firmware: arm_scmi: Make mutex channel specific
  firmware: arm_scmi: Drop empty stub for smc_mark_txdone
  firmware: arm_scmi: Check shmem property for channel availablity
  firmware: arm_scmi: Drop checking for shmem property in parent node

 drivers/firmware/arm_scmi/smc.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

--
2.17.1

