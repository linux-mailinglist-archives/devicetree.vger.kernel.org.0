Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4AB94C3721
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 21:54:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234482AbiBXUy4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 15:54:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233831AbiBXUyq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 15:54:46 -0500
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EF5C1C6EED
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 12:54:15 -0800 (PST)
Received: by mail-oi1-x22b.google.com with SMTP id z7so4934822oid.4
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 12:54:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SfMYjK+50fw94rDD8AQ09+CpZqxJl1X7Nhy87XvsxjQ=;
        b=c0xUO/Sd9SGT/EDOKNVonLQdJ9oakdj7NbdGUhdM20OJqpfFHFXa/jn0zcVvdlMJNn
         dJpZxbLFh5iocMQcR9wuPn8zGvYLQitkGIPz4kQMRDGGwrYI9xMA0glPYdEbjfnkQCQH
         6+jfGV82jux9aNzTwyDNJTWhQBKUUaJBM8dfM2wEPvNS/XGz+gtFSGEbZFSnCZh7xOp1
         NLSXCO4KL/RdnXLgbscjfyttT+10VWP4UGrpqBSIdOkb5DrEhVXms7RKPuAmSiJLHusC
         PXRvOr1xdKgOp6HZoGtvIBAHRkGWlhjJ0BPjODV0a2zmzX8rWfSBYKvjQQX+1Vva0z0z
         QlDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SfMYjK+50fw94rDD8AQ09+CpZqxJl1X7Nhy87XvsxjQ=;
        b=Tds+gMLJJDgXYCT8sIsRHg/bT0Qs8ycNYlthMEPIOWxHZPQjFHh2+t6KiloVmtYtxv
         efikHXoWVNlqUKvMq9ee4KC5vasuK6QnMXps7WfBI5pBDykiyGpKFKWuUjOHYB4ktKRg
         0VRO23Ia+2BgBAUarNBlmMW1dm84sUsQOmdi58mPQiNVzeOInIRynN0f6OWbRV3SYt4n
         JugHshJqQ70mxqwRxk6TwMR+DPRonlZJGdpxhG6+e1oeoSgvaGl8+9VbB6k9fLiBNONJ
         R4E9JvPwVp6x5PQuT2g5sBCkbb8IblGtenICxQztuPaMnlCWIFhpG4mRBL0c9oTqd7F3
         1GHg==
X-Gm-Message-State: AOAM531bIkSBBKHMNaO+eSB5DubtXVZSjFSaIKHBxYLcla41j+xOk9YI
        ckUJkSqvtXfcTwe3kci6K9N68w==
X-Google-Smtp-Source: ABdhPJzzAVIp3uEnEAWpsNCodGfe1KfuXcOoOdPofq8pk28A2tLDnfnHxn0n7TJXb0wFfzg9s+ol8A==
X-Received: by 2002:a05:6808:23d0:b0:2d5:408c:9caf with SMTP id bq16-20020a05680823d000b002d5408c9cafmr2305248oib.301.1645736054909;
        Thu, 24 Feb 2022 12:54:14 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id c8-20020a4ad788000000b0031ce69b1640sm191259oou.10.2022.02.24.12.54.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 12:54:14 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org, netdev@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-bluetooth@vger.kernel.org
Subject: Re: (subset) [PATCH 0/5] Wifi & Bluetooth on LG G Watch R
Date:   Thu, 24 Feb 2022 14:54:01 -0600
Message-Id: <164573604161.1471031.17588136959240779844.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220216212433.1373903-1-luca@z3ntu.xyz>
References: <20220216212433.1373903-1-luca@z3ntu.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
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

On Wed, 16 Feb 2022 22:24:27 +0100, Luca Weiss wrote:
> This series adds the BCM43430A0 chip providing Bluetooth & Wifi on the
> LG G Watch R.
> 
> Luca Weiss (5):
>   dt-bindings: bluetooth: broadcom: add BCM43430A0
>   Bluetooth: hci_bcm: add BCM43430A0
>   ARM: dts: qcom: msm8226: Add pinctrl for sdhci nodes
>   ARM: dts: qcom: apq8026-lg-lenok: Add Wifi
>   ARM: dts: qcom: apq8026-lg-lenok: Add Bluetooth
> 
> [...]

Applied, thanks!

[2/5] Bluetooth: hci_bcm: add BCM43430A0
      (no commit info)
[3/5] ARM: dts: qcom: msm8226: Add pinctrl for sdhci nodes
      commit: a5683471b68d81898db14e1dee347bfe7469540d
[4/5] ARM: dts: qcom: apq8026-lg-lenok: Add Wifi
      commit: 81ecc39d0dd3fbbcc3c8505d0eefe511eb422d03
[5/5] ARM: dts: qcom: apq8026-lg-lenok: Add Bluetooth
      commit: e8880a10f970d86d1b3fdd8bc36400e0e01ba4a9

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
