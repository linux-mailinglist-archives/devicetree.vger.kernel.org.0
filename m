Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 85D43CC4BE
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 23:23:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730590AbfJDVXN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 17:23:13 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:39126 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729195AbfJDVXN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 17:23:13 -0400
Received: by mail-pg1-f193.google.com with SMTP id e1so4460156pgj.6
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 14:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FbEDLn5bYC1guAfqyyXP/Ctbrk9njzD18K9UdkpQKvk=;
        b=Ry0tb33NLG74h2g1DPveAa1dtM7AfnSP4w0NY0KGZk0hy2Kff24SS7x6pa00IHJXHS
         As5lkn4N2oT7RvO0SVIcJpBpWFaJ0ltBD02nlI9RJ3soRD8G/Tq6fQnbmldbyzdNTFTy
         Gx3uOre0R9i3h1z1AsPOZdZOcetQVQ2MD0iFM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FbEDLn5bYC1guAfqyyXP/Ctbrk9njzD18K9UdkpQKvk=;
        b=Lgy9SxEkC+2MbKWNfvgWS3eEavFF5I5NqrN+0E2j7WDo3/8q2XhpGM055oFpa3a3KI
         tI6eA/+2QREHUesLJFj84ZdNjuGeM5z8KA8eI2TLwOJ+GS851Q/YlhD7IY81mxaXfAot
         4KG5fsf26XC+AwNo6YfnugSvRXHQhW3zmnG3F1lIQkz0u1WaXnncQoaE+2JOn4jLqPPW
         oyUoX95KNOEsV16DRLuyrTpgcqqkG+ldS2agAIheKAJEpwY3i8+jU0D+5aQ5cqmcpoQZ
         WSpnD7smtyy7i7rEvKgO8EzNN8UemcnB04cJaL0MBwjpj9E15b4JZAF2ZfuArhnDjfQm
         pvgw==
X-Gm-Message-State: APjAAAUCg/DZiBq18UaV7GgS8YPEEDwKSD9AiFvf4RlXyRRAHkpBpGt1
        CSGsYvVRLNdlrSD0/qzuVwL9gw==
X-Google-Smtp-Source: APXvYqx+exBZVejLszJfae/4nUv4Y0lVhpA87mTwhfyInkv+JFbOkMPNtxPbv/BHSoBrnsX7tHaZVQ==
X-Received: by 2002:a17:90a:332c:: with SMTP id m41mr18704412pjb.22.1570224192878;
        Fri, 04 Oct 2019 14:23:12 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id z21sm6691866pfa.119.2019.10.04.14.23.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2019 14:23:12 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Andrew Morton <akpm@linux-foundation.org>
Cc:     linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Subject: [PATCH] .gitattributes: Use 'dts' diff driver for dts files
Date:   Fri,  4 Oct 2019 14:23:11 -0700
Message-Id: <20191004212311.141538-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Git is gaining support to display the closest node to the diff in the
hunk header via the 'dts' diff driver. Use that driver for all dts and
dtsi files so we can gain some more context on where the diff is. Taking
a recent commit in the kernel dts files you can see the difference.

With this patch and an updated git

 diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
 index 62e07e1197cc..4c38426a6969 100644
 --- a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
 +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
 @@ -289,5 +289,29 @@ vdd_hdmi: regulator@1 {
                         gpio = <&gpio TEGRA194_MAIN_GPIO(A, 3) GPIO_ACTIVE_HIGH>;
                         enable-active-high;
                 };
 +
 +               vdd_3v3_pcie: regulator@2 {
 +                       compatible = "regulator-fixed";

vs. without this patch

 diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
 index 62e07e1197cc..4c38426a6969 100644
 --- a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
 +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
 @@ -289,5 +289,29 @@
                         gpio = <&gpio TEGRA194_MAIN_GPIO(A, 3) GPIO_ACTIVE_HIGH>;
                         enable-active-high;
                 };
 +
 +               vdd_3v3_pcie: regulator@2 {
 +                       compatible = "regulator-fixed";

You can see that we don't know what the context node is because it isn't shown
after the '@@'.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: <devicetree@vger.kernel.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---

Sending to Andrew but I suppose it can go through dt tree too.

 .gitattributes | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/.gitattributes b/.gitattributes
index 89c411b5ce6b..4b32eaa9571e 100644
--- a/.gitattributes
+++ b/.gitattributes
@@ -1,2 +1,4 @@
 *.c   diff=cpp
 *.h   diff=cpp
+*.dtsi diff=dts
+*.dts  diff=dts
-- 
Sent by a computer through tubes

