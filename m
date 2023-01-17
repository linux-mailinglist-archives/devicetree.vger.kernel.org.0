Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 834C266DE56
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 14:04:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232040AbjAQND6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 08:03:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237000AbjAQNDR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 08:03:17 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F5723866E
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 05:03:16 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id tz11so10783329ejc.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 05:03:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OmXta0hG9IG3vOI9E/aHz0mdhlyVuxkuOdnYHs1S1h4=;
        b=Ma2UqanvLKTHtwpjYdcMlNcPn8ydMlAnipu9gas+3bZRVXMFhdFdDZsKL6L8GN2T++
         yUO4DEbREe/lvNxz033f4gYiFWs2D9UTOmPCN9xRFeCiDhQhb1HFxjlDz61pdZHenY4p
         7qzPg4mlLml1UX0xb2pr4ZMao+lgqk887TA8LpJLw9hz8tkJqncPzM3vQrxHUmQt/ANr
         y26gz6UWRwqp4HYET9QcCChGNjUHIjm0w68BcDu2DBhVEsEHrOcbg1sbPzjiiW4iE1hd
         bglvRSBSJ+ORHIPRmHMT6xGV7Nr7xUlPKKB70NvOa7+kLrXNasFp9C5stlf1ltuQTHFO
         1O4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OmXta0hG9IG3vOI9E/aHz0mdhlyVuxkuOdnYHs1S1h4=;
        b=HhjX9KljFXyn+7P2X7SrGV1sDY1QUEgQ85rTL0Ct6o8VeaSUTtXJxhPXQcCisNzT6e
         72Lqn0m5y3a3pAAYIj+RBN4A4EUCcbKZGfSgY5KRj+FMep0RmBltgeFcnI8/FtSzee6f
         TOnFvCWSccfJRXL6SYSuSv2LKHSbr2V3T+Xhu24h/p7816rTHyNOw1Hg23k8NH77Gobl
         7pxWNnh33LnW4k9JgM1s/fZRxI6lzgqLLTmdndBqlfIcI6suk+uFcJ+JfIdLoxL1Mt1H
         rUIgw+SgJaFu5OBS8XR3tyywu+rxjUqdgQrJoG1pTxDBDQqGSFF14QftbtBb3PXGd4w+
         heZA==
X-Gm-Message-State: AFqh2kqrqza1bOKHTUKCqTAE75BFjimaUGIq1MueIk1CbEdDn7ZQr385
        +7b/CHs2pyT01jtVTPQzt21EmFNu6VHmr845
X-Google-Smtp-Source: AMrXdXvMdGquDZtT9+mCDweLoMaex0nK82kV8ckSUV2z5y3DVyJyfFsWn1Yg4aaJT+2tlghsIze00w==
X-Received: by 2002:a17:907:6d21:b0:805:1e6e:6777 with SMTP id sa33-20020a1709076d2100b008051e6e6777mr22055019ejc.23.1673960594648;
        Tue, 17 Jan 2023 05:03:14 -0800 (PST)
Received: from fedora.. ([85.235.10.72])
        by smtp.gmail.com with ESMTPSA id e20-20020a170906249400b0084d4cb00f0csm10327030ejb.99.2023.01.17.05.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 05:03:14 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Grant Likely <grant.likely@linaro.org>
Subject: [PATCH] docs: dt: Make references and mention kernel abstractions
Date:   Tue, 17 Jan 2023 14:03:10 +0100
Message-Id: <20230117130310.493966-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This document is named "Linux and Devicetree" so I think we
should write a bit more about how the device tree fits into
the Linux kernel frameworks these days after we have created
the fwnode and swnode.

Cc: Grant Likely <grant.likely@linaro.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
I bet you get the idea but Rob and Krzysztof probably have
some ideas on where this goes and what goes into it so it
it at least a starting point for discussions.
---
 Documentation/devicetree/usage-model.rst | 45 +++++++++++++++++++++---
 1 file changed, 41 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/usage-model.rst b/Documentation/devicetree/usage-model.rst
index b6a287955ee5..789744b45ab2 100644
--- a/Documentation/devicetree/usage-model.rst
+++ b/Documentation/devicetree/usage-model.rst
@@ -75,7 +75,44 @@ out of mainline (nios) have some level of DT support.
 If you haven't already read the Device Tree Usage\ [1]_ page,
 then go read it now.  It's okay, I'll wait....
 
-2.1 High Level View
+2.1 Linux Kernel Firmware Abstractions
+--------------------------------------
+
+The Linux kernel supports sevaral different hardware description
+frameworks and DT is just one of them. The closest sibling is the
+:ref:`Documentation/firmware-guide/acpi/index.rst ACPI`
+DSDT (Differentiated System Description Table).
+
+To make it possible to write a device driver that will adapt to DT
+or other hardware description models, the kernel has grown some
+abstractions, first and foremost the firmware node API, exposing
+device properties. The firmware node "fwnode" internals can be found
+in ``<linux/fwnode.h>`` while the device driver-facing API can be
+found in ``<linux/property.h>``. The idea is that if a driver is using
+the firmware node API, it should be trivial to support DT and ACPI
+DSDT alike in the same driver.
+
+The fwnode framework also makes it possible to modify and extend the
+Linux in-kernel model with software-managed nodes "swnodes" to apply
+quirks or manage registration of devices that cannot be handled any
+other way. This API can also be found in ``<linux/property.h>``.
+
+Further, when the DT core register devices these need to fold into the
+Linux device driver model, which essentially means that some kind of
+``struct device`` has to be created to match a corresponding
+``struct device_driver``. This API can be explored in
+detail in :ref:`Documentation/driver-api/driver-model/index.rst the driver API documentation`
+but what you need to know is that the Linux DT parser code will on its
+own mostly spawn platform devices and AMBA devices on the platform
+and AMBA bus respectively, and apart from that it will augment devices
+spawn on other buses where applicable.
+
+Every Linux kernel subsystem that want to supply additional data to
+detected devices using the device tree, or that want to provide
+resources to other devices in the DT, will need to implement calls into
+the DT abstractions.
+
+2.2 High Level View
 -------------------
 The most important thing to understand is that the DT is simply a data
 structure that describes the hardware.  There is nothing magical about
@@ -97,7 +134,7 @@ Linux uses DT data for three major purposes:
 2) runtime configuration, and
 3) device population.
 
-2.2 Platform Identification
+2.3 Platform Identification
 ---------------------------
 First and foremost, the kernel will use data in the DT to identify the
 specific machine.  In a perfect world, the specific platform shouldn't
@@ -180,7 +217,7 @@ However, this approach does not take into account the priority of the
 compatible list, and probably should be avoided for new architecture
 support.
 
-2.3 Runtime configuration
+2.4 Runtime configuration
 -------------------------
 In most cases, a DT will be the sole method of communicating data from
 firmware to the kernel, so also gets used to pass in runtime and
@@ -217,7 +254,7 @@ On ARM, the function setup_machine_fdt() is responsible for early
 scanning of the device tree after selecting the correct machine_desc
 that supports the board.
 
-2.4 Device population
+2.5 Device population
 ---------------------
 After the board has been identified, and after the early configuration data
 has been parsed, then kernel initialization can proceed in the normal
-- 
2.39.0

