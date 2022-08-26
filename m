Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CBCA5A27E7
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 14:36:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344293AbiHZMgC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 08:36:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344192AbiHZMfw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 08:35:52 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D3AEC2766
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 05:35:51 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id bs25so1668832wrb.2
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 05:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=fBJ7mlL4B6dgX7Jn6GDpLICbORkPdqsPpx/Irv1VRwQ=;
        b=vt5+zcek6yOoHf/CxBlmXehhdTslXBuD7tniMBJ+mhzL6P2aogKD9cBvN31VrVbyCM
         g0AgGqqWjXuHd17+vb/G4xz7nk2Ty8uuni1loh0Xzt9ByQ8vAEWsjXyz+WrgfedjlWC1
         IUHl/I0mE3+Os+lmkhopvNrJgKqZ1Jv8419PDfORgSXd+sHugc6Qt1619tq8l3ChPiAR
         dYZB6NCUdIFf4/QCaQKwJLjLSBVe3C587ZtwnT5Y20HXnQhi+xk0tkLkJwvDybFmR6I8
         Z9sNGbC43iR4ADkygF+ZbNMMehJx+EX9ZwE4v40j/YtNbilMkGSuK23FoVAjeFhSxFjl
         Enlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=fBJ7mlL4B6dgX7Jn6GDpLICbORkPdqsPpx/Irv1VRwQ=;
        b=rio46rv5QNhrpaPVYrfW6IGo+xiWA71yaWaOTuP90wT9ltM4p8aAYOvX0VVvxp5Su8
         qmzfp/KjFBw/3ZqGlnMI9XCbsJr9STlPy6act2sKFXCzAo8BD5t6B8FgJyD7MntjPqFA
         Ba9g2zpF14yWNNULUojETaUpSXWX3M3ATYwyaDnSkj7W7cFO2Xn1/Iz0ns1w59Sk+HLz
         YhAyrKzOls1n48aR6bg/5dCteL2h1TjOE3CIjiU6F1HVT3PPgy3NyEKlE0s6YrRoymst
         Wl6kSmhS80R2WBpVAV8j2oXtmlLrclHdIS+ePjKvmmcahLetXgFo5aKOYVhDFpoC9GbL
         6URA==
X-Gm-Message-State: ACgBeo06mAXslLFOfxGv48Ab4OuIxb1FgmACc/aQoS+yAYOMFU+dz7OH
        nzbgMwYDXAqDt3UzqJlRb44udA==
X-Google-Smtp-Source: AA6agR6qZYt3ipgSrUHrq5Or8V1GGMtjI4XbWNdIX4nd22sW82VcnQ4wznzUGx6InHLLyJtTSyGyWw==
X-Received: by 2002:a05:6000:184e:b0:225:4608:c6a6 with SMTP id c14-20020a056000184e00b002254608c6a6mr4745717wri.108.1661517349800;
        Fri, 26 Aug 2022 05:35:49 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id q62-20020a1c4341000000b003a3442f1229sm8359839wma.29.2022.08.26.05.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Aug 2022 05:35:49 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org
Subject: [PATCH v2 0/1] arm64: dts: qcom: pwm: Drop PWM reg dependency
Date:   Fri, 26 Aug 2022 13:35:46 +0100
Message-Id: <20220826123547.3392457-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
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

The accompanying patch removes reg = <> and pwm@reg from the yaml and dtsi.
This follows on from discussions between Bupesh, Dmitry, Bjorn, Krzysztof and myself.

https://lore.kernel.org/all/20220719205058.1004942-1-bhupesh.sharma@linaro.org/
https://lore.kernel.org/all/20220721195502.1525214-1-bhupesh.sharma@linaro.org/
https://lore.kernel.org/all/20220822120300.2633790-1-bryan.odonoghue@linaro.org/

The previous discussion tended towards either removing pwm@reg and reg = <> or
extending out the yaml to support multiple reg declarations for PWM compatible.

This patch does the former. I've left node: label in place, dropped both pwm@reg
and reg = <> I kept "label: nodename" though because it looked more like what we
already have for rpm regulators.

Per our previous discussion I've modified the yaml and dtsi in one go.

Bryan O'Donoghue (1):
  arm64: dts: qcom: pwm: Drop PWM reg dependency

 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 8 ++++----
 arch/arm64/boot/dts/qcom/pm8350c.dtsi                     | 3 +--
 2 files changed, 5 insertions(+), 6 deletions(-)

-- 
2.37.1

