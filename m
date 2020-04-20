Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 314411B08A8
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2020 14:01:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726398AbgDTMBk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Apr 2020 08:01:40 -0400
Received: from mx2.suse.de ([195.135.220.15]:40624 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726341AbgDTMBk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Apr 2020 08:01:40 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx2.suse.de (Postfix) with ESMTP id B7DF0AC64;
        Mon, 20 Apr 2020 12:01:38 +0000 (UTC)
From:   Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To:     saravanak@google.com, linux-kernel@vger.kernel.org
Cc:     frowand.list@gmail.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 0/2] of: property: fw_devlink misc fixes
Date:   Mon, 20 Apr 2020 14:00:59 +0200
Message-Id: <20200420120101.31405-1-nsaenzjulienne@suse.de>
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
Changes since v2:
 - Address Saravana's comments

Changes since v1:
 - Address Saravana's comments
 - Drop patch #3 & #4


Nicolas Saenz Julienne (2):
  of: property: Fix create device links for all child-supplier
    dependencies
  of: property: Do not link to disabled devices

 drivers/of/property.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

-- 
2.26.0

