Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FEFA554926
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 14:17:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355050AbiFVIgT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 04:36:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353857AbiFVIgA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 04:36:00 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89D4A38BE9
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 01:35:49 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id z19so6000234edb.11
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 01:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=i4bRTG4lVkNF7ntn262LTb80cj+Ip9xH77tT8HcEEqg=;
        b=y/FpOc4YHeB4CimlgD+zcxj+AuCEspCpU8ZC6BomTZK5jkSd1XfD5GZGD0Od5o9WzG
         JC3hDYcmt1nRPRGR7lCTTKOcv1y++oVT1DWgfbN8Y9qetNXG6kYeml4JRE9jWUcFybm9
         Ge8ZFtrN6UFV32+oyP5DHnQuK4VQvkl6dW4bGpmV9ifGHB4XSBS3FGHtr7pdehkWxHXT
         MVpOzrX0MZ3n0Ql6QbhBPDb7LgH55wW3zxJaFSQoxyloiqBN1X4WMVuX5W3PBz5doFdi
         eXALsuB4WQlJYDbzrxO4KCzKBiSslPNuw871IXlOMzY5GQqIDvkTOx5BlXn7DtLxgxY4
         7cdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i4bRTG4lVkNF7ntn262LTb80cj+Ip9xH77tT8HcEEqg=;
        b=vk8Jmvy3FcNuIuSJMXcAbNy45Zq1O2zaaFeaDdF9/dSdJzXJYLaDw2+5aglicWOW8v
         fAH50zoLQeJVNPNSwVlCsboaRh/7e+Kycz4hE4jhhm+hsNRWI3D/1HQZpRKzKN9sJjVU
         f4yCMbVMnkgdQEYrsJt2mGZhBkAoW/k73lSYPVR/QfKXSs4Wz/JkeZs+cQwf8i/ZY1Oo
         wzRDX9+dfo9lteJu85i/b5nJXrG0g/wF6Gqvl6D1q5B+Aw2qHfusUajQKpdLM0y5XM/N
         5rLwkAIno+E1mrhlqMiCkFJDgwO+vEjzHw+XXqdXhhHctA/GAJndaRaT0+jId/Vmmuzo
         nl1g==
X-Gm-Message-State: AJIora9hTiTvizEpDxARW2V+LhGCTXhe0LFNt/x7+0BkryIN5jKebYXW
        YumdJ/7Jlcmxfn2tBBOfVBDyeg==
X-Google-Smtp-Source: AGRyM1th5YFje120BVD3g9dTQuOlYu2KzHSQhj0WdB/vYKLGcfDT7C3zKJWLyTHt6rhgnIiwmDn3dg==
X-Received: by 2002:aa7:cb13:0:b0:433:4985:1b54 with SMTP id s19-20020aa7cb13000000b0043349851b54mr2751651edt.182.1655886948123;
        Wed, 22 Jun 2022 01:35:48 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ku10-20020a170907788a00b00722e603c39asm1979733ejc.31.2022.06.22.01.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 01:35:47 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
        krzysztof.kozlowski@linaro.org, agross@kernel.org
Subject: Re: (subset) [PATCH 12/12] arm64: dts: qcom: msm8998-mtp: correct board compatible
Date:   Wed, 22 Jun 2022 10:35:34 +0200
Message-Id: <165588692598.15720.11468561846292254961.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220521164550.91115-12-krzysztof.kozlowski@linaro.org>
References: <20220521164550.91115-1-krzysztof.kozlowski@linaro.org> <20220521164550.91115-12-krzysztof.kozlowski@linaro.org>
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

On Sat, 21 May 2022 18:45:50 +0200, Krzysztof Kozlowski wrote:
> Add qcom,msm8998 SoC fallback to the board compatible.
> 
> 

Applied, thanks!

[12/12] arm64: dts: qcom: msm8998-mtp: correct board compatible
        https://git.kernel.org/krzk/linux/c/4fb4a39fdbc8bd0aa35de0970d26cbc6c5abf946

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
