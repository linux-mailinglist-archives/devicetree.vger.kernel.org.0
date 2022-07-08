Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B435956B95E
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 14:16:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237919AbiGHMMD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jul 2022 08:12:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237978AbiGHMMC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jul 2022 08:12:02 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 516059CE28
        for <devicetree@vger.kernel.org>; Fri,  8 Jul 2022 05:12:00 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id b26so30309371wrc.2
        for <devicetree@vger.kernel.org>; Fri, 08 Jul 2022 05:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8w8iUnO06xpNNTx1uNb/VB35F/Bn/nD/eESgVEkqCWk=;
        b=rkYLkHFWtyAYhX2gYXIXFR9VqWhIThf8hJGmlpcr5pedzfOUkhZS2FT9jaR87iAWpF
         LP5mzBIAq0ar7sEnqj7wZjcI/B9OKhA+Dk6kdqVhjjYEza0CNnWrVnGkFqrjmFzZS6/h
         ltfCKvue/44X/0XjTI/fDHUwUmE1XqIv/Vlv84JH+XopP8PekPB34mbFdEFdLIOfhks4
         LdDkAoJLrTrRbBHkYXlInHv9P0SDWa4XH5qLWh4U39D0172Kl/qrBLQU8OS9GULiQjVZ
         xduV/jy0r0DbyoSoay+380Sa1tG2cHODBEWs6SF7TyuDEbI/2yy3xwLBwBGmala40EYA
         wcBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8w8iUnO06xpNNTx1uNb/VB35F/Bn/nD/eESgVEkqCWk=;
        b=58JONgGQz6VBhvNVUwD67W1m5r+sTvHvdhY0jvwMnZWrqNLZ6vH5TfoUjsdYUor8qq
         izbqWHZnw8qGo4KRgZ7GP0mE06DTsIIFCDTQl86u3MXKZZd2xyOLBlnZPaOoaW01AInk
         s/SOeulCUtDj9chRV9FJUFJar37lxwQvFBH6vzWRzpwmigRXyRWK534VMq9sIPHkiJle
         bO3u2QpxopNOdO3ZNr1HdSBa2jzXZfy18c170rTucMGXCLzsvQIVX0Cpel3Neh2MDPgg
         +eLAdowxf++PiOh9W3C5Igj6cXQYOfoiEwQTBJ/995f31ErpA6Wssuac3ZAqzUCpjb9v
         fsKg==
X-Gm-Message-State: AJIora+vkVxx+G3om/nwoiMzikYibKvtOSVQUzDE963NpOF98VcMYphi
        qsFQbsruBYoiDWX4Iue8SiPFxw==
X-Google-Smtp-Source: AGRyM1vQuLeTvDT59elqz89G6EwR6xpO739ErCOJg2JIBohiqo5MAy9lHed0BjiYPiw23B54pXDj4w==
X-Received: by 2002:a5d:6c63:0:b0:21d:2a53:c7a9 with SMTP id r3-20020a5d6c63000000b0021d2a53c7a9mr3180760wrz.34.1657282318803;
        Fri, 08 Jul 2022 05:11:58 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id l3-20020a05600c1d0300b003a03ae64f57sm2030549wms.8.2022.07.08.05.11.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 05:11:58 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     ilia.lin@kernel.org, agross@kernel.org, rafael@kernel.org,
        viresh.kumar@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, stephan@gerhold.net
Cc:     linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: [PATCH v3 0/3] msm8939 cpufreq preparatory work
Date:   Fri,  8 Jul 2022 13:11:53 +0100
Message-Id: <20220708121156.2165250-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
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

V3:
- Drop the exclusion of msm8939 from cpufreq-dt-platdev.
  I'm happy enough to bundle this in with CPR. - Stephan

V2:
- Previous series title "qcom-cpufreq-nvmem: Add msm8939 with some fixups"
  https://www.spinics.net/lists/linux-arm-msm/msg116201.html

- Drops adding msm8939 to the cpufreq-nvmem layer at all.
  cpufreq and CPR go hand in hand so we need to do the addition to
  cpufreq-nvmem in tandem with the associated CPR driver update. - Stephan

  We can still add in msm8939 to the cpufreq-dt-platdev block list and
  fixup the dt binding check errors found doing that.

- Adds a patch to the error reported by Rob's bot.
  Rob said he thought Krzysztof had a patch for that but, I couldn't find it
  so I just added a fix as the first patch - bod

- Adds Acked-by Rob to second patch
- Adds Acked-by Krzysztof to third patch

V1:
Fix up some missing compat strings for the qcom-cpufreq-nvmem yaml.
Add in msm8939 as a compatible qcom-cpufreq-nvmem.


Bryan O'Donoghue (3):
  dt-bindings: opp: opp-v2-kryo-cpu: Fix example binding checks
  dt-bindings: opp: Add missing compat devices
  dt-bindings: opp: Add msm8939 to the compatible list

 .../bindings/cpufreq/qcom-cpufreq-nvmem.yaml      |  7 +++++++
 .../devicetree/bindings/opp/opp-v2-kryo-cpu.yaml  | 15 +++++++++++++++
 2 files changed, 22 insertions(+)

-- 
2.36.1

