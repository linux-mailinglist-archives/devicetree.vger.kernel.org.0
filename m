Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 567974A9027
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 22:45:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354501AbiBCVpa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 16:45:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236536AbiBCVp3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 16:45:29 -0500
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com [IPv6:2607:f8b0:4864:20::c32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48A85C06173B
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 13:45:29 -0800 (PST)
Received: by mail-oo1-xc32.google.com with SMTP id k23-20020a4abd97000000b002ebc94445a0so2734260oop.1
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 13:45:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=1Yc5chAIMLFBI+PtNTsiLiDIGTiDDB6bR/hu5+TBjAE=;
        b=ABVpBPEtKGjqkFMkLcefR4ttsDSG/BVnkqgNelm6oF2TH0Ug9JQykMmcaJIpb/x6mg
         f9uhNFoDY9XqhC5Nac7Gyh/UxSsqn5TDpqbC4pKewGi52p656KPuueJ7xelMQ1HQRwv0
         Oatbnbrii5b225EUmHQTbDxu59odwAVHW5XAs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=1Yc5chAIMLFBI+PtNTsiLiDIGTiDDB6bR/hu5+TBjAE=;
        b=SjJXJHGZr9JIlSH/PzR7O/u1Dl0xDUiuqqds7qooC/m8NSKyebqQa6aYMOpqogDmN/
         Iemw29lJbUw7m940oLgXmSDZ0vqVkySAijYghnw1zIiIeokvHJ9Ft7BGolr17apYcU70
         4djoQySr/ou0sX4D6+JCQlg2Q4u1sUXQx53WRtP+nTBm/skxMoLD62qP/EkIFKvBQq1C
         JECeVA8nyBV1azEyG9QCPLcH5HGQzW57J/qvCR7UcIzkYaCY44N0YmGG9O3ltCE46TM7
         PXBFvsuMwDBs2WEW1/aHv7iyJpwvAqC0+5soSsJx60rF3S6KXx2+htMRehoG+4xxIh3p
         gzlg==
X-Gm-Message-State: AOAM532x4LDGzVYlrDiBPcZyWbwlqUGa+m9me8iV57DTthoH+AeqgHPI
        KcKI3jfubMwPc2AhC/dO+JKovrr2dmidCwns4lj9og==
X-Google-Smtp-Source: ABdhPJzF6kDbUtBJqJ50LaznCP4fQwsgyaJ48TIJJd7MDtBqRhixrsjaERhQ0L/nmDmdDW7Hx8IL9tY3q1aQ1WTxaR4=
X-Received: by 2002:a05:6870:6256:: with SMTP id r22mr16297oak.8.1643924728605;
 Thu, 03 Feb 2022 13:45:28 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 3 Feb 2022 21:45:28 +0000
MIME-Version: 1.0
In-Reply-To: <20220202132301.v3.14.I4ebe7533f00324213d224efc7267ebd16fd6f253@changeid>
References: <20220202212348.1391534-1-dianders@chromium.org> <20220202132301.v3.14.I4ebe7533f00324213d224efc7267ebd16fd6f253@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 3 Feb 2022 21:45:28 +0000
Message-ID: <CAE-0n505w5HH0=cTTMvhso9YvqBahtYCdOr+t5_pbxsoZpsmFQ@mail.gmail.com>
Subject: Re: [PATCH v3 14/14] arm64: dts: qcom: sc7280: Remove "qcom,sc7280"
 from top-level of boards
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

Quoting Douglas Anderson (2022-02-02 13:23:48)
> There's a proposal to take the SoC name out of the top-level
> compatible and move it under the "soc@0" node. Building on the patch
> ("arm64: dts: qcom: sc7280: Add the CPU compatible to the soc@0
> node"), which added this to the soc@0 node, this removes it from the
> top-level node.
>
> NOTE: while the previous patch could land at any time without any
> compatibility issues, this patch will cause problems without a code
> change to the cpufreq driver [1].
>
> [1] https://lore.kernel.org/r/CAE-0n50sX9-0MxcpF+3Rwqm75jSw5=aNwdsitLwE2sEA69jLJw@mail.gmail.com
>
> Suggested-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

It needs to wait though, as stated above.
