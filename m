Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF3A8352343
	for <lists+devicetree@lfdr.de>; Fri,  2 Apr 2021 01:17:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234512AbhDAXRY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 19:17:24 -0400
Received: from smtpcmd0871.aruba.it ([62.149.156.71]:42648 "EHLO
        smtpcmd0871.aruba.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231160AbhDAXRX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 19:17:23 -0400
Received: from ubuntu.localdomain ([146.241.168.220])
        by Aruba Outgoing Smtp  with ESMTPSA
        id S6YzlD4W1HTbyS6YzlYTd5; Fri, 02 Apr 2021 01:17:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
        t=1617319042; bh=JSvoWMS/fePUFcFpVRkBCt4jZ6UaCd8sEYjvfe8v38w=;
        h=From:To:Subject:Date:MIME-Version;
        b=hd5LhLrsSCsj5Q+rpeDeCfdscuOb56BYHurhjJZ8IVpI1+sqAMeCWMlrENzSVIObR
         VuF4DDFcEKlUx40D0oYg+IWTkajWVCIiKHvGGZF6s+6Z5YuQ1MM0hU+IRwg3FZXuCQ
         6dkaW9oAj8usTo9ch0zXo5NRuIl64aJJAxA1dg2stPqv86kQQA/iVzFwgVmvE9Xakf
         m4ESn5IueyoGNMG5q0/6YzfGjc2WWvviUIkM/tc/FP7U02922wkF3BrbOm53fupjEH
         0fYDLw+25pPCmXAegfr7xhbbUEwYaCtMZ+piEixFXM1ofic2gMBcuLohQbXy7gUDst
         zgxbKp5kgTdxw==
From:   Giulio Benetti <giulio.benetti@benettiengineering.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Giulio Benetti <giulio.benetti@benettiengineering.com>
Subject: [PATCH v3 0/9] Add 4 Jenson simple panels
Date:   Fri,  2 Apr 2021 01:17:11 +0200
Message-Id: <20210401231720.2470869-1-giulio.benetti@benettiengineering.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210305234427.572114-1-giulio.benetti@benettiengineering.com>
References: <20210305234427.572114-1-giulio.benetti@benettiengineering.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4wfOL9AQ4RcJL649SgpWxnuzzFzsY6X41cjGOyr1mDgbIcV3RK+zL7bNLpVfgTYd+Fq/MgpwJSKFTMyDYQ5sweB9MbYG7aPEPXB8VgXG8r8XAwEPxv7G07
 hUAQqG6AyHlCdSMDjG+6exQMKlCostH02aJfVN/kX7VzHnpikc+t/2/n1kNZKAETrqEDj9MmSWOPg3sr+fJUj+vDJPIqk56m7b0xA9FuuG6qjP5xhfbx/KYr
 bSlWdrS1F2vXwRTZU3PG6NQFG1WTEp+KicDyUt5OKYUfWDCzyBZgJbC7SN9Q7VWvKcjBzkvEQ9DTOHiWyB+AB6jfEJUvG/f4eVKYByQ6U2TkIWMPptWg1K9v
 2ii7tPwAd/ndIFSTGmhKiX8RYRVTmxndOxovzcOIXG6SeG7j5WYHqTGSzRc4snh1MnRMXZbTpqTx1YDkxBkhserR0vXBSbd7+YIVDw3nkhBI4EOQAuU=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset introduce Jenson vendor and add 4 of its panels to
panel-simple driver.

---
V2-V3:
* changed my SoB and authorship
* added some forgotten acked-by
* fixed alpha-numeric order on adding bindings
---

Giulio Benetti (9):
  dt-bindings: Add Jenson Display vendor prefix
  dt-bindings: display/panel: add Jenson JT60245-01
  dt-bindings: display/panel: add Jenson JT60248-01
  dt-bindings: display/panel: add Jenson JT60249-01
  dt-bindings: display/panel: add Jenson JT60250-02
  drm/panel: simple: add Jenson JT60245-01
  drm/panel: simple: add Jenson JT60248-01
  drm/panel: simple: add Jenson JT60249-01
  drm/panel: simple: add Jenson JT60250-02

 .../bindings/display/panel/panel-simple.yaml  |   8 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/gpu/drm/panel/panel-simple.c          | 108 ++++++++++++++++++
 3 files changed, 118 insertions(+)

-- 
2.25.1

