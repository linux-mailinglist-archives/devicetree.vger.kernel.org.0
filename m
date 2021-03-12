Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0744338B0E
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 12:08:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233751AbhCLLIQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 06:08:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233778AbhCLLIG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 06:08:06 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C277AC061761
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:08:05 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id v15so4574831wrx.4
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=D47E9cXI25ZmpKM2KpzUfb+svP/iduBPVqgRHs8FW7k=;
        b=GeWMOCvXnVuoHuazmNjC2e7st0AiUkA8rkKG/ooTPLUla12O0Th3XVVJC2pd5EYa/c
         hhY7p53QKr9DOiI+k7gX/wgGPFAL7JvhhMfQaM2GJZrhiMVmXfNqXErr/r5WEs29gs73
         Q2IetHszH8t/JJUyfC6NcSDlIp6zpUCx7RS0sBm0mXsNxBaR5Vzc5Mqs89m97vAuxPfe
         tD3t90EbkUFFjlrRyiR3UCIA12+/bQTxm/Fzd1o6QPmKrd2/BMDlQ0V+KT+0LLaV0OVb
         s/O0kqiyyfz37YiL1xhldpez7c75y+hHdjEa+e2KQydYJAdr+VwW64dvfiMY4WLnnHl5
         q9QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=D47E9cXI25ZmpKM2KpzUfb+svP/iduBPVqgRHs8FW7k=;
        b=N1jecOeoO9j900BDkukUuVL5WkIJJLrNmeVIQi7gQ0NchhUniREaq4PrMVq/edW93g
         JnP5BdFG4k/2KPCaFOcndGBjO/uGwkBMynCrZxwwloSQLJbZPil3xOl/Drlp/FHdlx2R
         IzheBH8Q/7Iy3BESzvFNpemaIFBsTxY2QZV2ChkI+MJoKT2HpNn4FxR5PVvjDTWFbmQp
         E00npUNhWWth6pPzldqO+XYUUDgUZSsNvAO7d9Ux2BHkdDrXzjZ0MYc02bmQmCC5KsRm
         cOog6K8AhJeaYiY/v22E4CgDFLd51s1nC4Y7w0D+shE3BCoPZUwNiwteRqpV1UjqpGfu
         s7kg==
X-Gm-Message-State: AOAM531VMVof83lnUoQzhOCDQX8Kwk6wdDibgfgIJRe5qIoowwC501ya
        lhF2T4wVHXWycwEwxoQMlohhiA==
X-Google-Smtp-Source: ABdhPJzR+ubQqgO/7zUtFpaMYSrr5KAtBe5UDY3cd0/ZIsn9FSvWGG2LIsIjcBFxTbHUSK6ecpw0Qg==
X-Received: by 2002:a5d:534b:: with SMTP id t11mr13156836wrv.186.1615547284507;
        Fri, 12 Mar 2021 03:08:04 -0800 (PST)
Received: from dell.default ([91.110.221.204])
        by smtp.gmail.com with ESMTPSA id f126sm1813003wmf.17.2021.03.12.03.08.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 03:08:04 -0800 (PST)
From:   Lee Jones <lee.jones@linaro.org>
To:     lee.jones@linaro.org
Cc:     linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Kees Cook <keescook@chromium.org>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>, benh@kernel.crashing.org,
        devicetree@vger.kernel.org
Subject: [PATCH 03/10] of: platform: Demote kernel-doc abuse
Date:   Fri, 12 Mar 2021 11:07:51 +0000
Message-Id: <20210312110758.2220959-4-lee.jones@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210312110758.2220959-1-lee.jones@linaro.org>
References: <20210312110758.2220959-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes the following W=1 kernel build warning(s):

 drivers/of/platform.c:298: warning: Function parameter or member 'lookup' not described in 'of_dev_lookup'
 drivers/of/platform.c:298: warning: Function parameter or member 'np' not described in 'of_dev_lookup'

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Anton Vorontsov <anton@enomsg.org>
Cc: Colin Cross <ccross@android.com>
Cc: Tony Luck <tony.luck@intel.com>
Cc: benh@kernel.crashing.org
Cc: devicetree@vger.kernel.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/of/platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 0da86209ddaab..0ed46d301431b 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -290,7 +290,7 @@ static struct amba_device *of_amba_device_create(struct device_node *node,
 }
 #endif /* CONFIG_ARM_AMBA */
 
-/**
+/*
  * of_dev_lookup() - Given a device node, lookup the preferred Linux name
  */
 static const struct of_dev_auxdata *of_dev_lookup(const struct of_dev_auxdata *lookup,
-- 
2.27.0

