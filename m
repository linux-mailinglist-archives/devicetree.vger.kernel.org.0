Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1020F4A3132
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 18:55:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352957AbiA2Rzp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 12:55:45 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:58906
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1352892AbiA2Rzj (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Jan 2022 12:55:39 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 128773F1E9
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 17:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643478939;
        bh=6UCbWYiKKRFJ4GNkVkqU9F02DF7gUG1QeWQTYvnZiYU=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=Ce5WAeETr1bplK2OcWU3skAV93u81dzHRsBH7AKer9VbxV+gaTMh65y+c4tm69j1p
         N4MaMKRDdsLIAWP+/BRgE1TonXmp/L06pK2kkopOClPMJwrdSff9qkjHJRqhkY2JKz
         hhkjRlVFQz+tndcC7I3TeyYQzAH5+F3IiPdaCVO7aFR0l03U8B35vRmb4TQr2kowm8
         s4T1UqGVfpVHIDdwLEW5to5nTt7qdbL+rFq9mqMODjaQx+UYhVYAefdZfSAxEs8TUY
         aoKPOxX7ULYvDxwVTYgommweF/f3I4S/5iKiPPYsU/Or4s2uJY1yYslUwDzfQ76sij
         W/q9XV9obzuVQ==
Received: by mail-ed1-f71.google.com with SMTP id k5-20020a508ac5000000b00408dec8390aso4649037edk.13
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 09:55:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6UCbWYiKKRFJ4GNkVkqU9F02DF7gUG1QeWQTYvnZiYU=;
        b=5uyH3dc9Uky9sTvwBlop/+y1j5Ez1M5mjrZePuPVcrSBsbxddB0eTE3FMU58Q5zOBP
         r+eDdMHfnIRk2drGlGAKMkYGD90v1S67FI6m28JG9s2Z7TDvI8f+5ulKgbEQMDh8vJ6w
         0EydEMMarzIZWebWaciB+LTT6WRs5BCAd74WNVLabBsg3NW9QHirDYspak4exHjZJTez
         cncojo1V7dP1RujKzmltEvbXrphJelAaKx5PwhE3sbeuhDqeBxNryRjvXCUL6tUTFLeR
         BPpaieKbV0TjAsGG3mt1wCR2Jcv3ZbAkEM52bLg5TQf0CnoKMoxm/wpL6cVeVqzCcEXN
         Ng8A==
X-Gm-Message-State: AOAM530Mo7jCXNk+jPS/e3PZkcM6FDrcUHpKMwLEMLZdWKF43h9s16/C
        M2klnh5mDTmYV0tELTqNk6pWQpWwxjDDqPHmnnESFA98zeoZfA0lORQ2hfxuYxlX5mu2/9gPbjs
        n+xkfipkCjnp/rjefbDtOyLTjciE7i3hC0VeDThg=
X-Received: by 2002:a05:6402:1c94:: with SMTP id cy20mr13801138edb.150.1643478938574;
        Sat, 29 Jan 2022 09:55:38 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwKvB83jqP3K2T2I6v2B5chVPVzPblBKfLDT1BmTW5XXbjw1MdNw4Gx//5CPwbzswPPF1Hsdg==
X-Received: by 2002:a05:6402:1c94:: with SMTP id cy20mr13801126edb.150.1643478938446;
        Sat, 29 Jan 2022 09:55:38 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id oz3sm11327756ejb.206.2022.01.29.09.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 09:55:38 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 1/2] arm64: dts: stratix10: align pl330 node name with dtschema
Date:   Sat, 29 Jan 2022 18:55:34 +0100
Message-Id: <20220129175535.299035-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes dtbs_check warnings like:

  pdma@ffda0000: $nodename:0: 'pdma@ffda0000' does not match '^dma-controller(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 4124021768b1..da032a6f71da 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -333,7 +333,7 @@ ocram: sram@ffe00000 {
 			reg = <0xffe00000 0x100000>;
 		};
 
-		pdma: pdma@ffda0000 {
+		pdma: dma-controller@ffda0000 {
 			compatible = "arm,pl330", "arm,primecell";
 			reg = <0xffda0000 0x1000>;
 			interrupts = <0 81 4>,
-- 
2.32.0

