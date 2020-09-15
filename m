Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE07926ABCF
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 20:27:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727804AbgIOS1j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 14:27:39 -0400
Received: from vsp-unauthed02.binero.net ([195.74.38.227]:50921 "EHLO
        vsp-unauthed02.binero.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727865AbgIOS1g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 14:27:36 -0400
X-Greylist: delayed 372 seconds by postgrey-1.27 at vger.kernel.org; Tue, 15 Sep 2020 14:27:35 EDT
X-Halon-ID: 344f444e-f780-11ea-a39b-005056917f90
Authorized-sender: niklas.soderlund@fsdn.se
Received: from bismarck.berto.se (p54ac52a8.dip0.t-ipconnect.de [84.172.82.168])
        by bin-vsp-out-02.atm.binero.net (Halon) with ESMTPA
        id 344f444e-f780-11ea-a39b-005056917f90;
        Tue, 15 Sep 2020 20:21:05 +0200 (CEST)
From:   =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        linux-media@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH v4 0/3] dt-bindings: adv7604: Convert bindings to json-schema
Date:   Tue, 15 Sep 2020 20:19:41 +0200
Message-Id: <20200915181944.1037620-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Hans,

This series converts the ADV7604 bindings to YAML and lists the new file
under MAINTAINERS. I have used the schema to validate the usage of the
bindings and no issues are found.

Previous versions of this series referred to issues found when running 
the validation and patches that fixed them. All those patches have now 
been picked up.

Niklas Söderlund (3):
  dt-bindings: adv7604: Fix documentation for hpd-gpios
  dt-bindings: adv7604: Convert bindings to json-schema
  MAINTAINERS: Add ADV7604 bindings documentation

 .../devicetree/bindings/media/i2c/adv7604.txt |  88 ---------
 .../bindings/media/i2c/adv7604.yaml           | 178 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 3 files changed, 179 insertions(+), 88 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/i2c/adv7604.txt
 create mode 100644 Documentation/devicetree/bindings/media/i2c/adv7604.yaml

-- 
2.28.0

