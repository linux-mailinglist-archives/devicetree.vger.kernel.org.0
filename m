Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA2344A8FF5
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 22:32:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355160AbiBCVa5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 16:30:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355163AbiBCVaw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 16:30:52 -0500
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E54F3C061714
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 13:30:51 -0800 (PST)
Received: by mail-oi1-x22b.google.com with SMTP id m10so6200690oie.2
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 13:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=00ac3hlM2unZobSlvHJEqP+jKCIiHUV5BCi5HRFJx/o=;
        b=HbqyCFQdr7C261e37TCahpcR7IpbRr9Mi0HYnZvgVMCoLYIxMPAEcbSqwMm4zPoUIi
         TVWUMxDfaMfC9dDt3Py/WnFSBnHAXMfpxRNXGp+GOQTY5VnbtkEYjfKJiyTkl6RyWysY
         MUDRn5kXdK1sHC4hMrSvoH3FrinJvkXI9ZVgE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=00ac3hlM2unZobSlvHJEqP+jKCIiHUV5BCi5HRFJx/o=;
        b=TW4bOlM9uBszXORBnzf0s4JQN+LLD/1Ll78234jwosDpBMjCSUxPSrHePKXjCiCw5b
         nrxambScH6WrNEKc3dTbuoFu2jnCGI8/KgWnGZl9EWuljU1laCt2JrxhfFSawqTG7NcZ
         RzsAWeqYMWQsNMN53nPrc9UiFHINJeOH4HVeTkHCkIwSi5gRHL6ztiKlaXRkBbzYV42X
         2lNcBE6DgyambGGbuthTLxX5bHAirSPJB5oVM2wW7WmVfvMdWuXWBbOFxswxItU4pl0v
         84mJwwjUr7dmR/G2H/pvg2S3GQc+jvCj3xmZVLl0Rn9+/lTB6EADmmoEFALVuswrBJMW
         +zhw==
X-Gm-Message-State: AOAM5303jx0MC+ykXuFSb31AyqHpm+OIVCTvgUCPDwlHzpkFgHzNhsK3
        67mimmO7JKF4rvvpBk6IizNfqqSQ/Ak2wRP8zQ0NoQ==
X-Google-Smtp-Source: ABdhPJwLOBr8jp05c5+YBfc+ITUEJcIQhl71CSXbv5OGeB/lRyHGakOPSg8ETT2LJ1mfYxCJA6Bzp4sD1iJMlnfftfE=
X-Received: by 2002:aca:df82:: with SMTP id w124mr8794686oig.112.1643923851375;
 Thu, 03 Feb 2022 13:30:51 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 3 Feb 2022 21:30:51 +0000
MIME-Version: 1.0
In-Reply-To: <20220202132301.v3.8.Iffff0c12440a047212a164601e637b03b9d2fc78@changeid>
References: <20220202212348.1391534-1-dianders@chromium.org> <20220202132301.v3.8.Iffff0c12440a047212a164601e637b03b9d2fc78@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 3 Feb 2022 21:30:50 +0000
Message-ID: <CAE-0n514WMxh58PSZHX-011EUxzt1jqJD4Bd_onDrfnBkbndJg@mail.gmail.com>
Subject: Re: [PATCH v3 08/14] arm64: dts: qcom: sc7280: Move pcie1_clkreq pull
 / drive str to boards
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

Quoting Douglas Anderson (2022-02-02 13:23:42)
> Pullups and drive strength don't belong in the SoC dtsi file. Move to
> the board file.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
