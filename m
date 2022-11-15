Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EA0A629024
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 03:54:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236156AbiKOCyu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 21:54:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236879AbiKOCyr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 21:54:47 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C09D417044
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:37 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id f5so32933999ejc.5
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K3i5y3oyIwsgiFHEGgey14XqgO98FOVbhLAM8VvS1C4=;
        b=XAXlj7HV8ef+3U0UC2x8HKCj1F0PVBfJNEi4v/dZPj8vLlvixlnXQHiPnfYxppc2Fy
         wDYLb95FbAzLVcegL5D79d6AZ0QqRcTEVcw25fV4omTjCbPQ4cmCzV+z2HVXZundzWtw
         zgQc3h8iYsOzPGBJhJ20zIlFzyNFcy86DBdde8FE6Yr010pvjp3vc5JAQJzwtH9uAEhL
         cNkfnjnhjOQ582CUtgKPr2DzkAxQhtyaI0t4ywIcoYu67qCFXVP522S/Fp5P3kwKWdUC
         pUrhwF/4m9Jy0CWeMDcAcK6/biXlve4bkPHpyByR7w9biS+CDSTeZnaryajRb44LaU7J
         PKTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K3i5y3oyIwsgiFHEGgey14XqgO98FOVbhLAM8VvS1C4=;
        b=ABaAcgHDwgXamOq+lYZqMvrF2+w29cpS/ohk9eH8jaH7oguCb1XVkOv1G6D+6PYsMf
         tJRShsUatdpByfTYg0HPE3cbCdUxGuQsplEAVnAh9TjlxRpgWL8O651E1ef/wPG/2Mxt
         RjbvVLHCVLhlvfTWmoj1810UBeOqDtOii2/ntLezszc0werSLuUtRNVhXns2lRZQMV+v
         BOjwPnlDhZK7UR2LM5V7DNXAD7psW7A4iV6lJ6Qo0S66Hc0y3bhrw8yIOaGNks/NjIeQ
         pZ9sK2u/4M0DUMi3Y/1A1bPpP3MSw/AVicPS+KdGTEedOAcUdh6luz3BJa4S5i7vSUo8
         Os/g==
X-Gm-Message-State: ANoB5pn2zqsJn9o2m1RBwvPbtGj0ICP+FvYZIB8XoIqa5z79avIfegRZ
        vYg7QjClJTX8VtWypQLQCoQWOw==
X-Google-Smtp-Source: AA0mqf4oWc70NQb+RlNBLY8bfQHcMNf1sDr6y50bKMAxjSOg+vK8+QcAhQSipCT9z0C2AliMJmmZ4g==
X-Received: by 2002:a17:906:7fc6:b0:7ad:c66e:ad9d with SMTP id r6-20020a1709067fc600b007adc66ead9dmr11853936ejs.413.1668480876417;
        Mon, 14 Nov 2022 18:54:36 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709063d2900b0073d9a0d0cbcsm4861177ejf.72.2022.11.14.18.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 18:54:36 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
Subject: [PATCH v2 09/15] dt-bindings: mfd: syscon: Add mt8365-syscfg
Date:   Tue, 15 Nov 2022 03:54:15 +0100
Message-Id: <20221115025421.59847-10-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221115025421.59847-1-bero@baylibre.com>
References: <20221107211001.257393-1-bero@baylibre.com>
 <20221115025421.59847-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document Mediatek mt8365-syscfg

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 4e4baf53796de..3d868e42e7bca 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -50,6 +50,7 @@ properties:
               - marvell,armada-3700-usb2-host-misc
               - mediatek,mt8135-pctl-a-syscfg
               - mediatek,mt8135-pctl-b-syscfg
+              - mediatek,mt8365-syscfg
               - microchip,lan966x-cpu-syscon
               - microchip,sparx5-cpu-syscon
               - mstar,msc313-pmsleep
-- 
2.38.1

