Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 463CB465122
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 16:13:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350757AbhLAPQl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 10:16:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350758AbhLAPQi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 10:16:38 -0500
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91034C06175C
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 07:13:17 -0800 (PST)
Received: by mail-oi1-x230.google.com with SMTP id 7so49056699oip.12
        for <devicetree@vger.kernel.org>; Wed, 01 Dec 2021 07:13:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Unj8fgPyjfJkahZ6ypt6LMRULx2Bip07rg0JABUZ9MQ=;
        b=hdqVVBieY3s1AtKxmjdJWsipfahQcm4dVslERr+84Rb0A1XIw0sKXAd8vZEmCdYdH/
         MTx5ePvxa3E7mBtWd08ZujdVecvOiwOd1wQEnAXbTzuiPYQ84/E35c/bDDsLHVl4SV5f
         S79aBL1U2PY8AMcAf7fI6BQPE34BHq/nO/UlT9KOGFucG5n3q4AuMDi1i+k2P745OSYX
         ew/b7BYktHZ2Mpt9pyzJBzBYX/aX0dRz7yduVrEfvH2QhovU3aOzjqPgjNxRmxVFhcxU
         P2rQ6PpAQ9oZe+K53OTG8/4zWj84mTqSuV6fqaDxWRKAO7rxLO8akfZHb5eNW1uOjHxE
         zufQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Unj8fgPyjfJkahZ6ypt6LMRULx2Bip07rg0JABUZ9MQ=;
        b=FMVtu5iE3YqbqvpYFf6yy27v7k91KzVavaW5S1Z3WQAcTmKiynXaI/eknlhOAqg2oU
         HkzcvOxLPHwqVheKYKWFLLQWYuE9GbXuUvKm7BZ6PawUDgOjRt2+qU5gIWrJD195Lpgu
         AjIC4mjEIRhJhxB+C0zOAEctrXwyZ5HF+ougF2/yHGqY1x5O1T0Ax4GjEvEj7NGNthYY
         7h0JfLhoc7cBmLsQuAF/MgI/chMcUiKo86TELUrR7bqO/OwuGXVr8ZUcvIGZbyIBGr+O
         mZjslMiM3ZgyU1RA4n6UFpbx46SyrwWWUE7t43bRZndAHUzWBwsQ8w9NWZ0tmmR6fQiR
         yL2A==
X-Gm-Message-State: AOAM532cOcKRoyk7zk6MOFfV12bWsDsh9tQeiY+cMvrWB1esd2S8Hdvx
        JErnYW51xKzBRPajbhtdwCKuIg==
X-Google-Smtp-Source: ABdhPJzRuR5iZfmjMw+nkqd9UgFeDQ7USHGnUe3txn8np8TG5/2IUdp0ONf8dTSKSRHrHwD1EC2BXg==
X-Received: by 2002:a05:6808:300d:: with SMTP id ay13mr6520578oib.144.1638371596919;
        Wed, 01 Dec 2021 07:13:16 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id be12sm33933oib.50.2021.12.01.07.13.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 07:13:16 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, devicetree@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Maulik Shah <mkshah@codeaurora.org>
Subject: Re: (subset) [PATCH v2 0/3] Add RPM sleep stats for MSM8916
Date:   Wed,  1 Dec 2021 09:13:03 -0600
Message-Id: <163837153032.1905338.13125098238372702261.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211119213953.31970-1-stephan@gerhold.net>
References: <20211119213953.31970-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 19 Nov 2021 22:39:50 +0100, Stephan Gerhold wrote:
> MSM8916 is similar to the other SoCs that had the RPM stats node added
> in commit 290bc6846547 ("arm64: dts: qcom: Enable RPM Sleep stats").
> However, the dynamic offset readable at 0x14 seems only available on
> some of the newer RPM firmware versions.
> 
> To be absolutely sure, this series adds new SoC-specific compatibles
> for the older SoC that read the sleep stats from a fixed offset of 0xdba0.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: soc: qcom: stats: Document compatibles with fixed offset
      commit: 0a023bc0dd3ce6db6d87026c6fce3e2381c30192
[2/3] soc: qcom: stats: Add fixed sleep stats offset for older RPM firmwares
      commit: 569fc4015a93267f50d37f4e85ca6f70428123b2

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
