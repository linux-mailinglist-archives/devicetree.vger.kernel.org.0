Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95846690629
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 12:10:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230083AbjBILKy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 06:10:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230050AbjBILKv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 06:10:51 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60966241D3
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 03:10:50 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so3604392wma.1
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 03:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8oSi64E8kaq5qVsK7gvPtC7I4dgXQobi1UrBcoHqmA0=;
        b=ceIsNyHVZBUFWZ/cbxIsCjMGhv7C3K1xKcT5KnEp7jA/tKmnEf4huZSX1Pa8iTmlAx
         Ytb4kTRAfIy/R08iZ5WQlV+1w+9H/0ONZzQSH1+BKOzOG+38kukiDgl+f7U8CBXQF0QS
         iu6Dc1RSAOA7lvTNg8Ui6caCeRh4YdgfB6J9+cWW885E7z82XSpRuLGjxfVTDLrdR+Cx
         rr0ZOCxz4N3r8+obbvhkDc3/XYzSFnaJ0nr5WtTNn7qVmpspa+i8jzGXESxBGhNwxe10
         EMKC1dLp8yuqEBLaZkH0J4K8S0hJe/F9cwuZnzHcE0zMj54aUHRSDXloOzBgo5dxGLcQ
         R4Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8oSi64E8kaq5qVsK7gvPtC7I4dgXQobi1UrBcoHqmA0=;
        b=pY/5ia0un3ElIBcdzFMJJxJjkEFyHGIhK7U8Gryt3OY3a++tImdTHbJh3wlXqhbQfh
         5HMbAn+r7+PSMJFn3m4XvfdHUa8mahhjkwjrVIDKVhIeOhu5JXQh/HRkGLRZ/qb5DNVA
         qln8dabc/Is//899Rc0DOfmw5NdE9WSH7T1TyC/ZOfGUq0qgIJM17l8m+FidUhmgGpsG
         A0n8dvrxeSCP+sK8zHRTIj+W411mGl4e4d/oQcCPEn2yK/ErSZOSKM7jt9yt5eeCeIsm
         r5d/PHRQgm+34vSgGT5tb8fT37k30OFD71IC27shnkLIv4n1B1KSESjAsAh5Y6gAKFBl
         zdrg==
X-Gm-Message-State: AO0yUKWWxxU+xWnhmhHAWy+Zs5SOj0+vjDyt+g4/8u3g4CvrEAVlf1gQ
        Id7pdxwYvctUvxjJg87g4Eu0kQ==
X-Google-Smtp-Source: AK7set81s/3QdNNOkLaKgnLMXQr7muQ8FLzbe9X29CR6eE/Q2HjXvO9iH52KdPZY+VJBBtYyX/eYqg==
X-Received: by 2002:a1c:7417:0:b0:3dd:62fe:9914 with SMTP id p23-20020a1c7417000000b003dd62fe9914mr9597819wmc.18.1675941048899;
        Thu, 09 Feb 2023 03:10:48 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q13-20020adff94d000000b002be099f78c0sm963207wrr.69.2023.02.09.03.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 03:10:48 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 6/7] ARM: dts: exynos: drop redundant address/size cells from I2C10 on Arndale
Date:   Thu,  9 Feb 2023 12:10:40 +0100
Message-Id: <167594102110.781687.18285546889431466418.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207210020.677007-6-krzysztof.kozlowski@linaro.org>
References: <20230207210020.677007-1-krzysztof.kozlowski@linaro.org> <20230207210020.677007-6-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
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

On Tue, 7 Feb 2023 22:00:19 +0100, Krzysztof Kozlowski wrote:
> I2C10 does not have any children because it is used in HDMI DDC, so drop
> redundant address/size-cells.
> 
> 

Applied, thanks!

[6/7] ARM: dts: exynos: drop redundant address/size cells from I2C10 on Arndale
      https://git.kernel.org/krzk/linux/c/c118f3d23531fccab2f64cb02196b2b52ad8392d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
