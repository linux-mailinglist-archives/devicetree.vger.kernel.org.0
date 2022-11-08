Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6022620C64
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 10:37:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233779AbiKHJhF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 04:37:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233799AbiKHJhE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 04:37:04 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C30D127930
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 01:37:01 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id s24so20202865ljs.11
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 01:37:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/IOGz3JIjCjJ+AfC0TfrJGceNt7uhIjDuv8tUMl3IPk=;
        b=fYBxFH8nQzIrfsjs1Pfp8dYfCKoJlv2dPKJ9vpdmLS+dnjpkz14QfOmyTW85cmfXAg
         AQ1m6RdChNtONceYCxrVVEbUWS/6T3r3ilHKs0ckmoYBA+LBFohxBPeS1Gq11Qi/2rgF
         A68af37wTkju8vMZ5dQE3NBVhjTixMxbOYV3/KB7lH1jbilq2vUN9Q1dP/dajt4+819c
         iu4mZi9f9Qf5AGhOAq/Rx/Qpi6I7Ds4+mAk2upkN13qwXuWYMbdMvhJeRr21RdLFpk0/
         N1Y4RRVOjAe5s6zVZrnq6h1anLGbTPDXRJJqBNUXrdie0RsvOY6Ev7HvUYQwAJm0vw2i
         yt8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/IOGz3JIjCjJ+AfC0TfrJGceNt7uhIjDuv8tUMl3IPk=;
        b=uZ42sSNw9/r+oFbGzbZD5x4J2PkZjoz0wVbFhyt6uYp0jEMb/QAVS2HqvplN03paLd
         VhJMRoeJx7YhXaL0QC4HAwJnfn0bfa8eLsyFY1FMiJv6vefF/VPWA0L6d9rbtHFFHG40
         kr7bo2B78tZEOy/RvushlT/E7KSJuvElGmsn1wWvsx1vEWAOYv/Cj3EDQMi/LRouKcqP
         uXt5MMg8mamQ6Ljdx5lytao8sQMllx/fLp9149jFUFOpqcTnfV9Fy9wARXxyb2g5pW5E
         CcAA7K48QbQCcB4ZzfEW+vJSd+etyoAmPr/Fh30ESnuf/uhngnxdJqsGca5Q3UWxe/D0
         Z5Og==
X-Gm-Message-State: ACrzQf3Nxpp/Jbwu9i/AXZdJ2U2RdlAR9j4N1VJWTMaBhSwBBJJkhf1v
        xmXS8zT7sGFkRlQhsk7d5n509w==
X-Google-Smtp-Source: AMsMyM5zKaceMhir3TCvSjW3E5V722syxQYPWOSTQ5gANUjFP4AgoeOyAfzdbFGDCU0lH+EkdLONrA==
X-Received: by 2002:a2e:2e1a:0:b0:26d:e38f:7e21 with SMTP id u26-20020a2e2e1a000000b0026de38f7e21mr6451877lju.273.1667900220156;
        Tue, 08 Nov 2022 01:37:00 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id d32-20020a0565123d2000b004a2386b8cf9sm1704478lfv.206.2022.11.08.01.36.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Nov 2022 01:36:59 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: (subset) [PATCH 2/2] dt-bindings: pinctrl: qcom,qcs404: convert to dtschema
Date:   Tue,  8 Nov 2022 10:36:57 +0100
Message-Id: <166790021413.13942.4359654341384885728.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221104161131.57719-2-krzysztof.kozlowski@linaro.org>
References: <20221104161131.57719-1-krzysztof.kozlowski@linaro.org> <20221104161131.57719-2-krzysztof.kozlowski@linaro.org>
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

On Fri, 4 Nov 2022 12:11:31 -0400, Krzysztof Kozlowski wrote:
> Convert Qualcomm QCS404 pin controller bindings to DT schema.  Keep the
> parsing of pin configuration subnodes consistent with other Qualcomm
> schemas (children named with '-state' suffix, their children with
> '-pins').
> 
> Changes during conversion: add sdc1_rclk pins (used in qcs404-evb.dtsi).
> 
> [...]

Applied, thanks!

[2/2] dt-bindings: pinctrl: qcom,qcs404: convert to dtschema
      https://git.kernel.org/krzk/linux-dt/c/d9bae354bc5666453cf7297fb566306cd53cfcbc

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
