Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B7124B43DA
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:17:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241910AbiBNIRw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:17:52 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:45180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241922AbiBNIRb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:17:31 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72DB3606ED
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:17:16 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4277A407D8
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644826635;
        bh=YIMchXgxrGO/KxGG+/UkFx+hf7tS1WrOyOXtJpDqg8o=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=q68KrJxtY3MZ2TuRbvwonTQSbc5/iN1y/yB/stVqB/pcjhL8ltiUQL9h/SlplY83L
         iUyiFIf/zxxAxSluntXt9uNsCnKbJJ8Zmy3aLmH5jyT7dfp650MirNAkdYEpltiG6g
         e149qRZQOZuGfq/mVE3ZySLhMy5AeyCkVU+0YSKhPhHO0gxLDGRIoz1xkBMaYactzy
         LJNvrmcHH+l0rbcolEWEusGGLV5gC+pfzYbZAOf17MokdHXa+WZgCExSDMmbuCU6f/
         6Bix23H4YHrKaTg/OGVaG8fPkXIAr03v5U247yJmq1BHo4qmY2RS9+g3OYmYqelDx8
         V3l6i9qUX+HbQ==
Received: by mail-ed1-f70.google.com with SMTP id z21-20020a05640235d500b0041092b29ad6so3540201edc.19
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:17:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YIMchXgxrGO/KxGG+/UkFx+hf7tS1WrOyOXtJpDqg8o=;
        b=PX4/eeBQdM+fR1yWOnY3OSdGPhprAEf00YDHxvLCO7hAQnDFuL1iIzOb5N/3nFGLxY
         OePcYGqx90e3SvVlLfp6SX6ulePRcV/Gaj+lxYhJHtU84gngaNuddJtZTJv3B3aFReIa
         SyWI9MvQmMVobmJLxvcKWt2a4mANmBiqp/uf1NhkHMNSpnGCyor4S1M84jh4Srb9bPTu
         CQ8DC6q1GkN6Lp5D/V1JLNVmVFVBmmsrKujBRUMGdP/Dk1LoROma4HFQTycLmtlhTyP7
         vgagG89aKhkn7MV+cZv6Bo/N2mzb68Cpk42Hirjz2TOBt3qBT8+NZnQFoS/OL2ng+8LF
         nJYg==
X-Gm-Message-State: AOAM533KMHkUVX+m0JA8DxAEps2j03yHAiKs7nif7VaEoG6PuiRDTs22
        V+mmHzen849p0/bS3vrstZZk1rHdKUy8E1Z47NZBdYq1TCQio4IjfBFLtikAxKkgYQ7NyZJyfWT
        64OEltPXAVU8+jCoFjvnHfjA8gNd9aGoEYrE+JHE=
X-Received: by 2002:a17:907:3342:: with SMTP id yr2mr5958098ejb.146.1644826624448;
        Mon, 14 Feb 2022 00:17:04 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzfK0aywy5WjW2583ifLTvYYWtVDcJ7Gtmfi5jkghjnk2WcWRlDFdui/O6H62E9nB+KLqqdpw==
X-Received: by 2002:a17:907:3342:: with SMTP id yr2mr5958081ejb.146.1644826624297;
        Mon, 14 Feb 2022 00:17:04 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.17.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:17:02 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Anson Huang <anson.huang@nxp.com>,
        Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
        Rahul Tanwar <rtanwar@maxlinear.com>,
        Jeff LaBundy <jeff@labundy.com>,
        Yash Shah <yash.shah@sifive.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Vignesh R <vigneshr@ti.com>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH 14/15] dt-bindings: pwm: tiehrpwm: do not require pwm-cells
Date:   Mon, 14 Feb 2022 09:16:04 +0100
Message-Id: <20220214081605.161394-14-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pwm-cells are already required by pwm.yaml schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/pwm/pwm-tiehrpwm.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-tiehrpwm.yaml b/Documentation/devicetree/bindings/pwm/pwm-tiehrpwm.yaml
index ee312cb210e6..70a8f766212e 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-tiehrpwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-tiehrpwm.yaml
@@ -48,7 +48,6 @@ properties:
 required:
   - compatible
   - reg
-  - "#pwm-cells"
   - clocks
   - clock-names
 
-- 
2.32.0

