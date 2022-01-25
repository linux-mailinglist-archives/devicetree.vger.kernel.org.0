Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AC7349BF2B
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 23:54:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234279AbiAYWyi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 17:54:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234435AbiAYWy3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jan 2022 17:54:29 -0500
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 732B8C061744
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 14:54:29 -0800 (PST)
Received: by mail-oi1-x22b.google.com with SMTP id u129so8007147oib.4
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 14:54:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=rrsOOvJkunzZcTxJprrd7nzOQbxZFpvykqOr/+MLi1s=;
        b=BGj6xncdCUBw+dFh0UA6BQgK451HbsSotp1jBAIOZuf13bcbqxWn7zlh/f2sck0ubv
         qaZt7pf870UBBQ0yOrRrjpAoeeT0c/GGJyy8Mrax5LuoZnnRZQQnKQW4nUUCfFaMFBax
         RpmXBR7GtNo9p14HkH7s4Ofq+Zvi9HEcp5ap4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=rrsOOvJkunzZcTxJprrd7nzOQbxZFpvykqOr/+MLi1s=;
        b=DzIyOblCftzB1/3lxmQhbLJrsXmWnjRx3nNdFtg68bk1EgTVtBruC3wIvmwPqCGRB/
         8eiOQU0sjpmVm1seNe4GcAuadLWjGm26DWAkQ/1ebjtaZNGDjShCRpkaARBcOL3MMy8+
         +UTbevo+URXEgkQrU3W6cadFdwC+EYCxDmhB/lj8c0GmjdW/vsw00qunEZpa6dqkrr9l
         8VETODYKKwV3P8K1sgVu/2WparBjDXNGtnE9UpmySRuPUapVgkZyilKSIWJAr0QqG1n8
         /HM1l86FpmUEc/PBY7tzlkP7bzuaxmzlLrsV4ctG+rRCih6E8klyhWOx1QWNTB7rQbwb
         +iXA==
X-Gm-Message-State: AOAM531ZflW/Ref9XND+6KI1xMVPc4LFMFK1unQbr6i96rLOlTk98CLG
        H+wyVLJqcqRw7b17/dLGWzTvQagWnN1/PA5AQLnnOw==
X-Google-Smtp-Source: ABdhPJxYI6JHpchAVHhvrnNFlcx/rm4ZvkutpOYZUYmoxNaUkSiQxFIOUL6rQa/BWyon7PzRzslfDcBqaVcbIPgL5l0=
X-Received: by 2002:a05:6808:1302:: with SMTP id y2mr2150137oiv.238.1643151268454;
 Tue, 25 Jan 2022 14:54:28 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 25 Jan 2022 14:54:27 -0800
MIME-Version: 1.0
In-Reply-To: <20220125144316.v2.4.I3194c8bdb2ad3212665286fa273710a3c4840e94@changeid>
References: <20220125224422.544381-1-dianders@chromium.org> <20220125144316.v2.4.I3194c8bdb2ad3212665286fa273710a3c4840e94@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 25 Jan 2022 14:54:27 -0800
Message-ID: <CAE-0n51=GLNbOrWBdH2k2BkwQnJru1BdV2As9RiNUqXtPek81A@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: sc7280: Factor gpio.h include to sc7280.dtsi
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Cc:     konrad.dybcio@somainline.org, kgodara@codeaurora.org,
        mka@chromium.org, sibis@codeaurora.org, pmaliset@codeaurora.org,
        quic_rjendra@quicinc.com, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2022-01-25 14:44:21)
> Though sc7280 itself doesn't need any of the defines in gpio.h, it's
> highly likely that the actual boards will use them. Let's add the
> include to the sc7280.dtsi file so that boards don't need to do it.
>
> Suggested-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
