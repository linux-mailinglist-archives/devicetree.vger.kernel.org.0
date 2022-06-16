Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A69B354EB8E
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 22:49:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378747AbiFPUsT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 16:48:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378748AbiFPUsD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 16:48:03 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E2B7326C3
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:48:00 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id t3-20020a17090a510300b001ea87ef9a3dso2476586pjh.4
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=TgsWdB5sKrCDaA7TRxp8sxB/OMl4nyvepWIRQXz0pig=;
        b=o/se1yxkWwn3jixuxvX80mn6+TRWR1k3+fjioaTpxFOnYFU8se4ycFpOkVuajiZpUy
         383UtLR8H8TiOIJG9FsUmevmfuYOvMfxbIQVfS+sWXWn00OXJ5CP5/ImF+naIJ4Q84lJ
         2EhAIt7b6/IWP1DUyzO7GdmgigrhW25QJ2fL+UCG+X7ApO5jagFFdf3vEh4KP2TWY5Ct
         M1Y2HcNOkqBSfi2OboTIe2kSMe92NkHNynX9nJhRex3XcDkXTEm98aC2Uwq0RhxEZtTB
         8MVCojipSBe0tpcMShMqVpZ4PBExEBTAnpor3N0aTeNDdGDXwZgc3NFqx2i2P3bJMiRX
         PsmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TgsWdB5sKrCDaA7TRxp8sxB/OMl4nyvepWIRQXz0pig=;
        b=YQYLzZd07oXTOyFGo76Q8U+ECJuMbz1/nzXVophQzn/9Qj3nVDZVnDpxJjCkSCLVk+
         jLdYvyu7vQ0ewaFgCOQm/cxqZAYg5NmulWcnJMcGWo/bzFUE+lV19wNREGh1hSETP2R4
         q1oLBAPV/brHQMZpWRXL+44O6FJgnNsi93JFGycatZPRv037Hzk5wkciiAfi/Vxtb0Kc
         omDjD0M4MULbG77wxCbXTImSklufya2aLxT6FGWPJBHCm5G6xwZC5HSYPhKhufn0w1Ra
         QuTs8iRt094uwgddtqTaADJI8H9P+onFgm5PNKduj56QdqeWja8Z38Z+TIOhI9dX3yau
         d6Pg==
X-Gm-Message-State: AJIora9/1qW9U/JbtYH4yP9EqZmFTpu8MsUBvSLUWBNY3tLXBgB74IC+
        qtd1n0Q4F1NbAHGIP5z7oG7BFg==
X-Google-Smtp-Source: AGRyM1tRWLZb58Q//qJnkJQNDU+dTf/yOTdOpe7pk9w44lRCjkvCkEFZH/aPlnFk9AfrOuTutS8GUQ==
X-Received: by 2002:a17:903:234b:b0:166:4459:c43a with SMTP id c11-20020a170903234b00b001664459c43amr6246331plh.35.1655412480064;
        Thu, 16 Jun 2022 13:48:00 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id 203-20020a6218d4000000b0051ba0ee30cbsm2165453pfy.128.2022.06.16.13.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:47:59 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: sd: adjust whitespace around '='
Date:   Thu, 16 Jun 2022 13:47:21 -0700
Message-Id: <165541242280.9040.14451452466910173168.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526203714.831177-1-krzysztof.kozlowski@linaro.org>
References: <20220526203714.831177-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
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

On Thu, 26 May 2022 22:37:14 +0200, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> 

Applied, thanks!

[1/1] ARM: dts: sd: adjust whitespace around '='
      https://git.kernel.org/krzk/linux/c/b03f15ee9881310cacfab1db0967598f88bfbb4d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
