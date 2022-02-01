Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D312C4A561E
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 06:20:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233591AbiBAFUJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 00:20:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231557AbiBAFUI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 00:20:08 -0500
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FD0FC061714
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:08 -0800 (PST)
Received: by mail-oi1-x232.google.com with SMTP id 4so6753478oil.11
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6CQJAF3aH8lfYp0bzeYY2RdYRUlGfNg+KYmMYRTkV0k=;
        b=rFVwUYojxyqvXvc5rNwUP/lfl9p/kHDEVH/cvgJgyFk1aC4SRuyeV4EdeJtuvd6ZP+
         yUAHSe4TzfylK9fWLCOVoy/AdREuTD/CdmZQAeNCldFw+WCYqgLrORlLAqSXhx8KW7X6
         kvuFXnBVsFIAoHaK2kf98Ibmen+fKWOrhPCb/6+iceJZuIo5rPsMhnzoEekobpheW+f7
         vYw3C5tu/JJy0tysMj/YrEbG+kpWTU2yP/kOuKUd7omUAyRJUhMf3c5hLa7yov2xbT1L
         unRPH9+0IvnO+SXfMPayFHlBijib5HLF84gJ9Y2yHAjGsAvGoTenM7cGEe0aE7cizSH3
         92jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6CQJAF3aH8lfYp0bzeYY2RdYRUlGfNg+KYmMYRTkV0k=;
        b=JMr1leLdYOdzfZJPoKJ/EdaslVZbShOrrzsTbuAj3mVf61xDM9YFbiY08TsdkqN6mc
         FWtxBtsEOOdjJlBDe0ws3bK29OCi6Sg7Hgr4leS6ztY46OIDIKCYH3L+dohKpStiD6jW
         hRbg81qZY6Wd/SBW6jsqI0BPBX0qg5r3Iy5TyMsMTcW66vy6IGYpNFj+izb4yVhFbYkt
         HgYAoYQMExbtq9APH4fLLjxoiOfcPivNaYzW8m872ABCtjIqLV45F6EzRUCRuQJg/jG0
         XihmzNtOJbqxo1XS+KrQEVoEEKzABWBzS5IkcM437XM1Ur9VNl4v1KbUbLJsAnYaE2X8
         POiA==
X-Gm-Message-State: AOAM531R7IxEY2kWLsosA95TL+p6cBg4eQELO6mRSJ/aTiYEPICufROk
        dQEcXWi+6mb+xzYmgtDjSlxvtg==
X-Google-Smtp-Source: ABdhPJyC9U0WiH8CSSZ1X2nXwzcRTvjRdIQZkk+hMsplJkvyZfcMtIktmhvB/7/YqzLSH3QBcKkuog==
X-Received: by 2002:aca:398a:: with SMTP id g132mr203059oia.207.1643692807848;
        Mon, 31 Jan 2022 21:20:07 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id u3sm8193107ooh.19.2022.01.31.21.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 21:20:07 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Felipe Balbi <balbi@kernel.org>, Andy Gross <agross@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Felipe Balbi <felipe.balbi@microsoft.com>
Subject: Re: (subset) [PATCH] arm64: boot: dts: qcom: sm8150: add i2c and spi dma channels
Date:   Mon, 31 Jan 2022 23:19:17 -0600
Message-Id: <164369277343.3095904.415765092006433725.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211216124348.370059-1-balbi@kernel.org>
References: <20211216124348.370059-1-balbi@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Dec 2021 14:43:48 +0200, Felipe Balbi wrote:
> From: Felipe Balbi <felipe.balbi@microsoft.com>
> 
> By listing relevant DMA channels for the various QUPv3 instances, we
> can work on adding support for DMA to the respective drivers.
> 
> 

Applied, thanks!

[1/1] arm64: boot: dts: qcom: sm8150: add i2c and spi dma channels
      commit: abdd4b7a7a70b861c77151afab23880b5f80e9bc

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
