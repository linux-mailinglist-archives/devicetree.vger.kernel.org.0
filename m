Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D18EE2F68B8
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 19:07:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726043AbhANSB6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 13:01:58 -0500
Received: from mslow2.mail.gandi.net ([217.70.178.242]:44870 "EHLO
        mslow2.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725995AbhANSB6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 13:01:58 -0500
Received: from relay9-d.mail.gandi.net (unknown [217.70.183.199])
        by mslow2.mail.gandi.net (Postfix) with ESMTP id 3AAC33A50D0
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 17:57:04 +0000 (UTC)
X-Originating-IP: 86.201.233.230
Received: from localhost.localdomain (lfbn-tou-1-151-230.w86-201.abo.wanadoo.fr [86.201.233.230])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 29E86FF804;
        Thu, 14 Jan 2021 17:56:01 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-i3c@lists.infradead.org
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        Nicolas Pitre <nico@fluxnic.net>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v4 0/6] Silvaco I3C master driver
Date:   Thu, 14 Jan 2021 18:55:52 +0100
Message-Id: <20210114175558.17097-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

Here is the addition of a driver for the Silvaco I3C master IP.

Changes in v4:
* Converted the I3C binding file to yaml schema (including a license
  change, as requested by checkpatch.pl)
* Included this schema to the MIPI HCI binding file.
* Updated the Silvaco binding following Rob's review.
* No changes in the driver at all.

Changes in v3:
* Fix the MAINTAINERS file.
* Fix the bindings (clocks description, size-cells, etc)
* Add Rob's Ack on one patch.
* Dropped unnecessary locks.
* Used a hardware feature to automatically NACK IBI's during regular
  data transfers.
* Stopped flushing FIFOs (not needed).
* Entirely reworked the IBI handling logic.
* Dropped the warning when a device does not advertise it's dynamic
  address during an IBI.
* Moved the IBI logic into the master's workqueue instead of a
  threaded handler.
* Added a svc_i3c_master_readb() helper.
* Used consistent bit definitions (BIT() vs. FIELD_GET()).

Changes in v2:
* Change the manufacturer name from svc to silvaco.

Miquel Raynal (6):
  dt-bindings: i3c: Convert controller description to yaml
  dt-bindings: i3c: mipi-hci: Include the bus binding
  dt-bindings: Add vendor prefix for Silvaco
  dt-bindings: i3c: Describe Silvaco master binding
  i3c: master: svc: Add Silvaco I3C master driver
  MAINTAINERS: Add Silvaco I3C master

 Documentation/devicetree/bindings/i3c/i3c.txt |  140 --
 .../devicetree/bindings/i3c/i3c.yaml          |  186 +++
 .../devicetree/bindings/i3c/mipi-i3c-hci.yaml |    5 +-
 .../bindings/i3c/silvaco,i3c-master.yaml      |   60 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 MAINTAINERS                                   |    8 +
 drivers/i3c/master/Kconfig                    |    8 +
 drivers/i3c/master/Makefile                   |    1 +
 drivers/i3c/master/svc-i3c-master.c           | 1478 +++++++++++++++++
 9 files changed, 1747 insertions(+), 141 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i3c/i3c.txt
 create mode 100644 Documentation/devicetree/bindings/i3c/i3c.yaml
 create mode 100644 Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml
 create mode 100644 drivers/i3c/master/svc-i3c-master.c

-- 
2.20.1

