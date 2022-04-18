Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7DFF506014
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 01:10:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234310AbiDRXMn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 19:12:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234342AbiDRXMm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 19:12:42 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 754F916591
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 16:10:00 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id m15-20020a7bca4f000000b0038fdc1394b1so410806wml.2
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 16:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=P2eS8dVsua4f7NZqwwIN43RTvkPV8UuibGewXew9r9c=;
        b=n/beXps5kGdnYp4k0CPcZPGOpRVwWmzgCseSSJvifvrk43ZGeiJEVxdZcC8wPniAgt
         TB26z4ahk8m8NHyhUX1YdTdhvzI81Ynn0XX/NzMatB31FKkWtWQOpyXoAzerM4/HKgj3
         BN1c+jQKh5pv3fk4/EiQeRbdH6mclmrn70oyLov0cFxwGSINBzvDz0dnRptIz1S4TqqZ
         Qlv7bc1c6FYtuaIMJdzsYNMVoJTojQvKhuxvOjMNPQODXCQwWNQWu2HZK+7MQMF0Ny2X
         pa7TiGA1DW4GJdFEcWH1bGOgs5hysLv9AG3yq/m6VMqWflN3HWGhj7qAxkSxgPJpknUK
         rpKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=P2eS8dVsua4f7NZqwwIN43RTvkPV8UuibGewXew9r9c=;
        b=NkpQ/x4z+M8Sctp3PJZ6Fc3lJrI6l7ahwQVyzhII5X+FRXV7ndpM8MAYdeI7jCv+ya
         j+XJxqXfJv9XYqYSVdz34YiWXclMF4tYd7rTXthmc1JdWIEsQn84bYxuNGfJ55cxqPqZ
         bBGLqz+f6nDSmGQXrfJd0HG8HrqKhbKX1Uh6WxI6ug/HLDV+YK2Z/3QUcorv3t8s873F
         Ib4Pw1wEFHwRxZIsqawQ6LtxE9Ix/mk3XegIg4AsBWky8Qtx8akmU2NCj6F+mhzE4EH1
         JLD/cJR7aimjHXt54/JCSpR5NLvRCyQo1rvzch8z2p7R+pFmcIlUvrOKhG4VK7scHOjY
         +pOg==
X-Gm-Message-State: AOAM533ymqPn0GokC2FDfbrfEbtX2mS6QlnL/C5a31UJGOSXf4RQj7WQ
        ZQ0VdfYv+fcvN52E23775AfVtw==
X-Google-Smtp-Source: ABdhPJzRGfJnMqMhSrtoacpg2O0W/2btZytxeb9m2V4HTN3SDQCCBRmi2vG/aBKD02PYXZkGu6n25Q==
X-Received: by 2002:a05:600c:4e87:b0:38e:ada5:5c6f with SMTP id f7-20020a05600c4e8700b0038eada55c6fmr12835776wmq.21.1650323398675;
        Mon, 18 Apr 2022 16:09:58 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id f14-20020a5d568e000000b00207ae498882sm11187567wrv.32.2022.04.18.16.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Apr 2022 16:09:57 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: [PATCH 0/2] Fix apq8016 compat string
Date:   Tue, 19 Apr 2022 00:09:54 +0100
Message-Id: <20220418230956.3059563-1-bryan.odonoghue@linaro.org>
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
 sound/soc/qcom/lpass-apq8016.c        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.35.1

