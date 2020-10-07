Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C099F285708
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 05:25:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726096AbgJGDZF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 23:25:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725981AbgJGDZF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 23:25:05 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF2C0C061755
        for <devicetree@vger.kernel.org>; Tue,  6 Oct 2020 20:25:04 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id c22so890411ejx.0
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 20:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CGNIkBjCwZhok5mPSCK5w7G0Va0huJHsTjdQPHjMKCw=;
        b=AR7Q7D2pALfKaMElX8HzYqK822G592BniOoE8ob2u6rXz2ni+SvFqN5LuRDHHXjSPA
         1gSk+SSYSNbr0NbmxtX2vYqfzINjeZvAWM8bD5rL8DAn+9P6omdSGDQUn1vS5mmRcWJT
         tjLhulRhKqF8VPFvZzjswhva/2DvIeQXOwhG4ifcEOkyMTz4ilw6+t4/Qwm2emobnumQ
         jLsrrEraiiHOWdQQ8y/hRmJNvCuJofDCD1AWV8jJXb3rXKEb8u8Z7iVTEHUwo9e6EADM
         6m/2J+kcoYbEHToVp9Mq11MEqDL+bcJR50SdZgyTD68fy8Oh/cGs8OgGyzBXpuM0jm9F
         Xytw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CGNIkBjCwZhok5mPSCK5w7G0Va0huJHsTjdQPHjMKCw=;
        b=sGJDwWFVz1QaLmO5r4wpygEOcjvuluHyOjeekAtD/4Zn4yfLnV3NgeQ6udED5JXcwY
         xN0/uk/b6Y8NhmfdIxAZ7MzEdh5EErzwFgrkl0GGGOyl6WWDdfo39rx9VRshTxjv7EHi
         TY8/3h38u3xgMpzY4OOUD18iI8obeTtA4oOJ1Rh3iUderaXxpsQIWH0+eykmaL6tHeVg
         pxNmSnlmy/TQ7gIN2rCyubhbS7gKUYlQSrIhsU8sEltSCSjnjXe18DQLrYDJDCG5rq7r
         vlI+tx/7jUHOPP72f1aP4iwW1UBjITtkTfLG9rFxQBIBy59bTEsvX59HnJ99RAn1Gxvd
         zUVA==
X-Gm-Message-State: AOAM532fOVMp+FjOrUdhGtvFQy3y2n7Drd73u9nn5AcjM+MbXZB2QxH8
        5aoYtCTvxeHxIVtWzJ8BwcY4vPR9omCU6d4rcJFgrA==
X-Google-Smtp-Source: ABdhPJymgP1Lkxf4YCedXGKWEC2ZiinATCWqv2nhO6YSSHj2KtlyXsk4wjttSz7cncbQDFkfEoIgDrPVnNGIDtYCPK0=
X-Received: by 2002:a17:906:4cc2:: with SMTP id q2mr1306170ejt.422.1602041103377;
 Tue, 06 Oct 2020 20:25:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200930081645.3434-1-jun.nie@linaro.org> <20200930081645.3434-2-jun.nie@linaro.org>
 <104955668ed768682adf1757e79022117460d268.camel@mailoo.org>
In-Reply-To: <104955668ed768682adf1757e79022117460d268.camel@mailoo.org>
From:   Jun Nie <jun.nie@linaro.org>
Date:   Wed, 7 Oct 2020 11:24:52 +0800
Message-ID: <CABymUCM_HdeTTPymuVD4fguJs-rK8G=0Dbjk_WnGGWHJ4f208w@mail.gmail.com>
Subject: Re: [PATCH 1/5] interconnect: qcom: Consolidate interconnect RPM support
To:     Vincent Knecht <vincent.knecht@mailoo.org>
Cc:     devicetree@vger.kernel.org,
        Georgi Djakov <georgi.djakov@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        agross@kernel.org, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>, Shawn Guo <shawn.guo@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> >  obj-$(CONFIG_INTERCONNECT_QCOM_SMD_RPM) += icc-smd-rpm.o
> > +obj-$(CONFIG_INTERCONNECT_QCOM_SMD_RPM) += icc-smd-rpm.o
>
> Duplicate ?
>
> Thanks for msm8939 work, please Cc: me on any related patch :-)
>
>
OK, will CC you on next version. This issue should be a typo in vim.
Thanks for reminder.

Regards,
Jun
