Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1FAE4A8FE9
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 22:29:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355088AbiBCV26 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 16:28:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238002AbiBCV25 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 16:28:57 -0500
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DF23C06173B
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 13:28:57 -0800 (PST)
Received: by mail-ot1-x32f.google.com with SMTP id l12-20020a0568302b0c00b005a4856ff4ceso3645963otv.13
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 13:28:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=AVufOZ/yIUBTbxUpH00x2bwAXYzopgYq3RQrFXSpyyo=;
        b=WKmiPKm35iKFc0i9l1wYMp+2LUQ+5k9Luqw9i/aRkDYzDaO7xEP/zC3JIsBC7OBo9g
         +SsFYDBWCMtTP7DlRS/QHgeX/CdIGH+mcmUxLTMyROixfFDSAyaZH6YqyvT7aPIfzNtA
         IBhjuqw1pJatyrI72Ub00QJPKpZwKt75ndaak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=AVufOZ/yIUBTbxUpH00x2bwAXYzopgYq3RQrFXSpyyo=;
        b=mfFcypFIeQTG0rYJl+TwTi6ziwsAvqNbsSdwcCX6fuqO4kP/o+oQL+2zG3u8JAKCsG
         LVbh3oJU0HrH2Xt3VzXc71nWgbUgEVMvS1LfamWR602ZJv2klSfdyiLspxexgslYnueK
         qKRUAcvXVmILwTCnjnVRvrzEAW3BRQxLi+diySjlOdpfpngVa1yLt/j3tb+Vb/tFQd99
         g3xHwOiZQZHYPVLwQ3B2bn73pOcz2e5Ce0S7/TqPcryVv3wxVn2dup3/XMrLOsfHGSBP
         +NyVR6v4BSgV8bSw7EgBJ4KNnusxPIQkYxGpLfiLH9WKpvBgByQWSGnwN8mNF+WhbpFh
         ky5w==
X-Gm-Message-State: AOAM531oYn7rnOEsyUsODYkJpYR4aONRkEnPO3Eh9yC3Xy9fY4f0KekO
        giV3wg9BFBOhHx0E5nfwnzA3p8rLwZFQIwF3/qe3rA==
X-Google-Smtp-Source: ABdhPJw3dtUZBKr9Zcf/k586jLxFXbrM94d97rCy9OFHl5fdHvZ1r73pHH5pttGLZdgDMFuw4AVW90cM7/TJr0+KlXs=
X-Received: by 2002:a05:6830:1d8f:: with SMTP id y15mr26531oti.77.1643923736920;
 Thu, 03 Feb 2022 13:28:56 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 3 Feb 2022 21:28:56 +0000
MIME-Version: 1.0
In-Reply-To: <20220202132301.v3.6.I874c6f2a62b7922a33e10d390a8983219a76250b@changeid>
References: <20220202212348.1391534-1-dianders@chromium.org> <20220202132301.v3.6.I874c6f2a62b7922a33e10d390a8983219a76250b@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 3 Feb 2022 21:28:56 +0000
Message-ID: <CAE-0n500O_zah4mg=aKrGZB+NoNN4-UqmjiR+qPSvcddhgTcRA@mail.gmail.com>
Subject: Re: [PATCH v3 06/14] arm64: dts: qcom: sc7280: Fix sort order of
 dp_hot_plug_det / pcie1_clkreq_n
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

Quoting Douglas Anderson (2022-02-02 13:23:40)
> The two nodes were mis-sorted. Reorder. This is a no-op change.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
