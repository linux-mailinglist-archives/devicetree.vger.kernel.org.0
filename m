Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94DBA752551
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 16:39:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230444AbjGMOj6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 10:39:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbjGMOj5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 10:39:57 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E2BC1734
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 07:39:56 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-666e97fcc60so521392b3a.3
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 07:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689259196; x=1691851196;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=657oCXGaEC1qcJW0ADVKblYgk8WH34A8M/Ct3AJE75g=;
        b=Ccnm6l7dp8BUccBVmo570I2uE1NE/PoAnSeMKRPcz6vMnWStaj7AZ7WUUbn5sMk6X2
         rM+HO5CeQoNW9RoshZ8d7x+ZxDzOQUUW15aCzAHH3iadkzTj7TgoWOoOy6glkT8GbgBG
         SIwsZKb9610mQf2qWouXlKKaFUyCkPay2UMOaYLCKZbsoJw5IXbhim4V458bwqVq4d4t
         i7aDSz7yBhfq3Z5ZllbjcpmFHqVfajhSPC9MNRnc/UWnGmJ6draCEf1uOlngfjTO1jeD
         lo4HybjMoA6BLXN6t1e+dNNo/ffoxkB0VSW2nJmdUCpgiYQFOBHaM9pBdy3g+MIG7o1L
         KKUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689259196; x=1691851196;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=657oCXGaEC1qcJW0ADVKblYgk8WH34A8M/Ct3AJE75g=;
        b=gRoP8Js2jUMjCZbz3InbFsR6VOrBCBdNOBbQapJ9zAEXkPep6STHAy0V7NUtjmv6H/
         wQsz2WEXlZ70Gv2g+Xmfyjjb5H9Q/Y+xSyQyrpfRDo/XTrzJ+6IzJMTiCHgHQuPV9bX9
         xjIO9sX3AOwWMXtFJDvfLnIgo32y2qzsQv6eWCdVOashLPBrWxz6JwArPvKVkSAQmUYl
         /ly5u6OvLpGdN6XzIavIAli7qdoynigue2qSV542j1VdMiVf0o9k+6O+hYp3GdsYBUgd
         ipXelLthdjpMM2za5pl/VkOCaht8Ypryq8D6+AA8m/gqtNDpoTOAHOun4PGPqvNtLEKi
         WV8Q==
X-Gm-Message-State: ABy/qLZ7DZNz2WaJBvfnXTO+i4DPAOnAw2kK3toN1lRkyB3MwH1jUzMM
        n19+mCKPDXfBect4hSxMPFFfNQ==
X-Google-Smtp-Source: APBJJlEv5CMhsWbLWCQQJzBhUkl2wK7p/N1rvYEl07j+cHYOj9/qbBAnaXMwfwDV8/H/wBunxU1s9Q==
X-Received: by 2002:a05:6a00:13a0:b0:66f:913a:7c1c with SMTP id t32-20020a056a0013a000b0066f913a7c1cmr1630524pfg.22.1689259196010;
        Thu, 13 Jul 2023 07:39:56 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:4984:5087:308e:21ca])
        by smtp.gmail.com with ESMTPSA id d18-20020aa78692000000b0067a50223e44sm5565764pfo.74.2023.07.13.07.39.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 07:39:55 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 4/8] arm64: defconfig: Enable PHY_ROCKCHIP_NANENG_COMBO_PHY
Date:   Thu, 13 Jul 2023 20:09:37 +0530
Message-Id: <20230713143941.1756849-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rockchip RK3588 SoC has NaNeng IP PHY block used for PCIe, USB3, SATA
and SGMII.

Enable Rockchip NaNeng PHY driver.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 347307eb737f..4be8815c1d51 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1394,6 +1394,7 @@ CONFIG_PHY_ROCKCHIP_EMMC=y
 CONFIG_PHY_ROCKCHIP_INNO_HDMI=m
 CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 CONFIG_PHY_ROCKCHIP_INNO_DSIDPHY=m
+CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=m
 CONFIG_PHY_ROCKCHIP_PCIE=m
 CONFIG_PHY_ROCKCHIP_TYPEC=y
 CONFIG_PHY_SAMSUNG_UFS=y
-- 
2.25.1

