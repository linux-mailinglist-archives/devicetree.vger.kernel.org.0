Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7735C1AAB5A
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2020 17:07:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394180AbgDOPGW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Apr 2020 11:06:22 -0400
Received: from mx2.suse.de ([195.135.220.15]:60662 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389395AbgDOPGS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Apr 2020 11:06:18 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx2.suse.de (Postfix) with ESMTP id 0C005AFB8;
        Wed, 15 Apr 2020 15:06:16 +0000 (UTC)
From:   Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To:     saravanak@google.com,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devicetree@vger.kernel.org
Cc:     frowand.list@gmail.com, robh+dt@kernel.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] of: property: fw_devlink misc fixes
Date:   Wed, 15 Apr 2020 17:05:45 +0200
Message-Id: <20200415150550.28156-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As I'm interested in using this feature to fine-tune Raspberry Pi 4's
device probe dependencies, I tried to get the board to boot with
fw_devlink=on. As of today's linux-next the board won't boot with that
option. I tried to address the underlying issues.

---

Nicolas Saenz Julienne (4):
  of: property: Fix create device links for all child-supplier
    dependencies
  of: property: Do not link to disabled devices
  of: property: Move of_link_to_phandle()
  of: property: Avoid linking devices with circular dependencies

 drivers/of/property.c | 190 +++++++++++++++++++++++++++---------------
 1 file changed, 124 insertions(+), 66 deletions(-)

-- 
2.26.0

