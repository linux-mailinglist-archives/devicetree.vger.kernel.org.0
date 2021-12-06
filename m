Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C51BA46AC24
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 23:31:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357049AbhLFWeq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 17:34:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356749AbhLFWei (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 17:34:38 -0500
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FD02C0613FE
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 14:31:09 -0800 (PST)
Received: by mail-ot1-x332.google.com with SMTP id n104-20020a9d2071000000b005799790cf0bso15604447ota.5
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 14:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gc3XKEdlwcQi21rErNXJzwZMgigjK1PyUPkJQEPB4SI=;
        b=cWPCB9Ra9CAor0a9Di3yqixNVVDX1o5qLCwHfZf2napJr6GbG5RNbBP/t0VeHfQdFt
         ae+vvfvYKJhxM7RHcsFQES+yyd4dkoB98d6WoMhVCo+HZEhx3OEday1x1yRfE6r6JMet
         E4EJl0Wzen4CYwy4zWLAKGsrVlkvHqZpsdXPOvpC2ZuTcsH8c09k2BhweO/kUdg9TrZU
         3U2nEYh8s7Sb2y9bB72RoC+gL7KHQhH6Ocx1hwWyvooicllIV67A1rNYaUgm7/A4Cp9l
         CX7TOFxmefvEhJMH5Kmp/psMbTL5jHMbXPO5YtKplN/arXEAOH/CQfsWM4Yk9XTNKJ/q
         kvlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gc3XKEdlwcQi21rErNXJzwZMgigjK1PyUPkJQEPB4SI=;
        b=jyN9r8th2WoHj9CijzQSM2F9ETHOc1ilQnAWbRBzXNWv6IXyw0snBVN0HzloTp3/qn
         fB3LkbhNH0BcXV8syPdD827lDU+SGw4PPv5EzfvgM1uw+/OUOjQJW7WNTU/NLLfnaC3h
         18l+oeCX6daAz2g3upDVoZ2FLqUTVX8iQ0spV6HOhJ6krEOoFs/pV+MKGIAA9c+VNDBa
         xlXNar7ti3Fwa0gq12wo63jYHIzXQYzHScVRL6xKjlVZHj+P+ulasAeyJ3OT4N9wnm77
         7/jCdKDMJd+nhVyY0v4ONbgbI8KrF9R0K4wkS8IRMgviukwFENkSCwt+ew1g9076gGys
         MRXA==
X-Gm-Message-State: AOAM5310IdYF2O6KhJR2lbigxXjRSonEYAAS8omlZ8LNbroq+zuH1Zn/
        An6PfIgLSbMJt6CaydVi00Q+dQ==
X-Google-Smtp-Source: ABdhPJw29Gi11NTWTz5X7DKd8NxqD5kfh1TXsX0zn5LVjsDCc5qhT/eb9It0Ve9SzUQ0jq6Qgunp1g==
X-Received: by 2002:a9d:2d81:: with SMTP id g1mr32482183otb.25.1638829868719;
        Mon, 06 Dec 2021 14:31:08 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id r5sm2911815oiw.20.2021.12.06.14.31.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:31:08 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, tglx@linutronix.de,
        agross@kernel.org, quic_vamslank@quicinc.com, robh+dt@kernel.org,
        maz@kernel.org
Cc:     Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, manivannan.sadhasivam@linaro.org
Subject: Re: (subset) [PATCH v6 5/5] clk: qcom: Add support for SDX65 RPMh clocks
Date:   Mon,  6 Dec 2021 16:30:59 -0600
Message-Id: <163882985136.2324147.8953107100167794416.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <366448562ac52c600c45b5a15129d78b5e8dd5a7.1638402361.git.quic_vamslank@quicinc.com>
References: <cover.1638402361.git.quic_vamslank@quicinc.com> <366448562ac52c600c45b5a15129d78b5e8dd5a7.1638402361.git.quic_vamslank@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 1 Dec 2021 16:21:35 -0800, quic_vamslank@quicinc.com wrote:
> From: Vamsi krishna Lanka <quic_vamslank@quicinc.com>
> 
> Add support for clocks maintained by RPMh in SDX65 SoCs.
> 
> 

Applied, thanks!

[5/5] clk: qcom: Add support for SDX65 RPMh clocks
      commit: 40affbf8e615addd8cc877f0a4fff1faafc4bb34

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
