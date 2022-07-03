Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34678564408
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 06:18:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231728AbiGCD6c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 23:58:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231874AbiGCD5z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:57:55 -0400
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD3C1BC8D
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:27 -0700 (PDT)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-10be0d7476aso1955657fac.2
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=2t70EqaCAX2EIHEkB/F1VpDKZkBCdo0fN5cl2gsNC/0=;
        b=pzw90zch/lqhVJuZMTOx8gesTxsUma4Pg8ASH8JTxkCBd/Mxh7EVENuwrFBefxpebc
         12q04WRV5Qe81sH+VrxQ8eFYe0uUW6EzHFXBXtgPZO+eRpszhQlmKjg0ovzT8Xxw+m56
         qX0EA8MFJmSfmaacmEGjN4vVxwihybWzAU5yM3ESzY5EOydFMuakII2R9hK+2kkEydrO
         qm8Hz3PdtE48GMGMgHj36FOT8TRSld6jtaOAAFqToKG+qyrYVwKOYmwjAL2gC2PGOpPn
         +PezBST+2qQetFmEnAcmayF/pq3XpD/u4rx8L0XhvV0B89A7YoPmg3fcSAXRHG//oRlB
         3k8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2t70EqaCAX2EIHEkB/F1VpDKZkBCdo0fN5cl2gsNC/0=;
        b=5Z4Rk8J8xMSwjgjUoPwMkC141hz4I4WDaTJyPtEMjQgvNWRfTfTHcc1O0iDgWHOXye
         A0C91ol/NY7n8BjaL6aT53LljB+Xi24kq1nGZXYhvpj7CIrzifCQu8agJoWsA6CAhjdd
         kD4wWZkAV4/dF4LfOTNl/rkRFDWDPleVg/BHfKbCgDaVHp3+jB1altI468zuKZigwdJz
         meXYrG8QXX5tgrRDB0FyQWNpMgh7dsoOfvKscHNlru4QR3/cfI6dn+nTZrbsSysaxXah
         vGmMitzl+6Z1GKmNf+cAxkaTxkmycBEK5qZU/6ft4QqQ2fTihEico2AXu286whYM8O97
         Qf5Q==
X-Gm-Message-State: AJIora9RIGgHs4GM8YG87Un5wk/C+iZ/F1mafxl5S5VrlcKx3Zrz1fs7
        gTbBouwT4RxI5O+kKr/LOkbQWT3UOSUxYw==
X-Google-Smtp-Source: AGRyM1tfFSgdyku+GAdBGmnenRQEV1SRTVop1LLwpS7Gb8p210aLhk3EsnPy3hUUoysDDLYPPffJnQ==
X-Received: by 2002:a05:6871:547:b0:10b:f2b9:7618 with SMTP id t7-20020a056871054700b0010bf2b97618mr290088oal.146.1656820647355;
        Sat, 02 Jul 2022 20:57:27 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:26 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Zhang Rui <rui.zhang@intel.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Kumar Gala <galak@codeaurora.org>
Subject: Re: (subset) [PATCH 2/2] ARM: dts: qcom: pm8841: add required thermal-sensor-cells
Date:   Sat,  2 Jul 2022 22:56:23 -0500
Message-Id: <165682055971.445910.7709192781079493994.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220608112702.80873-2-krzysztof.kozlowski@linaro.org>
References: <20220608112702.80873-1-krzysztof.kozlowski@linaro.org> <20220608112702.80873-2-krzysztof.kozlowski@linaro.org>
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

On Wed, 8 Jun 2022 13:27:02 +0200, Krzysztof Kozlowski wrote:
> The PM8841 temperature sensor has to define thermal-sensor-cells.
> 
> 

Applied, thanks!

[2/2] ARM: dts: qcom: pm8841: add required thermal-sensor-cells
      commit: e2759fa0676c9a32bbddb9aff955b54bb35066ad

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
