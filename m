Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E1584A9024
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 22:44:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241475AbiBCVoU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 16:44:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237534AbiBCVoU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 16:44:20 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40C84C061714
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 13:44:20 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id m9so6149684oia.12
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 13:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=Gn5E7zOixkpm5Ve2d7EXO03aeKhCrQM6vb7JOwlNxz4=;
        b=mtXaCKvq+1gH4yekZJtGusvEwBrmU3fi7IHRQ2QbB2OopHuldCLZe++B9aJFk0+ChW
         49Y03fXHd7GUVYgzwJ167hbhBkcKolwn04+hT3/unLE3yVPD6hW7DtDiFLQ2jmuAzLcq
         Lr2sc7gcDqwuC/BZRjnAn2i/yrcAkm/slrj2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=Gn5E7zOixkpm5Ve2d7EXO03aeKhCrQM6vb7JOwlNxz4=;
        b=khM0WuPbX3/YTE4I6w7iJ7F+ykbvS1l7mqWLSEAc8RLs7KCDgBz0yQ6rX54i+BWno2
         oAuRmcoreYFTYZIY7pLLIN0nLTqdFnUutY+jQK0ZhhOiJCOjF6n3/0s3dGhbhMFKg0+V
         ANX5VVe358WqN7yXhZ7pdqiSHkFNVFoY88RNc0+AYpWIlXvlXh3ZxKHPec/4SGz5LTqG
         FxfsDDsH41btOUHQUmaf2eRg13ICwiO+xvAAbGSDQs673Quwrop/t+IkuFwczHlFf9St
         QoUiOivjtn3aPCsCZP6+lIvat7J9592AKxHzbzG1iAwL7HQYzfV5rztNZsBL7G28mwGd
         4hmQ==
X-Gm-Message-State: AOAM533TRofKtjXugW6GvCfm2Xf0oSVywVxWMAB2ysiIJ69vMBZSmo1r
        ZhJT6uwDZScK1+xOIxJZVnfZrVqkIAOQfweUpo+i5Q==
X-Google-Smtp-Source: ABdhPJySgkIVYK4Nf/lo8wnBPy39oFNyY6edr9YEagEF+IJ4uUBe34pMLMMksf498z9sY4jdiC6iHHWjuMBeGYQgETc=
X-Received: by 2002:a05:6808:190f:: with SMTP id bf15mr8739660oib.40.1643924659660;
 Thu, 03 Feb 2022 13:44:19 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 3 Feb 2022 21:44:19 +0000
MIME-Version: 1.0
In-Reply-To: <20220202132301.v3.13.I7924ce4592e3e75b2293804d8a3f8a4dae44646e@changeid>
References: <20220202212348.1391534-1-dianders@chromium.org> <20220202132301.v3.13.I7924ce4592e3e75b2293804d8a3f8a4dae44646e@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 3 Feb 2022 21:44:19 +0000
Message-ID: <CAE-0n50b665K1gV8J4hRZA8QpJcKBEa0kXbSj7ra6LcqtKbUUA@mail.gmail.com>
Subject: Re: [PATCH v3 13/14] arm64: dts: qcom: sc7280: Add the CPU compatible
 to the soc@0 node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Cc:     pmaliset@codeaurora.org, mka@chromium.org,
        quic_rjendra@quicinc.com,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        kgodara@codeaurora.org, konrad.dybcio@somainline.org,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        sibis@codeaurora.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2022-02-02 13:23:47)
> We'd like to start including the CPU name as the compatible under the
> "soc" node so that we can get rid of it from the top-level compatible
> string.
>
> Suggested-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
