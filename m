Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05A60430A2D
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 17:31:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344092AbhJQPdr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Oct 2021 11:33:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344059AbhJQPdk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Oct 2021 11:33:40 -0400
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5107BC061768
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 08:31:31 -0700 (PDT)
Received: by mail-oo1-xc2c.google.com with SMTP id i1-20020a4ab241000000b002b7069d0e88so534580ooo.5
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 08:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YZOnNnTCVTRY/rWJXMtzKNmCgdIsffrpi3tbSI8c7J4=;
        b=xW7fNvPZbIugopZKxj24gwuQmMknZ0pSvMeho8hNI2b4dIrPh35t6hvHIBWkjOfwnE
         qR+2A9d2CSjlgw9z9jAwwrFMVSkIBtmg2vmIk3t6TBh/4qSDxPS8CFVLreMYpFrZAaB5
         8OOnGgXDlgXOp4XOMDgfdmyDfyeWfvf3cwWMO3uL5HqoArefMlnzuZXn2wOoiSqMgRfz
         PtopnbzubUGYSmj+wVhQkrd12ycqQd+pjpcjxsnYPRGUss451uMKSfAqoCvPiumcIKKe
         ZrirHWbdjuX7eB27CkFop2vkSc6Wmf+rBdGdA8ySqmpLlKdgAElZ0XIntY9TTJCT4qZJ
         aNsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YZOnNnTCVTRY/rWJXMtzKNmCgdIsffrpi3tbSI8c7J4=;
        b=4wTrMlQv56wBbfSnoLq8WSTn1oX6kPj6+vVRSVNoA0Kszt+RhnUa/QJ7YYvjxXat73
         dTxrZ4xPYAF9JoPm9t4cNuif01xNY3iLqLcjlD9RqhHpmYtwwx4buLZFsxygYwbPcJbM
         nYDE65B0FAgmYKV9+Fl9Cmgo/uQqCXyGQGKTBvLxYtet85XLIsGr3OFqcARDiMpF8IAh
         0ECWegFxsfHQtqw7ctSGzdXinSsukp7LjUUmD4twpjwxVFNeB5Oyicm4SZIFqabD+cFc
         /DqaVKe1fsiE8NJAHnVwUGWWjiC+Mb10hMths6zApyBH9we/tWMJ94BxxV9qgCNqLBxY
         ccxA==
X-Gm-Message-State: AOAM530ctSWzdF6eDntBtP3lrtiYmlg1QgsdZ1VQ3hvT1WF6ZawTUBQJ
        eajuH5vDZgud86T5cxpDPoZHrg==
X-Google-Smtp-Source: ABdhPJzMyoC4DOfn4V9NQqVWoH1h/6wloafRqzwXUIG1CM19qy+Y6xHmJtSog9aJmdbELn9JC0aFcw==
X-Received: by 2002:a4a:b881:: with SMTP id z1mr17873729ooo.68.1634484690670;
        Sun, 17 Oct 2021 08:31:30 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id x6sm2565698otp.49.2021.10.17.08.31.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Oct 2021 08:31:29 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Doug Anderson <dianders@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Rajesh Patil <rajpat@codeaurora.org>
Cc:     linux-arm-msm@vger.kernel.org, sboyd@kernel.org,
        linux-kernel@vger.kernel.org, skakit@codeaurora.org,
        devicetree@vger.kernel.org, saiprakash.ranjan@codeaurora.org,
        mka@chromium.org, rnayak@codeaurora.org, msavaliy@qti.qualcomm.com
Subject: Re: (subset) [PATCH V1 0/2] Add device tree compatible for sc7180 SoC
Date:   Sun, 17 Oct 2021 10:31:16 -0500
Message-Id: <163448466184.410927.7767773426580899721.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1632997450-32293-1-git-send-email-rajpat@codeaurora.org>
References: <1632997450-32293-1-git-send-email-rajpat@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 30 Sep 2021 15:54:08 +0530, Rajesh Patil wrote:
>  - As per Doug's comments
>    1. Added device tree compatible in dt-bindings
>    2. Added "qcom,sc718-qspi" in qspi node
> 
> Rajesh Patil (2):
>   dt-bindings: spi: Add sc7180 support
>   arm64: dts: qcom: sc7180: Add qspi compatible
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: qcom: sc7180: Add qspi compatible
      commit: dfe28877db61e82ba3b57b50d73096ef11563d72

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
