Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6A6E5B43AC
	for <lists+devicetree@lfdr.de>; Sat, 10 Sep 2022 03:42:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229751AbiIJBmM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 21:42:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229599AbiIJBmL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 21:42:11 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AC0578BFB
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 18:42:10 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id bg5-20020a05600c3c8500b003a7b6ae4eb2so6077897wmb.4
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 18:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=H4VqG/6ZxCN5Dh7jCkZt+AM8SOOoSh34idm5LR+1F6Y=;
        b=rJvAqw9R7VDezv7CmZTSI1YshPPugly8u70at5EuhIqxCyh+U2vv/3E/rr15qPRvUV
         m9mcGr34EDw7wLif3bPonS/DRvVI4yr5YEfMnaNEAT9/JNYYY+3zXHfKr0+ustjkrFxq
         6pHZwUuIzVRfZxJ+3XSwlmE+fyoj610rdlYbI05W9yBIYJ3GlxmXkGpBNH5iozkSoIj7
         nLxvwevq6j7IUcXi1+WIPEWHu4ZfTT5/XudURdLxsASwFagqta8xsNaVhrXetUBE9TYG
         Dg/SZ+ZCCESrSk7PnZJt7b47DULA4zLQS5IUNsjyTGb5caBoy611L4wUGJF6TBR5LPKf
         uoPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=H4VqG/6ZxCN5Dh7jCkZt+AM8SOOoSh34idm5LR+1F6Y=;
        b=4hfhT26YFnS7+ObbMu5ZxPDyaxu3ffF7N3JR2uT459CcD72QaJTA3W/pAzZ+ICjlYv
         C+RnmO5ZgODxvmzoO3HFFShb3iF16xCDL7omsn3YI/JwKpA0Uagkzwl21YWDXmeSs20j
         TyPZUSZ1fJHH95MVVqOhKWRSbhgQOKyki6co378MP775AgoJB4wR0TfPbnC3cL3zlfrs
         wthlOpgLwPNELktvGTfh1l6Tog+7NAuFKfp48gfI5iGhIpnNodFbYZ+0yglDxdTXxmsL
         fqTVZ7p9KVFu76IPC3ABAbYC1bAze2KZJAdLXK8qbMLKHHk5dzFPaf/6Vn6NdhZZtqBT
         M6KA==
X-Gm-Message-State: ACgBeo2gjtgbtEgUWKL86ZTT7sTwjEcGS9RSeL/F4Ma0chLjUCBmTu/g
        AzlEFLPyxFxOm9xMt1PL16JKCg==
X-Google-Smtp-Source: AA6agR4lnIAeVfMqEOHWFAKia+LGKyJMM3xoTgZ8OwpavR+R3R6wn5QMdUanHTeGFSwwCWxo5krJSQ==
X-Received: by 2002:a05:600c:502b:b0:3a5:d36a:8b93 with SMTP id n43-20020a05600c502b00b003a5d36a8b93mr6980266wmr.180.1662774129091;
        Fri, 09 Sep 2022 18:42:09 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id j24-20020a05600c1c1800b003a8434530bbsm2420910wms.13.2022.09.09.18.42.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 18:42:08 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org
Subject: [PATCH v2 0/1] Update apq8016 lpass-cpu compat string 
Date:   Sat, 10 Sep 2022 02:42:05 +0100
Message-Id: <20220910014206.1101962-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
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

V2:
- I polled Krzysztof about the right way to do this and then completely
  forgot to implement it like we discussed. Here's V2 the way we agreed. 

V1:
Per discussion with Krzysztof on this yesterday:
https://lore.kernel.org/linux-arm-msm/20220908105720.857294-1-bryan.odonoghue@linaro.org/T/#mb16386b0b6d45de6a7d7e01733d5b6a7d0b85c25

Mark the old lpass compat string as deprecated in yaml and leave a comment
in the commit log to explain new SoC additions should use the corrected
version.

Bryan O'Donoghue (1):
  ASoC: dt-bindings: Mark old binding qcom,cpu-lpass-apq8016 as
    deprecated

 .../devicetree/bindings/sound/qcom,lpass-cpu.yaml   | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

-- 
2.37.3

