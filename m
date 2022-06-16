Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6831054EB74
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 22:47:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378685AbiFPUrx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 16:47:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378368AbiFPUrt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 16:47:49 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5523213F50
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:47:48 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id i64so2468299pfc.8
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=8mkQGMBJrk6BBcb54d2vy4LTJbv5rtmJxE9+gCXOISg=;
        b=gs5hIkkevELXHjJGDcwPbIuUT5tpTUGZQfIg+372cYYZ8YgnGDcFw8lLgGLoM6pD2o
         ug5tUnRBdPx5TPghYyA/hidvSYP9dbtkLALTfjropsMRb7+M/VghTYvgtsACncbnPVCN
         K3UPHxA7E9RYTge6/38946lhr6Cgr8nj+2ppoyugHwdS63UWlM2pMhc4hxM3i0EcucKO
         nm08QIMJRHDb9hUrDq7bzVSziwcIKVIDEEpjo0FDkbPR2WMtRBJggi5nA7SWXEf0dtbT
         nFNMHAFo5LauVkWTrDM/KnBaDMhwK74WLJrnNzsHPkbW3DCbWYxD3dR5Jxdtmm/0ruRk
         x5NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8mkQGMBJrk6BBcb54d2vy4LTJbv5rtmJxE9+gCXOISg=;
        b=ZJi8cWrDb+4Rti1WhA+CrvT0BC6Zo1cIfpuRzmCF9lI4k2fQ0ncWBc6G22P0aRP6EK
         95rZ9QCkNv3MJAjx8UsTPbACa6Q2SzgcKckATFoSHVVW3sKLZe7ERVgYkeCvD5QBnayP
         FwjYK26HRvWos/L98ngIJlmLj04wY8H2KSyOCK1EVr+BJGM9C98Z47eQAZBZNeFCNRZ/
         d/S9MKINR7jqBuafgJmIDCe0w1KpKexW/eVrUub0GC/VyB77sUpdamiwybCRtlF9Fpko
         DKna/qG5N/6t3amLe+ihITzgT2saysre1tJzluOpj2LeW1ezoJVMz0/daFLsHqwKH830
         bAAw==
X-Gm-Message-State: AJIora8hD3w30dEk72pl8jgMRz7wMsH/gAULGBnn/Eol4QV3LkzGNvjU
        pyQI+nBl30UQpVG0PB3RXkJu6xvzCUvUGw==
X-Google-Smtp-Source: AGRyM1umul2cveC2V4GU+0IxkIzY8laM/4iExUGl7/26opoj35jWKuOY+a+v9t5hKuNlHM9fOttTcA==
X-Received: by 2002:a05:6a00:1907:b0:4f7:945:14cf with SMTP id y7-20020a056a00190700b004f7094514cfmr6525417pfi.47.1655412467848;
        Thu, 16 Jun 2022 13:47:47 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id 203-20020a6218d4000000b0051ba0ee30cbsm2165453pfy.128.2022.06.16.13.47.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:47:47 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Russell King <linux@armlinux.org.uk>, soc@kernel.org,
        arm@kernel.org, Olof Johansson <olof@lixom.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Gregory Clement <gregory.clement@bootlin.com>
Subject: Re: [PATCH 1/2] arm64: dts: marvell: adjust whitespace around '='
Date:   Thu, 16 Jun 2022 13:47:07 -0700
Message-Id: <165541242280.9040.16872355826350454829.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526204525.832847-1-krzysztof.kozlowski@linaro.org>
References: <20220526204525.832847-1-krzysztof.kozlowski@linaro.org>
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

On Thu, 26 May 2022 22:45:24 +0200, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> 

Applied, thanks!

[1/2] arm64: dts: marvell: adjust whitespace around '='
      https://git.kernel.org/krzk/linux/c/8c1be9336e9ae3e5e421f04143cf5967f5436364
[2/2] ARM: dts: pxa: adjust whitespace around '='
      https://git.kernel.org/krzk/linux/c/4580f60b2337aa9f1da5a493adc5d609fe126185

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
