Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B14D3403A3
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 11:41:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230255AbhCRKlG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 06:41:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230248AbhCRKkx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 06:40:53 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEAE3C061765
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 03:40:52 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id k128so805146wmk.4
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 03:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YeqXEpROOp+iMp8r4X/XCNvaZ1Q9W0JDqwahteeA6AI=;
        b=MzKuC6YnZurZf0L4f2hzTY8fKELqD9l8PjwaxpCOd9JxaDHWDQE/qpt74TPeOPX2Zn
         Xk//2XeHA0jI2tcWPiftkGf/8iIiPCQCkcmy5JUEbThY6pFjrUkd0nLGTdeO0pH0aSNF
         znJ6A7t8Z84suozRc6yHxZDiDMqnQNTG4kFlsaustDOuSqoNQ26psemHCBK4oqY8lhEL
         D6eU6CwBtD8pLRPlV2P15XgfgM5qVNHyLs67wDnvRwkyEQSA8WgnFFmdtwwD1qYaSnUJ
         rKP5KPZVkjN/S415+Bp8p+KNQb/txxip2PgRXmjni5DCv8oGfqZFV95yuUAGCBPqbZPS
         /z7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YeqXEpROOp+iMp8r4X/XCNvaZ1Q9W0JDqwahteeA6AI=;
        b=VwPBa1eSdsftvUabkuvrWZGClmyyamN7YBEqkk+W7qiixmjfA8P4kUI4wKrm+BJ+2O
         9HStzXvuhFAHCrXvzYNodpf0+nIGsBxUmqgtmo7818G6sSnd9o4oWJuWxYVoJ5FnOIex
         2oIQ+9Qj2VnfgRO0/o0u/IFgB5eswkGED4EN83KGrSghy9Y9yEmV9cBMHuHdVmwUj6r7
         mLAnLtrxvs3nFXSnZBjsx4c0AAwsDN4c+gizHOCQSApqsTtEzEo43JMyfnnGFWE++54t
         elVahugfXzH3cvh52KZdOV+r7Aw7LumLsCp93JJGR7Mk+ydUlYR2h4m1jlxLcODkgZEP
         Holg==
X-Gm-Message-State: AOAM531mxxVHLMWOuIEGFaKB5o7zyQ6XBmb8IWXpqf514H+unqQazlRY
        9msblA3ju2qzVx+2RWYmsMo1tA==
X-Google-Smtp-Source: ABdhPJzW1MNHQw5/b2G8K0upazSv+a5i+rQsabgUnXUoFC/kZAwv2SHREiGWb7z58KsAoeqZV2TygA==
X-Received: by 2002:a1c:bac2:: with SMTP id k185mr3044552wmf.148.1616064051464;
        Thu, 18 Mar 2021 03:40:51 -0700 (PDT)
Received: from dell.default ([91.110.221.194])
        by smtp.gmail.com with ESMTPSA id z1sm2426033wru.95.2021.03.18.03.40.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 03:40:51 -0700 (PDT)
From:   Lee Jones <lee.jones@linaro.org>
To:     lee.jones@linaro.org
Cc:     linux-kernel@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 08/10] of: of_net: Provide function name and param description
Date:   Thu, 18 Mar 2021 10:40:34 +0000
Message-Id: <20210318104036.3175910-9-lee.jones@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210318104036.3175910-1-lee.jones@linaro.org>
References: <20210318104036.3175910-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes the following W=1 kernel build warning(s):

 drivers/of/of_net.c:104: warning: Function parameter or member 'np' not described in 'of_get_mac_address'
 drivers/of/of_net.c:104: warning: expecting prototype for mac(). Prototype was for of_get_mac_address() instead

Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: netdev@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/of/of_net.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
index 6e411821583e4..bc0a27de69d4c 100644
--- a/drivers/of/of_net.c
+++ b/drivers/of/of_net.c
@@ -79,6 +79,9 @@ static const void *of_get_mac_addr_nvmem(struct device_node *np)
 }
 
 /**
+ * of_get_mac_address()
+ * @np:		Caller's Device Node
+ *
  * Search the device tree for the best MAC address to use.  'mac-address' is
  * checked first, because that is supposed to contain to "most recent" MAC
  * address. If that isn't set, then 'local-mac-address' is checked next,
-- 
2.27.0

