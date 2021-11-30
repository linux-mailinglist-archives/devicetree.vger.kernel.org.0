Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B849F462A06
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 02:57:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237010AbhK3CAT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 21:00:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237007AbhK3CAT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 21:00:19 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 133BAC061714
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 17:57:01 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id t23so38255214oiw.3
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 17:57:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=+S5XPuje8BzbnzhMfN+26zklRaOAhLi8cM3kfrahm5g=;
        b=NT+rnO165dhJTeUW1vX0q9hslQ2895l8JcuTMgkPsjaIq+EUnfMaIaX+wViGQ1i6gz
         dXGQL6J9LfWIIHMgL1HdoBNfYE694uT6FGBnHg33zHfKihgMzKqu5B9XBnBMN2IEMB2y
         araAFnU1gG0vVy9Ih8Sq5jzNGdBBJABY0S9uQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=+S5XPuje8BzbnzhMfN+26zklRaOAhLi8cM3kfrahm5g=;
        b=CCw/g2TEiAypA4zNH7ZYmXOieSu/GHb7bf2rlMD8kj6ibipuvauFGVDi/kqcJTGbN1
         YkdQFdYrUePEg0zARBYgGwqRdLIetHItRv1KDySTawz+2tPiGHhuMedIN8+78DCjmU8Q
         ZYY5nLoqsUrVuj2IIejJTvT9agSXHDz0OGp0//JWL/11oFK6WXhrgNZrNUWHzc24aWlC
         rfGmxEbJ8ORZmO9LIX1JYcXslCs3vzllaVADvIFIz5RwXR2S1mYUFcOpRENw3pRpiJk7
         0e40JAFTGYEg18RSIMx+j1FdQHtq9q6wGqhUlKu8HOh3F10MpQPwWCW2QEdTHg5JLJxD
         yNSQ==
X-Gm-Message-State: AOAM531s2JuBceZ2AXbAYJl1VKzso/Hit7rlkshvs5puq5UyfEwK9Nj3
        vayF1jedfkgcJCaFvYJH+3wv+UOuYBIUaSUNDrFXQA==
X-Google-Smtp-Source: ABdhPJz9tnp1mySp/zJJ2aaxE3lXKnUEvhvdTrolUDKj5KFMsus9NwXirOZae7SIE1fuxrKOjyeNBu69wtPFYjF2QVc=
X-Received: by 2002:a54:4506:: with SMTP id l6mr1675592oil.32.1638237420507;
 Mon, 29 Nov 2021 17:57:00 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 29 Nov 2021 17:57:00 -0800
MIME-Version: 1.0
In-Reply-To: <1637668167-31325-4-git-send-email-quic_c_skakit@quicinc.com>
References: <1637668167-31325-1-git-send-email-quic_c_skakit@quicinc.com> <1637668167-31325-4-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 29 Nov 2021 17:56:59 -0800
Message-ID: <CAE-0n50OQgDg=GfShOr2NNAST4nKefHw+vUnDg+NioREAymK+Q@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc7280: Add pmg1110 regulators for sc7280-crd
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        David Collins <collinsd@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, mka@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2021-11-23 03:49:27)
> Add pmg1110 pmic regulators support.
>
> Signed-off-by: Satya Priya <quic_c_skakit@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
