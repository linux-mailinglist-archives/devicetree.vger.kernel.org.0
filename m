Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B62263F1FD0
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 20:23:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234135AbhHSSX6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 14:23:58 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:33708
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232909AbhHSSX5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Aug 2021 14:23:57 -0400
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id F2838411BF
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 18:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629397397;
        bh=wXv+g9MByShu0tv6L5ordxjhpc+MsSSwpZ4DgfMhl7E=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=o8AepukXGIMvNabfyeptRUHHGBTtKhmcTRKx6KN09kIzdyU+UVd7DO2kdIaTeroAj
         IMclo8Fu7bDlPe1wMQHxPWg2yQ0p9FD/Dlhccoxei/mImdbJsuYtZJwj0svkHxN8HD
         9dnAGmYzQ8fr2qvcORwHyDgnMESkoNbX97Jqa4ghQ8DSe4tzpOVXhSEhp6XUctNGRp
         w4DW4YxDaUtR4hbdwS6gYj/glyKAl1dT8WU6upuCU250bKHPsRPghNMCFDl4mivjU2
         LsY/GiC68RZ7F5m4nWqsOc6I93gDsZ6TmPUFByek24oY8mdW0VvH9jvNnKfbRsGoIn
         tOKO7v6tUai2g==
Received: by mail-ed1-f72.google.com with SMTP id b25-20020a05640202d9b02903be7281a80cso3256263edx.3
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 11:23:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wXv+g9MByShu0tv6L5ordxjhpc+MsSSwpZ4DgfMhl7E=;
        b=TQ8Mgdhe0i5xy0MavPVLu+/uwxq5Kug3TeHP+Fqorv9ig0pBRe06Q2qaq6h8yKAKr3
         zfltbvhCveAANTNA17Aj4Jk8dNPFUDNXlmg/MV27VWc4RdK6YWM/3KNHNqF7fJnHtCmv
         ONaRCICjpLdeu8sp/mo/CgLjNY5nk/OJuLqrVsA6VJXvj8epzlV6WlOMbJyP/a4KUWk9
         xYOLuGnirw76faS6K3z4rONLzMKufdZqRIjDx0B2B2PgZA7ZKOfxFZrjmmz2RpU8Aclt
         npNucnu3+kVyxpF8qnzf20P4iCV8fxaNAznF6lsP6lxydbqTZqk+tSW+L6Igu2g0cZSE
         MBoQ==
X-Gm-Message-State: AOAM531qx0E2Y9oGjc0HCESELKHCSVsCDfr+EnDPe8TudpuWofnrFFnl
        /qz9AnX4pkI152MKgZuSnSNp/bsL33GRCCRDbj7Nkh52fuBxBGICdwisa61smLkqZ/do00j8VDi
        +PtnXtsGMH4B6Jp/Nusg8ApMtBBWhgVYj7IiPTvU=
X-Received: by 2002:a17:906:b286:: with SMTP id q6mr17000393ejz.120.1629397397753;
        Thu, 19 Aug 2021 11:23:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwrG9+2tCoz8kPE9jEeoLuD0BBvKPHrr35QvvOIc37v4HQRU5a/njfqp1KeCSZm/azbfQSHeg==
X-Received: by 2002:a17:906:b286:: with SMTP id q6mr17000377ejz.120.1629397397609;
        Thu, 19 Aug 2021 11:23:17 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id c28sm1602113ejc.102.2021.08.19.11.23.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 11:23:17 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 1/2] arm64: dts: allwinner: a64: align operating-points table name with dtschema
Date:   Thu, 19 Aug 2021 20:23:10 +0200
Message-Id: <20210819182311.223443-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Align the name of operating-points node to dtschema to fix warnings like:

  arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dt.yaml:
    opp_table0: $nodename:0: 'opp_table0' does not match '^opp-table(-[a-z0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi
index 578c37490d90..d55248bb8ddd 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi
@@ -4,7 +4,7 @@
  */
 
 / {
-	cpu0_opp_table: opp_table0 {
+	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
-- 
2.30.2

