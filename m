Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA8994139FC
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 20:20:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233549AbhIUSV3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 14:21:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233309AbhIUSVJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 14:21:09 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B334C0613DE
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 11:19:40 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id 77-20020a9d0ed3000000b00546e10e6699so18501758otj.2
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 11:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=9a6GBrx/qSFw/ie+XQORJdjht1FCHVFNpc+pdYB48NY=;
        b=RQvO2IdcaQx2P37AdgMZFoufmTJNKUWFTkLOM765TEfVmtGzaCpJK3uKQ7pev68A6q
         GfyWfVsKRVGFlGIfWpBA6mfOdmvRa9Yesaxtimbhnai6LOSxGEdjvW+Ew1UcG6eAqbO2
         nhPZVd+5OPZMI9oIeZFkDyGk/wa2LlaiNESt4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=9a6GBrx/qSFw/ie+XQORJdjht1FCHVFNpc+pdYB48NY=;
        b=mTOQoImeC8FhfMN9BDISKCljRlaulK3t3EsQMyouBlO2v7I1tGipHKygqgagFyA91K
         ESVtCLoZ0HAvATl7wExPWjJRqYatSThXawsnQIza17Wtjvq7nM7nRG+fdIEb6h9bSZXy
         FPOQwSiETiHYZLvdw3b8aNgcP+ETgE4Uc3nOqG3Y/OjF3CDw/dOErJRl3Kd4J0kJK+fS
         qaABIcxPtoy3+4HgqjIfr3/oX6WDwaYJVoI0RDZu8etRsOG/5bKVKKWNaFy/1CWZNkvL
         jZ/aTULu6baber70KBo9s8nM3rJo6F/K3sB/AeTM3MSU8Xqdao5lgTBNTRvL8CKf8j5R
         lP/Q==
X-Gm-Message-State: AOAM532rn7d+nlEvbFCYNjgMbYwef7ShqePbAEtUm5N90o38HlvLy/bF
        jHCjVG3XpNtR/DikDlCNZIiGS/t4autaj3BJD27TTQ==
X-Google-Smtp-Source: ABdhPJyERFNaz7SjKbyvtUzEQOfzQ5FoHjTtDxu+rHthbnkCzz9/POzqlbcAUVGGVbL5mZygovmAF7FutH6TmAE3VsY=
X-Received: by 2002:a9d:6a0f:: with SMTP id g15mr3786102otn.126.1632248380036;
 Tue, 21 Sep 2021 11:19:40 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 21 Sep 2021 11:19:39 -0700
MIME-Version: 1.0
In-Reply-To: <20210921152120.6710-1-stephan@gerhold.net>
References: <20210921152120.6710-1-stephan@gerhold.net>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 21 Sep 2021 11:19:39 -0700
Message-ID: <CAE-0n53f3=HJkmMAOdG8TXFadbzgRVW6KT1vdhCrA5ox_tNdsA@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: msm8916: Add unit name for /soc node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Stephan Gerhold (2021-09-21 08:21:18)
> This fixes the following warning when building with W=1:
> Warning (unit_address_vs_reg): /soc: node has a reg or ranges property,
> but no unit name
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
