Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89DDC41B313
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 17:38:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241681AbhI1Pkc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 11:40:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241671AbhI1Pkb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 11:40:31 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D4AFC061745
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 08:38:51 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id c6-20020a9d2786000000b005471981d559so29446374otb.5
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 08:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/BTvQpPVNKgxMTK/nBY1CVBNCOMqwDcqqaf4Emy82EY=;
        b=SCEz76ZfAMmmqaHk3wkNObEkhwAhWTB6urBlvG5yfyLi3qxHmhBtxH5PzLT1MrILcX
         ZoeMwhKAH0x3kcykKnOqVR+qab7IO9aLcw/Bh7nscDuJJfEoixSl5gwapMx05Zf8e/kQ
         t+js7dck4DEIILfCbZYghAHIo1Xg9qiXfYWLnQzPQItyz6fZn7ULPz0IuidEqw5WIPbo
         JhnIRyj8Cb/Rk7BZ2jkMcKtH2G9qy3zLNx+kfsm87giz0RvBhGP/9e4ALZ3gPqBeqb47
         IWr2xSvuLDZ/EtLcJk2Ez3tRNP2yc6ZDEjffZ5WMc16h0DWWZZpgNmyi5gyoCGFlqSgu
         Q3Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/BTvQpPVNKgxMTK/nBY1CVBNCOMqwDcqqaf4Emy82EY=;
        b=UHKLV8KkQ0OE4zzrnEncJKPfT/aX5pjvgyKJZIYG1xTwX5RX78p2vOIf+d0yloJkzs
         KBFihOFWDEYlama09epMoJrXHsEVypxoGZJTp08+u4W8uLr8BFpPe3nSE4pWNk7oXzfS
         QgHhQzzsjlrkvomJWpIwncRXtXa86EM4FBu6SNDLXmVo0Bi2vlI7edOM+3hWEiSXLdDV
         ty4GI88W4A83gege6I400QAsY8WedyAC8pId3lWZxutHkRti4gYd5M8jiMzPDM8ANR4r
         23pNJbS2+2KcmPPpAwq4Zrs1S/Rgu9b/kNgpVT3I+Rs8hUv57LS4CMOFsBg9rHr178RT
         rQ1A==
X-Gm-Message-State: AOAM530KcygNM66HKeIz0UFFKyTefMAwgJPccXOdAxRQlYSTwFmZooLy
        5OLrqX24IpLRmYeNJk0cv6/NnWF36V5K1A==
X-Google-Smtp-Source: ABdhPJxsxHQlBRohzzSm76bZT7sTEprhydi/9GB5wvRdlH2i+bDzxpxAfq9c/mPY5TAyxnQ3K/18Hg==
X-Received: by 2002:a9d:711d:: with SMTP id n29mr5752034otj.304.1632843530886;
        Tue, 28 Sep 2021 08:38:50 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 18sm4753034otj.10.2021.09.28.08.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 08:38:50 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Shawn Guo <shawn.guo@linaro.org>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: sdm630-nile: Correct regulator label name
Date:   Tue, 28 Sep 2021 10:38:47 -0500
Message-Id: <163284350355.1592203.13124373993937139741.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210926072215.27517-1-shawn.guo@linaro.org>
References: <20210926072215.27517-1-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 26 Sep 2021 15:22:15 +0800, Shawn Guo wrote:
> 29.5V (29p5) is obviously wrong for regulator l4 and l5.  Correct them
> to be 2.95V (2p95).  No functional change.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sdm630-nile: Correct regulator label name
      commit: c22441a7cbd014e2546329af89363b2a43cc8bf2

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
