Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F353A4A56AA
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 06:23:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230459AbiBAFXm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 00:23:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231905AbiBAFVG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 00:21:06 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45EC2C0613E3
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:53 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id x193so31335198oix.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=8eJDK8k9PLNksLwTNgF92CJDyZen/m8QxzhQHEelcXE=;
        b=GFOMq8d2CVyMLlstH8xW5YydCafbemE7NlZGGPOcShD6VWLjEcI/dnZBq/NB9TNatM
         3LifrHzPJQgC48TyqnweQquAx3hey6etHYR+cOZkJR9SRdPIybZbR3yuFhlTYxIWCEXO
         ZzLN3dtuxhceef1o+Pfuh0vlL1L+pVOaVp6JLRWLaT9SlKJmTySTTql/rQu/69GjXYwV
         yxAvQ0ZbS4EDaBQhrRzGoER33FFClhuYLfyyMG1VN51u+XovauH9yNBnrfx0BXw6/4SU
         PZIFui3OV5b/kZKHvosmnXmMAt2cHdK8Fr1tgEC6weOlgEKZpmD6oI2HEZV1EV33M4vy
         +nzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8eJDK8k9PLNksLwTNgF92CJDyZen/m8QxzhQHEelcXE=;
        b=79jJd7D3TZb/K/aKzHyTNlrNVw75gQZ6UBMwi4OSwKazMIglA128gl/BWXKx1lCkRu
         9iiYNNQaBe003eriwLJfgNuQLxvjVLS32YEUIFyLpVhYimCqKh02Gu7CBwTDeUEEN+Ly
         tqGZRK1zojGU5KDjrJDW93sA/ltmAMMt9bMJPcDu58YvEpC+1/SlxWKdEanIsV5apJvC
         m28S90X9dXFtOp+rHSqR6c/tT7SagpEK8DA9moVUiAZ4+cEA+K5a+3AMqJwrCjc8fXxo
         UDz+TTjnuix4GiF+JoyliS2eav3u4dqaljGfmnvT+8ZP9KKQg659oL1OOtOWKeedGdsH
         mKLw==
X-Gm-Message-State: AOAM533fLxGj8eBSnj5xgGGU5DYkwbufT0QyowBUMr5ThpQTbWHFNeBm
        YUE+AklSAxLQ+0Dlcx6in1EAWj6gIF3aEA==
X-Google-Smtp-Source: ABdhPJwcWntPtAK7lvVeiFgffQtfCps0k+8Sz49Jrk8SUZwiZTu+lb9zhlJtFVDSpQdtPAeOMyaCTg==
X-Received: by 2002:aca:59d5:: with SMTP id n204mr208977oib.291.1643692852470;
        Mon, 31 Jan 2022 21:20:52 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id u3sm8193107ooh.19.2022.01.31.21.20.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 21:20:52 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     devicetree@vger.kernel.org, agross@kernel.org,
        Robert Marko <robimarko@gmail.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org
Subject: Re: (subset) [PATCH v2] arm64: dts: ipq8074: add SMEM support
Date:   Mon, 31 Jan 2022 23:20:02 -0600
Message-Id: <164369277344.3095904.15034660056285619770.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220106212512.1970828-1-robimarko@gmail.com>
References: <20220106212512.1970828-1-robimarko@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 6 Jan 2022 22:25:12 +0100, Robert Marko wrote:
> IPQ8074 uses SMEM like other modern QCA SoC-s, so since its already
> supported by the kernel add the required DT nodes.
> 
> 

Applied, thanks!

[1/1] arm64: dts: ipq8074: add SMEM support
      commit: 42124b947e8eee401b778e9bdc5017d205ad8b71

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
