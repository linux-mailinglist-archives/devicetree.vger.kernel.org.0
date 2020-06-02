Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 661A41EBB48
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2020 14:11:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728070AbgFBMK7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jun 2020 08:10:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725921AbgFBMK6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jun 2020 08:10:58 -0400
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6204DC061A0E
        for <devicetree@vger.kernel.org>; Tue,  2 Jun 2020 05:10:57 -0700 (PDT)
Received: by mail-ot1-x342.google.com with SMTP id g5so10185324otg.6
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2020 05:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1qFYBco/WCH7tu9DLPtQEulTnbFYvq9GbR7jnbTNciQ=;
        b=QXlPBnFIATOuHoCuZffqqkhWQyhwogDi3hK37VEbuIWcZCRkn1jkcLPsX5wXWkNAMg
         DwsWmWeTpCpsl/wDQajbwiTiTCODFZRP9zUH7Aot6d32b9wZMnfawyid+Kq3orBDe1vD
         z28Yxt/NZlDIWYp5UJERfW2PXXDaZnD6COOiNSCNDpIQiQ6ZKTgRsKIn+iAc+rux+zbp
         R+UNGt7nW0q7w9voZl/w7LKVblfC89wUzemupYKOukEZx8hG7v3J+qqFBF4kYanotPRy
         +FzqZ1eY6ZxoVV8402fU3Vp5Ejc5GNLjinwqYFNS1+zS0JQxPxCHNSF7XZyVJz40N4Jr
         6EZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1qFYBco/WCH7tu9DLPtQEulTnbFYvq9GbR7jnbTNciQ=;
        b=QEFYtUhS4wTQD837pLEcpFETNqv0DiiWm8M3fG0qwS53PzboqY0Gk6HdTwZm3JLTca
         ihoSr4SrR72cv68TTUQI1raazbHvKGgKiohWYjPW/ybw9QLa0I9UeY2Hey0UIV6kkPKE
         p4dCuLOE312Er9unKnjOdlEwbqa25wiJrzen8ni8oP/Swb9gRb85v5cylj/ipydRHKWC
         lT89nWogd8sA+h2IyOvcQMP06PCmG3vEYgXDlCSUA+Kw0tbyM2HnXlrVEBq7GoJTDx9g
         HBrReJoKQXua/J0DpsgH3871pC6eqEOoRefJtr+4wXMPUd+EPoQRdRxZif3qqGt/0SS+
         AxXg==
X-Gm-Message-State: AOAM5323aVdv/wYK4SqJo/DeNZdhH5HmuOX2GNndScLzhC+9NhdEanJd
        JqWUsve6VIP0M5VKcto35VRyrYzMAaNa9uIkNmJzQA==
X-Google-Smtp-Source: ABdhPJxPcZxNR0aHWKUOKGsJCKpNxHh10At7X7wwT8NO113zyaLP+fcyJUOIRBPYq2s9N2kkF1akJEDuQR/v+5SuaGk=
X-Received: by 2002:a05:6830:242e:: with SMTP id k14mr4294854ots.36.1591099856686;
 Tue, 02 Jun 2020 05:10:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200602100924.26256-1-sumit.semwal@linaro.org>
 <20200602100924.26256-5-sumit.semwal@linaro.org> <20200602113241.GE5684@sirena.org.uk>
In-Reply-To: <20200602113241.GE5684@sirena.org.uk>
From:   Sumit Semwal <sumit.semwal@linaro.org>
Date:   Tue, 2 Jun 2020 17:40:45 +0530
Message-ID: <CAO_48GGgNUGosN2PiL=U5JkR3Bh5wNK3N4xYYML1UwmdfDPRww@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] regulator: qcom: Add labibb driver
To:     Mark Brown <broonie@kernel.org>
Cc:     agross@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
        lgirdwood@gmail.com, robh+dt@kernel.org,
        Nisha Kumari <nishakumari@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, kgunda@codeaurora.org,
        Rajendra Nayak <rnayak@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark,

Thank you very much for reviewing.


On Tue, 2 Jun 2020 at 17:02, Mark Brown <broonie@kernel.org> wrote:
>
> On Tue, Jun 02, 2020 at 03:39:23PM +0530, Sumit Semwal wrote:
>
> > +static int qcom_labibb_regulator_is_enabled(struct regulator_dev *rdev)
> > +{
> > +     int ret;
> > +     unsigned int val;
> > +     struct labibb_regulator *reg = rdev_get_drvdata(rdev);
> > +
> > +     ret = regmap_read(reg->regmap, reg->base + REG_LABIBB_STATUS1, &val);
> > +     if (ret < 0) {
> > +             dev_err(reg->dev, "Read register failed ret = %d\n", ret);
> > +             return ret;
> > +     }
> > +     return !!(val & LABIBB_STATUS1_VREG_OK_BIT);
> > +}
>
> This should be a get_status() callback...
>
From my (limited) understanding of downstream code, it seemed like for
this set of regulators, the 'enabled' check is done via the
'REG_LABIBB_STATUS1 reg; for some reason, not via the same enable_reg
/ enable_mask ones.  That's why I used it as is_enabled() callback.
I will try and check with the QC folks to clarify this point about
their hardware.

> > +static int qcom_labibb_regulator_enable(struct regulator_dev *rdev)
> > +{
> > +     return regulator_enable_regmap(rdev);
> > +}
> > +
> > +static int qcom_labibb_regulator_disable(struct regulator_dev *rdev)
> > +{
> > +     return regulator_disable_regmap(rdev);
> > +}
>
> ...is_enabled() should just be regulator_is_enabled_regmap() and these
> functions should just be removed entirely, you can use the regmap
> operations directly as the ops without the wrapper.

The 2 wrappers are a precursor to the next patch, where we keep track
of regulator's enable status to check during SC handling.
>
> > +     match = of_match_device(qcom_labibb_match, &pdev->dev);
> > +     if (!match)
> > +             return -ENODEV;
> > +
> > +     for (reg_data = match->data; reg_data->name; reg_data++) {
> > +             child = of_get_child_by_name(pdev->dev.of_node, reg_data->name);
> > +
> > +             if (WARN_ON(child == NULL))
> > +                     return -EINVAL;
>
> This feels like the DT bindings are confused - why do we need to search
> like this?
The WARN_ON? This was suggested by Bjorn to catch the case where the
DT binding for a PMIC instantiates only one of the regulators.
>
> > +             dev_info(dev, "Registering %s regulator\n", child->full_name);
>
> This is noise, remove it.  The regulator framework will announce new
> regulators anyway.
Agreed. will remove in the next iteration.

Best,
Sumit.
