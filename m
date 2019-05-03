Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 70D7F12ACC
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2019 11:38:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726572AbfECJim (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 05:38:42 -0400
Received: from mail2.br-automation.com ([213.33.116.61]:3501 "EHLO
        mail2.br-automation.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726047AbfECJim (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 May 2019 05:38:42 -0400
X-Greylist: delayed 901 seconds by postgrey-1.27 at vger.kernel.org; Fri, 03 May 2019 05:38:41 EDT
X-AuditID: c0a80110-053e19e000001075-a2-5ccc089b55fc
Received: from brsmtp01.br-automation.com (Unknown_Domain [192.168.1.60])
        by mail2.br-automation.com () with SMTP id 3F.20.04213.B980CCC5; Fri,  3 May 2019 11:23:39 +0200 (CEST)
MIME-Version: 1.0
From:   Hannes Schmelzer <hannes.schmelzer@br-automation.com>
To:     devicetree@vger.kernel.org
Cc:     Hannes Schmelzer <hannes.schmelzer@br-automation.com>
Subject: [PATCH] Documentation: devicetree: Add vendor prefix for B&R Industrial Automation GmbH
Date:   Fri, 3 May 2019 11:23:32 +0200
Message-Id: <1556875412-19635-1-git-send-email-hannes.schmelzer@br-automation.com>
Content-Transfer-Encoding: quoted-printable
X-Mailer: git-send-email 2.7.4
X-MIMETrack: Itemize by SMTP Server on BRSMTPINTERN2/InternSMTP(Release 9.0.1FP5|November
  22, 2015) at 03/05/2019 11:23:37,Serialize by Router on BRSMTPINTERN2/InternSMTP(Release 9.0.1FP5|November
  22, 2015) at 03/05/2019 11:23:37,Serialize complete at 03/05/2019 11:23:37,Itemize by SMTP Server on BRSMTP01/Eggelsberg/AT/B&R(Release 9.0.1FP5|November
  22, 2015) at 03.05.2019 11:23:37
X-TNEFEvaluated: 1
X-Disclaimed: 295
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpjluLIzCtJLcpLzFFi42I5sILRRnc2x5kYgwc9qhbzj5xjdWD0+LxJ
        LoAxissmJTUnsyy1SN8ugSvjw7pdzAVXWCuOTD/O1sD4naWLkZNDQsBE4tj6/exdjFwcQgKb
        GSX+n9/KCpLgFRCUODnzCVgRm4C1xKXrR5hBbBEBOYmbX++ygdjMApYSLf2zmLoYOTiEBRIk
        rm1NBgmzCKhIvL53nQliTJDE3D8PmCDKtSWWLXzNDLEXaMy5Tii7g1ni1b9cCFtI4vTis1Bx
        QYk5nbsYJzDyzUJy0SwkoxYwMq1iFM9NzMwx0ksq0k0sLcnPTSzJzM/TS87P3cQICR2BHYy7
        32gfYhTgYFTi4Y1lPxMjxJpYVlyZe4hRgoNZSYQ37uOpGCHelMTKqtSi/Pii0pzU4kOM0hws
        SuK8UxwnxwgJpCeWpGanphakFsFkmTg4pRoYa0s6Yk87lk+3TAha9HH732AP25TnrXsjZybz
        n/rMqen3426czNGnh9NElP2n7rrScJxFq6wqp0Ngza+HggwmSaeu8R50y/f2Kpq57pK1YPuG
        /ul6KnG/493VnATd9vZZ6ryYsPJXb/7+Ej/D163VkUcib6W1xv1wChbNPc+jrfenfoKUEIsS
        S3FGoqEWc1FxIgD77isuGQIAAA==
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Hannes Schmelzer <hannes.schmelzer@br-automation.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.txt b/Docume=
ntation/devicetree/bindings/vendor-prefixes.txt
index 8162b0e..db9b25c 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.txt
+++ b/Documentation/devicetree/bindings/vendor-prefixes.txt
@@ -62,6 +62,7 @@ bosch	Bosch Sensortec GmbH
 boundary	Boundary Devices Inc.
 brcm	Broadcom Corporation
 buffalo	Buffalo, Inc.
+bur	B&R Industrial Automation GmbH
 bticino Bticino International
 calxeda	Calxeda
 capella	Capella Microsystems, Inc
--=20
2.7.4


