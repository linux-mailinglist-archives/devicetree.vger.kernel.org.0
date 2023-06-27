Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F5D573FFBD
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 17:32:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230363AbjF0PcW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 11:32:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbjF0PcV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 11:32:21 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0AFE297E
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 08:32:19 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3fbaa534dd4so4376485e9.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 08:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687879938; x=1690471938;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DK7yCAKgCYW5NXZNICyn2KLJZam6G9l9RavryTXKAtc=;
        b=jj7bX3aDAW6nTQZinPTLeXKYVv+ILQ9Q+0/s7YGjZhbWEIfmWLxV9xVboHOGJ+fA9H
         X7zLVJXfiWqsD1Fue6eAcvoZsyYVFNFaUMZLpn0jjxwqBBAuxkHzBPJUnK97BbM++cjP
         /EXGO6lJ5uN8FRyVGVQSszwKKKpQa81p9NvQT8+nqvsB83Ef6QJe3v9rzKkL5DszjoiQ
         Q4O0Z6KzAIcRtEOlK6OK7IhewOz0h+9rgr1Hb8YxtgTYOqOhfI5vI1RgesOvInDlbdSk
         w92mCELPsCgsJA3EXIF7mYAkDpJuoVeDwXWeADNEkvfOkA5EQuDJMCE+3K0EdaNMVr7i
         oJZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687879938; x=1690471938;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DK7yCAKgCYW5NXZNICyn2KLJZam6G9l9RavryTXKAtc=;
        b=RKzeIxeTxhL/YGWYWfkimT/YLiaw97LAo1eqpip8UAC/Fyru4flw89ejU8Ynexyoyk
         rZZQJPmLYtTFbUzauoYB3zMScnWIbBy8wM+Yi20SNF1+xCf1uPog/GqpKFKRPM0csqLK
         Zs4fHY6C/35VLi0As1lQwVwA4h0dxEwPolUq32h11xEBKnQuPOV+T1rgn2MGLvO2j2rc
         lbglyvPN7f6Gmp52mdsvnxb2Vu0+7Yn+TAxxRWHe1tucc5C3MQM4zokS8dPf81DXpehX
         vDQgo1q/bexKVhq8cKKfB8qd1DoLr7+xHnsA1aHj/FcK3259DDk1tIMK2EQpwst9TKDx
         KtTg==
X-Gm-Message-State: AC+VfDyHIRwPtrz4UP52FOvUcNdtXL78kVi6PKF3g9HPX7GpLy9mcOmI
        7FMLQYW3dAHAeETCOYuEhgNY8w==
X-Google-Smtp-Source: ACHHUZ5zDhBG/xVbRVuabEsIZl6mReFvcBGh3/mdjyD6QKl3Piftb4S695qMVhNnfP6WfzWMcXsyNw==
X-Received: by 2002:a7b:cc83:0:b0:3fb:4053:a9d5 with SMTP id p3-20020a7bcc83000000b003fb4053a9d5mr4079904wma.25.1687879938348;
        Tue, 27 Jun 2023 08:32:18 -0700 (PDT)
Received: from lion.localdomain (cpc76484-cwma10-2-0-cust274.7-3.cable.virginm.net. [82.31.201.19])
        by smtp.gmail.com with ESMTPSA id c25-20020a7bc019000000b003f819faff24sm14089214wmb.40.2023.06.27.08.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jun 2023 08:32:18 -0700 (PDT)
From:   Caleb Connolly <caleb.connolly@linaro.org>
Subject: [PATCH 0/3] arm64: dts: qcom: some sdm850/c630 bits
Date:   Tue, 27 Jun 2023 16:32:15 +0100
Message-Id: <20230627-c630-uart-and-1p2-reg-v1-0-b48bfb47639b@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP8Am2QC/x2NQQqDMBAAvyJ77kKMNcV+pfSwiavuoansahHEv
 xt7HIZhdjBWYYNntYPyT0y+uUB9qyBNlEdG6QuDd75xwT8whcbhSrog5R7r2aPyiOTatgvdEO8
 pQGkjGWNUymm66g/ZwnqJWXmQ7T98vY/jBLGuw7+AAAAA
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=629;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=blNcX5KJpG6wjPVv6SEusysT4y2CQqLhwbIOq52Pc+g=;
 b=owEBbQKS/ZANAwAIAQWDMSsZX2S2AcsmYgBkmwEBFP5/Se19HEIqDQeA21fb0UckOOvMRisOw
 R24+WkPZKSJAjMEAAEIAB0WIQS2UaFGPGq+0GkMVc0FgzErGV9ktgUCZJsBAQAKCRAFgzErGV9k
 thYsEACRotI0hFo8P+F0uUvncWlc+bIT160hGzdJOOd/wyP+f5R7KmooGSBowRlibN1QVRKVXp1
 k5ss+SDKiKx9o7K85Q1728HSLXPy3hJBLkyt+NbAdmbgytvHxaNNjOJg1TyC7AMGsXOYSFKkoEi
 O29Fq8UkqGscmkNoR5avlyG868kLR+JwuBcf3bZMMtgqtRKkzMN7v+7Uus0pRL+ZT1shPocaPO0
 zYCInlAzexPuNoz/kEesJzuWViabmYWOc8fA0tRuHrBezsVhlUKs0fbT5y3G58daXdoBtwUZlod
 k20et7zeE5ZR1t0SsldBYxMF1dfpDFG7oiwJcT8m8JWr5vNiehz3j/gdvJ0iig9JPDNADJWQjwZ
 32HJm0gdF1klKJH7Yg97FfMrlR//nQGuBVkcx5bKg/u40UUeg9u8XGEy8eGzGRlo1nKUU0JHUJp
 C8KD0sjMu99YtaNGLX4yLDlEmTqfDmZe9QN2mR2jAMJaQGZQjldgrrkE7FyC2/OsmJ1hYCJbx6u
 xYXF+4MWZl9jYRThXiXyeu+8WekpjO37/tndzBVdK6f09n9APOB9CwXBbW/EnjpulegkJuTA22h
 D5HI23hA1/gCP4TVOxW9GIFuufzPelgAl8E2m+yhkeFwrBFNarrMrbVWO0P/fd9jP4HmQpaW7cY
 RX9rSYPcOBMcJIA==
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A few DT fixes for the SDM850 laptops

* Add the missing eDP bridge 1p2 regulator on the c630
* Fix bluetooth UART aliases
* Enable debug UART on the c630

---
Caleb Connolly (3):
      arm64: dts: qcom: c630: add panel bridge 1p2 regulator
      arm64: dts: qcom: c630: add debug uart
      arm64: dts: qcom: sdm850-*: fix uart6 aliases

 .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts      | 37 +++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts   |  2 +-
 2 files changed, 37 insertions(+), 2 deletions(-)
---
base-commit: c3dae0fa8662b2848ccbcdc6187443ca64cd2808

// Caleb (they/them)

