Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9977D4765ED
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 23:29:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231527AbhLOW3B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 17:29:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231391AbhLOW1y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 17:27:54 -0500
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C78A0C061748
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:27:53 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id bj13so33735779oib.4
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:27:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FXiTt28DF0TNeYeqxbk1y47hagOmrR7tSgx4NkJT8Ms=;
        b=Lx8w5unfIa5EsmBOH0EWh+C8C/YoOkhaYvlKT7LF3A2fPH5W8+PQGrLrnaw5/oCtGc
         Pa3U3cvZIvxyveJSN3qhxsSW5LMZr6Gu9z6n+jgAHsLt/aVDGXWhaEBnrNhmT3mz8GXK
         yqXtIKGs1xP0dGHzBHt9fQyjQEhu3bHeR5WxoNXiPLFf+kLUYKjRDSge3NdQhNEkzl83
         4SuQ9jlSfmdmahEljDmXW29/8v1de4fCOplsg2wJwjbucmc9VVd7mCGP5lSALvgEHxEf
         PPehyLfZzrgOhQuF8hMPk2XRz7p0/dIi/zb+Oke/A51g2EVkppmQtpmvXoc/ddcdK0+2
         Keqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FXiTt28DF0TNeYeqxbk1y47hagOmrR7tSgx4NkJT8Ms=;
        b=X32rv796olDtq2Z8O5LEUwaXq523js2DKa9yvlgj+ar9gTWcixTFcU/fkTCGzbFO4h
         EQO4K4GgcQuH+LQ4Dz6KtbFwgb+LYqonCn2VaA/1yvW9ZUpRoy8UQQWgrbDt3jq9XJBh
         ndNSBGgGFtTdZk3xpo13h0wU54CvzdcDxz1IOLCEWTIIlazy+R1aHrLBthwbf7WtXH8l
         KVjs4cFpp1Rct8UkXAeqLjJsuKSleqn1iGy+JAL6NPCCGERH86HN2ks6eYf+fdTscb4J
         kl3XOL6c2ACjk5+lmpffxnSCTSUAVVqPn4iGC5YAVVC8noZEyRF2y+njlXJwPKTL4o/h
         Gg4Q==
X-Gm-Message-State: AOAM531/GLUPevophdng7KenHEtpuSsqxo/QUXW8xZ8Cy7uMG2kd6F+e
        Gct1KzZN9G3A++0R79qttrbfuz3Yqjtghg==
X-Google-Smtp-Source: ABdhPJzvnr3AZ3ajPkvkjPQb60D5x9FrVNF5YO18grQl1pkgjr7uNDubj3nnjD7Re7MjWtfSY1jhpQ==
X-Received: by 2002:aca:a897:: with SMTP id r145mr1841533oie.136.1639607273192;
        Wed, 15 Dec 2021 14:27:53 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id t14sm700500oth.81.2021.12.15.14.27.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 14:27:52 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     ~postmarketos/upstreaming@lists.sr.ht,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        martin.botka@somainline.org, marijn.suijten@somainline.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        angelogioacchino.delregno@somainline.org,
        Andy Gross <agross@kernel.org>, jamipkettunen@somainline.org
Subject: Re: (subset) [PATCH] Revert "arm64: dts: qcom: sm8350: Specify clock-frequency for arch timer"
Date:   Wed, 15 Dec 2021 16:27:25 -0600
Message-Id: <163960723735.3062250.2110128471587461383.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211202004328.459899-1-konrad.dybcio@somainline.org>
References: <20211202004328.459899-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 2 Dec 2021 01:43:28 +0100, Konrad Dybcio wrote:
> This reverts commit ed9500c1df59437856d43e657f185fb1eb5d817d.
> 
> The clock-frequency property was meant to aid platforms with broken firmwares
> that don't set up the timer properly on their own. Don't include it where it is
> not the case.
> 
> 
> [...]

Applied, thanks!

[1/1] Revert "arm64: dts: qcom: sm8350: Specify clock-frequency for arch timer"
      commit: 202f69cd4e1dad6c86a35d8b29fc693877c6c91d

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
