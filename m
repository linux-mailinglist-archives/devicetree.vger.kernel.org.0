Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30CFF54D666
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:58:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349409AbiFPAy2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:54:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349105AbiFPAyK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:54:10 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6F765717F
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:08 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id cx11so113648pjb.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hk45y8qg0TijcVloTKD2QUlJ8SLct5jsD0wtYz0wctM=;
        b=C6oW0hpMDZcn14CExLv4Gl/8SKJ8XlS/wy37swXLr0gFyfhh00JAtmpxn9XIezScIg
         bZ5RKmkWlPDd5qAB4UN+dO+jKXMhjcxbcvrhiuXIhlY+aTt0ov9VxYWvXCNsbr9bPhF0
         DcFxOOgAeuHDmOGdVVEkoGGAD4+BXUsxsSDPHjtiG2Zf+2coxw5i+i20fL8kXpKvRkpx
         Xu/KpX4+wGyRj+BsEFi6RfV72MJcSLG6MCBcB4H6tqpTI+YgKxuQ/5v1RzZFXm9kbIDs
         mKrFOdr3gS5ut1qbjAbuqHTKLYx319HiyRq+OQEWvZXJIQCh9qhM2htFiyoOms+190jm
         KRqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hk45y8qg0TijcVloTKD2QUlJ8SLct5jsD0wtYz0wctM=;
        b=TbuHmkI0RLp0emxWHOjO7XXaKsIdj8E1NPrja8a9kKaIKEDrMIzrL91Ti/Kqh5I88l
         d5LEJ5NMcZCa1R6d3/+FB//oj+r0GUSiNhK7ctki8cnsqU6D5WYo13gxPNC3WTfs9GUj
         l6AE0xl5cY4lig+VAGLuufWfZuUcbHyYT4B7XwLzYE+oMLjt9xrw1Se3b45pikd5NFdV
         5s2FdHrPzmFgiH1vL9ahUMqG6RG3GjF5rRoL4dzXu62pehyIIXUPLRXiVSjBRGXq4f56
         yv6xm0atRAsRJeXw4PZwH2xTDafYrs/g+Q88Vt6Pg9FM6zJsd0I5a4k7Uj4MJ+Wvga6g
         4TLA==
X-Gm-Message-State: AJIora96uypD18bGGPLzg/rXlyJn4cBKSgkIVEVff0WzD2WZlK9klsBK
        FwgRisdYJOFRykFdr1shfnfRH8Lrt64+5g==
X-Google-Smtp-Source: AGRyM1uzV0o//aUfQivCFLEjAdGKHVoSc5iQBiDkk6l+YHXXW+rWTjQwUQtXYFVIMTU2pQfdDq0o7w==
X-Received: by 2002:a17:90a:430a:b0:1ea:e7f4:9f59 with SMTP id q10-20020a17090a430a00b001eae7f49f59mr1632797pjg.75.1655340848271;
        Wed, 15 Jun 2022 17:54:08 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016760c06b76sm233660pll.194.2022.06.15.17.54.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 17:54:08 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, Wei Xu <xuwei5@hisilicon.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 10/40] arm64: dts: hisilicon: correct gpio-keys properties
Date:   Wed, 15 Jun 2022 17:53:03 -0700
Message-Id: <20220616005333.18491-10-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

gpio-keys children do not use unit addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/hisilicon/hip05-d02.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hip05-d02.dts b/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
index ad53066ac495..c4eaebbb448f 100644
--- a/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
+++ b/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
@@ -29,8 +29,6 @@ chosen {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		pwr-button {
 			label = "Power Button";
-- 
2.34.1

