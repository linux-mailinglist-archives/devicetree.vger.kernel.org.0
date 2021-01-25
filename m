Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7C90303320
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 05:47:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727553AbhAZEq6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:46:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730518AbhAYP5u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 10:57:50 -0500
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 710C0C06178A
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 07:57:05 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id d7so5453304otf.3
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 07:57:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=n/XniG2zR+75T+NLnUBE6JUAAYyxthuIPOv2H2kqUrc=;
        b=WxXv94Wb+TNXWdWLopi0nIwYCwhuPwLBQfgU32g60eHuu0sFUButivz4VjvVrlxBfD
         MjG4XwV4rn6G6e0unFtAhqn5nP09dLJKg0awvVXfaBmsRQQDF2P+BJKHa3FqOezfzfim
         yM8z/PTJx449V0vZLnzWr0MEYGm1OtAuDtc+DB4Sxis+hbWDziEDcFJnXQPcMzZsiqrx
         Q9D2p3YaQtuwmXD2rkZ3JtwkmpYQwKTyMac71/s45zw1SRE5wVjoKDBj8tpXVgJ7WB9/
         wUDDDXWJpDdQGFty4wtB72XT0j2iFFcErf4j80GEEixVhnV2LujfGgK5y9FbRO0inIPo
         7blg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=n/XniG2zR+75T+NLnUBE6JUAAYyxthuIPOv2H2kqUrc=;
        b=j0bA2NOz5+JINtiiqXHmwLkPGmA9VnNL9FkcXbiUTGqhaSwCHjo//7SlJKOoGCY0+p
         YbZD/0HwzcsvpvTzHoJjmiuBXjegtT3rhzjw0hQQ8lqz31PLrTGYJRN+0bois/yJUSI8
         5efmhbS60QDfhztH9WMqC03gv1dotE2vgUl+Jt/ferUC9EpdLDX2wvm8M8bhS3y4nDTg
         I5NuS6YYShiFF96fIrb9F44+tkJt52TJtparyKXTheqL0KFvURv2DqPcIhawZf07l13b
         Lgw1Mv6KH3VaQGMgujhtCFwMlXDuLYO5XurQXeTkA2W0N868HMlwxf3v8kn2E4O2VZG3
         n4AA==
X-Gm-Message-State: AOAM533PzLlendBCLaRbZ0L4bT0c0mo6/gIyh4ezYszOP6VoNQ/iM6yL
        3re1lpcS2lAHtOFybR/6WKwoEQ==
X-Google-Smtp-Source: ABdhPJyKxrZ7hFIdO7OkCpO4uKGPA2lAMTqZ5O/2LnkhfSB2e/2PN5sfh2EcWBPNIHnqzmfZ4HbTQw==
X-Received: by 2002:a9d:4606:: with SMTP id y6mr829043ote.347.1611590224657;
        Mon, 25 Jan 2021 07:57:04 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id c18sm2088204oov.20.2021.01.25.07.57.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 07:57:03 -0800 (PST)
Date:   Mon, 25 Jan 2021 09:57:01 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Luca Weiss <luca@z3ntu.xyz>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        ~postmarketos/upstreaming@lists.sr.ht,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Samuel Pascua <pascua.samuel.14@gmail.com>,
        Alexey Minnekhanov <alexeymin@postmarketos.org>
Subject: Re: [PATCH 3/4] ARM: dts: qcom: msm8974-klte: add support for display
Message-ID: <YA7qTcIvwxO51Etz@builder.lan>
References: <20210124135610.1779295-1-iskren.chernev@gmail.com>
 <20210124135610.1779295-3-iskren.chernev@gmail.com>
 <282b07a1-2e39-2dbe-dd7b-eed2ae9e25fb@somainline.org>
 <6632821.dtBD41K2ms@g550jk>
 <f02b945f-5546-6e15-17b5-74be8af8a501@somainline.org>
 <YA7maSZdp1EphINK@builder.lan>
 <c8ac5b2b-8d1c-d652-de0d-07f38c77cd50@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c8ac5b2b-8d1c-d652-de0d-07f38c77cd50@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 25 Jan 09:47 CST 2021, Konrad Dybcio wrote:

> 
> > I know how bad it is, so I understand your desire to not have to rebase
> > that, but I will merge things as they become ready on the list.
> >
> > So please post your change (perhaps it's posted and I'm failing to find
> > it in my inbox?) and I'd be happy to merge it so we get it cleaned up!
> >
> > Thanks,
> > Bjorn
> 
> 
> Here it is: [1]
> 
> 
> Be aware that it truly is humongous and should be split (I couldn't
> resist adding missing pins/dma while cleaning things up) and it.. was
> not really intended to be sent as-is. It's also supposed to work on
> the previous release of Linux, so some Samsung DTs in particular
> changed since and will need some manual rebasing. But I'll happily
> leave it as a reference if somebody has the time to pick it up. The
> konrad/8974 branch in this repo contains more (beware, GPU ones are
> untested!) 8974 fixes and I have some more on my drive that are.. not
> really ready for their prime time just yet either..
> 

I like the end result, so please spend some time trying to get this
upstream (which would save you from having to rebase that going forward
:))

As you say I don't think it's appropriate to post or merge it as is, but
you should be able to send patches related to the 7 steps described in
the commit message - and don't be afraid of splitting it in more than
those patches. And we don't need to merge them all at once either...

Regards,
Bjorn
