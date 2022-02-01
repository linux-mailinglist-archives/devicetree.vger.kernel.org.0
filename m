Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FB344A5644
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 06:20:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229524AbiBAFU2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 00:20:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233840AbiBAFUX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 00:20:23 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9C77C061755
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:22 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id v67so31179693oie.9
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ri205RphCfNp0juSymL1QX892pkaC49+yUcb9yu8tO8=;
        b=uBwDXMaQeUm1l7MLm7ERwBYG6tDk6McpCY6orTAc4FFtw2s4f8N1wApOgi/jZ0fSJ/
         WBpCsIUqnIODLnpc8S0BSQFx3H8eLwnPQTzY+deVIj4EyS6tY8SRpiZ5ySbk17lJn/0y
         +CwTRHnicBSuFC9jItH/HvLexu1hCUxDhy3/Mgoo9/1GLrdADEPgIBe/vCKl8VLISSnD
         piRYcKiB4erV8lNQXVRBjQeIFtkGtaKwrZkllTb0EbgYdC0aoEvygOVpThwTOIJ2A50Z
         OFWWX34WIpXcz9fgqxvCncHxK6xzVyaXSBHqFdIIqeg8BbQ4/lZYLnX7gX88f2W9ASRZ
         kTVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ri205RphCfNp0juSymL1QX892pkaC49+yUcb9yu8tO8=;
        b=7p0GwDgyxkNTzBVLeFPurj7GMltsUZhTp8GgzULmbdU+jPsTl2/77lYOz1rSVezRnd
         4B0fMK5HaFBs6fq1SOVczND6AiQYvZXrxMdcsF2TrL96toJlXWLB9SFQe8j7ThIu1Pza
         4S3uEk+BuNUIWN11BAIBgl+/sXSn33UXAvwbp3B6iybJAQ9E4zKkoMRO216rm3pnrlXH
         7w9ADw54mwOjMFirD0q97KvN/cuWM+jM7/kE9XUOjDk/D0E3wLxWVBeTpOfKKtZGmzMs
         X7MVw1V3qjOtZa++MIdMOhgWHKaGA91yV6Z0tAz5BcvXRNp7qGpcUgzg44Cs7xDpGvoU
         aqzA==
X-Gm-Message-State: AOAM530HsJ+ohFiqVMllbXakSX8gwmNTtPdmTggzxqOzY22n9ZqgV+47
        S/e0kGWDZYONKU3lhwF/V7qP5ZSM09K/BA==
X-Google-Smtp-Source: ABdhPJyKuX7hI6t2HLqprwc+VH80VNQBMK2gp0xm/EGzTFquo08Kr1Xt2Cb4IuVQtTFf11ThG5P3Nw==
X-Received: by 2002:aca:5a06:: with SMTP id o6mr204995oib.315.1643692822239;
        Mon, 31 Jan 2022 21:20:22 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id u3sm8193107ooh.19.2022.01.31.21.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 21:20:21 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        David Heidelberg <david@ixit.cz>
Cc:     devicetree@vger.kernel.org, Caleb Connolly <caleb@connolly.tech>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH] arm64: dts: qcom: update qcom,domain property
Date:   Mon, 31 Jan 2022 23:19:32 -0600
Message-Id: <164369277342.3095904.12703594732867881148.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211214102451.29084-1-david@ixit.cz>
References: <20211214102451.29084-1-david@ixit.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Dec 2021 11:24:50 +0100, David Heidelberg wrote:
> Since 'qcom,apr-domain' is deprecated in favor of 'qcom,domain',
> update accordingly.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: update qcom,domain property
      commit: 2f1145117946756da4cafe3821d8f0a5d441f5e3

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
