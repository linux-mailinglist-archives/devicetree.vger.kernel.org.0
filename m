Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 940A5467D65
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 19:35:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382717AbhLCSjF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 13:39:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382732AbhLCSip (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 13:38:45 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07E66C0611F7
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 10:35:21 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id z8so7829771ljz.9
        for <devicetree@vger.kernel.org>; Fri, 03 Dec 2021 10:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aQnrspX0S8NnC4mxCmKPdkJ6I75373YtJdts4KCHDH8=;
        b=qYK9cCqqjz4Qv85bmedDRlhwPofmfrLO949h2gjaDftYpZEPsucz4ommT5hBAk6+9z
         P/55ZUobXmg6hhr0wiBP9Lv6hu9/eS5TCPMJdkUdVcuvn8ta0CTR+betnF8V5TlFu2id
         UjKfuqV7P7yEJgF3hYBxAsSHUeY+fJRuiUqu/NLbjk8Kj3D4HqARTAYnCz2+PHGnaKgH
         0ATTA5TiEVmka2z0SjtA1AorX+BpJVRgs/ii6vwd2Magx4EsF5aoRpskY3nSYEjcK0qq
         Q+W3Bu5xLPXwMBGIawjEPMfMU+pLWHCl3JhiSASuGe9A9ccrlF7Ujg2I4SL1Ss5KEquV
         AO5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aQnrspX0S8NnC4mxCmKPdkJ6I75373YtJdts4KCHDH8=;
        b=M7dQ0cJiCV4jwjSo5v7EZxm876n+jj4cV9KfA02sSOqdvVaK2RI706KobFm2DSrF69
         /LFe/n7/oOxPnnNYh2OZoADSuvhkUFfg1kE6vkXRd3vppmz1KF5heJAdTxxA5FKgLfh8
         zjz/DM6+oUqRDA564U631fLagDWiB+k9QvQ74cUU6qkEepDa/wC6IeUwCH7x6kzJMyH7
         zBhP9aZpdN+yAmL3OH+oKQcqKRB36gt8UxoWFkeWuZAp7HyjnX5G25lqufhykHoncebg
         mcoYaVrCDeIZrzZ/01QYlJmG3Jy81EdB9l1LQ3enjc1ytvhcJghu3xtx5/i55lepIGD/
         TlQw==
X-Gm-Message-State: AOAM5332pn8x9pcoPjRxWcLVhA5HOxJldtIOKcGTjeulRgR/HH/IJgDm
        atL0CAYIidiCAmkYPuzOFqOhAA==
X-Google-Smtp-Source: ABdhPJwj4GY/waMrbwCZWa+p5cuBxz4LdUMdBeiNnkEryxqskHF71WC2CXIypDg2pYfKf9/x2sxgfw==
X-Received: by 2002:a2e:9787:: with SMTP id y7mr19557627lji.228.1638556519298;
        Fri, 03 Dec 2021 10:35:19 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id f13sm462261lfc.215.2021.12.03.10.35.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Dec 2021 10:35:18 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Masahiro Yamada <masahiroy@kernel.org>,
        David Virag <virag.david003@gmail.com>,
        Jaewon Kim <jaewon02.kim@samsung.com>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: Only show unique unit address warning for enabled nodes
Date:   Fri,  3 Dec 2021 20:35:17 +0200
Message-Id: <20211203183517.11390-1-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are valid cases when two nodes can have the same address. For
example, in Exynos SoCs there is USI IP-core, which might be configured
to provide UART, SPI or I2C block, all of which having the same base
register address. But only one can be enabled at a time. That looks like
this:

    usi@138200c0 {
        serial@13820000 {
            status = "okay";
        };

        i2c@13820000 {
            status = "disabled";
        };
    };

When running "make dt_binding_check", it reports next warning:

    Warning (unique_unit_address):
    /example-0/usi@138200c0/serial@13820000:
    duplicate unit-address (also used in node
    /example-0/usi@138200c0/i2c@13820000)

Disable "unique_unit_address" in DTC_FLAGS to suppress warnings like
that, but enable "unique_unit_address_if_enabled" warning, so that dtc
still reports a warning when two enabled nodes are having the same
address.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
Reported-by: Rob Herring <robh@kernel.org>
Suggested-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/Makefile b/Documentation/devicetree/bindings/Makefile
index c9abfbe3f0aa..41c555181b6f 100644
--- a/Documentation/devicetree/bindings/Makefile
+++ b/Documentation/devicetree/bindings/Makefile
@@ -65,7 +65,9 @@ DT_DOCS = $(patsubst $(srctree)/%,%,$(shell $(find_all_cmd)))
 override DTC_FLAGS := \
 	-Wno-avoid_unnecessary_addr_size \
 	-Wno-graph_child_address \
-	-Wno-interrupt_provider
+	-Wno-interrupt_provider \
+	-Wno-unique_unit_address \
+	-Wunique_unit_address_if_enabled
 
 # Disable undocumented compatible checks until warning free
 override DT_CHECKER_FLAGS ?=
-- 
2.30.2

