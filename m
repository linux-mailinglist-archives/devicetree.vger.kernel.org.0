Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5995430A34
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 17:31:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344075AbhJQPdy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Oct 2021 11:33:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344078AbhJQPdm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Oct 2021 11:33:42 -0400
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com [IPv6:2607:f8b0:4864:20::c30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29B0AC061771
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 08:31:33 -0700 (PDT)
Received: by mail-oo1-xc30.google.com with SMTP id s2-20020a4ac102000000b002b722c09046so4773402oop.2
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 08:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IIAVHwexbMKhrI7FMZ1CTcUKEaRKC2WFDIr4wjA9dyM=;
        b=bQdY43ATH2AnaTJzC83o8Ib3eHA2zChAc6yOdTe6pdC+MVQ/Radhbs3cwOTVH/hYWI
         RcmD4j9J5d1EWrdjM7bZ6AJbSurxmzaDnDwVasgTI3yWYjRpmOd6TsLJfp7KN3nlgWmZ
         BEt9vrasPFdbZRHjsC1JAk8dv5Vj213Zfuc6BX81IWJ8uxuuk8IlnYs1SLoDOsgEZQ8y
         6IA1KaH8HVf1GWpvNgSo2exBaAU+6Q5aQRcKVdPlCvxJ2yTf+xLKqh7eZjITD/3kda6h
         fuhEfGOUByVq0cNHdPGAIFQBvwT/BdCNndH3XO3yNc1dfTbcCpcQkCuDtexjIYJa+lLD
         gkTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IIAVHwexbMKhrI7FMZ1CTcUKEaRKC2WFDIr4wjA9dyM=;
        b=t1Y4oa5iScXpumy5j+jpDzXf7O19IlK1oFzZne0MLTzdglVjiki8In0+sJU/IOzTby
         xLJUdhPGmuAW11dlUY4UnfFZIiQVPhthmRjIRHLwVizofS/nFrLRBrcn+5bN87o5FMie
         JrBHK5Kie1rHRThAXjUA+Rhx/jUnCwhCJ21VyL8pPsx2gzdWaz5otknAyLz1Y3++Z541
         Z4SttswP51t6t4GvILGoTFDRkvg2s75zv31CUzSUKC39NOoxxWGkaSJ+s/dH0PdpwY/r
         xV7JvwZnUV7UG+whdOXdaLGt0199Izq5lp/sbUxrmVuNK8OVXtXqjdkoOgwZEYnDKj/i
         35EA==
X-Gm-Message-State: AOAM530glv/xo0smGkxiQN8smYvkSQzQWzve38wZlYopdN4z6xfVrfuq
        B+NfsUPG/F/jmdtfHUD7wzSCEw==
X-Google-Smtp-Source: ABdhPJworGe7fs6gl6skg45o+ZKw6EU9Ggscu/3Ure3gpGHUHFi0fean+cLXjYw8B0pOGryGOH6pHQ==
X-Received: by 2002:a4a:d099:: with SMTP id i25mr17637290oor.86.1634484692561;
        Sun, 17 Oct 2021 08:31:32 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id x6sm2565698otp.49.2021.10.17.08.31.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Oct 2021 08:31:32 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: (subset) [PATCH] arm64: dts: qcom: apq8016-sbc: Clarify firmware-names
Date:   Sun, 17 Oct 2021 10:31:18 -0500
Message-Id: <163448466184.410927.17405938029703984127.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210922195853.95574-1-stephan@gerhold.net>
References: <20210922195853.95574-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 22 Sep 2021 21:58:53 +0200, Stephan Gerhold wrote:
> Commit 0f6b380d580c ("arm64: dts: qcom: apq8016-sbc: Update modem and WiFi
> firmware path") added "firmware-name"s to the APQ8016 SBC (DB410c) device
> tree to separate the (test key)-signed firmware from other devices.
> 
> However, the added names are a bit confusing. The "modem" firmware used by
> DB410c is actually a simplified version for APQ8016 that lacks most of the
> modem functionality (phone calls, SMS etc) that is available on MSM8916.
> Placing it in "qcom/msm8916/modem.mbn" suggests that it supports all
> functionality for MSM and not just the reduced functionality for APQ.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: apq8016-sbc: Clarify firmware-names
      commit: 2533786f46d074d67a4bca04c2d44d3825594415

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
