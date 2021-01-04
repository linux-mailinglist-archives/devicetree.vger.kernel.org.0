Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F02EC2E95BC
	for <lists+devicetree@lfdr.de>; Mon,  4 Jan 2021 14:20:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726939AbhADNTI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 08:19:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726935AbhADNTH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jan 2021 08:19:07 -0500
Received: from yawp.biot.com (yawp.biot.com [IPv6:2a01:4f8:10a:8e::fce2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46BDDC061795
        for <devicetree@vger.kernel.org>; Mon,  4 Jan 2021 05:18:27 -0800 (PST)
Received: from debian-spamd by yawp.biot.com with sa-checked (Exim 4.93)
        (envelope-from <bert@biot.com>)
        id 1kwPkf-00Bbtj-Hy
        for devicetree@vger.kernel.org; Mon, 04 Jan 2021 14:18:25 +0100
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on yawp
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.4
Received: from [2a02:578:460c:1:ae1f:6bff:fed1:9ca8] (helo=sumner.biot.com)
        by yawp.biot.com with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <bert@biot.com>)
        id 1kwPkK-00Bbqi-Fg; Mon, 04 Jan 2021 14:18:04 +0100
Received: from bert by sumner.biot.com with local (Exim 4.93)
        (envelope-from <bert@biot.com>)
        id 1kwPkJ-00CV2g-Gy; Mon, 04 Jan 2021 14:18:03 +0100
From:   Bert Vermeulen <bert@biot.com>
To:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Birger Koblitz <mail@birger-koblitz.de>,
        John Crispin <john@phrozen.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Bert Vermeulen <bert@biot.com>
Subject: [PATCH v2 0/2] Realtek RTL838x/RTL839x IRQ driver
Date:   Mon,  4 Jan 2021 14:17:53 +0100
Message-Id: <20210104131755.2979203-1-bert@biot.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v2:
- Addressed all comments by Marc Zyngier.
- Moved interrupt routing symbols to device tree interrupt-map. Parsing
  is done similar to the renesas,rza1-irqc driver.

Bert Vermeulen (2):
  dt-bindings: interrupt-controller: Add Realtek RTL838x/RTL839x support
  irqchip: Add support for Realtek RTL838x/RTL839x IRQ controller

 .../realtek,rtl-intc.yaml                     |  57 ++++++
 drivers/irqchip/Makefile                      |   1 +
 drivers/irqchip/irq-realtek-rtl.c             | 180 ++++++++++++++++++
 3 files changed, 238 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/realtek,rtl-intc.yaml
 create mode 100644 drivers/irqchip/irq-realtek-rtl.c

-- 
2.25.1

