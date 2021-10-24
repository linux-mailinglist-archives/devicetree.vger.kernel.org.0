Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08E4843892C
	for <lists+devicetree@lfdr.de>; Sun, 24 Oct 2021 15:33:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230435AbhJXNgE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Oct 2021 09:36:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230358AbhJXNgE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Oct 2021 09:36:04 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9D19C061243
        for <devicetree@vger.kernel.org>; Sun, 24 Oct 2021 06:33:43 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id s18-20020a0568301e1200b0054e77a16651so11065599otr.7
        for <devicetree@vger.kernel.org>; Sun, 24 Oct 2021 06:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HIK+oBs/aRGxhchMLI4wI4uDRRw5QPJtNSu/6AfT09M=;
        b=Xy2+1gH+z2WauJnJbFCbfsGQOf0niJt31JbdZbGIju5V5nPlf4TKzA14wiS1PbAJU0
         Jp4YQgDyQAmvcayNupUkemnS5Kn5Pkv/EXifpAfTM//j6hq3/FxpIcCGSiUsIpaRN5gG
         pQMrNnGNNpcR1Rl8hweAFk1RjMoKVKd7k7/isTKF08eSzHx9i0pP2NxviX6Rx6rl29kj
         02ZQvy/1w2ODTa7EOcfJW3AnjQxObhvWysg5U4EGB4gRt2FbHwDG5pwPPEBhNSj0o/b2
         1kE8N9+OHFjcrD8P1+S+cCHYUHPKuv5HgWXZD6OMV8Zol2PvfizdVHmefJBfAXHKB/52
         Xw7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HIK+oBs/aRGxhchMLI4wI4uDRRw5QPJtNSu/6AfT09M=;
        b=ILLaqakKR6emv1woS8FZrvM5lwriviXHIjmIEVJ1zIdPtuH89uOsuwIW7l1e4X+NuC
         rLLId/e57pw7+CKzAcjFRg2cd5NFhFR/TPD83SGq4VO2FyzOVjhm5TuRCufXclybV3gZ
         OHmqXUn3Njr5oLeXknUWzcslsUeX9DLj5XzyIdYajGNJczCJP91OWepKIMzCc75TYQRd
         UJOgoMf94fVpL1xltDkF3JAVMqUEV3709FHdlyDHx/DY9ziEa2mBQ+26QV+lL2+WlyLw
         yrKj99MdMMrY/pye2zco7kIsAiAZAb09K32Y7tLQEuNa9RxeZKBOA1h11TCRbmG6Zl5S
         bubA==
X-Gm-Message-State: AOAM531U6QeGoFygpdfsYkECaiDfze8aG8349HpXuOVyhdYbIUltoH3u
        N1IDWHSzkQBCdoLRTWiGNpJqNeQuHvhEGXNoaF6mAA==
X-Google-Smtp-Source: ABdhPJxIYbpINdi+DQOp+tHW2M8fIxiOb2JBue1thOWy6OsTzqzua7MkzNxoViZYbzf0jkh/dVhQTDtbcnZ97EP7Ic0=
X-Received: by 2002:a9d:26:: with SMTP id 35mr8926991ota.379.1635082422960;
 Sun, 24 Oct 2021 06:33:42 -0700 (PDT)
MIME-Version: 1.0
References: <20211013105541.68045-1-bhupesh.sharma@linaro.org>
 <20211013105541.68045-18-bhupesh.sharma@linaro.org> <2699de22-4943-685f-5700-82137a4326ae@linaro.org>
In-Reply-To: <2699de22-4943-685f-5700-82137a4326ae@linaro.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Sun, 24 Oct 2021 19:03:31 +0530
Message-ID: <CAH=2NtyJAH3=XzipZx1f9WMYp+-hCTyHXrsivViBdzix4CQpJQ@mail.gmail.com>
Subject: Re: [PATCH v4 17/20] crypto: qce: Print a failure msg in case probe() fails
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc:     MSM <linux-arm-msm@vger.kernel.org>, linux-crypto@vger.kernel.org,
        bhupesh.linux@gmail.com,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Thara Gopinath <thara.gopinath@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Vladimir,

On Thu, 14 Oct 2021 at 00:56, Vladimir Zapolskiy
<vladimir.zapolskiy@linaro.org> wrote:
>
> Hi Bhupesh,
>
> On 10/13/21 1:55 PM, Bhupesh Sharma wrote:
> > Print a failure message (dev_err) in case the qcom qce crypto
> > driver probe() fails.
> >
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Reviewed-by: Thara Gopinath <thara.gopinath@linaro.org>
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >   drivers/crypto/qce/core.c | 2 ++
> >   1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/crypto/qce/core.c b/drivers/crypto/qce/core.c
> > index 576c416461f9..cb8c77709e1e 100644
> > --- a/drivers/crypto/qce/core.c
> > +++ b/drivers/crypto/qce/core.c
> > @@ -281,6 +281,8 @@ static int qce_crypto_probe(struct platform_device *pdev)
> >       icc_set_bw(qce->mem_path, 0, 0);
> >   err_mem_path_put:
> >       icc_put(qce->mem_path);
> > +
> > +     dev_err(dev, "%s failed : %d\n", __func__, ret);
> >       return ret;
> >   }
> >
>
> As for me the rationale of this change is quite non-obvious, a user is well
> informed, if a driver probe fails. I would rather ask you to consider to
> drop this change.

Normally, when a driver probe fails, the kernel logging system does pretty
well to hold logs for the same and these can be referred to later for debugging.

However with crypto tests on arm machines, since the arm crypto interfaces are
also normally enabled by default, so boot-on crypto tests (enabled via
CRYPTO_MANAGER_EXTRA_TESTS), which normally take place at algorithm
registration,
it's sometimes difficult to check the qce driver probe errors /
failures, in case the board hangs or reboots while running the boot-on
crypto tests.

In such a case, if qce crypto driver probe fails, it is useful to see
a failure message on the serial console itself.

Regards,
Bhupesh
