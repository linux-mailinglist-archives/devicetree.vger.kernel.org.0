Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0530416F30
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 11:41:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245224AbhIXJm4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 05:42:56 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:20234 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244969AbhIXJm4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 Sep 2021 05:42:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1632476483;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=nuPA8aTN1FauWq8dfAHiup4AH18RZTedYgNACLOuxkI=;
        b=ERRt9hJwLqho+Hu6NhHrhuiu0YH7SGZdiQyoKnOU/TN+I3uKM0bDmeQJoNntXhGHfUpiW/
        NKBDsoiqWg2VxQoHc42gmK565npc5NUwwdKapXqkmOFq6vUMmOgzUml9jboQ7QQS/qoWva
        m8x++DfUv06wba3Sz4RGi9AX2sDs3QY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-64-ZVF3KSQLM7KIjl5hX73R8g-1; Fri, 24 Sep 2021 05:41:21 -0400
X-MC-Unique: ZVF3KSQLM7KIjl5hX73R8g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5260080D686;
        Fri, 24 Sep 2021 09:41:08 +0000 (UTC)
Received: from x1.localdomain.com (unknown [10.39.194.63])
        by smtp.corp.redhat.com (Postfix) with ESMTP id 1DDF919700;
        Fri, 24 Sep 2021 09:41:06 +0000 (UTC)
From:   Hans de Goede <hdegoede@redhat.com>
To:     Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>
Cc:     Hans de Goede <hdegoede@redhat.com>, devicetree@vger.kernel.org,
        Archie Pusaka <apusaka@google.com>
Subject: [PATCH] Bluetooth: hci_h5: directly return hci_uart_register_device() ret-val
Date:   Fri, 24 Sep 2021 11:41:06 +0200
Message-Id: <20210924094106.32505-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since the hci_uart_register_device() call is the last thing we do in
h5_serdev_probe() we can simply directly return its return-value.

Cc: Archie Pusaka <apusaka@google.com>
Suggested-by: Archie Pusaka <apusaka@google.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/bluetooth/hci_h5.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/bluetooth/hci_h5.c b/drivers/bluetooth/hci_h5.c
index 59b712742d33..3e067c7cabff 100644
--- a/drivers/bluetooth/hci_h5.c
+++ b/drivers/bluetooth/hci_h5.c
@@ -814,7 +814,6 @@ static int h5_serdev_probe(struct serdev_device *serdev)
 	struct device *dev = &serdev->dev;
 	struct h5 *h5;
 	const struct h5_device_data *data;
-	int err;
 
 	h5 = devm_kzalloc(dev, sizeof(*h5), GFP_KERNEL);
 	if (!h5)
@@ -858,11 +857,7 @@ static int h5_serdev_probe(struct serdev_device *serdev)
 	if (IS_ERR(h5->device_wake_gpio))
 		return PTR_ERR(h5->device_wake_gpio);
 
-	err = hci_uart_register_device(&h5->serdev_hu, &h5p);
-	if (err)
-		return err;
-
-	return 0;
+	return hci_uart_register_device(&h5->serdev_hu, &h5p);
 }
 
 static void h5_serdev_remove(struct serdev_device *serdev)
-- 
2.31.1

