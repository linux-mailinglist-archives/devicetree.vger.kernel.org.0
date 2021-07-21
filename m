Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 722E83D19F3
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 00:51:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230281AbhGUWKI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 18:10:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229868AbhGUWKI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 18:10:08 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C649C0613C1
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 15:50:43 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id a17-20020a9d3e110000b02904ce97efee36so1616880otd.7
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 15:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=5xM5LC3DBMWzVTMMqFAn/LJTjsxukGbXpBFfvyuIhlU=;
        b=dDf0YyKO/nEbuOsDRdxBOgatG10uRUjazTXhhknIx+mEF54w5XR/oqiAGZY9QXe6Kc
         7pbPMihun6D3VLm+R6e1yBYymeNrfZaZJlIY7AshNgyIqht1A+4ZDKFI/vDLdTxF14rW
         Y2zWkYvnXzfmMi67JpO7ziqtZT7qz1Aq0qTx0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=5xM5LC3DBMWzVTMMqFAn/LJTjsxukGbXpBFfvyuIhlU=;
        b=SAs94EJ2tp0a1u+EnlO7Se5o8rrjYLg7Fiy1oTuaSDxcCyl3eRsNzhyRrfqKb3pIte
         YqA6o1nifeNm8DJ8P0AownVtaJr6fPKeDAOpQghs98pIzQ1XrXGeaQBBrmmiPuLesc7f
         GrNFYPMst4/OMmS7PdO7X319hcBt3OYvoseSNAEqFae8O4NL6sEooRwNFrMB8rXNbAmz
         bOOliWBJ6fL0dzenEiVKyfg2lebSM73CfiKNss3pLz8uAOOHCmU/pCDz2ZKpDEJ5Frre
         yUB4QmJF6lp+iviG7YaIdnrKGNzF0cvn40Uat3egelRuIXWMpSkYu+9KYgIa5GsIeAgI
         2qCQ==
X-Gm-Message-State: AOAM530HVaJXBv8rOu7XxoLjfrKhIKsanZEtbn6w4MitzjCGDiGUeh1Z
        gZ44uR7Pww8lXv/6LWzA8qlYzBqOYPM5C6dtOVtNQw==
X-Google-Smtp-Source: ABdhPJzVfIaBfEdnFWZgfS1UtIImHipxZJcc5EzVSfrdE7wsv99QD/sxbtvoCTbEdGJYQhN7Qq2zjvGW92OrsMAltzI=
X-Received: by 2002:a9d:1b6e:: with SMTP id l101mr12625333otl.34.1626907842775;
 Wed, 21 Jul 2021 15:50:42 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 21 Jul 2021 22:50:42 +0000
MIME-Version: 1.0
In-Reply-To: <1626800953-613-1-git-send-email-sibis@codeaurora.org>
References: <1626800953-613-1-git-send-email-sibis@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 21 Jul 2021 22:50:42 +0000
Message-ID: <CAE-0n50jTvX1vVkv-UqNaX7O9AFj9J-qAiKkz7pKLf=wPcT9PA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Fixup cpufreq domain info for cpu7
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        mka@chromium.org, tdas@codeaurora.org
Cc:     agross@kernel.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-07-20 10:09:13)
> The SC7280 SoC supports a 4-Silver/3-Gold/1-Gold+ configuration and hence
> the cpu7 node should point to cpufreq domain 2 instead.
>
> Fixes: 7dbd121a2c58 ("arm64: dts: qcom: sc7280: Add cpufreq hw node")
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> Cc: stable@vger.kernel.org
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
