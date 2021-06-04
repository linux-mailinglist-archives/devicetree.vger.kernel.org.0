Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D452E39C1B9
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 22:57:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230041AbhFDU7E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 16:59:04 -0400
Received: from foss.arm.com ([217.140.110.172]:48006 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229982AbhFDU7E (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 4 Jun 2021 16:59:04 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE0AE2B;
        Fri,  4 Jun 2021 13:57:16 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0C49D3F719;
        Fri,  4 Jun 2021 13:57:15 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>
Subject: [PATCH v3 0/6] dt-bindings: firmware: Convert SCPI and SCMI to json schema
Date:   Fri,  4 Jun 2021 21:57:04 +0100
Message-Id: <20210604205710.1944363-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Thanks for the continued review. I have fixed couple of example in arm,mhu
schema, so at the end of this series 3 warnings must disappear :).
Patch 1 and 5 can be squashed, I didn't want bot to flag more errors hence
have kept it separate.

Regards,
Sudeep

v2->v3:
	(mostly addressed all the review comments)
	- Dropped the 4 patches from v2 that are applied already.
	- Removed some of the connections in example as there are not
	  really needed.
	- Fixed examples in arm,mhu and arm,mhuv2
	- Moved SCMI protocol@ under properties with const reg values.
	- Removed numbering for sensors and power-domains and renamed
	  power-domains to power-controller as expected.
	  (need to fix juno-base.dtsi, will do that separately)
	- Added additionalProperties: false at all required places
	- Fixed SCPI clocks hierarchy.

v1->v2:
	- Fixed wrongly used "arm,scpi-shmem" with correct "arm,scp-shmem"
	- Fixed support for "arm,scpi-pre-1.0" only
	- Added example for amlogic,meson-gxbb-scpi
	- Added regulator support, expanded all the protocol@* patters
	  to mark #*-cells as required property

Sudeep Holla (6):
  dt-bindings: mailbox : arm,mhu: Fix arm,scpi example used here
  dt-bindings: firmware: arm,scpi: Convert to json schema
  dt-bindings: firmware: amlogic,scpi: Convert to json schema
  dt-bindings: firmware: arm,scmi: Convert to json schema
  dt-bindings: mailbox : arm,mhu: Use examples with matching schema
  dt-bindings: mailbox : arm,mhuv2: Use example with matching schema

 .../devicetree/bindings/arm/amlogic,scpi.txt  |  15 -
 .../devicetree/bindings/arm/arm,scmi.txt      | 224 ------------
 .../devicetree/bindings/arm/arm,scpi.txt      | 204 -----------
 .../bindings/firmware/arm,scmi.yaml           | 338 ++++++++++++++++++
 .../bindings/firmware/arm,scpi.yaml           | 249 +++++++++++++
 .../devicetree/bindings/mailbox/arm,mhu.yaml  |  48 ++-
 .../bindings/mailbox/arm,mhuv2.yaml           |  25 +-
 MAINTAINERS                                   |   2 +-
 8 files changed, 641 insertions(+), 464 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/amlogic,scpi.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/arm,scmi.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/arm,scpi.txt
 create mode 100644 Documentation/devicetree/bindings/firmware/arm,scmi.yaml
 create mode 100644 Documentation/devicetree/bindings/firmware/arm,scpi.yaml

-- 
2.25.1

