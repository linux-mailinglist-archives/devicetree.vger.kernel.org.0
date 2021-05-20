Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 782CD389AE1
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 03:27:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230138AbhETB2z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 21:28:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbhETB2y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 21:28:54 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BD25C061574
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 18:27:34 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id t21so8088090plo.2
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 18:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=h8zbDPtjEFYe4IZe40uRUjWet5D8r69uLa2LANCyCQ4=;
        b=R9Sa2EQBo9LOyM4TgaE/a321GPDFV/3AD8aHrCaNDq07x/hXckypwEDS/AeaQqIIaS
         t9WGj9hqqRFjOZNtUKMkTNiM3JcCJnoseUcHWHNdapCUoUEOmpyJ79w7F9/HmoQC1SdN
         XsrL85ywdKokNlbqZnYgk/0DhCpp4B5Xu2wjw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=h8zbDPtjEFYe4IZe40uRUjWet5D8r69uLa2LANCyCQ4=;
        b=pXckz26xwRh28vHaS+4tyOGBv6KxyxDB08XQwLftqqSu47Ak6kxdJgIqgnWObX8Sxg
         nf3P58N6kZ/6IL0CMdXuGmaojuIMoPGnBNQDD8J48JGJeCkn9t5OV8qbc4zVVTvUDgzJ
         abF2o5Zq0b43oa84WnQaR6wgh0reTkxWJD/q2cCat6opO+SVziupSvMFDd5pyhCP7cAi
         N+xDQyq8HXT6rh2NtZNx1Qeuax3CNFyHkUAuTxgoAPZxSegkAsryErxp111+Zml3WM4r
         yQCFIssXfqbCEhKlCD/erlF2E1esQl+gbrGaJXRUoj79JQ43DkQnLUgob2938i3ms7mv
         x6nw==
X-Gm-Message-State: AOAM532MP9dfszvxmBfy4LQDjKjhPNl8gYbXJobT58JygO1IWIJldMAM
        OT991g4wmN0mE0TZ3N/D7A+UzA==
X-Google-Smtp-Source: ABdhPJx+C2Q7MP+xndl6FVKyW17hIVQJYtQxRvpcxBjwSqWpo3aitFktylU+kyryaG5vXA0vBCqcDQ==
X-Received: by 2002:a17:90a:4404:: with SMTP id s4mr2395626pjg.218.1621474053582;
        Wed, 19 May 2021 18:27:33 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:201:200b:db75:4e6c:8b96])
        by smtp.gmail.com with ESMTPSA id k10sm466829pfu.175.2021.05.19.18.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 18:27:32 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Rob Herring <robh@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Quentin Perret <qperret@google.com>
Subject: [PATCH] of/fdt: Don't worry about non-memory region overlap for no-map
Date:   Wed, 19 May 2021 18:27:31 -0700
Message-Id: <20210520012731.3731314-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.31.1.751.gd2f1c929bd-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In commit 8a5a75e5e9e5 ("of/fdt: Make sure no-map does not remove
already reserved regions") we returned -EBUSY when trying to mark
regions as no-map when they're in the reserved memory node. This if
condition will still trigger though if the DT has a /memreserve/ that
completely subsumes the no-map memory carveouts in the reserved memory
node. Let's only consider this to be a problem if we're trying to mark a
region as no-map and it is actually memory. If it isn't memory,
presumably it was removed from the memory map via /memreserve/ and thus
can't be mapped anyway.

This silences a warning seen at boot for me on sc7180-trogdor.dtsi
boards that have /memreserve/ coming from the bootloader and those
reserved regions overlap with the carveouts that we want to use in DT
for other purposes like communicating with remote processors.

Cc: Douglas Anderson <dianders@chromium.org>
Cc: Nicolas Boichat <drinkcat@chromium.org>
Cc: Quentin Perret <qperret@google.com>
Fixes: 8a5a75e5e9e5 ("of/fdt: Make sure no-map does not remove already reserved regions")
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/of/fdt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index ba17a80b8c79..be13b4b6c2d8 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -1161,7 +1161,8 @@ int __init __weak early_init_dt_reserve_memory_arch(phys_addr_t base,
 		 * If the memory is already reserved (by another region), we
 		 * should not allow it to be marked nomap.
 		 */
-		if (memblock_is_region_reserved(base, size))
+		if (memblock_is_region_memory(base, size) &&
+		    memblock_is_region_reserved(base, size))
 			return -EBUSY;
 
 		return memblock_mark_nomap(base, size);

base-commit: 6efb943b8616ec53a5e444193dccf1af9ad627b5
-- 
https://chromeos.dev

