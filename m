Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE4DA48119B
	for <lists+devicetree@lfdr.de>; Wed, 29 Dec 2021 11:20:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239708AbhL2KUV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Dec 2021 05:20:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239706AbhL2KUV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Dec 2021 05:20:21 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 191A0C061574
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 02:20:21 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id k18so6755448wrg.11
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 02:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Liv/wnruZkhJUhgP8iZ8gCc1jHrpYWlxHBR6M+5wZUc=;
        b=hHI7e7Xx5WsNp+sizLautUYJP1HnYkUi2RjutEnAIDc0Q7S4uyervX1C6H9OX0JVoK
         ZJnttaiisfNe3AdhGnQeaLsVGhIhySzIBvl4FVPfdl5N7hGx4DUAI+BD/8XXw3xB2Jbu
         9Ye7lfzTYnCbgrqXuAWdtAdhGUsejxNJbNlObBk5LDoTa9omITwTLgWRhPPQlkSRrgYf
         VqSnrB5eQ4YDk7Vn5s1vJv8QH633WZukFjxQqL3U7LgS/jTJFAfKNB+gTOLpdgw212uU
         u/rZTO86PpnRKCbM80pnDptQXEQZhhIx8miiYpCHuuFv9i6zASAZ0pWhxUFmdHfZ2NUO
         SjIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Liv/wnruZkhJUhgP8iZ8gCc1jHrpYWlxHBR6M+5wZUc=;
        b=qGr4GaV+HYHTbuzph78+kgS6J2XxdZnYL2u2NjbtMUl4fGsjQ425VgeLy1AldpMByc
         35v0j/N2r6+55jWYoAQMi88mzDqhh9nER9XX6ulB9g483yn29k8YZrL/WJeOxA9nJs9y
         2WG6V9VAd8/GRC4CRw2T6sKZGSMDASU4TCYy8cljk3pHS+6bonTlSYMkXo/AEGuTkajT
         hm9aFsNjorEw/zkpBKk5zVVrcYPtvrs3qa9ZLYCybXW2Z63iLAosMG0M6drNzii+rOSZ
         qFxHyjhB0i9DiZ2sY2jkovgwZ2esLK3K8ZEbVXoer0+Az51tKC7Pdjke7qmixLG5CAab
         TWBQ==
X-Gm-Message-State: AOAM530cnglOUZxXOlAAruuUSGHEvgaluNU78SoEMCmkr/PrEOI4Qsv/
        sIcM0t8qhqPEKi6UJRFpPIS9gg==
X-Google-Smtp-Source: ABdhPJzwn5sS3pe7SMJg6xiHcec0TOp1njpi7YrCt/wWEIaqBoBAdN4PYWJ0tJrZEsjT94xj2+m5BA==
X-Received: by 2002:a05:6000:1869:: with SMTP id d9mr19813119wri.231.1640773219694;
        Wed, 29 Dec 2021 02:20:19 -0800 (PST)
Received: from google.com ([2.31.167.18])
        by smtp.gmail.com with ESMTPSA id w21sm16742523wmi.19.2021.12.29.02.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Dec 2021 02:20:19 -0800 (PST)
Date:   Wed, 29 Dec 2021 10:20:17 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Caleb Connolly <caleb.connolly@linaro.org>
Cc:     David Heidelberg <david@ixit.cz>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, ~okias/devicetree@lists.sr.ht,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        devicetree@vger.kernel.org,
        open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: mfd: convert to yaml Qualcomm SPMI PMIC
Message-ID: <Ycw2YXOhOSEPmIMd@google.com>
References: <20211227215433.114426-1-david@ixit.cz>
 <Ycwu4fMfE2LmnyOv@google.com>
 <CAC-n0Dw5eyd5=zXouLX=_3xpNY+sUphk-fwKwfGb_6=KbzFDaA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAC-n0Dw5eyd5=zXouLX=_3xpNY+sUphk-fwKwfGb_6=KbzFDaA@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 29 Dec 2021, Caleb Connolly wrote:

> On Wed, 29 Dec 2021, 09:48 Lee Jones, <lee.jones@linaro.org> wrote:
> 
> > On Mon, 27 Dec 2021, David Heidelberg wrote:
> >
> > > From: Caleb Connolly <caleb.connolly@linaro.org>
> > >
> > > Convert Qualcomm SPMI PMIC binding to yaml format.
> > >
> > > Additional changes:
> > >  - filled many missing compatibles
> > >
> > > Co-developed-by: David Heidelberg <david@ixit.cz>
> > > Signed-off-by: David Heidelberg <david@ixit.cz>
> >
> > I must admit, I'm a bit hazy on the details, but this looks odd to
> > me.  Shouldn't this have Caleb's SoB too?  Also, if you apply your
> > SoB, I'm not sure you also need to apply a CDB as well?
> >
> Yeah, this should not be from me, I did originally work on this patch but
> wasn't able to finish it. David perhaps resend with yourself as the patch
> author and add
> Co-developed-by: Caleb Connolly <caleb@connolly.tech>

That would make more sense.

> (either way, it shouldn't have been authored by my @linaro.org email
> address).

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
