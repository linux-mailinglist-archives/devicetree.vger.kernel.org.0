Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A366D43A4A5
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 22:26:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235958AbhJYU2p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 16:28:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236632AbhJYU2a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 16:28:30 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E6FCC04319D
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 13:21:03 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id l24-20020a9d1c98000000b00552a5c6b23cso16591913ota.9
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 13:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=2bwvidlggTYqPYdvEnjOvk7VU+AKnEUaEntsTXBWAFo=;
        b=QlMEgpBJ9ktL1Opdpn5bEbYppOzz8dAxIhFM1fS/dyAlTNLIsRZpVMwvZCw8it46TV
         7PsHfIiTCVF3zUe8SyWC2+4ulLziCOVa56PohaFbunFmZYFTwT9O4lRllgezN8Hg/ExP
         i2/v7r23NiyEEQrRxBsnA4u+fn4qQ1rfVcbPg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=2bwvidlggTYqPYdvEnjOvk7VU+AKnEUaEntsTXBWAFo=;
        b=7eZLY6O6IrpfdqHQAOCZKaONp8ieJSKQiioaR+eDwblVr1jhCiVGSvaoiR0uU1Za9x
         INalpHd37wCTkoIyAxWHY9VI/c4+8bZv8i8wpHlc+ZlJGXU0dLDxgOY8nVyLma2dLWQP
         E8bMAhRmWfHHAuVcCFj4INYyDaWyJ4B7dTXju1/0Kt3bHZw607dlCcIqrc7+Wk0LKaza
         SLzzxhHBv0PpU0OGaBrKK4NbAiMZ2reww6/D11hJXS7sMZs2Q2w+nCb9LLQQhneyvjco
         8ufI3u1zpuoq/fRkfJyfBfm6qui4wHWHVT5t9WBoSFFWxOHILFNbDY7k6kIXBgeaFlZ/
         VhYg==
X-Gm-Message-State: AOAM532TlrReEkCoblGKEIkPV74hGI2JVK8j2041eHkv+WEya0ldrsZ7
        Pd0nuzikmFju+m/rJLLXpax5ZNe99aHiLt44cLVunw==
X-Google-Smtp-Source: ABdhPJwdShfN68KpfDhT+2JDhJNv3XDUA5odNLOwOPjxhpTa/LV7X8Gla3x9vxWUHGPtAQOIO8tzMjzdDyBGswkThuE=
X-Received: by 2002:a05:6830:4187:: with SMTP id r7mr15519057otu.126.1635193263072;
 Mon, 25 Oct 2021 13:21:03 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 25 Oct 2021 13:21:02 -0700
MIME-Version: 1.0
In-Reply-To: <1635070162-21669-1-git-send-email-tdas@codeaurora.org>
References: <1635070162-21669-1-git-send-email-tdas@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 25 Oct 2021 13:21:02 -0700
Message-ID: <CAE-0n51c-og98OmPGPooeV8XaRnpN=VGRM5GuwBKKfvbYzzZLw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Add camcc clock node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Taniya Das <tdas@codeaurora.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Taniya Das (2021-10-24 03:09:22)
> Add the camera clock controller node for SC7280 SoC. Also add the header
> file for lpass clock controller.
>
> Signed-off-by: Taniya Das <tdas@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
