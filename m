Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0AA134039C
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 11:41:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230185AbhCRKlE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 06:41:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230228AbhCRKks (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 06:40:48 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4852DC06174A
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 03:40:48 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id 61so4940734wrm.12
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 03:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=D47E9cXI25ZmpKM2KpzUfb+svP/iduBPVqgRHs8FW7k=;
        b=GuBzzHwNpGCMJsxMH0vBYUieY3F/wvAkaVX80KXINM+vaKEoLZmDYmeJSPOWRQP9HM
         hM03aKE5RZlY82CF2l5i85NmKPGjOE6gFdSg4k5ue910yMkF1o/lU8GgxcfC7xBpPd+4
         4oCxFRCEDVyrx3RDhO+qcncsO/JSZL+BvKPKLJyG6MxodvsKHgpb+TvsbFj6Gj6LXiRT
         L9YpCaXCptAYJz8aDsTbBi+KnvYZ0lfzbe5XqjCiAF6vcx6QzRRqoNtZ1fkqSRjgTEvl
         BaBERZ9mJcEgQ2Gy5TWPLIUeLXoSFFImWDdmgKcsFkeEXhCH3tXlnve/f9RO/vM24iQ3
         j0wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=D47E9cXI25ZmpKM2KpzUfb+svP/iduBPVqgRHs8FW7k=;
        b=gULLDHsxtOw5fjdguDkxruyxCWOvU9IEONRPvcwt7oyHuQGqFLhSfSv4J6VobDtaWy
         at8YEylZPVgNO7ZKTZx0/RZ3IgcEwAQBKkyjz81khuwi+Oj/xGAtXGZY9AmvQl0xM1on
         BrQ6YduVZeOcQkz5zv97XxK1W3apYg6i1S/Lvx43ul1TBvhHpfLwvnjnnKqbOMO5g0Gb
         lFfdWP1QW2bgaqP+u84u0CxXXPz8x9OPs44DNVOwyCytHYWrSXA9tzbR48yGFwkhRBCl
         eIooRDasZF/7UyL2WJmENnIhYLp1Mc7L6l4uJhyYSh3VUNR8C3awVW2PVrw/DOv2tchq
         Xrfg==
X-Gm-Message-State: AOAM5310W+kjNJh5OhCsL49v71iP1+aoQFsNTC/4cNBs2F3zV1XIBJUP
        vJ+5KRzrFQmCOzRRcBJY9n4BKA==
X-Google-Smtp-Source: ABdhPJwVNci206Jnw2L2wqrutJvXe9n0Oeaa4TKVFK/3tRWitjZGQk3GPzIKJgENvQ/7dixs5d2p6A==
X-Received: by 2002:a5d:640b:: with SMTP id z11mr8689752wru.327.1616064047033;
        Thu, 18 Mar 2021 03:40:47 -0700 (PDT)
Received: from dell.default ([91.110.221.194])
        by smtp.gmail.com with ESMTPSA id z1sm2426033wru.95.2021.03.18.03.40.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 03:40:46 -0700 (PDT)
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
Date:   Thu, 18 Mar 2021 10:40:29 +0000
Message-Id: <20210318104036.3175910-4-lee.jones@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210318104036.3175910-1-lee.jones@linaro.org>
References: <20210318104036.3175910-1-lee.jones@linaro.org>
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

