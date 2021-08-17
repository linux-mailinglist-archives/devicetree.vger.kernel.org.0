Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D8883EEA12
	for <lists+devicetree@lfdr.de>; Tue, 17 Aug 2021 11:40:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236063AbhHQJkl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Aug 2021 05:40:41 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:44638
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235932AbhHQJkk (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 17 Aug 2021 05:40:40 -0400
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id D655F412B6
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 09:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629193202;
        bh=O8grwwL2ifdZnTVT+NKzhfJJRenRFaKSvMvVvpUkqxw=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=LY2VJqIbeVoh/lKViIxAuXUvye+Y7VhOvM1HeGB1J6LQSryix5syb14IM5EvNp814
         Bit+YERVKfZP4aRu087WY+Q9EYMhes4c8M2Z48Nbru1mmExa11tWCPKZA4Ggs+w7Gm
         cB9v641QxQbcJPw9AXzY3Y6I+2hrzHUqJejTs828rfH3jbx7EWG0OJWF5vTE7D8LZd
         mJT4R7i6qOukTd9DPvXAuS8Vtj8chDp8YpR/9/5ZpK8Uf2KCifgPZJb4c9aXdeZ0yJ
         140JyDsPQWZ/toMdEa8oOgVbDJSQRrpo5WK9i2UhpJoaB+ropzCjkZOtfeydxyC8US
         0DLPbONcg9Rxw==
Received: by mail-ej1-f71.google.com with SMTP id e1-20020a170906c001b02905b53c2f6542so5806872ejz.7
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 02:40:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=O8grwwL2ifdZnTVT+NKzhfJJRenRFaKSvMvVvpUkqxw=;
        b=hkoSqMFQ/SjdknEEqshGVcFgTVYtv3nVBmsh8BdYU1nycyEdElITlOo5jUhCZyXbc2
         uQR+K0sOGpttQvN71vz7pua2eUbk6GseTe9ARG5raEcIxSvFoStJEig7zvHrZinLhoE9
         dfFiYcyrWfMbUWuK+F8qeQzE23wEXfmwz14LftWUNEOmHVqdF7rD2r1Elm3uGWndhS5t
         L3cFAJ+OKciLKbQRPwq8emAO9g7jLAhAltGzdvegb/Yqd4g+1ks0HRbEaGYF+t4zwXSM
         ZjuXxhCaOMli9i2kuQEEnSMXghu1JOiW6KI2YERnQdBhxnw3/m/n9lM02TheYnR8nuSr
         +AmA==
X-Gm-Message-State: AOAM532tqkb0YcowbTBPr/Jt/JIdvjvRwK5uqxmSVkWeuuyZbA+kACcF
        E6FYnkLVWyXWPZbMl3NqebKMy89S47OGKpVZ6NwzsoQXq0ap1kGYpgq4EKiy0eaB/rG55RChKpa
        n3xFXsc7kM+c00m5cq4kwej7JJHXqMxktTYCjgwU=
X-Received: by 2002:aa7:cace:: with SMTP id l14mr3209273edt.14.1629193201826;
        Tue, 17 Aug 2021 02:40:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxPaN9/+Xh9sugyxx4rCADXIJl5PW2HMz+txn6kA9UaH5J9NRz2BaR5d40ICG4bM9PnLwqk4A==
X-Received: by 2002:aa7:cace:: with SMTP id l14mr3209265edt.14.1629193201687;
        Tue, 17 Aug 2021 02:40:01 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id sa21sm515667ejb.108.2021.08.17.02.40.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 02:40:01 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Jan Luebbe <jlu@pengutronix.de>, Borislav Petkov <bp@alien8.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        James Morse <james.morse@arm.com>,
        Robert Richter <rric@kernel.org>, linux-edac@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 2/2] MAINTAINERS: EDAC/armada_xp: include dt-bindings
Date:   Tue, 17 Aug 2021 11:38:07 +0200
Message-Id: <20210817093807.59531-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210817093807.59531-1-krzysztof.kozlowski@canonical.com>
References: <20210817093807.59531-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Include dt-bindings for Marvell Armada XP SDRAM and L2 cache ECC in the
EDAC-ARMADA entry.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index be8e4af8ed64..ec75414db0ce 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6574,6 +6574,7 @@ EDAC-ARMADA
 M:	Jan Luebbe <jlu@pengutronix.de>
 L:	linux-edac@vger.kernel.org
 S:	Maintained
+F:	Documentation/devicetree/bindings/memory-controllers/marvell,mvebu-sdram-controller.yaml
 F:	drivers/edac/armada_xp_*
 
 EDAC-AST2500
-- 
2.30.2

