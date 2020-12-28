Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39AE32E664D
	for <lists+devicetree@lfdr.de>; Mon, 28 Dec 2020 17:12:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394145AbgL1QLz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Dec 2020 11:11:55 -0500
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:32689 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388304AbgL1QLy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Dec 2020 11:11:54 -0500
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 11113240004;
        Mon, 28 Dec 2020 16:11:08 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-i3c@lists.infradead.org
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        Nicolas Pitre <nico@fluxnic.net>,
        Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v3 0/4] Silvaco I3C master driver
Date:   Mon, 28 Dec 2020 17:11:03 +0100
Message-Id: <20201228161107.11804-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

Here is the addition of a driver for the Silvaco I3C master IP.

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

Miquel Raynal (4):
  dt-bindings: Add vendor prefix for Silvaco
  dt-bindings: i3c: Describe Silvaco master binding
  i3c: master: svc: Add Silvaco I3C master driver
  MAINTAINERS: Add Silvaco I3C master

 .../bindings/i3c/silvaco,i3c-master.yaml      |   63 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 MAINTAINERS                                   |    8 +
 drivers/i3c/master/Kconfig                    |    8 +
 drivers/i3c/master/Makefile                   |    1 +
 drivers/i3c/master/svc-i3c-master.c           | 1478 +++++++++++++++++
 6 files changed, 1560 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml
 create mode 100644 drivers/i3c/master/svc-i3c-master.c

-- 
2.20.1

