Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 73F0224E72
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 14:00:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726953AbfEUMA3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 08:00:29 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:35202 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726705AbfEUMA3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 08:00:29 -0400
Received: by mail-pl1-f195.google.com with SMTP id p1so2972627plo.2
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 05:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WSzNCT45W84aER1GYHZSzkW24AjjUqqyhWIxjsh7obs=;
        b=IkS85lbYVaWWd/yJiDguqFGYHKQbp6L7nlZ4siblXOnlrm1tqw7U8NrNVBtOB8Rya+
         fJb7P8uVWVVKbsHuM2oHvwBpK8ChMTPSps7mqxqXzb+i2b696+HZqfTXX4SD+z2n/uHZ
         AtJdAlDnWMpx9uJzj/hK2LoM0zFymkqcATOI26VpKD1wvSmY0Lz3kXAhyHgK+/+zZZ1Z
         +002Cn8a6Ifi65rKb7ZQ8lGpuvfBci/BAhy1qmuho8o+qiEoZmSUn4+Cnxo6CUnwsJmZ
         +f4erOHGDTiWuoCckQKs48CqcqgK1ZxpbhPnBUlAfRpn6BFJzxvCbKRgwskcKT6Zfmo2
         05Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=WSzNCT45W84aER1GYHZSzkW24AjjUqqyhWIxjsh7obs=;
        b=RqEhuHhFJk4Z2VjiYah0/u9RlNLiqDRKIncI/7E+CdjQ87zVPwSH2lF9aPdDaAL6Bk
         c/Pq9nY4gKf/gBwtdR+gOi7SPA738zOUDSndQLN9edA2EuCWGKKufRwWx5ATLNC5VsFs
         AxTGxxu9QQbRLNlkPu9kMEkJ38y1rmAzf4N6+wYNd0Sg6ks2O+zkZtNDOKpm0aT7bV4a
         yWKrJvL5mBfNLpmq/xLSXnmOEt1m1bpnoosE2O7AwhngQ/OdTEgNq7tVZ3ra4vOVky9S
         E0yyKH+FHVL6gb9gArTMyxlzySX+C63sDMnLC3si8Z2aZMkTOI0Hpj0HPVSNQgstdre4
         dv3Q==
X-Gm-Message-State: APjAAAUYJYwipLOa9ha102EE3VHaReD/OkW7uBWrRzlgWpYXpu89sxNm
        Y6cx4oYuUunAzae79SM9qTLydQ==
X-Google-Smtp-Source: APXvYqyFGmEetP/nU0M2ZF21rWhkzbGvQOdqOxrVSlbdBldQohKv7o3KpsXCkG18r/o9zoP301OuDQ==
X-Received: by 2002:a17:902:848c:: with SMTP id c12mr32760824plo.17.1558440028783;
        Tue, 21 May 2019 05:00:28 -0700 (PDT)
Received: from localhost ([121.95.100.191])
        by smtp.gmail.com with ESMTPSA id 85sm15198121pfa.131.2019.05.21.05.00.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 21 May 2019 05:00:27 -0700 (PDT)
From:   Masahisa Kojima <masahisa.kojima@linaro.org>
To:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org
Cc:     broonie@kernel.org, geert@linux-m68k.org, tpiepho@impinj.com,
        andy.shevchenko@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com, ard.biesheuvel@linaro.org,
        jaswinder.singh@linaro.org, masami.hiramatsu@linaro.org,
        okamoto.satoru@socionext.com, osaki.yoshitoyo@socionext.com,
        Masahisa Kojima <masahisa.kojima@linaro.org>
Subject: [PATCH v5 1/3] MAINTAINERS: Add entry for Synquacer SPI driver
Date:   Tue, 21 May 2019 20:59:56 +0900
Message-Id: <20190521115958.22504-2-masahisa.kojima@linaro.org>
X-Mailer: git-send-email 2.14.2
In-Reply-To: <20190521115958.22504-1-masahisa.kojima@linaro.org>
References: <20190521115958.22504-1-masahisa.kojima@linaro.org>
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
index 0c55b0fedbe2..a4970349ef4c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14597,6 +14597,14 @@ S:	Maintained
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

