Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10185397CB2
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 00:49:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234908AbhFAWux (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 18:50:53 -0400
Received: from foss.arm.com ([217.140.110.172]:59742 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234998AbhFAWuw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Jun 2021 18:50:52 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2BA96D;
        Tue,  1 Jun 2021 15:49:10 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D35F73F719;
        Tue,  1 Jun 2021 15:49:09 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>
Subject: [PATCH v2 0/8] dt-bindings: firmware: Convert SCPI and SCMI to json schema
Date:   Tue,  1 Jun 2021 23:48:56 +0100
Message-Id: <20210601224904.917990-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Thanks for the review of v1. I managed to add regulator support. Exploiting
the explicit pattern, I have used protocol@*, to make #*-cells as required.
Lots of repeated schema except the #*-cells, not sure if there is any
better way to collapse or take the common out.

Regards,
Sudeep

v1->v2:
	- Fixed wrongly used "arm,scpi-shmem" with correct "arm,scp-shmem"
	- Fixed support for "arm,scpi-pre-1.0" only
	- Added example for amlogic,meson-gxbb-scpi
	- Added regulator support, expanded all the protocol@* patters
	  to mark #*-cells as required property

Sudeep Holla (8):
  dt-bindings: firmware: arm,scpi: Move arm,scp-shmem to json schema
  dt-bindings: firmware: arm,scmi: Move arm,scmi-shmem to json schema
  dt-bindings: firmware: juno,scpi: Move to sram.yaml json schema
  dt-bindings: firmware: amlogic,scpi: Move arm,scpi-shmem to json schema
  dt-bindings: mailbox : arm,mhu: Fix arm,scpi example used here
  dt-bindings: firmware: arm,scpi: Convert to json schema
  dt-bindings: firmware: amlogic,scpi: Convert to json schema
  dt-bindings: firmware: arm,scmi: Convert to json schema

 .../devicetree/bindings/arm/amlogic,scpi.txt  |  27 -
 .../devicetree/bindings/arm/arm,scmi.txt      | 239 ---------
 .../devicetree/bindings/arm/arm,scpi.txt      | 219 --------
 .../devicetree/bindings/arm/juno,scpi.txt     |  26 -
 .../bindings/firmware/arm,scmi.yaml           | 474 ++++++++++++++++++
 .../bindings/firmware/arm,scpi.yaml           | 317 ++++++++++++
 .../devicetree/bindings/mailbox/arm,mhu.yaml  |  10 +-
 .../devicetree/bindings/sram/sram.yaml        |   5 +
 MAINTAINERS                                   |   2 +-
 9 files changed, 805 insertions(+), 514 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/amlogic,scpi.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/arm,scmi.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/arm,scpi.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/juno,scpi.txt
 create mode 100644 Documentation/devicetree/bindings/firmware/arm,scmi.yaml
 create mode 100644 Documentation/devicetree/bindings/firmware/arm,scpi.yaml

-- 
2.25.1

