Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CEED39D9CE
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 12:35:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230194AbhFGKhs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 06:37:48 -0400
Received: from mail-ed1-f42.google.com ([209.85.208.42]:40471 "EHLO
        mail-ed1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230252AbhFGKhs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 06:37:48 -0400
Received: by mail-ed1-f42.google.com with SMTP id t3so19713185edc.7
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 03:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=18khHUA2AJ3ib5wXxPFFaQIfHWGb1QOUw5+Na90fAf4=;
        b=n4oXtQgnDbe6I7n8UhQvti9n25PNkA+8CaB7/gRPiiU3ZyE93Zst5Lo98mfSLLITrQ
         m+Sm2IiZ4+HBfyRQSFd1677F5fwG2ouPOfavvFFcQYOR13rX4RsL8Yz3vUBFDQQeXYMd
         MD2zqP/28PRP+IfgT3IOgucxndZGyt6c/LIqEFq1zO1ZL9a6S8VLzo54oQFvctiQzp3s
         sJqxCQppIhK2QaWgg6L06Mtp85vchsoV6xYDCcwx68AjI1iyw5irnFTWFujkoZTqDFcL
         0PUk1z/BnIGy7xjf+qyFpNm9ROOAI2pXvK8nl5IVyA9Sx2ZmDaYoeRb9ZHdAuT/NVCX/
         T72A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=18khHUA2AJ3ib5wXxPFFaQIfHWGb1QOUw5+Na90fAf4=;
        b=XET6R+IGSWvRSPOzRN2B27jyJh+s05XqOV5NYrPQaJnp1obvji7PAlTTjDDyAIlCuj
         LVoVdAocITYhtF2SOFsrd51t/ZiJU7d21h1uCRqNPlSJXR7mgovsLOhp0qvv+2Hs0n9z
         U3PUPtUVS5MHkNgBoBFLEjQrNDBgq5dSEKpeQQwpRflF6sqlSY/oSkLbE2rhzO3R5JJ2
         IQDUhgqPtS0ARRFfcgfraG8LgLq4Ahhs4fsEvwx7ohcUk7P473ZCsLflseUzJWwj3rzC
         4MKl3uwtHR1v1v2p4qROPUR6okITgai6nK2L4/S6+5yAUFLMazaQuPqhFqcJ6T1JwPzR
         enLg==
X-Gm-Message-State: AOAM533hkXkVrWMilLZSody3YqNnigf2E027DizMjuEoGzG7uRadhYca
        O1YrB3hibzOOhz9tiLHAsUbVtw==
X-Google-Smtp-Source: ABdhPJyBBEVMU+l3zZzaxsGHeW4GrlFSXJO8KYLsFCW+34uBpPVt4npJyi0x8cFnKWTER2OPtMwc+Q==
X-Received: by 2002:a05:6402:548:: with SMTP id i8mr19605259edx.344.1623062080229;
        Mon, 07 Jun 2021 03:34:40 -0700 (PDT)
Received: from localhost.localdomain (dh207-96-76.xnet.hr. [88.207.96.76])
        by smtp.googlemail.com with ESMTPSA id b25sm7521037edv.9.2021.06.07.03.34.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 03:34:39 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, jdelvare@suse.com, linux@roeck-us.net,
        corbet@lwn.net, trivial@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        linux-doc@vger.kernel.org
Cc:     luka.perkov@sartura.hr, jmp@epiphyte.org, pmenzel@molgen.mpg.de,
        buczek@molgen.mpg.de, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v4 3/3] MAINTAINERS: Add Delta DPS920AB PSU driver
Date:   Mon,  7 Jun 2021 12:34:31 +0200
Message-Id: <20210607103431.2039073-3-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210607103431.2039073-1-robert.marko@sartura.hr>
References: <20210607103431.2039073-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add maintainers entry for the Delta DPS920AB PSU driver.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v2:
* Drop YAML bindings

 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 82d9c2943c34..0707986e9bb1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5105,6 +5105,13 @@ F:	Documentation/devicetree/bindings/reset/delta,tn48m-reset.yaml
 F:	drivers/gpio/gpio-tn48m.c
 F:	include/dt-bindings/reset/delta,tn48m-reset.h
 
+DELTA DPS920AB PSU DRIVER
+M:	Robert Marko <robert.marko@sartura.hr>
+L:	linux-hwmon@vger.kernel.org
+S:	Maintained
+F:	Documentation/hwmon/dps920ab.rst
+F:	drivers/hwmon/pmbus/dps920ab.c
+
 DENALI NAND DRIVER
 L:	linux-mtd@lists.infradead.org
 S:	Orphan
-- 
2.31.1

