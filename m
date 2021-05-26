Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 278B7391F0F
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 20:28:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235503AbhEZS3q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 14:29:46 -0400
Received: from foss.arm.com ([217.140.110.172]:48470 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232262AbhEZS3q (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 May 2021 14:29:46 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C6BF13A1;
        Wed, 26 May 2021 11:28:14 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6F2C53F73B;
        Wed, 26 May 2021 11:28:13 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>
Subject: [PATCH 0/8] dt-bindings: firmware: Convert SCPI and SCMI to json schema
Date:   Wed, 26 May 2021 19:27:59 +0100
Message-Id: <20210526182807.548118-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Sorry for the delay, this was promised long ago. I finally managed to get
something done here this week. I still have one thing pending in the last
patch, details in the patch.

Regards,
Sudeep

Sudeep Holla (8):
  dt-bindings: firmware: arm,scpi: Move arm,scpi-shmem to json schema
  dt-bindings: firmware: arm,scmi: Move arm,scmi-shmem to json schema
  dt-bindings: firmware: juno,scpi: Move to sram.yaml json schema
  dt-bindings: firmware: amlogic,scpi: Move arm,scpi-shmem to json schema
  dt-bindings: firmware: arm,scpi: Convert to json schema
  dt-bindings: mailbox : arm,mhu: Fix arm,scpi example used here
  dt-bindings: firmware: amlogic,scpi: Convert to json schema
  dt-bindings: firmware: arm,scmi: Convert to json schema

 .../devicetree/bindings/arm/amlogic,scpi.txt  |  27 --
 .../devicetree/bindings/arm/arm,scmi.txt      | 239 ---------------
 .../devicetree/bindings/arm/arm,scpi.txt      | 219 -------------
 .../devicetree/bindings/arm/juno,scpi.txt     |  26 --
 .../bindings/firmware/arm,scmi.yaml           | 270 ++++++++++++++++
 .../bindings/firmware/arm,scpi.yaml           | 288 ++++++++++++++++++
 .../devicetree/bindings/mailbox/arm,mhu.yaml  |  10 +-
 .../devicetree/bindings/sram/sram.yaml        |   5 +
 MAINTAINERS                                   |   2 +-
 9 files changed, 572 insertions(+), 514 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/amlogic,scpi.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/arm,scmi.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/arm,scpi.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/juno,scpi.txt
 create mode 100644 Documentation/devicetree/bindings/firmware/arm,scmi.yaml
 create mode 100644 Documentation/devicetree/bindings/firmware/arm,scpi.yaml

--
2.25.1

