Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0ED7B352344
	for <lists+devicetree@lfdr.de>; Fri,  2 Apr 2021 01:17:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231160AbhDAXRY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 19:17:24 -0400
Received: from smtpcmd0871.aruba.it ([62.149.156.71]:58567 "EHLO
        smtpcmd0871.aruba.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233710AbhDAXRX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 19:17:23 -0400
Received: from ubuntu.localdomain ([146.241.168.220])
        by Aruba Outgoing Smtp  with ESMTPSA
        id S6YzlD4W1HTbyS6Z0lYTdO; Fri, 02 Apr 2021 01:17:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
        t=1617319042; bh=dGQJyzoOvaZ/oMBlClhRLrTVTrIBTYOzUofqylrfAkk=;
        h=From:To:Subject:Date:MIME-Version;
        b=EdQlCsy6ArI1ONne37C/1gNuBQejOwDdqoxe30xvZhD3vFr3tuSaJ8QpOmBPQwl1i
         6OUyINM/eDbu0mmPkodZ+Yk4U1MXCYQtL1xNCf+FgU30jOnsg6ILsUbSB7tlz61osc
         CJUecG4bQSW+Frk09BeAXFbwtw/46f0bp0t4twL7VAwJLoqPxzfUO9CO0XPw5RmUmu
         dOhQjNDzU8UpzqBaU8ff+RTqmIs7gejZmoXFf+pO+AcWchLRVy8Rf278QIx12SyJXJ
         MnT7AntKX6hWa+vutEahUIiqUu5iYojaNdEsJTQ3BbAB+lKlLagusOJS7B1QohvayO
         stcUd2cqJN6mw==
From:   Giulio Benetti <giulio.benetti@benettiengineering.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Giulio Benetti <giulio.benetti@benettiengineering.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/9] dt-bindings: Add Jenson Display vendor prefix
Date:   Fri,  2 Apr 2021 01:17:12 +0200
Message-Id: <20210401231720.2470869-2-giulio.benetti@benettiengineering.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401231720.2470869-1-giulio.benetti@benettiengineering.com>
References: <20210305234427.572114-1-giulio.benetti@benettiengineering.com>
 <20210401231720.2470869-1-giulio.benetti@benettiengineering.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4wfOL9AQ4RcJL649SgpWxnuzzFzsY6X41cjGOyr1mDgbIcV3RK+zL7bNLpVfgTYd+Fq/MgpwJSKFTMyDYQ5sweB9MbYG7aPEPXB8VgXG8r8XAwEPxv7G07
 hUAQqG6AyHlCdSMDjG+6exQMKlCostH02aJKXCOfgYgXTgA6BMOr4URbrInDiIsA866dkKigfQmfU+MJ+mWSYYp4H1Cv3d1Elcu+aJLKBFt/tKeA7EeRjZ1p
 wvrL0KnlL9yXEVJk0zNv/YvWD/AyLoJa+3CJYd5EhjslJWVckOvY/V0Z5PC4NZmMIDoKL44kKXpaIAyjXBrEb2S3QyvpR++2khiIRwimSnl/K4u/P7qXpX+U
 7onhEn2BFxkBDTdyY8cPE5VwhTHeNgtCQJyhkVRk9+3/zgLmr+FM3UNQZQMjbt7nmPLjzR4R90mxOb8vbx4jt3kDu3fC7aoZr3CUKIi5shKAMMtHXjQAf+a3
 gmcvx/EdfjijInT1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update Documentation/devicetree/bindings/vendor-prefixes.yaml to
include "jenson" as a vendor prefix for "Jenson Display".
Company website: http://www.jensondisplay.com/

Signed-off-by: Giulio Benetti <giulio.benetti@benettiengineering.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f6064d84a424..a1312637d6ff 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -553,6 +553,8 @@ patternProperties:
     description: Japan Display Inc.
   "^jedec,.*":
     description: JEDEC Solid State Technology Association
+  "^jenson,.*":
+    description: Jenson Display
   "^jesurun,.*":
     description: Shenzhen Jesurun Electronics Business Dept.
   "^jianda,.*":
-- 
2.25.1

