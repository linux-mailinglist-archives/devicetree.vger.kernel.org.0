Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2BB8414DB6
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 18:05:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236555AbhIVQGu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 12:06:50 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:43902
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236486AbhIVQGr (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 Sep 2021 12:06:47 -0400
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 53C90402DF
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 16:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632326716;
        bh=JVVwsOf7X0M/+qlOsF+1zUq32C7aF6kWbgyKr7RQdek=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=nVUxoFpfbuuLgTFN8kuR0Oov8fSnmZ7rlrt3T6czsQVdl9lXLBk3EanrBxO4uX5jb
         f68bd9H9BI/YfapBA9SJnYCncO0iK2bd9f/YkyaBaIfq7564JSe53Ln0GSEaZGjGhD
         MFDc8F50Zkz9qVCnHekftP9ONBDdT5aoox3DNoZBlRIjcvnpBK9vQXkqdZLy90NpAJ
         GjyMblBWH4yKdhVQ59k0OFajboi0Op8jTvZHswKZKqXl8q75kc4cBu1imungQH5bvS
         e4kXrYeXxuLrQbaguveFr0SJLzjO0d7r3BrDqFyqGIzR9mE93KpL2K9oK0iX21krqA
         LCWV3N5g78eUg==
Received: by mail-ed1-f72.google.com with SMTP id c7-20020a05640227c700b003d27f41f1d4so3567166ede.16
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 09:05:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JVVwsOf7X0M/+qlOsF+1zUq32C7aF6kWbgyKr7RQdek=;
        b=OzrtzjLNAeNoycxEfWTsER1JqT3nFHi5BhXKwyQtLLicM+iJ4HMkVr9S079cNwYkFe
         lr0SmHxrzPYkJz+HP06XBr8opKotwq26gh+l17J1D5cbyRFDDpGu1e4b/AX+PE9rZB2u
         QAQPFfgedjmK68d8/H+pu520NcJVUO1FYLcYBrDC5HrY8qXfkOG0dKOex7Ofjmx/BIhR
         26fXwqztQMlw2cW4an9yITCXIpkYKS7lhlmVgYrZ4O8AOn3X+Oyz/CmKHGBQtCHFbayA
         78jquHaEjY5BNr6XTqX7ayXwxH7BW+VgKpBceN7UThvAtu2yeFwm8xy79vq5N6xP1G0c
         NmlQ==
X-Gm-Message-State: AOAM532VuAiGHX3J8ffvkvKGytcPqKiwG1Ip/46InWamyXLS6sPTBlph
        u8fLbli6g2WmIBP33fgk0STZjSi9cvK5NOUbzvciHk3aj6ZnLr0BimT9ZQCxjHGi+MhQf5ir+Qq
        x78AI4O061ml/Q553Zi0f2djTw9esxUdXaSP+JDk=
X-Received: by 2002:a17:907:10c8:: with SMTP id rv8mr369814ejb.280.1632326715367;
        Wed, 22 Sep 2021 09:05:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwENuY/NrUiy6lL1ValNhLm4wX0hmrOfHOT0PzYAZC0DN+SkCollEpDyJxJAmQWua1juS10tw==
X-Received: by 2002:a17:907:10c8:: with SMTP id rv8mr369772ejb.280.1632326715181;
        Wed, 22 Sep 2021 09:05:15 -0700 (PDT)
Received: from localhost.localdomain (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id l7sm1511135edb.26.2021.09.22.09.05.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 09:05:14 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
        linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 2/2] powerpc/powermac: constify device_node in of_irq_parse_oldworld()
Date:   Wed, 22 Sep 2021 18:04:36 +0200
Message-Id: <20210922160436.130931-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210922160436.130931-1-krzysztof.kozlowski@canonical.com>
References: <20210922160436.130931-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The of_irq_parse_oldworld() does not modify passed device_node so make
it a pointer to const for safety.  Drop the extern while modifying the
line.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. Drop extern.
---
 arch/powerpc/platforms/powermac/pic.c | 2 +-
 include/linux/of_irq.h                | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/powerpc/platforms/powermac/pic.c b/arch/powerpc/platforms/powermac/pic.c
index 4921bccf0376..af5ca1f41bb1 100644
--- a/arch/powerpc/platforms/powermac/pic.c
+++ b/arch/powerpc/platforms/powermac/pic.c
@@ -384,7 +384,7 @@ static void __init pmac_pic_probe_oldstyle(void)
 #endif
 }
 
-int of_irq_parse_oldworld(struct device_node *device, int index,
+int of_irq_parse_oldworld(const struct device_node *device, int index,
 			struct of_phandle_args *out_irq)
 {
 	const u32 *ints = NULL;
diff --git a/include/linux/of_irq.h b/include/linux/of_irq.h
index aaf219bd0354..83fccd0c9bba 100644
--- a/include/linux/of_irq.h
+++ b/include/linux/of_irq.h
@@ -20,12 +20,12 @@ typedef int (*of_irq_init_cb_t)(struct device_node *, struct device_node *);
 #if defined(CONFIG_PPC32) && defined(CONFIG_PPC_PMAC)
 extern unsigned int of_irq_workarounds;
 extern struct device_node *of_irq_dflt_pic;
-extern int of_irq_parse_oldworld(struct device_node *device, int index,
-			       struct of_phandle_args *out_irq);
+int of_irq_parse_oldworld(const struct device_node *device, int index,
+			  struct of_phandle_args *out_irq);
 #else /* CONFIG_PPC32 && CONFIG_PPC_PMAC */
 #define of_irq_workarounds (0)
 #define of_irq_dflt_pic (NULL)
-static inline int of_irq_parse_oldworld(struct device_node *device, int index,
+static inline int of_irq_parse_oldworld(const struct device_node *device, int index,
 				      struct of_phandle_args *out_irq)
 {
 	return -EINVAL;
-- 
2.30.2

