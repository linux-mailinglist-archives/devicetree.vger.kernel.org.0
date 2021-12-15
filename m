Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CBFB47660D
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 23:43:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229767AbhLOWni (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 17:43:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbhLOWnh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 17:43:37 -0500
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94095C06173E
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:43:37 -0800 (PST)
Received: by mail-ot1-x32f.google.com with SMTP id x43-20020a056830246b00b00570d09d34ebso26754281otr.2
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:43:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VGag/GEjzGQ0BsuBfV5q5fEV2V9X1zrceeL1AXxuHYg=;
        b=l3C4aa6b3gfIXxJf9lpG1DImoPX/HPCB/JzZQlg/F8uR14r1gWndwABUyM0mzWXPy0
         l7tzBRgd68PJDCS3/82oK3xu6YBXbm6lNjic72Pxk9RlEfiveol+1v+CfwtBYCZzX4a7
         HClt6hUVugYo/GO0AyNZzR+q7iea5/3D7/BSUrzgXRLHxqVa5BJw8z/rFN+jSFLPTTOm
         XmfeIwebVL1No2apojvWM5rJDb4fPlUIlVbci18Z9DxaImphRPN32l+Br7NaW+Yt5l17
         yLxK0I2xTevuwvrV0+Bi+M4nxxaVZhEw9J5EP/di5AnMMI9UNzEuIIjBGoRs1axjXgLq
         kx6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VGag/GEjzGQ0BsuBfV5q5fEV2V9X1zrceeL1AXxuHYg=;
        b=uX48j6gY9SPVQXZkE1cVzZ5qYpeTSvXglfeX/5Nwk69ZDAYZ/0AFW280tJog66rWnK
         uP2MNUUhZYQhUIiWoA5UtrQNHSuKK09vyVynuFbaKyjVho+ajLzv95MDMuPSyXga2Cc9
         4iUvW7C2fMnN+DpKmOZtY8DR+OVk4du2K3ybYnodsdpFo5GT7o0cFQxDZQ6HRkHeXGtj
         Qz0yiPDHHCblZDltwRaSOuCirHm7y8VIrYwgGwgAC4phxmWG2zwk9HPQ31L2o14rcX4Y
         mxe6uACnaXj5EtN+42d98/x0Vp7Ap/QB9ty/YYUg/wDk35YIgpj53hyEOah1lmuxCzIQ
         AuLA==
X-Gm-Message-State: AOAM532WuKntT1gVnPelOHc9wOTLN4ip+JR8hpsjQaWvxtP4lUgTIw+N
        sUdO/58wrWLD+/zppDSGQ8gRLw==
X-Google-Smtp-Source: ABdhPJz/sY77qkfw9ZfFhrn9EO86vjiaoUgQEh2IMGpdbDr1iHwuhkfJxqskMRySEuAbuh4UQgwpnA==
X-Received: by 2002:a05:6830:150a:: with SMTP id k10mr10315502otp.290.1639608216844;
        Wed, 15 Dec 2021 14:43:36 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id r3sm664716oti.51.2021.12.15.14.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 14:43:36 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dang Huynh <danct12@riseup.net>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: (subset) [PATCH] ARM: dts: qcom: Drop input-name property
Date:   Wed, 15 Dec 2021 16:43:34 -0600
Message-Id: <163960817927.3071270.14910964789970292164.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211123161919.1506755-1-danct12@riseup.net>
References: <20211123161919.1506755-1-danct12@riseup.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 23 Nov 2021 23:19:22 +0700, Dang Huynh wrote:
> This property doesn't seem to exist in the documentation nor
> in source code, but for some reason it is defined in a bunch
> of device trees.
> 
> 

Applied, thanks!

[1/1] ARM: dts: qcom: Drop input-name property
      commit: ef5ad2608511596b8bd28f1e2b4fa8fadfd2f536

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
