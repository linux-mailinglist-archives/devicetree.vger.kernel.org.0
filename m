Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9EE655F9CF
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 09:57:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232327AbiF2Hxc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 03:53:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232643AbiF2HxM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 03:53:12 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD08E3B3FC
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 00:53:00 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id h23so30772586ejj.12
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 00:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=l4c6eL6FkT3F5Q2UMeh1SdTOW/jzEthp0aJ+P51R6LI=;
        b=AV4NEcyHx8w1xqDMI5YOYNDvdZip64G+iNWEh/ZDv5T4AfyWfiY2Dx63X8iNx5c1no
         13qprKhyHd6K9peeLiYqGLkEya2BS+rj5WqWdXb+TucvbalQQ8rv/LTe3MrRoHLkoSCK
         /Xu+4+UUyNHh73MKUWfTNeS4NXOROyPPNjUSHrUiKAWRsxXoMFbkuZuLRExCI6oYQLXJ
         yiCd34hujtJoszLTJsUG/5Ju1lx566hR2GeAhbx1EKXl2VEZIyLKgUFsTYryaOh9QoRN
         WrFoBEwj/gJ6Ok7RIMih29H5y5iOPFtjQmOdFrs1bCIwPVDORL6Y0/z1py1r5jfTaGFa
         85qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=l4c6eL6FkT3F5Q2UMeh1SdTOW/jzEthp0aJ+P51R6LI=;
        b=Du0Sot85afVvsTQiPZeK3yC0odIymARf9zgPi3arQ+3fp8ER4+/JpmGZmgTAMNobaW
         q8niAyInsCL9FcekKnhQqLzly1udDgPfaQ6jX8UIRcG6R3Tk7zIy6evB+E3gHfxHS7+A
         7Ci3RS9hMB878aMK9dcNeu81qwC0NmO42grJn7Q3CR3JThUBXGKaClq0BqF9WnhV5v7K
         0alX4XkmoC7pgc/6LJQC7RErTVpHrJbn/sxdCz7JdI8xXg6iQambLRnfKq9J7Pq/w29D
         6cWiGQqN7mJ46EVflX+5EhgKe/oVO+HWBhPh/ya1BT7PIdVFarYa1xHdxufgkFupd70y
         aqNA==
X-Gm-Message-State: AJIora8bwT4fKmKWMHU14sv0YucaVbq1N538oRZro7eO6q4pCa4fW3jH
        Y2W8thMHWAJs/uIBRcipzUCQzg==
X-Google-Smtp-Source: AGRyM1tMc7nBQ3SvkzcyGP9WZi4dulRVf6CGwCKOxfFwJ6EBO9vmDI5R4xCDDINWYm2Rk8hIPhTkUA==
X-Received: by 2002:a17:906:20c6:b0:716:646d:c019 with SMTP id c6-20020a17090620c600b00716646dc019mr1901895ejc.529.1656489179257;
        Wed, 29 Jun 2022 00:52:59 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id t2-20020a056402020200b00437db6acaeesm432173edv.95.2022.06.29.00.52.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 00:52:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 3/4] arm64: defconfig: enable Qualcomm Bandwidth Monitor
Date:   Wed, 29 Jun 2022 09:52:49 +0200
Message-Id: <20220629075250.17610-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220629075250.17610-1-krzysztof.kozlowski@linaro.org>
References: <20220629075250.17610-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the Qualcomm Bandwidth Monitor to allow scaling interconnects
depending on bandwidth usage between CPU and memory.  This is used
already on Qualcomm SDM845 SoC.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 6906b83f5e45..6edbcfd3f4ca 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1096,6 +1096,7 @@ CONFIG_QCOM_SOCINFO=m
 CONFIG_QCOM_STATS=m
 CONFIG_QCOM_WCNSS_CTRL=m
 CONFIG_QCOM_APR=m
+CONFIG_QCOM_ICC_BWMON=m
 CONFIG_ARCH_R8A77995=y
 CONFIG_ARCH_R8A77990=y
 CONFIG_ARCH_R8A77950=y
-- 
2.34.1

