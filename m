Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7011933E38
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 07:13:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726488AbfFDFNQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 01:13:16 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:39864 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726463AbfFDFNQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 01:13:16 -0400
Received: by mail-pf1-f193.google.com with SMTP id j2so11932301pfe.6
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2019 22:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=SwlsJ6CEbpLZSOgtZESJWjm/iL6r1POt1KjyCXghrz4=;
        b=ysNe7bxv9HQql3V8nQpfHP622zxFB4jKmBOdzA6/C7bAx8OIeswyGuLHYj1bPYtCQf
         UaRNH+2rTLfc2bRkRUcdeiiZ3HBME+s8pcTUL6mL4KT+MdIzV/Korn0xAiEBlferxL1l
         r2ew9qSCJMajx+HVaXCFqZ+xHI4MT2oyOj02txBoNyaz4G83AalyVJLL0ZL32ZN1RJ44
         NppDavQibd6erjV9y10F1hPT6JRsgTQS5MQ6Md8P1FDlxQKkKylhAZW8wxA1PAdws08t
         27ugWU5xuzuM0GfEnQX6nAVmXXR57x+hXTBEKk2mmiJJpqka+MlJbqPckBXmW+mVd7Cq
         IdFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=SwlsJ6CEbpLZSOgtZESJWjm/iL6r1POt1KjyCXghrz4=;
        b=kM/DwEE1NYA546NEXvAopyR0KuiKBntPkin72Um+lQFLAtNEPA/MCka1ra0ObzEkIT
         587b8SzMy5GqR0xWt7nIscKS0+xgG2m2ZrLbwg7DE6JP1BqPeV2MNCHmYlTLMtIDBpUt
         QCYs4KGZV9g5pdfF+B9Mpw8A0f98EVayBzxLbVck+mkTly2zNjJATcI80nraOWGVUBH7
         +qOWesEooDT5IY+g8C9ucjZNOkq3AI0oLR5O8WNRY6ek/WJX5b7y1aWBkcsZqIKVvysq
         lcXMEkxmZ2cd+jV6xLNxLtqxVlklHpzb83XWu3Mf0wCBU5dmTwWu5FbKPsPKfHaDlGv9
         /l8g==
X-Gm-Message-State: APjAAAWWAwGvmcl1pPWRYFML/H9M0/1tmwL8IoqijiuwiJDM/FeNqyyh
        2zUMKQonUvn3wCRQJSfU43VX4A==
X-Google-Smtp-Source: APXvYqzo4nWZshV/MfR60MlOaqRryD2dFWQv4KdyuBfLcX9zcUe2CgdYRg5Uu8Hcy5wVvp2nmLYk0g==
X-Received: by 2002:a63:78cf:: with SMTP id t198mr24121804pgc.82.1559625195579;
        Mon, 03 Jun 2019 22:13:15 -0700 (PDT)
Received: from localhost ([121.95.100.191])
        by smtp.gmail.com with ESMTPSA id j13sm17444152pfh.13.2019.06.03.22.13.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 03 Jun 2019 22:13:14 -0700 (PDT)
From:   Masahisa Kojima <masahisa.kojima@linaro.org>
To:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org
Cc:     broonie@kernel.org, geert@linux-m68k.org, tpiepho@impinj.com,
        andy.shevchenko@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com, ard.biesheuvel@linaro.org,
        jaswinder.singh@linaro.org, masami.hiramatsu@linaro.org,
        okamoto.satoru@socionext.com, osaki.yoshitoyo@socionext.com,
        Masahisa Kojima <masahisa.kojima@linaro.org>
Subject: [PATCH v7 1/3] MAINTAINERS: Add entry for Synquacer SPI driver
Date:   Tue,  4 Jun 2019 14:12:55 +0900
Message-Id: <20190604051257.14264-2-masahisa.kojima@linaro.org>
X-Mailer: git-send-email 2.14.2
In-Reply-To: <20190604051257.14264-1-masahisa.kojima@linaro.org>
References: <20190604051257.14264-1-masahisa.kojima@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add entry for the Synquacer spi driver and DT bindings.

Signed-off-by: Masahisa Kojima <masahisa.kojima@linaro.org>
Signed-off-by: Jassi Brar <jaswinder.singh@linaro.org>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a6954776a37e..06c3e03e3c0b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14613,6 +14613,14 @@ S:	Maintained
 F:	drivers/net/ethernet/socionext/netsec.c
 F:	Documentation/devicetree/bindings/net/socionext-netsec.txt
 
+SOCIONEXT (SNI) Synquacer SPI DRIVER
+M:	Masahisa Kojima <masahisa.kojima@linaro.org>
+M:	Jassi Brar <jaswinder.singh@linaro.org>
+L:	linux-spi@vger.kernel.org
+S:	Maintained
+F:	drivers/spi/spi-synquacer.c
+F:	Documentation/devicetree/bindings/spi/spi-synquacer.txt
+
 SOLIDRUN CLEARFOG SUPPORT
 M:	Russell King <linux@armlinux.org.uk>
 S:	Maintained
-- 
2.14.2

