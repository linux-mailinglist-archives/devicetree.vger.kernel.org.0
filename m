Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8B935149A4
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 14:39:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359437AbiD2Mm1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 08:42:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359433AbiD2MmY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 08:42:24 -0400
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81428C9B78
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 05:38:50 -0700 (PDT)
Received: by mail-oo1-xc36.google.com with SMTP id y22-20020a4acb96000000b0035eb01f5b65so627668ooq.5
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 05:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=usp.br; s=usp-google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Hv1PCf+XzDO3hkXoIiVts/K8+qjbqCrBljwvRZWyJFs=;
        b=BR070dtAgCfrI7G/Ipt+6yT2fuGmT1ftvPiR812mjsWIhGYXC5eOytF+eH/vWWk14L
         gKrMvm0AiNNOKRqGuI3nQoYgDOTGqDWIuu4+nR92hZ5DMpbWovxnTEi4A99adcIYozD6
         u3B0fQyc/S1z1G7r24nnzhd7T5tXhbDI8xEgd4Ek+e9w5hAv82ru5v0ImZT9YVPkBEP8
         Ijmp6UNQwKOcsNvcBS7DG/3qu3L1q/3dbb8rvV/eKS6Tb86mOxCDdowiFIKjnLhzWZX1
         QWO8Wq6IWERCperKVegssFJ4JB4N7UlC8ktEP/RIiDk4Vt29gP2ZCUbowhKxyi3eX/p4
         8fjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Hv1PCf+XzDO3hkXoIiVts/K8+qjbqCrBljwvRZWyJFs=;
        b=veVKfMNAWJOx9gJD6XjwXKVid3ZB6LAOwfi5GEzplzrRHIcd3TKehZfckCuSaljevU
         9Duq3YHWR04oMzNB0ESGBy6ZQDUCGkhDbUE6qZVvO8RE9uXCchai7qAXA413DVxpYeQ/
         qP6+ThAYWKeSZaYeYrjNSf0YnQI3FYbr1CQt1FdZ3kc90DiAE7ry3kMr44+aCN3fuywz
         kaVcynUwxoNRH4yaXExtSCoVtZho0n5eHJQZXhQD3bbW+m2W6kff5f4k7PI7cY+Jh4/S
         KuY/EGM3yN520tVoJ+cyrssKR0dJ6b9O6+P68FGCm+RoJ8tG93MILzs81M+hso8n7vSR
         eFrw==
X-Gm-Message-State: AOAM532oHU/W0OXZ9Nu/j/PUlNqBIZc0iRsHzY1P4FN+E8zKiX7yIXE4
        lWGI1PsUnUkO75yWr6r/3nxTrw==
X-Google-Smtp-Source: ABdhPJylvYNJ7ENkrIf452qlc0xbGCPtKL3CAi+0CPZL+kKiJVoTr8IkphGljZN4d8qxJTQws5YgyQ==
X-Received: by 2002:a4a:e2ca:0:b0:35e:b623:8799 with SMTP id l10-20020a4ae2ca000000b0035eb6238799mr1211599oot.68.1651235929759;
        Fri, 29 Apr 2022 05:38:49 -0700 (PDT)
Received: from fedora.sc.usp.br (gwsc.sc.usp.br. [143.107.225.16])
        by smtp.gmail.com with ESMTPSA id e12-20020a4ae0cc000000b0035eb4e5a6d9sm705158oot.47.2022.04.29.05.38.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Apr 2022 05:38:49 -0700 (PDT)
From:   =?UTF-8?q?Ma=C3=ADra=20Canal?= <maira.canal@usp.br>
To:     Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>
Cc:     linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        =?UTF-8?q?Ma=C3=ADra=20Canal?= <maira.canal@usp.br>
Subject: [PATCH 2/2] dt-bindings: media: s5c73m3: Fix reset-gpio descriptor
Date:   Fri, 29 Apr 2022 09:37:40 -0300
Message-Id: <20220429123740.147703-3-maira.canal@usp.br>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220429123740.147703-1-maira.canal@usp.br>
References: <20220429123740.147703-1-maira.canal@usp.br>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The reset-gpios is described as xshutdown-gpios on the required
properties, as it is on the driver. Despite that, the device tree
example set the property 'reset-gpios' instead of the property
'xshutdown-gpios'.

Therefore, this patch updates the example to match the property specified
on the driver.

Signed-off-by: Maíra Canal <maira.canal@usp.br>
---
 Documentation/devicetree/bindings/media/samsung-s5c73m3.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/samsung-s5c73m3.txt b/Documentation/devicetree/bindings/media/samsung-s5c73m3.txt
index 21f31fdf5543..f0ea9adad442 100644
--- a/Documentation/devicetree/bindings/media/samsung-s5c73m3.txt
+++ b/Documentation/devicetree/bindings/media/samsung-s5c73m3.txt
@@ -76,7 +76,7 @@ i2c@138a000000 {
 		clock-frequency = <24000000>;
 		clocks = <&clk 0>;
 		clock-names = "cis_extclk";
-		reset-gpios = <&gpf1 3 1>;
+		xshutdown-gpios = <&gpf1 3 1>;
 		standby-gpios = <&gpm0 1 1>;
 		port {
 			s5c73m3_ep: endpoint {
-- 
2.35.1

