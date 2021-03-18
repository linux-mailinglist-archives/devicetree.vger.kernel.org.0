Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9AB33403A1
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 11:41:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230220AbhCRKlG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 06:41:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230250AbhCRKkx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 06:40:53 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C687C061764
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 03:40:53 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id z2so4948991wrl.5
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 03:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0qmJtn2ROcq97cCAA/GgmHQVBHx/QLh0PdVV8I8LApw=;
        b=iyszRt+qnglpKenDT7tSKvwnF7XSjKMucfcncfvxvC0oJVpSZ38UxRbu4Oyh7jfuGo
         2Ii2HBDIKTLsU8IU7MletnbtM+gSuYYwWmuG8t6qiCThOPDEvezjJ78Yvfdd76115zsq
         e8zLfOaOyAeSaggFcy/kh44hc3Pjij6gcaAYlz62Gv4xUuvo3OFZ7my+BsspnlRUBiB7
         F4yrRl2Kwe5ir62MBY7TLaXaosGX6p6S/bzsfDzh0XQsZzEQrE7gHCKpdZ+rpS0luB+6
         5yBFhglOCsQ2u8nrKVyUcfAOQf5ShDa5zrjeZPcOKb0ekFjJIYl+Lqcf1ebjhHEKaJmu
         PADg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0qmJtn2ROcq97cCAA/GgmHQVBHx/QLh0PdVV8I8LApw=;
        b=Xd/kkympkmZ5+Oh2Ev82QglxrND4WsjCktOeYVf5b/rOWojddEN2zW+oOdmobVSFhx
         1hA7GmqRoeOpWIe+xLJOeXyyQB7vlJBgYLV2NtjcWcO8b+U28YvrJLGnVAHnWYKQWdab
         PKdV/p7FotR1/36IODNbYs2U44y2k1RcI12KbDKx3lbUSeeXFl8yWtpJENsHeQxlBZBz
         hyoEtUgpiZUPj3S1yJvruYdsg8sxVkXG9ed3kTDg+6xuM/y0Mm7YlATsvN/5qWavvciO
         8w8bSeFmQcJslCeDlJ7WetUxgdHzpd5NdqjkZ8z2Fvu3Kx8zyTMeItJc+tQ7CT4r6/Q2
         y+vw==
X-Gm-Message-State: AOAM533COqErBaPOOPWICIL8T9RJl3ac19KTysiXdQivul/AyUY/zICQ
        eR5iU91o1Th4Qy5PzwQl0oeCmw==
X-Google-Smtp-Source: ABdhPJwMp9iRDNvao+XEbdBR8svEJrBe3NcG5BTs9NahQPQEQJ9wTZyLfbM2gl07kazSUr/wWXs6+Q==
X-Received: by 2002:adf:fb0e:: with SMTP id c14mr4143667wrr.140.1616064052384;
        Thu, 18 Mar 2021 03:40:52 -0700 (PDT)
Received: from dell.default ([91.110.221.194])
        by smtp.gmail.com with ESMTPSA id z1sm2426033wru.95.2021.03.18.03.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 03:40:51 -0700 (PDT)
From:   Lee Jones <lee.jones@linaro.org>
To:     lee.jones@linaro.org
Cc:     linux-kernel@vger.kernel.org,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 09/10] of: overlay: Fix function name disparity
Date:   Thu, 18 Mar 2021 10:40:35 +0000
Message-Id: <20210318104036.3175910-10-lee.jones@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210318104036.3175910-1-lee.jones@linaro.org>
References: <20210318104036.3175910-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes the following W=1 kernel build warning(s):

 drivers/of/overlay.c:147: warning: expecting prototype for of_overlay_notifier_register(). Prototype was for of_overlay_notifier_unregister() instead

Cc: Pantelis Antoniou <pantelis.antoniou@konsulko.com>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/of/overlay.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 50bbe0edf5380..1c867a5e4c7c2 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -140,7 +140,7 @@ int of_overlay_notifier_register(struct notifier_block *nb)
 EXPORT_SYMBOL_GPL(of_overlay_notifier_register);
 
 /**
- * of_overlay_notifier_register() - Unregister notifier for overlay operations
+ * of_overlay_notifier_unregister() - Unregister notifier for overlay operations
  * @nb:		Notifier block to unregister
  */
 int of_overlay_notifier_unregister(struct notifier_block *nb)
-- 
2.27.0

