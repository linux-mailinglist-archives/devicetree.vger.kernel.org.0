Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D22F76318A
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 11:18:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233589AbjGZJSX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 05:18:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233767AbjGZJSD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 05:18:03 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1367A46A2
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 02:14:27 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9922d6f003cso1091873966b.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 02:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690362865; x=1690967665;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uBNaL4R2l6hdwWD/142gRI2boOE0YiHyAV9PIcKLPWI=;
        b=xBCZWSbh21eMLQfHBo7UXc3G6P7mjLXqgkKcaEH7tmgFHCRqsjX0Sn90BX0Gi2xsSz
         r2laJNx0jiCRFR7lnNMgbxkjOia9yMBdr7saDdhFBfpLQE5FCfq4EdRziLhS/KU3MtTh
         q5cwT7r7iIoy1iTpiKalgC3NFZXYNkgOp1Bni2XdLX+crgOZElPoxcSKcMqOJml7Z2FC
         kdDTEGtFHNXhYgV3tBaw2EKmhDXP6iL1yTdovjlBSW525O3r+nZylsrfcGpOab9qs6Ke
         yZdhkWpxgzyM7A+biOk9z2pOoSYQ0i8las5mu3gewwQJUmhkYfu9bHN65J08KlDb+R+G
         IeHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690362865; x=1690967665;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uBNaL4R2l6hdwWD/142gRI2boOE0YiHyAV9PIcKLPWI=;
        b=hiRkwu/Khzr8C9LJULdj7iysl8uvKiGrEqAdLR4zpp1J/xUZjB/CiXtwNodvswa9Wu
         FcGdmF5WudFOTIuyrSAt6KQ9kFjbJqd9bz40tu8aCDnpSRWUvZKe3rcPw+3R91dpGGpJ
         eLgJ/3um2uudHe+mEUNlwNTh9DA3+U96K0f+I9F2jY0spJ1txKz6cVqv1Boogfdx3WBq
         2W4fTP7GesP44FzRZdbj1UtmF6BQwJdSKWdy3X4goYXu8SmvBHTgmu8ZUKS4WzV6ODZ4
         aYcPQ91gC4ohEt9C93ZxFGyAkEb0LVPDmDyXEObt2/ssvWcfoQpstMpmk4q2bzSvXWZ8
         KdNg==
X-Gm-Message-State: ABy/qLbtkM+84HQGURb/9B9Yj2xLrZpGbiTnewAhe0ZIEf9Fn9rR7MYC
        cwuVSDJ9DBE/yfQrgPr1hV3xIiGlJpAw27fKdsw=
X-Google-Smtp-Source: APBJJlENHS1zX4Rvh36zpRv8rVcGgK91e8CGUWJyXMRNxPf0sEuzwMhIO9VfThOGQJHa3oTVDJpKAQ==
X-Received: by 2002:a17:906:cb:b0:99b:b2fb:27b3 with SMTP id 11-20020a17090600cb00b0099bb2fb27b3mr1341837eji.41.1690362865041;
        Wed, 26 Jul 2023 02:14:25 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id w8-20020a170906130800b00992b510089asm9384492ejb.84.2023.07.26.02.14.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 02:14:24 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v2 2/3] pinctrl: qcom: Introduce SM6115 LPI pinctrl driver
Date:   Wed, 26 Jul 2023 11:14:15 +0200
Message-Id: <169036285578.127914.3038916520706013414.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230722-topic-6115_lpasstlmm-v2-2-d4883831a858@linaro.org>
References: <20230722-topic-6115_lpasstlmm-v2-0-d4883831a858@linaro.org> <20230722-topic-6115_lpasstlmm-v2-2-d4883831a858@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 24 Jul 2023 13:39:57 +0200, Konrad Dybcio wrote:
> Add support for the pin controller block on SM6115's Low Power Island.
> 
> 

Applied, thanks!

[2/3] pinctrl: qcom: Introduce SM6115 LPI pinctrl driver
      https://git.kernel.org/krzk/linux-dt/c/63f7c8445ffe6667ac4cc9720ca36ad7d407709f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
