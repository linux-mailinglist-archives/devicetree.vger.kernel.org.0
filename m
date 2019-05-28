Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 30C512C327
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2019 11:27:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726859AbfE1J11 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 May 2019 05:27:27 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:34812 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726820AbfE1J11 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 May 2019 05:27:27 -0400
Received: by mail-pg1-f194.google.com with SMTP id h2so7569569pgg.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2019 02:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WSzNCT45W84aER1GYHZSzkW24AjjUqqyhWIxjsh7obs=;
        b=wslbgFOvjUP0aerph9iUxwYQYyARgXZyXqnXjyYn0zbtJUvvQkjVTtghh83uuP7VRC
         gTbug+Czvqgbf7HbpuCuR4Cpm+v7zNcnr8FQqZGLx3irDEs9NPWl/A+HHbp0ZrtH+EFr
         10PScoCwNXXGRFFyyNiNgd14Zzi0EJLSlaOsp7JCgklsF1R0IdoT1oHFkR2IBWY2pzCZ
         wHbmnClhbo6/UvZsh1QkiGyN3HKSZxVQrpI7cSi/86f+QzVgPdG1+2iisZ4yUxGqwhKC
         FCmo770tMHLfTUh0GWlbZTjb4nmR/5hWe5un/L0VbzZ+AP35jmW06TD3ZqbtBUr2+8/1
         Ji4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=WSzNCT45W84aER1GYHZSzkW24AjjUqqyhWIxjsh7obs=;
        b=jakgy50a/P/AkKYHza8dlXijsE1i6Mg6Xyl6vXJMtZVGouJ9a4msWDlruxW4MIXG/K
         tyjlp1JQ7tLuGtilTqYz6YSrWJ8pqYvWj4HqC095caj26ACLw8T6+eehnawqy8dGcvFE
         wloX36zZjzOB887vrQQTICY0qMyEUot0Bgunlxe34xibfNBTwCKzRePlxF9G1QWgTt79
         N9D6V/PkuHvp761QL9FEnVbNG3ELooHTzxDw8VLcI0BfN3/mGdGrGpwnOKKlEQonYNE8
         z4XWKjkUGvCeKkVvGrcgnj87ze6C5YcVLNuA9dpXyXC4TcCU2zlaaLDxyqEsg7jy13ic
         GWyA==
X-Gm-Message-State: APjAAAVWdDWjIbm4DCfoFupWvsdzbQnvWfS6ZtGSoESfRikc7BwXxsoT
        S1vIDp7FnqNdmtkzyim6P1rTwQ==
X-Google-Smtp-Source: APXvYqxJ1P0Sk25ftW5GpA2FEsGV5/k/jpFRnQiTXDS6XiohJeJmcfv6MY3ECObROVRAv/5ynmv5Qw==
X-Received: by 2002:a17:90a:bb82:: with SMTP id v2mr4516908pjr.73.1559035646972;
        Tue, 28 May 2019 02:27:26 -0700 (PDT)
Received: from localhost ([121.95.100.191])
        by smtp.gmail.com with ESMTPSA id w4sm13196848pfi.87.2019.05.28.02.27.25
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 28 May 2019 02:27:26 -0700 (PDT)
From:   Masahisa Kojima <masahisa.kojima@linaro.org>
To:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org
Cc:     broonie@kernel.org, geert@linux-m68k.org, tpiepho@impinj.com,
        andy.shevchenko@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com, ard.biesheuvel@linaro.org,
        jaswinder.singh@linaro.org, masami.hiramatsu@linaro.org,
        okamoto.satoru@socionext.com, osaki.yoshitoyo@socionext.com,
        Masahisa Kojima <masahisa.kojima@linaro.org>
Subject: [PATCH v6 1/3] MAINTAINERS: Add entry for Synquacer SPI driver
Date:   Tue, 28 May 2019 18:27:11 +0900
Message-Id: <20190528092713.10516-2-masahisa.kojima@linaro.org>
X-Mailer: git-send-email 2.14.2
In-Reply-To: <20190528092713.10516-1-masahisa.kojima@linaro.org>
References: <20190528092713.10516-1-masahisa.kojima@linaro.org>
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

