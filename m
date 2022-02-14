Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 121CB4B43BA
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:17:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241758AbiBNIRH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:17:07 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241794AbiBNIRG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:17:06 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 873585F8F1
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:16:59 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 5E3CC40526
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644826618;
        bh=l15FonF8uQEq+4XEYAwpRwWSHHnXgwOoYp02FVF3qnI=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=CgnObQ6pKG+zIT2gtPZGDojVNzZAQXT+ivW4ioOQH1NdttAcL31eLSqNM4Xu0x679
         7QdIRXcYbSciPGPQmIz+cZro+5LR4+B62EgamMdTCVEJ33rVqrYN6tWczJtE6slKFp
         HC15RVaoQrv7p7A2bXGODVQsuUHzUDRA8bn60wNuqMjwH7TbIdkAWihEmL9onMHOii
         WjhV3p0+6kz7G8VdJdPRN5afHYk1rVhpBs4sMRb66COF63PmFenbsNyWOzGxMq54sm
         qsUKhizGdS2jTaXbRebOIgb/U4XvFK4VAYbQGs1Bh68kLeqkN1/fOOxlgJgkVGRwWl
         GHxNAenBVeqKg==
Received: by mail-ed1-f69.google.com with SMTP id n7-20020a05640205c700b0040b7be76147so9769382edx.10
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:16:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=l15FonF8uQEq+4XEYAwpRwWSHHnXgwOoYp02FVF3qnI=;
        b=SskN4y/SSkyEWDe83X/6ZhvqdWDJVFTHO/8UgJaiM89udzOiyFN5ySSWCIJlUq+IwI
         BSgd1O5DxJi92z2P3wkSf96K/1VtNl5w1XiAXgvisQTG5LjGDg/BsLgvQxtNFxESioIO
         e+Ko/vvXsFJyy3v5QGeG05bC7ijx8xaKFlsPKigQ9NWAYHULxYCF/9HOoI/eialtJfz7
         KWIbjWAJFtat+TLfUpk0wbpxSFkcUeWKOCJmPxUOnxJUR200d/hAa+levA8c6vGVQ6B8
         LUKs/9d4da0vpGb84Y42UJNM2nvOchWVDy5ciU9oL6v9qpmP5h5t6egjGYHDzl7eQIFF
         jiTQ==
X-Gm-Message-State: AOAM530Efhzc2RKpsHn7sQusAsuP06/ZOtHMOM4Ksh5OZgStUSUJXfZi
        xxeU9jmB/hzWIqxkWUq695Wv8L3NcafFG/Na0Wi5I2qSlPiOXimrrpTQGWonDQo5LC+/nF/vITV
        YG6qIFaS6AM36Kv6P7/pLi5UK5a9oDFVD6jl9Q7Q=
X-Received: by 2002:a17:907:1692:: with SMTP id hc18mr1264362ejc.558.1644826617897;
        Mon, 14 Feb 2022 00:16:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz7ZFaKPSqzJB7EzZe96ipyX590XuNxFjp7kl2szJXL0JpWvoFuFlVeLyW48x6LMwjXS7gpuA==
X-Received: by 2002:a17:907:1692:: with SMTP id hc18mr1264323ejc.558.1644826617720;
        Mon, 14 Feb 2022 00:16:57 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:16:57 -0800 (PST)
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
Subject: [PATCH 11/15] dt-bindings: pwm: intel,keembay: do not require pwm-cells
Date:   Mon, 14 Feb 2022 09:16:01 +0100
Message-Id: <20220214081605.161394-11-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pwm-cells are already required by pwm.yaml schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml b/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml
index ff6880a02ce6..ec9f6bab798c 100644
--- a/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml
@@ -31,7 +31,6 @@ required:
   - compatible
   - reg
   - clocks
-  - '#pwm-cells'
 
 additionalProperties: false
 
-- 
2.32.0

