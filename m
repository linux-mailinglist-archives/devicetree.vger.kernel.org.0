Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C743726ABDA
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 20:28:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728052AbgIOS2p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 14:28:45 -0400
Received: from bin-mail-out-05.binero.net ([195.74.38.228]:51106 "EHLO
        bin-mail-out-05.binero.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728039AbgIOS2l (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 15 Sep 2020 14:28:41 -0400
X-Halon-ID: 39de5573-f780-11ea-a39b-005056917f90
Authorized-sender: niklas.soderlund@fsdn.se
Received: from bismarck.berto.se (p54ac52a8.dip0.t-ipconnect.de [84.172.82.168])
        by bin-vsp-out-02.atm.binero.net (Halon) with ESMTPA
        id 39de5573-f780-11ea-a39b-005056917f90;
        Tue, 15 Sep 2020 20:21:09 +0200 (CEST)
From:   =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        linux-media@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH v4 3/3] MAINTAINERS: Add ADV7604 bindings documentation
Date:   Tue, 15 Sep 2020 20:19:44 +0200
Message-Id: <20200915181944.1037620-4-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200915181944.1037620-1-niklas.soderlund+renesas@ragnatech.se>
References: <20200915181944.1037620-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the YAML dt-bindings document for ADV7604.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index deaafb617361c7ec..5b72b50731016d91 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1101,6 +1101,7 @@ M:	Hans Verkuil <hverkuil-cisco@xs4all.nl>
 L:	linux-media@vger.kernel.org
 S:	Maintained
 F:	drivers/media/i2c/adv7604*
+F:	Documentation/devicetree/bindings/media/i2c/adv7604.yaml
 
 ANALOG DEVICES INC ADV7842 DRIVER
 M:	Hans Verkuil <hverkuil-cisco@xs4all.nl>
-- 
2.28.0

