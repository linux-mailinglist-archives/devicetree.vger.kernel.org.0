Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E151838C882
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 15:41:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236100AbhEUNma (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 09:42:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236361AbhEUNm0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 09:42:26 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F72AC06138A
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 06:41:03 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id l18-20020a1c79120000b0290181c444b2d0so616252wme.5
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 06:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=IqnQwk+rzq8B5GCCfhlsvjspQ3NXPy3MftR2FeNfKC8=;
        b=z8jWmpn38ibayFo63Kby2WaNoWSM/qz0w50403AYtWu/IBs+VX3HJLuEvxrNM9weXR
         HQY+SqBtULKHjY7qWMFHjmSD/Z99jQaG8JjSmZl2PK84Y4m6lwTSg6ubUre4STc5fcEq
         iQNBq1VQoYuPfcNnDPgeB195yiM504N+kcMbjhnWyok+Lg62dQ2bV/fmZuAK75Sx72+f
         vir+sy+ZYfDqgRxzte5b5UGr/D1aGasXx15vN3i+y0JBKDeprU+R+ZoF1IZbMx9OfR/k
         +0PgdllHBphufXPXoCUArN/CzU1jQOVAqEaPXCxzjrfZgTtblXJ0KgPf07TF3JAhILqq
         Iqng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=IqnQwk+rzq8B5GCCfhlsvjspQ3NXPy3MftR2FeNfKC8=;
        b=ZncdnwAndytEou6MdqZiyz+DlbRGlO3IyHmW5sYqD+x1vwiosvj9dKmOH14tPozeKL
         msWfMNoDWFs5LtecgN7M/z2vava5wM0PoiEeCF78olN2PWKX2r+/bw/cahgshOCUqgFl
         1wkMR+rtgs8VtndtAYWI8MNrnbOJbJZMqnc4jCvlX9OF7XqdyFCut1EpTPSeUeKyrd+8
         lINiKqGABkkFLQnMSASCE4YtARd/gMNLZYsPqOMBlTIXKkMhNHOy0Yw6VBy1QBmOnhkk
         Ljx6KNQDNOm2zn3xPCTD/JobyQ4vxn16+S0twuycNfKPOGSvJemqulYHRm8EzDEDCMhh
         wT8Q==
X-Gm-Message-State: AOAM533ufOW5+PxTPyomnWUV2/mlKGKQIQ849yRm59chjr3Bx5Pud7rF
        pI5vMfVjS86zQTrViRM97DXcuQ==
X-Google-Smtp-Source: ABdhPJzIg08D6kbfQhjH0HA0OR71RkJFpI8omX5oAIN8Zt7uW32KpgKwtjG73aezbrTy37gLyYE70w==
X-Received: by 2002:a05:600c:218b:: with SMTP id e11mr9541462wme.12.1621604461758;
        Fri, 21 May 2021 06:41:01 -0700 (PDT)
Received: from lmecxl0524.home (2a01cb058b850800205e07f10870202e.ipv6.abo.wanadoo.fr. [2a01:cb05:8b85:800:205e:7f1:870:202e])
        by smtp.gmail.com with ESMTPSA id v3sm2161372wrr.19.2021.05.21.06.41.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 06:41:01 -0700 (PDT)
From:   Etienne Carriere <etienne.carriere@linaro.org>
To:     linux-kernel@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Sudeep Holla <sudeep.holla@arm.com>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v2 2/4] dt-bindings: arm: scmi property mboxes is not mandatory
Date:   Fri, 21 May 2021 15:40:52 +0200
Message-Id: <20210521134055.24271-2-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210521134055.24271-1-etienne.carriere@linaro.org>
References: <20210521134055.24271-1-etienne.carriere@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since "arm,scmi-smc" compatible support, mboxes property is not mandated.
This change fixes the DT bindings description accordingly.

Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
Changes since v1:
 - New patch is the series. Addresses mboxes propery description.
---
 Documentation/devicetree/bindings/arm/arm,scmi.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documentation/devicetree/bindings/arm/arm,scmi.txt
index 667d58e0a659..856d041b397e 100644
--- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
+++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
@@ -15,10 +15,10 @@ Required properties:
 The scmi node with the following properties shall be under the /firmware/ node.
 
 - compatible : shall be "arm,scmi" or "arm,scmi-smc" for smc/hvc transports
-- mboxes: List of phandle and mailbox channel specifiers. It should contain
-	  exactly one or two mailboxes, one for transmitting messages("tx")
-	  and another optional for receiving the notifications("rx") if
-	  supported.
+- mboxes: List of phandle and mailbox channel specifiers. When used, it should
+	  contain exactly one or two mailboxes, one for transmitting messages
+	  ("tx") and another optional for receiving the notifications("rx") if
+	  supported. Mandated by compatible "arm,scmi".
 - shmem : List of phandle pointing to the shared memory(SHM) area as per
 	  generic mailbox client binding.
 - #address-cells : should be '1' if the device has sub-nodes, maps to
-- 
2.17.1

