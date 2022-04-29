Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 80A2F5157D0
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 00:04:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239383AbiD2WHN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 18:07:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239116AbiD2WHM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 18:07:12 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72FA0DC5A4
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:03:53 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id v12so12374925wrv.10
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WlKreU/40nqHXZVuM04jB73cOMdB6bCilZH4/EUmsSc=;
        b=n4+px7ACcUlP0Wfx+T6iHCxr1Vc86umHuGfMRGQrobKs8oP6qIIMABXE2sci6KtQ5x
         P2XMRlvR4DTb0ZYnKuKWVtmdZWlCrXoOi47WkyNeciToZnJMCb4JT1S4KrYGGShYBAlg
         GaeJKPYNUtrL3Dk+aCvys5N5viggYDwCRqxGdjnFYL+FS1XwfSqRAV0Njc5UCyb+b0Rv
         dd3kxk3swMQApOibnAll/ohTcRjlHRFrAa9GWYf+l1OO564yPZVCK58VCesMngbZRJcJ
         oFctmt7CezIieGMBj5WlyW9f7T1z6gNxEi41JqYWMbxx2xL+qEzvncQ1dDOBmHDL2kjj
         ME/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WlKreU/40nqHXZVuM04jB73cOMdB6bCilZH4/EUmsSc=;
        b=LXNLzIh4XfHOsAcu2pBIJbp3haqhJ1TdnRtPlEOKGKJ0j+JP6b+s4IYzwEfBFa+8Mu
         HCYshqVF5nMKl1c7CRZCh0C89hT1VwIscmvJbEM/qNAi66JTMa7CI9QgOn5KuhBm+2Kz
         sp0UMy+4cT0ilfNx2pD2PUyaXJV7wGBQ9IPqpRABxwQ7xE4J2xSue7XNQWnxPPb6yFP3
         ckgFvv8BxCOfhFZVMYD1+cTLpr/gjJWMZKB/TEJG29BNpodb6ujcPSo2HN8lxoI0R9KY
         jgQhP+IkOMcuunq0aDJbQH9aMQlr3fXXWACjHc4APf6OpqInm+60RG70kQdYz9uGS1QF
         4vrw==
X-Gm-Message-State: AOAM532NTwuulhu0f4Mdhhc3wRiPoL+/0UeeFX4Iv7LlWMCXa/+Dc3y3
        pbNKPSq7S85g1vkibddU7TetQA==
X-Google-Smtp-Source: ABdhPJza79uXwOTQLJWxXmqcwnPj+Fq2RYfShAd+r4351XRF8jTdg3JbbWq8/PrrhDZGryRtqmMKQw==
X-Received: by 2002:a5d:4702:0:b0:206:b8d:3dce with SMTP id y2-20020a5d4702000000b002060b8d3dcemr866064wrq.646.1651269832079;
        Fri, 29 Apr 2022 15:03:52 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id k15-20020adfc70f000000b0020c5253d90dsm338311wrg.89.2022.04.29.15.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Apr 2022 15:03:51 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     srinivas.kandagatla@linaro.org, bjorn.andersson@linaro.org,
        robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: [PATCH v3 0/2] Fix apq8016 compat string
Date:   Fri, 29 Apr 2022 23:03:47 +0100
Message-Id: <20220429220349.1142759-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
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

V3:
- Marks qcom,lpass-cpu-apq8016 as deprecated instead of removing - Bjorn

V2:
- Adds Reviewed-by: - Srini
- Adds Fixes - Srini

V1:
Reusing the apq8016 on msm8939 I found running checkpatch that the compat
string for the LPASS was throwing a warning.

This is easily fixed by alinging the YAML, DTS and driver to the documented
compat string

-			compatible = "qcom,lpass-cpu-apq8016";
+			compatible = "qcom,apq8016-lpass-cpu";


Bryan O'Donoghue (2):
  ASoC: qcom: lpass: Fix apq8016 compat string to match yaml
  arm64: dts: qcom: Fix apq8016 compat string to match yaml

 arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 +-
 sound/soc/qcom/lpass-apq8016.c        | 1 +
 sound/soc/qcom/lpass-cpu.c            | 5 +++++
 3 files changed, 7 insertions(+), 1 deletion(-)

-- 
2.35.1

