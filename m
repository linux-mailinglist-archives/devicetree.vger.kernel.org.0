Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11ED24A568A
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 06:23:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234821AbiBAFVu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 00:21:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233824AbiBAFUt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 00:20:49 -0500
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DB95C061795
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:47 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id q8so16715413oiw.7
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1lTepv3idJ431ji34tjMdaFNok0BzDcs8koIe5PN4nI=;
        b=GH3h+yjlKV2PvzOJLmI1rwPrq3DQB48RyjeSSH6m831HcEDJg0y0A5KqTY8wa3uEg5
         B1mQeYzL0MPH4V/FbLv/kHLkzOXxOA3gVTe2isVSU+HNcyDSy8Mm9A6anedRVzgPzmW1
         Xrd48UzqUBHIAFBYNllPIhTIE1fZXJvzBz41ObCr1mgkdauXlB6SzyxFJQhsSs7GUSl8
         zSbDrqJFI3VhEGvEYNNKXtZV+JNCUT0Jurvtu34O8uUdHs+H3IlQYbMokBdN3XG2uiJo
         kXnfux+O4wasK0LR7oH8i4C/Y025t+ZGipTl0CjFvYCgFfWnaCCCA/7ToqopDBxHnQaR
         VlPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1lTepv3idJ431ji34tjMdaFNok0BzDcs8koIe5PN4nI=;
        b=3X82EOW/nLx0sCjqZcJNIJxcpd44suEE6IAKpW+TaCGNuZHDMvpzCNisZYxqkBzeN0
         hLoH91BUS25GIISxz9EUcrLyspaRFK45PZWl4jJP4b2KeN3RMU3xRcRWZi52zWmKquoG
         VVTsVZpqG1hsD71iLP0rPAmUCI8FrWH7Yka1UWNvqYSrANJd9P5aPUX1vw5eCM6b+XtS
         wmKW0u3zhddRfMTFF1iWjnnxGMR7K2Q4oOyJfQULani1JeeUJHAEy9f8Eu3XTm8pxPJj
         96tUEXXm5e4OVKDdhsGFX/+m5AqrWe9Zpc3m6BGucLkW3t12SFQgxbEE+TlkH2n3nOni
         eKeg==
X-Gm-Message-State: AOAM532ZLqWJ45VNdWOA/A1G8tfIZP7sJcyosRnaGAhxjx0ginaToGpW
        Pdd3TKZYKQXArFOL4i/xhqw6eA==
X-Google-Smtp-Source: ABdhPJyRY563+KGjf5B3xMQ2eUDjeHzkGdKigmS65ymLahPsTqqQsFuW6ANOC/YWG1ltbjBxFw1Ebg==
X-Received: by 2002:a05:6808:208d:: with SMTP id s13mr213938oiw.282.1643692846756;
        Mon, 31 Jan 2022 21:20:46 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id u3sm8193107ooh.19.2022.01.31.21.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 21:20:46 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     linux-arm-msm@vger.kernel.org, Petr Vorel <petr.vorel@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konradybcio@gmail.com>,
        devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
        Andy Gross <agross@kernel.org>
Subject: Re: (subset) [PATCH 1/3] dt-bindings: mmc: sdhci-msm: Add compatible string for msm8994
Date:   Mon, 31 Jan 2022 23:19:56 -0600
Message-Id: <164369277343.3095904.2299985482267225526.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211223083153.22435-1-petr.vorel@gmail.com>
References: <20211223083153.22435-1-petr.vorel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 23 Dec 2021 09:31:51 +0100, Petr Vorel wrote:
> Add msm8994 SoC specific compatible strings for qcom-sdhci controller.
> 
> 

Applied, thanks!

[2/3] arm64: dts: qcom: msm8994: SoC specific compatible strings for qcom-sdhci
      commit: 4ec48ebfc3eab546c66c62ee13028f7e271cf496
[3/3] arm64: dts: qcom: msm8996: SoC specific compatible strings for qcom-sdhci
      commit: 52f6fa2d2d723b5f07b07856dc15a14c3f59d3a3

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
