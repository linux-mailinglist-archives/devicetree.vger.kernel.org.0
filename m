Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D28E4566857
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 12:42:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232696AbiGEKmI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 06:42:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232601AbiGEKlx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 06:41:53 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B81A15804
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 03:41:49 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id u14so14008355ljh.2
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 03:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yXc+Prr4DbJDCgfua89JS6WqSlcrYbx/0IPvUTsg/mo=;
        b=mQt+tU7RS1jXFbE8wvtCiMS6lfjLbDPt6BdZGiX/oYUOanOmZ7khKA9v6zrIyMM5Mo
         hq8JIiW/jcpErXRVxrdlWLnvhjyAOcqmh/iRAKbcIaPrxHWvClLvBWkgUGTxA8u1zFdE
         h1bkwldxqOmcn7DmonDpaUCUaaa6jiWoT9Swk6r70bdxkZMl2Diq2Rxkl1I3j8Y8AQbU
         p1FL3XjQK9QeHEA0duvzpgJWJYP9gI6t/5v2vgtE9mrp4wIWZdUDgWDp3AUnCq72QYE7
         OFyOvG8+bYLyBXpi2K3AzylrbAGjDpfCYlq1SUKYuyWRZ+8JyDZO48bx2Q+WRuOjd4Ik
         6OWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yXc+Prr4DbJDCgfua89JS6WqSlcrYbx/0IPvUTsg/mo=;
        b=XkI2Tpp3pg9l6V+06EFR0iC5uXf82JwwQhIntrixXMOzYib8Wivp8dfTZiAINIDUQz
         bNW53RJqn5bonRP3RXCuu+6xP3xcC98J4R0C6TZ6lUHV7DEpGVHdbUExUfLG69yXd03m
         FLcg7qMuIBy3rPXgflD/z+i8R9sEIcJAG0LdRCXxR4Xx9fII9PL2n/A+a2TpH2kz9259
         x6hIBdb/T7k3jel43pxYPmgK4GLduyUca2y2sCgO3XmTPTxjCycr1dzwYRVkfp0NSCkJ
         TEKIJxdJ3R6w5/pjFkeNSNkQLl08SuwH5RJkxbsh+QDD+pw2sCK1szUeviIyDWo6igbN
         bCmQ==
X-Gm-Message-State: AJIora9Cewp+O225I+GxKoJNoN3XUk1rGnW6mUxdwKst+6tNuzP5HAm5
        93JnlQ+/HDp6jfoFHOhMqXiBCQ==
X-Google-Smtp-Source: AGRyM1vmClI3Lgp7k0hvQIisOwBNarbPnAGG0NmsUx5y/6BBbXYfXCc1w7b9DLnDbxa/RocKUKfu9Q==
X-Received: by 2002:a2e:bc22:0:b0:25b:c3b6:eb11 with SMTP id b34-20020a2ebc22000000b0025bc3b6eb11mr19998826ljf.122.1657017707984;
        Tue, 05 Jul 2022 03:41:47 -0700 (PDT)
Received: from krzk-bin.home ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id q24-20020a056512211800b0047f615b5cbfsm5619814lfr.211.2022.07.05.03.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 03:41:47 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        chanho61.park@samsung.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        jaewon02.kim@samsung.com, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, alim.akhtar@samsung.com,
        semen.protsenko@linaro.org, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v3 4/5] arm64: dts: exynosautov9: prepare usi0 changes
Date:   Tue,  5 Jul 2022 12:41:39 +0200
Message-Id: <165701769258.78614.14259965932829296384.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220701015226.32781-5-chanho61.park@samsung.com>
References: <20220701015226.32781-1-chanho61.park@samsung.com> <CGME20220701015451epcas2p2d3f57de43762d78269bd7981b22ea987@epcas2p2.samsung.com> <20220701015226.32781-5-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
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

On Fri, 1 Jul 2022 10:52:25 +0900, Chanho Park wrote:
> Before adding whole USI nodes, this applies the changes of usi0 in
> advance. To be the usi0 and serian_0 nodes as SoC default, some
> properties should be moved to exynosautov9-sadk.dts.
> 
> 

Applied, thanks!

[4/5] arm64: dts: exynosautov9: prepare usi0 changes
      https://git.kernel.org/krzk/linux/c/aae10d2bc56fd5c4e9741b98f220e56ca88bf7ca

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
