Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 028887748B4
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 21:37:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236511AbjHHThU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 15:37:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236702AbjHHThF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 15:37:05 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BA7D29881
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 12:02:01 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3fe32016bc8so50664885e9.1
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 12:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1691521320; x=1692126120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rYZbQHrxpkTe36I8BIa5OFnDC71e2O9qRRyJDc3ulLc=;
        b=JEQmQTNVlr2LI7Of/NkrrpUbKCv82EZ8k0SyfbKP1swdLvkCNa+f+2bp0bGJ+uK1LA
         euyMaa5H2ZbM0g+yDuIpsR4HCTUGbFFxBUmUcGpcpQhLQa0o/OzCIc1OPoJVR9rJOcJX
         lH4CFM03JSIGa4raMA5g34DZ5HMisipJfOkNUW35P8PVXDWWIe7mdKxsxDYVVmikXW62
         m5wHQD0L3EgHh5HrIASbm9Hbt0lN8tW1W0wlS7VzYT/559NWr/s96PEidyTtarcHrttc
         FRbCXmc7O4mis1BD/Hno///0jDSX6MzC7e9qlPMZ+L7YsS3PoR375pK5DW0IdCNkokPM
         A1VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691521320; x=1692126120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rYZbQHrxpkTe36I8BIa5OFnDC71e2O9qRRyJDc3ulLc=;
        b=L4rhLNablTTL6d4cZWmSDP5tq+6Q/eGaFclLTtTAOuKiy0lqDMiR4x8NdtydcCVwgc
         m84eleZi28RN6x1lChyp692vt26ywekuLOoOQYX7iOhjN3yS/jeGLKpicEb6fG6wCfSk
         CPGSJeOcXCJAnXUqXL39XQaHbaFujA9sa4oN8cKscuK1uSEeIWubHrOAFIqSrVM5qvQt
         lJLXI0NJLqckY2fvjFUX4yK96oVKs57InmBT17eZUFBAFgjnErIT7uwxAx12CVG2vYVp
         6QAaKWCrXU/QBAQApUU+ubRA5I7YClAeUv8G1XNhrwHY27VcEz91wvgw5YIa/ysPFln8
         w7QA==
X-Gm-Message-State: AOJu0YxStFCTTc6nq1X29l8Wu/t0csmvH6nybjOll6a6CDopsaZS1rmy
        rKUL1E0ht2/Ipe3apq3COtX0VA==
X-Google-Smtp-Source: AGHT+IGJxd8G9X40eIjxwFlRGwQz785i3Io9vskmf46BbSTOXlgI1WmbSJ9NiS4l4e+xS+tgvkRDZg==
X-Received: by 2002:a05:600c:22c6:b0:3fc:e7d:ca57 with SMTP id 6-20020a05600c22c600b003fc0e7dca57mr505644wmg.2.1691521320164;
        Tue, 08 Aug 2023 12:02:00 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:6a08:bcc0:ae83:e1dc])
        by smtp.gmail.com with ESMTPSA id z14-20020adfe54e000000b00317e9f8f194sm7301055wrm.34.2023.08.08.12.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 12:01:59 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alex Elder <elder@linaro.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Andrew Halaney <ahalaney@redhat.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 7/8] arm64: dts: qcom: sa8775p-ride: add an alias for ethernet0
Date:   Tue,  8 Aug 2023 21:01:43 +0200
Message-Id: <20230808190144.19999-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230808190144.19999-1-brgl@bgdev.pl>
References: <20230808190144.19999-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Once we add a second ethernet node, the MDIO bus names will conflict
unless we provide aliases. Add one for the existing ethernet node.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index 486cb48ecb9d..330553742204 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -23,6 +23,7 @@ aliases {
 		i2c18 = &i2c18;
 		spi16 = &spi16;
 		ufshc1 = &ufs_mem_hc;
+		ethernet0 = &ethernet0;
 	};
 
 	chosen {
-- 
2.39.2

