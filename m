Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 598D8458138
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 00:56:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237720AbhKTX70 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Nov 2021 18:59:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237866AbhKTX7D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Nov 2021 18:59:03 -0500
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32037C061574
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:55:59 -0800 (PST)
Received: by mail-ot1-x32c.google.com with SMTP id h16-20020a9d7990000000b0055c7ae44dd2so22759049otm.10
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oRs8pcHKzOwFtwPnpI03F+5/gUi86PgkdSbR6nGBFkM=;
        b=CxagGW5ZekzTojU1lIx3gTcSghwkqNe9lzfiWL2UWcrNsgOUurdc5XVSl+oN8myGqh
         eP75utnqLpcAtLva25ixq78/4bdfVWyHFkS9f6kVlJmAwIvIsmHrnwENj2E6XU59aZUc
         6vJJgMA9OmC8LxQBJk7iYvi4mq1DuCbJMnMMm6+2ghrv2c2OKB7wyl5poUhplqnt1ewL
         JCChqnODMho7hBcL9lgaFohMQWGtj934EoxWluPO2m0JjZ/u90Wt5k8OFrr+lt47Qm4x
         mqD0/9XOQCXJVRxNQaifizboJb86U8qRxIi7zDu7G4MJEQ3u8J4OhR1EYmsFSEl6bfEA
         d5FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oRs8pcHKzOwFtwPnpI03F+5/gUi86PgkdSbR6nGBFkM=;
        b=xhYS7bBv6sKFdppo+7ls9j1luVbU/Vu3SJxrQaUylDgxkJWhEuAqkrNdNEyMVVQqk3
         CpbwgsQg1mkgaiytHks4zUdsNAtZcmPPA96fMwcUAo9WssmGM3nL5MBPxkgxph6ljLs0
         DwErlWn57VDdDNQnAVpu3UOhPQhq6Qul193XpZeIW6Jt/N99yHfmSGNY+62TMZUBthRu
         S+Jgz2+H0ga4vK3V9WksI1r27MwDe/GDPhN41ZjQfx5T6pCGREBaGDb6M0ZN5IQ9CNlm
         vCqxjNIKH0T4i+a8g4VV/ItKUO73YCAZSLnVngDbkF4l6e3mlgZiLvnLxvR3ql0Duku3
         G62Q==
X-Gm-Message-State: AOAM533p/j8+vpasDm9JN6BLO63djZTpkV5sOrYmaBTlrBz0Z9OrxUUo
        JLKQBn8D2JM9bD2uRDQPwuJnZQ==
X-Google-Smtp-Source: ABdhPJyYeQOEFimNkd2oZh4dMcyaHGWumvrwEDBmumnooECIxqBGJOs+UHcpSCDrUmYfZ+l17V4ahQ==
X-Received: by 2002:a9d:6b81:: with SMTP id b1mr14468443otq.12.1637452558607;
        Sat, 20 Nov 2021 15:55:58 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id o26sm828474otj.14.2021.11.20.15.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Nov 2021 15:55:58 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, devicetree@vger.kernel.org,
        Arnaud Ferraris <arnaud.ferraris@collabora.com>,
        Andy Gross <agross@kernel.org>, Luca Weiss <luca@z3ntu.xyz>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: Add missing 'chassis-type's
Date:   Sat, 20 Nov 2021 17:55:34 -0600
Message-Id: <163745250541.1078332.12455510280552513237.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211025102224.23746-1-stephan@gerhold.net>
References: <20211025102224.23746-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 25 Oct 2021 12:22:24 +0200, Stephan Gerhold wrote:
> Add the "chassis-type" to msm8916-samsung-serranove and
> sm7225-fairphone-fp4 that were posted before the patch that added the
> chassis-type to existing device trees, but merged after it.
> 
> Also, looks like sdm636-sony-xperia-ganges-mermaid was missing in
> commit eaa744b1c101 ("arm64: dts: qcom: add 'chassis-type' property")
> so add it there as well.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: Add missing 'chassis-type's
      commit: 0112b06fde557d407c0d477ee7ed973e44e65c75

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
