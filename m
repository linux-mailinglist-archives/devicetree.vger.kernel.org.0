Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C854F3263E1
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 15:15:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229991AbhBZOPT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 09:15:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229999AbhBZOO6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 09:14:58 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 733BFC061788
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 06:14:17 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id w1so15073722ejf.11
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 06:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LUu93rGA1cHh0fyqCMn68WZCCrDnAzCezR4V6cd4F40=;
        b=af+gg5BZ4ZAapi4Qfsk9u7x2RNMSU0TV+BRUD5V4dMNR83ZAHBB/2nGj6S0A4j2K+0
         s7og7GkPbfioM1qaDCoKg0W8is2b0pJDWy5qXZsU8B/jbzYD3urYQL4odSEOMEVVH7Rc
         qeIxewcBW6HuJ75ZEUNeRzqU2cMv9wYlDkTkY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LUu93rGA1cHh0fyqCMn68WZCCrDnAzCezR4V6cd4F40=;
        b=StvAC96UAhCRotsYKzmDInbebdoQ3fzB9OlL4MczxeVLJbTaWv2TwbYwcXsBXUok0A
         oTOoAspEvogmgzdUCjlDE4dxHPBaTg/89PJ6sFtzB0P5k4/LAV2jEIrvYYSMoF1f5G4R
         ZZmig/hSXk6XB4cxv3hXswubY27KWaJxy52fk0QJZn5tjDJ4fp6dMwYrbEn2ueo2zaTG
         mIAz8BMDcPpZ4U3MK5g1fjoYPoRiJ9do24tDdmZmMjVND/kUcRJf2pnHHvKugnCXJUfR
         m/nsgVawN2QZXg05hDV4hcsQWxrkS4Tlc/cwznjQ74tet31OG7Avzy/31e9O2yUweoUA
         7r5g==
X-Gm-Message-State: AOAM531ixxsS8Ghw2x2pkGf/YayScH85RtYiAq17mnoU2reJHQY7V2Ls
        vQUVarMGVD90sr+CIlgJGkoDYQ==
X-Google-Smtp-Source: ABdhPJzabGx6JCofY0z/Cp5d89cR8H1+SNGOEkjVaC9c8nTuduiSccUfn/vsu5zSdaHECDAwJmIUCg==
X-Received: by 2002:a17:906:8147:: with SMTP id z7mr3451969ejw.436.1614348856083;
        Fri, 26 Feb 2021 06:14:16 -0800 (PST)
Received: from prevas-ravi.prevas.se ([80.208.71.141])
        by smtp.gmail.com with ESMTPSA id g3sm5316838ejz.91.2021.02.26.06.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Feb 2021 06:14:15 -0800 (PST)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Arnd Bergmann <arnd@arndb.de>, linux-clk@vger.kernel.org,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: [PATCH 1/2] dt-bindings: misc: add binding for generic ripple counter
Date:   Fri, 26 Feb 2021 15:14:10 +0100
Message-Id: <20210226141411.2517368-2-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210226141411.2517368-1-linux@rasmusvillemoes.dk>
References: <20210226141411.2517368-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While a ripple counter can not usually be interfaced with (directly)
from software, it may still be a crucial component in a board
layout. To prevent its input clock from being disabled by the clock
core because it apparently has no consumer, one needs to be able to
represent that consumer in DT.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 Documentation/devicetree/bindings/misc/ripple-ctr.txt | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/ripple-ctr.txt

diff --git a/Documentation/devicetree/bindings/misc/ripple-ctr.txt b/Documentation/devicetree/bindings/misc/ripple-ctr.txt
new file mode 100644
index 000000000000..1497d3a237a7
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/ripple-ctr.txt
@@ -0,0 +1,8 @@
+Generic ripple counter
+
+A ripple counter is a simple component that can for example be used to
+delay propagation of a signal.
+
+Required properties:
+- compatible: Must be "linux,ripple-ctr".
+- clocks: Input clock specifier. Refer to common clock bindings.
-- 
2.29.2

