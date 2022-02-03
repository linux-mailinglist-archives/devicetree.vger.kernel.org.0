Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D18864A8FE4
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 22:29:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349948AbiBCV2h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 16:28:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234005AbiBCV2h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 16:28:37 -0500
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A6DCC061714
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 13:28:37 -0800 (PST)
Received: by mail-oi1-x230.google.com with SMTP id i5so6209136oih.1
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 13:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=+RbntWRN79q5RPV05clq8Fh+vWUqIzQLRg1FUcIv2nc=;
        b=DzOvqLUzvBFFhrrYuZbSi6LCdUBB0DYrzD1jLOr4gecpNX9IP5gcYmuc8XADmjhLJt
         P9H7A8pub1rIYhb551hGne2YtZ4nXoGVw+xbM1C5URsCB6E5x5Y/63dvD+vwlDqtl0bk
         oBz1zdJPIhZ4mrMkzkTHWc9qNhkzuQLnnkbJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=+RbntWRN79q5RPV05clq8Fh+vWUqIzQLRg1FUcIv2nc=;
        b=ML42Ol6e1y/EiZbCN6pMgUj6v+WEK2OateinvbUs/vpUlyzKS1wVpZ+3mwq+rFG5u0
         JnR12NqcMwd9I/LAz4fEeFhRptl5Rp9+vH6x6v5wlo5RZH4/TmMsG1VY6ALD38mtVwIG
         83a9/d6KA9LcfF5/xe1QpHN3JBcn6Npt/DGJXdH0xr2CQA7RfX9Y04TcVNhJRcmsaljK
         UM/M5CtWWo4hY8lkVJeMocRnXB2QhqAlbM+E4GqOuv3eYCkrqkqUpUw5Jgr0Xjvybl7i
         qNEAsXhZsSrNe1tNItkGUAeg+0KlXDHxbDR/WYVLHWxTKIFdyAri7ybFMgX/Ys19MgTI
         IroA==
X-Gm-Message-State: AOAM531cxSEk7VudZmhiVLOpGBk3t+BOB9vN/WTaaAvR2M5d4Qsxp4ak
        UEOCom3I63kEgh3ufDDhThCMi3rShsAtNd2o1QKvHTCmLHk=
X-Google-Smtp-Source: ABdhPJyoycbirgh261+2gDWFrRkCeDwAOW8Ic+JLG1xma2uKUHeC233b0BA34TjioVfbIXlqPohxc9p71R9X26sA5MY=
X-Received: by 2002:aca:df82:: with SMTP id w124mr8789833oig.112.1643923716194;
 Thu, 03 Feb 2022 13:28:36 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 3 Feb 2022 21:28:35 +0000
MIME-Version: 1.0
In-Reply-To: <20220202132301.v3.5.Ibaf8a803802beb089cc6266b37e6156cff3ddaec@changeid>
References: <20220202212348.1391534-1-dianders@chromium.org> <20220202132301.v3.5.Ibaf8a803802beb089cc6266b37e6156cff3ddaec@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 3 Feb 2022 21:28:35 +0000
Message-ID: <CAE-0n50CvqhJ5e4zXGhvABg2_CJc9QDHTU2ZiJUrwahyBLROaA@mail.gmail.com>
Subject: Re: [PATCH v3 05/14] arm64: dts: qcom: sc7280-idp: No need for
 "input-enable" on sw_ctrl
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

Quoting Douglas Anderson (2022-02-02 13:23:39)
> Specifying "input-enable" on a MSM GPIO is a no-op for the most
> part. The only thing it really does is to explicitly force the output
> of a GPIO to be disabled right at the point of a pinctrl
> transition. We don't need to do this and we don't typically specify
> "input-enable" unless there's a good reason to. Remove it.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
