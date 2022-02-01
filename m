Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6EC504A6266
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 18:28:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239385AbiBAR21 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 12:28:27 -0500
Received: from mout.kundenserver.de ([212.227.17.10]:40095 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241496AbiBAR21 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 12:28:27 -0500
Received: from localhost.localdomain ([37.4.249.169]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MowbA-1mS6zq0FAM-00qPtn; Tue, 01 Feb 2022 18:28:12 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        soc@kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V2 1/3] dt-bindings: arm: bcm2835: Add Raspberry Pi Zero 2 W
Date:   Tue,  1 Feb 2022 18:27:45 +0100
Message-Id: <1643736467-17764-2-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1643736467-17764-1-git-send-email-stefan.wahren@i2se.com>
References: <1643736467-17764-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:qr6V6I+2EcTePhk4gEKDRcYEC4ApGXxDQy+o63pmeAZeoLnxISW
 BpAhXfpNW5BB95xLHD/BUYh/OoQdGARATNCjw6XOHXKQs+DuyejUTwcjc7sIDeWU7jH7cQl
 laGMXXOGBD5zUriyJ2wNwh2xKy6xlQcShRi6FaZDNvDvw0OKmohot/fYomO6DqRML+KixUB
 3Jx0bsaGlDrpQuTfbj1Ow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jdKjzavzWBI=:kcGe48fEQ+Q5DhWuFggG19
 Mln3O/VIiQ9YUJx+wcvIGmQVHRfqWWle9WndSSXvBfo8K8FeV6ng9iH5E9BZP+tsg6/vhLwVn
 c/QBT7FrMaff8buvwMdAC1RTe6URmJGhTmw2SS5h1edfLCv5XyJ9zF5bQlg+cQm2RgYNLx84K
 e7xWNDzKpnWVUeUhQzO9x7vOry1Fs3guN5rPtxLHD96ahw5h1zrai5RBkFKoKB927XVJkXYd9
 96VxTmOETnqGEqWKTt5VuUoPMy//wcLNOFJLBXP9PxHnEjBZs5Tr9fUC1VmqWx2YqZNJZLEux
 mh7AvgQOBe9c2ELvHgkO2/f4skYwtjfwrL6bRr7uJ+PGJqgKrIDlkHXxlaYdhlTfaTHTEYVTr
 XtNbB9YhMLrKCgzu96EgijhTIb/146MxXjj+QyaDjT5tPeCzfFs0PtkVYWzgnKc7YXrbBMm9+
 HGcvdNhvWRpPK3+Wsxl6EjEZ9U9o/0AcA5wI3HX2IlvAZCAsWBC4AQJ4OhxBWAaXLCtabo7Br
 2/LuhWov9NYoU+81vmbdrEHD8XKnvvpx3j7lRBbme0uLZd8BkECkMqUfft7szhAmWsmxEa4Il
 LNzpTvfxd1Ikh+NY0AFLBYD0uWVpkXLy5xyzpO4NGq+ol0kiqz9qUcBbglhuKgheYdJL6RiLZ
 lUA1/uUAj9zyzVZ4ihB3zi97u268HqxbxHo6nKpEvbMpLXiQRfbwLhHR1rq/b4HcOd5CJe7z0
 T6YQ6yv4uzUhMCip
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the Raspberry Pi Zero 2 W to DT schema.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
index 5dc4824..8051a75 100644
--- a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -51,6 +51,7 @@ properties:
               - raspberrypi,3-model-b-plus
               - raspberrypi,3-compute-module
               - raspberrypi,3-compute-module-lite
+              - raspberrypi,model-zero-2-w
           - const: brcm,bcm2837
 
 additionalProperties: true
-- 
2.7.4

