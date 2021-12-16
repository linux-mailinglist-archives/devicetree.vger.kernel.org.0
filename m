Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49EB747796A
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 17:40:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233647AbhLPQkp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 11:40:45 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:46650
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233613AbhLPQkp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Dec 2021 11:40:45 -0500
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B66EA3FFD7
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 16:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639672842;
        bh=wzGK8JrM0qK5K+9nNV1QJqS+dRB/4uLBgfT0d3ILjG4=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=U2sp5KY4LwJyJPo2WsS22N4c9IBud9s0QcqI7kjM/V7cBBYAulcPgWl/51eYpS3Ev
         3XnyUh00sg70248URVsL4bKpxTnrpWGdLfCknFN/Qv4xhQwxwoWvM3A1tzlAqfF6Np
         0H2GJYf75gbNt2PHqltdLULrxNw+H2fmhje8v3hQLv9LfI6OFF0QS52fMoo2SNlbpb
         cArMHm//e8JFE5He/68sJ0cmPf9h4cuNJ5GFUtIKWYmoQEwwVnd7MopJPHB+usuGbg
         4MMqAQZeMojffegdVK0dPN6+Mp8SH3SNinNnPdIw60NgZw0E0bilRgDFfBAWfMCNQ4
         hpCPWJvxDOZ/w==
Received: by mail-wm1-f72.google.com with SMTP id r10-20020a1c440a000000b003456b2594e0so1872575wma.8
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 08:40:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wzGK8JrM0qK5K+9nNV1QJqS+dRB/4uLBgfT0d3ILjG4=;
        b=mZU0QUDycnTaiBWOJm8UcMreV91gf8ZW1cMU5K1MFUrVhuYXaHNxD/TOkhSfjYU44g
         +vtjgCntyegwFXbgzFfv2V7EODGK/YaWSLgDAKkkr7oukhuz4qJSAxtY3eCoCJHyLxHV
         dAK7tSBqKbHBhCbthpF1MlUtd8LHwzM6lpryJt0i3O7umxAWhqfbbRoyG0RSRKg6UA7p
         LxkbvAtAkvns1Bn7z5caB0DZZtasnAnaL96CuZxoZJalCNJ6u0ka9U630XSp8qlTx0Ln
         gw084ZawBTj0FU/pAFKjIVpjeewZDZkhzT6Lv+McwxGpKtrzeNJgX2bjfX48FqjmS8HS
         Kvag==
X-Gm-Message-State: AOAM533ZGoC3gRR/J7PhRyKPPxUgJwCcqNYTI4sv8A2xYjREPVmBFmO6
        EQwv7NHLXTylfc1f7A1X8hLC8VF6flar0z9zhiows2M8IO+ahBu+yOgp/jtcvSiL0X7/crKVPoq
        deLcgH81W/1wPIPnyMUVtePyWe9AQ+0JpCSKoL6U=
X-Received: by 2002:adf:eb4c:: with SMTP id u12mr4157666wrn.707.1639672842472;
        Thu, 16 Dec 2021 08:40:42 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwMEaAfgUDbbHkpgBFCHapS6AIPsW5OiAs1LX+6oRtRz2kYhV8oYHhxxQZU7b3y6qvplc2a+w==
X-Received: by 2002:adf:eb4c:: with SMTP id u12mr4157652wrn.707.1639672842269;
        Thu, 16 Dec 2021 08:40:42 -0800 (PST)
Received: from alex.home (lfbn-gre-1-195-1.w90-112.abo.wanadoo.fr. [90.112.158.1])
        by smtp.gmail.com with ESMTPSA id o4sm3938290wmc.43.2021.12.16.08.40.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Dec 2021 08:40:41 -0800 (PST)
From:   Alexandre Ghiti <alexandre.ghiti@canonical.com>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
        Support Opensource <support.opensource@diasemi.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org,
        linux-watchdog@vger.kernel.org
Cc:     Alexandre Ghiti <alexandre.ghiti@canonical.com>
Subject: [PATCH v2 1/2] dt-bindings: mfd: Fix typo "DA9093" -> "DA9063"
Date:   Thu, 16 Dec 2021 17:40:36 +0100
Message-Id: <20211216164037.2888316-1-alexandre.ghiti@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The device described is the "DA9063", not "DA9093", so fix this typo.

Signed-off-by: Alexandre Ghiti <alexandre.ghiti@canonical.com>
---
 Documentation/devicetree/bindings/mfd/da9063.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/da9063.txt b/Documentation/devicetree/bindings/mfd/da9063.txt
index 8da879935c59..91b79a21d403 100644
--- a/Documentation/devicetree/bindings/mfd/da9063.txt
+++ b/Documentation/devicetree/bindings/mfd/da9063.txt
@@ -1,6 +1,6 @@
 * Dialog DA9063/DA9063L Power Management Integrated Circuit (PMIC)
 
-DA9093 consists of a large and varied group of sub-devices (I2C Only):
+DA9063 consists of a large and varied group of sub-devices (I2C Only):
 
 Device                   Supply Names    Description
 ------                   ------------    -----------
-- 
2.32.0

