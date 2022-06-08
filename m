Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37AB9543916
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 18:32:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245520AbiFHQbx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 12:31:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245633AbiFHQbm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 12:31:42 -0400
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B5852046C2
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 09:30:59 -0700 (PDT)
Received: by mail-yb1-xb34.google.com with SMTP id g201so9566385ybf.12
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 09:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Lncv2LVsA56QWTTY7ejCus0yb5RlxQsdBDJmYqFl50A=;
        b=d6kPR1wrbGMetGMiPuVDa8PgYxfO6Oy3Kx+hDhVxhJOHasK/neqeFn5v9tm80VcExw
         YsWXm737TOrXh2ez7hCy+2uDwt7WBoX+As/axDkAGsgv7g4Kyj33BGPhSgj2U4DBKmRr
         6dwMqIRhlcKa8z4jfXecFbrLnSomZL9jMvzmP/+Y2cNQoIWTiYaPDRbNB363T46edhur
         8iRDx0N22I8WYnZTFfDQtRG4HrRmELJhWwZRFTPRcAjfy98cGHqvAUs3ynSGpJWVA2YX
         jJg8zM6m0zA4eDdfRY8eAntXgj44nO+FnnO/j7buuD+5i/TvI3NcS947FpLbxtRGr3vD
         +fvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Lncv2LVsA56QWTTY7ejCus0yb5RlxQsdBDJmYqFl50A=;
        b=UGsJCQB81IwsxZgPCc7etUetOB3XV1BNM5gMwLeoUCKYIjGS9GfJLv3MHCpaDV8Q78
         onhBnPcltvsVcet1LftQiuie+3DrKgSLihtJilZJLjoWmDFo7jwbrnO/85WOLCB9P6wG
         FRP+hwVR0c+Q7kCTe5gJkT5FqGdsmjCFJ1q641U9GpLbdKU5GyRa+rEi/WuP/zdl05Gi
         NxHvLlln7lYgjLpISws04R3qnu1Xice+MSjlIyYdWLvtB5xVBUHF35D1Co0pExzQxH1K
         WxZkbeVvHRKzCXWEgVFegwS5HzqKKoVLFItEgDxC6j4jK5nHkish8m3+SnTD/7i6bSCP
         Tb0Q==
X-Gm-Message-State: AOAM5301LXyscZyC2ziUx+6WMNzC4w3N8NfmSx48QZ100rZ+b+8iNZCC
        y3WwcFPR59/FSpRhGs9eLcyOeqjvnrNz/fKYYJ1DRA==
X-Google-Smtp-Source: ABdhPJwGIrZ38ILyApGaOemHeQHIedRTY6AQ2KwNS9fEHrjBBtNnfh44eQx6dgap2EmVvI+3YvXh0vSM+RKAlK5Z1zo=
X-Received: by 2002:a25:76c1:0:b0:65d:211c:a0da with SMTP id
 r184-20020a2576c1000000b0065d211ca0damr35709544ybc.475.1654705857687; Wed, 08
 Jun 2022 09:30:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220401001810.81507-1-jo@jsfamily.in> <BY5PR02MB700935F5817128CB7C3991CDD9E09@BY5PR02MB7009.namprd02.prod.outlook.com>
 <BY5PR02MB70099A0E4C060E52284DCE46D9A59@BY5PR02MB7009.namprd02.prod.outlook.com>
In-Reply-To: <BY5PR02MB70099A0E4C060E52284DCE46D9A59@BY5PR02MB7009.namprd02.prod.outlook.com>
From:   Sumit Semwal <sumit.semwal@linaro.org>
Date:   Wed, 8 Jun 2022 22:00:46 +0530
Message-ID: <CAO_48GH5V2-Z0cqGJoF68hzZjqhY6_aGxReSk+ByC_zrLWusYQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] drm/panel: nt36672a: add backlight support
To:     Joel Selvaraj <jo@jsfamily.in>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Amit Pundir <amit.pundir@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Joel,

On Wed, 8 Jun 2022 at 00:01, Joel Selvaraj <jo@jsfamily.in> wrote:
>
> Hi,
>
> I can see that the dts changes from this patch series has been applied
> to 5.19-rc1 release. However, this patch that has the related change to
> the panel driver, is not applied in the 5.19-rc1 release. Any particular
> reason why it's not picked up? or just that, it got missed out? Kindly
> let me know if changes are required from my end.

This is entirely my fault - It somehow missed my radar, and I didn't
queue it up. I will push it via drm-misc tree tonight. Apologies
again!
>
> With Regards,
> Joel Selvaraj

Best,
Sumit.
