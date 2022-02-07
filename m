Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B0EE4AC81E
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 19:02:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346409AbiBGSCR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 13:02:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242367AbiBGRz6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 12:55:58 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EB7EC0401D9
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 09:55:55 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id EA0283F1E6
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 17:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644256552;
        bh=/iBTMJ+6ky1LxQGNpybYW4PAzENXOdLtJcm5RBsECOE=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=H0pp7Mk2xD8HD259gix62S/VS7HQXH6GhRVFABQ17Wg6mn+hdXGbPNbLMjwoLpGR7
         b3egBrHX0JTehxf1uTzxd/SyH4uPxSjh8J8gbmWOG9zg4DScr+DGRnRv8avCls2jgb
         58BrSlOjynbEp1xjthw7ajIJgqf0P62NlZTwLtK6sP8DdMm6oJuBenJ0etlFB7CZU+
         0AUrJmBhdpDeYFPjcDaDxi16ghGH466u+QCCnlC+ULvEa9F26uUPFsRd82rwfmv8If
         e4utgMxJqmgHN6rSgFovOvC/TDJLLGNXmErUd8xVDNC3iu988dxdH9lQApyJ5oEd8a
         fOQqfrLcZ2cCQ==
Received: by mail-ed1-f69.google.com with SMTP id dn20-20020a05640222f400b0040f8cdfb542so807977edb.3
        for <devicetree@vger.kernel.org>; Mon, 07 Feb 2022 09:55:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/iBTMJ+6ky1LxQGNpybYW4PAzENXOdLtJcm5RBsECOE=;
        b=qUN8nIveQifxuse02n6xv0baL5G0Let0dtwPfMKQsvSazDCfqVq9HziIWNklFA0WTM
         gH4rWrF08+AHtS9+DZonfujBS+uWT0CFUASIJFmK+hfctVE5hazBgv3Rnshcdz8u26Fi
         AkhvqDIZgrh8fGKmAmov2n2lkEgV4StHwQRzP9s5dL90i37nsmq6qfUSVA9I78GG8+CD
         pzAXYyj4MViFCEIspS9FHWu64WVJDlgBr493qen+NGuzz2BcD1yQ/2JcfGh98AYQshLb
         y8pXOb+w5Ynov9BSCIWJCf3dtKym7x30rOPL7xSBdsbKNfIsR2vajqLwawdQHQX8WU+X
         q6aA==
X-Gm-Message-State: AOAM5306C0HA53hMb0ghqy4SSkj540TuIfZz5vAxJ91Z3TrFf+aQyNF6
        3e+VzEGoE/sFYTQunfF7LP7uHX0zYMvCZahAurYkMtf9zPIkQSCyDaIGx1aaiW/qlx1PsNWo8kg
        i5uJYtGjq9TrOlVRAQ6ndqdUdRcLyHKxupysA3u4=
X-Received: by 2002:a05:6402:26c2:: with SMTP id x2mr645536edd.354.1644256552640;
        Mon, 07 Feb 2022 09:55:52 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwfa4i/V4nQftL4p3cvH4Fqz5Bqxsqs8spXP4wBR5nEJrSoNdf/WpjgVi+7ZOVjQ3pIOe/m6w==
X-Received: by 2002:a05:6402:26c2:: with SMTP id x2mr645526edd.354.1644256552505;
        Mon, 07 Feb 2022 09:55:52 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id c20sm3765210edy.41.2022.02.07.09.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Feb 2022 09:55:51 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Russell King <linux@armlinux.org.uk>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 1/2] MAINTAINERS: arm: samsung: add Git tree and IRC
Date:   Mon,  7 Feb 2022 18:55:02 +0100
Message-Id: <20220207175503.425200-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add already used Krzysztof Kozlowski's Git tree for Samsung
S3C/S5P/Exynos ARM sub-architecture and IRC channel (#linux-exynos at
Libera).  This documents purely existing state.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 MAINTAINERS | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 49c897fa56af..e219ba2c5ac9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2577,7 +2577,9 @@ R:	Alim Akhtar <alim.akhtar@samsung.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	linux-samsung-soc@vger.kernel.org
 S:	Maintained
+C:	irc://irc.libera.chat/linux-exynos
 Q:	https://patchwork.kernel.org/project/linux-samsung-soc/list/
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git
 F:	Documentation/arm/samsung/
 F:	Documentation/devicetree/bindings/arm/samsung/
 F:	Documentation/devicetree/bindings/power/pd-samsung.yaml
@@ -15346,6 +15348,7 @@ R:	Alim Akhtar <alim.akhtar@samsung.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	linux-samsung-soc@vger.kernel.org
 S:	Maintained
+C:	irc://irc.libera.chat/linux-exynos
 Q:	https://patchwork.kernel.org/project/linux-samsung-soc/list/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/pinctrl/samsung.git
 F:	Documentation/devicetree/bindings/pinctrl/samsung,pinctrl*yaml
-- 
2.32.0

