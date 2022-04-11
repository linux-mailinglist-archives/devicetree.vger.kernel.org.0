Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 205D94FB15B
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 03:31:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242942AbiDKBds (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 21:33:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237353AbiDKBds (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 21:33:48 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1F053E5E9
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 18:31:35 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id i20so7717940wrb.13
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 18:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CSxhmVmqjVu0+wRdeaKu7iJXMPwjGKSYtT5uODsHuMI=;
        b=A+S+TZ4VQBZCVqfPvROZ9q2/PehrS7GEyg1boF6ipdT1mkqhwZyQznapqXLlfORK+g
         YZF3UYXr+UKy3dLHgEfDs0y9BlelHJpekhCof+ZnYSwOpMjkyUlRTcRkB0XkPBjB4WpI
         nwzuE69yS5PYh55mvuBrLsCuKl7tMz4VbI90qTAR85uMHs0wAr1X7dOVympQgLWp58u0
         TBJtHRtw2sPfx5nmvvYr82YT7YAnBGzYWrngDhbCqVHV+i14w09NUk7nLkwrbekoYuxo
         MGMSVmo6YxDNkvZAIwy+ggZwbU51Zv2usSTF8ziU1lc+Ac4OCNyKK/cyvllWN/gpXMqa
         Pktw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CSxhmVmqjVu0+wRdeaKu7iJXMPwjGKSYtT5uODsHuMI=;
        b=MmTGXCRqy6mYI5xE7LbxyYAXKGWwmCWKnCOxYfeeTOlHHJ43Oy3kPCg8Fi5YL9oP/7
         Cm94/cDLvj7G9/KnW6c80IiUjqmRgwCL+GR5TYFIZRWaNWjYy5N8cZ7A/tAd0ILQUsb0
         RTeK9H2YKKEc+7CQqV/53sO8NjzGAzvyUX1CalrmUbKOmKeEoeOs24g5+sE2Xvavq1Qg
         qZAov7e2t0WigREKLht17Hu30d28kFGOfWlZ6Bh1io7YFcq2qNiKy7ulu9GslZk+u5m+
         f5yXQpWYV35FqDPl0N74J3OskJV+h4m1uON5BszlISzm7wipmdk2yesf3kmZeVOSTkuR
         2eWA==
X-Gm-Message-State: AOAM530IOASx/gUZe0zWPx10jjg+0uIlyQlbcpApJQAl3NX1hVj0xOrT
        uGF9R8CbJaBTL2HhiyeF0oI8Iw==
X-Google-Smtp-Source: ABdhPJw90xyqsAIQOpUD5QpKSVPZtafWnFCuMECn9I687JeY87BRKUyCakQ3dEJT6mvHA6GjcpUWJw==
X-Received: by 2002:a05:6000:100c:b0:207:a2aa:8d15 with SMTP id a12-20020a056000100c00b00207a2aa8d15mr4742827wrx.394.1649640694564;
        Sun, 10 Apr 2022 18:31:34 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id w1-20020a5d6081000000b002061b616b83sm15862934wrt.39.2022.04.10.18.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Apr 2022 18:31:33 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     paul.j.murphy@intel.com, daniele.alessandrelli@intel.com,
        mchehab@kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     robert.foss@linaro.org, hfink@snap.com, jgrahsl@snap.com,
        dmitry.baryshkov@linaro.org, vladimir.zapolskiy@linaro.org,
        bryan.odonoghue@linaro.org
Subject: [PATCH v2 0/2] media: i2c: imx412: Add regulator control to imx412
Date:   Mon, 11 Apr 2022 02:31:29 +0100
Message-Id: <20220411013131.3553098-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
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

V2:
- Drops redundant verbage "Defintion of the" from each of the newly defined
  regulators - Krzysztof Kozlowski
- Adds Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
- "description: thing described" to the same line in new additions
  following the established way of doing it in this file - bod

V1:
The imx412 has three regulators which depending on platform may need to be
individually enabled.

- dovdd
- avdd
- dvdd

Existing code for an Intel platform doesn't appear to need to enable these
rails directly. On my reference hardware, a Qualcomm Thundercomm RB5 some
of these rails do need to be enabled individually.

Add in the above named rails as optional in the YAML in the first patch
along with code to switch them on in the second patch.

Existing imx412 users should get dummy regulators populated which the
regulator_bulk_enable()/regulator_bulk_disable() code can safely ignore.

Bryan O'Donoghue (2):
  media: dt-bindings: imx412: Add regulator descriptions
  media: i2c: imx412: Add bulk regulator support

 .../bindings/media/i2c/sony,imx412.yaml       | 12 ++++++++
 drivers/media/i2c/imx412.c                    | 30 +++++++++++++++++++
 2 files changed, 42 insertions(+)

-- 
2.35.1

