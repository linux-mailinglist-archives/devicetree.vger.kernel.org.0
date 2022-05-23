Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79918531E81
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 00:19:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231410AbiEWWTO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 18:19:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230476AbiEWWTG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 18:19:06 -0400
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com [IPv6:2607:f8b0:4864:20::82a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C90D7CB6F
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 15:19:05 -0700 (PDT)
Received: by mail-qt1-x82a.google.com with SMTP id g21so5122261qtg.5
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 15:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hrKt0QGjGIxbViKst5o/kBBnQcNcG0rcEf/9wT/w/jA=;
        b=l8CPNUkCVan0AA0UEUaw/R/FXr1o7HdldIZ8tYacWXgGA3HxITRA9Ptz2zYmVgPZES
         GiAfp0OuHTFdcKLCIMx/lwqK5ZYr+WCG1dO4MEO5jTSPO3uPs7Q/w9qLZMSFn6TvgkFB
         rm9ILqGKmwi8KtIAdb7G6EevQpMSrFFsGnl/kGfO7TCqA6bnnjGZ9Dm0clFjRMocekhd
         RHHNz04nRft79ukdZFjdFNrjZAmSByDcs0Rl7PfTx7kRcfH0PmYV+fqgsDIMxgAFYYiW
         nGvaE27GwsUZ5O/mfVVYHtQ0qWlCXNDvWrJOo/0LVjJ3olSPL6kxEUT6Ee2Z5pZ/f10n
         Hhgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hrKt0QGjGIxbViKst5o/kBBnQcNcG0rcEf/9wT/w/jA=;
        b=mZuqv6D6iFwpG4RB4sesfvHSK/WBdpHsrtJH3HKcsQEzRTPiyP3iz9doHsFmAX8Rlz
         hOhdy7nB05TgzE+B6PJhWBj90+TcH8AusRwIGG1pEvKB1/H3dLSwpJjkLNG/EWPLAzuv
         LdhnD/eDEyVjRFf1Q+5TtS60A7kaRcIDAI8d3LNMjqlSBtx8OO2GM8X+agdICFSYNmkx
         1GiIsMMs5vimAOQ+Xx4IJSoIpWT0QtUAbk96dPNX6ijKOP5WSEy2PwEfpMQvoPequqbh
         2lszx7eqxzfxHz+oa3MHC4StDzoWyX9ZDywZVNDTuPvq0+7ObivydOS9aPlJg54qT166
         zAxQ==
X-Gm-Message-State: AOAM533dm5Xzr4kq/mVmkEdS2bw122amxS1fHBgGazTPlAycvDDqOH5Q
        PXZofC+BaiIJcSP3/MHQiocXX4LmI7xo0aV6tRRkqQ==
X-Google-Smtp-Source: ABdhPJyMQu3LizAy6LDaSFSmbEo3l8P/R/AOgG0q0Wcj5hzBlQMwHLqtc721W/6mBYASohpkeMAD6ConZP3Rv0GoEUk=
X-Received: by 2002:ac8:5e54:0:b0:2f3:f4ee:efbd with SMTP id
 i20-20020ac85e54000000b002f3f4eeefbdmr17668410qtx.295.1653344344533; Mon, 23
 May 2022 15:19:04 -0700 (PDT)
MIME-Version: 1.0
References: <a3c932d1-a102-ce18-deea-18cbbd05ecab@linaro.org>
 <20220522195138.35943-1-konrad.dybcio@somainline.org> <53d5999b-88ee-24db-fd08-ff9406e2b7b7@linaro.org>
 <YowBtNkZ678ns4Ob@builder.lan>
In-Reply-To: <YowBtNkZ678ns4Ob@builder.lan>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 24 May 2022 01:18:53 +0300
Message-ID: <CAA8EJprArSF_363FyS+63XfB=ZK657X81u8TJLTRx5AbTYy1ag@mail.gmail.com>
Subject: Re: Removal of qcom,board-id and qcom,msm-id
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        agross@kernel.org, arnd@arndb.de, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        olof@lixom.net, robh@kernel.org, sboyd@kernel.org
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

On Tue, 24 May 2022 at 00:50, Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Mon 23 May 02:21 CDT 2022, Krzysztof Kozlowski wrote:
>
> > On 22/05/2022 21:51, Konrad Dybcio wrote:
> > I actually wonder why do you need these properties for community work on
> > such boards? You ship kernel with one concatenated DTB and the
> > bootloader does not need the board-id/msm-id fields, doesn't it?

You know, this reminds me of an old argument dating 2005-7: why do we
need to support multi-platform kernels, while we can boot a good plain
single-mach (or a single-board) kernel on a particular board.
Supporting msm-id/board-id/pmic-id gives us flexibility. Dropping them
would remove flexibility.

> > Not mentioning that in the past bootloader was actually not using these
> > properties at all, because it was the dtbTool who was parsing them. So
> > in any case either your device works fine without these properties or
> > you have to use dtbTool, right?

I think it was supposed to be done in an opposite way: to let dtbTool
process compat strings and generate the properties in question.

> > >
> > > One solution is to chainload another, (n+1)-stage bootloader, but this is
> > > not ideal, as:
> > >
> > > 1) the stock bootloader can boot Linux just fine on most devices (except
> > > for single exceptions, where beloved OEMs didn't implement arm64 booting or
> > > something)
> > >
> > > 2) the boot chain on MSM is already 3- or 4- stage and adding to that will
> > > only create an unnecessary mess
> > >
> > > 3) the job of kernel people is not to break userspace. If the
> > > device can not even exit bootloader after a kernel upgrade, it's a big
> > > failure.
> >
> > The job of kernel people is to follow bindings and since they were
> > introduced 7 years ago, I would say there was plenty of time for that.
> >
>
> We're following the bindings and don't pick board-id or msm-id unless
> there's a particular reason for it - which typically is that the
> downstream bootloader requires it - we don't use the properties on the
> kernel side.

Or unless we have another reason (like handling a single RB3+RB5 image).
I suspect PmOS might also like shipping a single image for some/all of
the supported devices. Or we might use that for the qcom-armv8a OE
machine.

>
> > If the dtbTool support for the bindings is there, then there is no
> > breakage, because you had to use dtbTool before so you have to use now.
> >
>
> Among all the platforms I maintain, MSM8916 (db410c) is the only one
> where I use dtbTool - because it refuses to accept the concatenated
> dtb.

It's strange, I have been using concatenated dtb with db410c for ages.


-- 
With best wishes
Dmitry
