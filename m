Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D1F24A56AB
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 06:23:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231184AbiBAFXn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 00:23:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234675AbiBAFVa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 00:21:30 -0500
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C668C061395
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:56 -0800 (PST)
Received: by mail-oi1-x236.google.com with SMTP id t199so14580601oie.10
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4U0RnhJf2qy4ekypISTjLXa/8Onef48oMVP4y/5HaIs=;
        b=PQ3SlmjeOj5hN/aYuLMmXFv3pZoPhRe8coaMImsJ5jYHm02oFj9M3djEEMhm0Q6kXy
         sozuPbimKTZhDdEKQOj8NZv1uZpPs3r+EwEJM0mlKW9Bf3AcRvTOSETJ/EQpMzzcDux1
         VCCfnkpr0LH0grIkhjcTF8vCUWAQOifCdgMSNgCvZfe7AH7ytmHpHvaU1MyR0U6npzXw
         rF4AoYLHCKExNEVjsr/dhgEi+okrQDf+X4TZRaPN1V3UJpRV/YgBOKclC+YNr5r/fPRs
         97qDmgIjUOiWjYOPwkPve/AQaveWGczjMm7klTRfa8RdF64q/6aOP5fy9oNPKFKQYdd6
         nY9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4U0RnhJf2qy4ekypISTjLXa/8Onef48oMVP4y/5HaIs=;
        b=4RnJqsbBlkhtoo8CXXOTXpswc3llNwwhXtSWfLQHLqpqV03iH3HCppGc2qQDcrqjHy
         lCRxy2AQN8JR56wHNpQNR3xQOW88aPmkrQ8CSjhTj+S3NkxKgdilHnVPX+Jy0huGGght
         SZqgMdeKx0kslfiagtuJzJr1qRh3fi+aPXo6YXJc4q7pTXqmNK8tnqMujFsdqvAX/4H9
         MoaW1vm3gWUQTsmsksdS3rzWOek11vHEGMzQ1ORrAKC1VvVA5MhXKQ7hRdkNXQGvCybj
         NW7ulrjze8ccNw3tuRZrvlJ1UgNewZJyYFmXA25jXMOMDCaGqV6FrlHlyp712ddpmgTJ
         rZZg==
X-Gm-Message-State: AOAM533FVuvAn55PoOTq5BEkBFWrXhFpPTUfrUunFT+VfXc8ghxwIsok
        PkmKHcKJkaRnErGlpnNTfK7phg==
X-Google-Smtp-Source: ABdhPJw4Mbd6LiKmJVsOiaZ+mqz4qMQ5yCJAqQ6zW5zg6f0Sv2CM6YaobrL1V8Xf6WhlhrgA01+uFQ==
X-Received: by 2002:aca:bd46:: with SMTP id n67mr212759oif.168.1643692856066;
        Mon, 31 Jan 2022 21:20:56 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id u3sm8193107ooh.19.2022.01.31.21.20.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 21:20:55 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Thara Gopinath <thara.gopinath@linaro.org>,
        Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org
Subject: Re: (subset) [PATCH] arm64: dts: qcom: sm8250: add description of dcvsh interrupts
Date:   Mon, 31 Jan 2022 23:20:06 -0600
Message-Id: <164369277343.3095904.9732101469044043644.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211223075640.2924569-1-vladimir.zapolskiy@linaro.org>
References: <20211223075640.2924569-1-vladimir.zapolskiy@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 23 Dec 2021 09:56:40 +0200, Vladimir Zapolskiy wrote:
> The change adds SM8250 cpufreq-epss controller interrupts for each
> CPU core cluster.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sm8250: add description of dcvsh interrupts
      commit: ffd6cc92ab9cb426896481fa8372d38cbe53f76b

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
