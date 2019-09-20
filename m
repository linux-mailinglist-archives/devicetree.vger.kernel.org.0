Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DE3BBB8BBD
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2019 09:47:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437587AbfITHrp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Sep 2019 03:47:45 -0400
Received: from mail-ua1-f66.google.com ([209.85.222.66]:46989 "EHLO
        mail-ua1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437581AbfITHrp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Sep 2019 03:47:45 -0400
Received: by mail-ua1-f66.google.com with SMTP id m21so1918623ual.13
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2019 00:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fxglbnyqNsy9IrMeX1phK/aGWuTchg+w3X2HNfK/9CM=;
        b=mRkPMjzvPBVfAeCHVbJTYmrEh8uq38ZKVM8E8AFU6NzBMCkin/nd1eIBhx73UcvIPj
         hZ9cLZl7VRnRHz0r9b+vw/tUY5l1L8pgCBGOVyccwzB3loxNIAfhw8f57iYt1IVFHmMG
         3ihqT7adb8ixIuRyXLY28hq5ZvJnUjZr99BB8J0MuUtrXiFlrJAhlWPEp5EDSLnkwd6j
         gjJUOVRjbfeyDNz7/rz7jmEHiaLot6qL149wtDhUGZaREGUjVZZCucZTaTlcf93XPL/+
         tkpHNvmoPXhsNOFXcMyryFbNn/lRqf4ubcSr7Nk6ZF/pyAtrNhtGObkvcyf+0/vSpDDJ
         xc4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fxglbnyqNsy9IrMeX1phK/aGWuTchg+w3X2HNfK/9CM=;
        b=U8rKjvuG1JpdEXbAmdmED7X+0VMcBV3MFfTPruNOjSp3dnnGHj74lCsYaV5qylpM0P
         KsZ94XNfIcvmb+s4QHlNtGdsJ0g8U5il5HUeYCWKTWlXt5gS+vdcGj79AzdOvrWwX/rY
         4iali8ZhL9PuB/tN+4sKLB2LOPpJChcOM2+Xf9VdvrxXMWBv1802+u0uqPICwgKUV0bI
         ChIonzoktGcoqrSpW0JTjPbRpglM/j+yO+4I59VBPIUkBAV+DmYjJZp2CN5E2cPog3e8
         3d6VQ1m6plzZZaZ2bMyn6crOk3YpLBxSmjuyCvVWsv5lNVtqhMNI3SJ9iabvUslE8d8m
         viFg==
X-Gm-Message-State: APjAAAXuCQGtPwSoXT2rPDbh19W4kUFpo02SROqtG8jJZOw67NsQ58Bv
        eFwySCYGzaO0oQM2yxAIeSmUywj0RPVCLeDY/tkzjSmd
X-Google-Smtp-Source: APXvYqyIPD8otiC6oiySJICKUArdhKAFf1jxKg7NkboCvLV7vKR9MnpHuTM4AuE9NqL9JQuhAM9Efy4otC84oobLXJw=
X-Received: by 2002:ab0:1856:: with SMTP id j22mr8516177uag.19.1568965664676;
 Fri, 20 Sep 2019 00:47:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190905122112.29672-1-ludovic.Barre@st.com> <940e3ce8-1a4f-7e03-dfec-25330051ea5f@st.com>
In-Reply-To: <940e3ce8-1a4f-7e03-dfec-25330051ea5f@st.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 20 Sep 2019 09:47:07 +0200
Message-ID: <CAPDyKFoha6q1CmhLXREz8OAzd4UiBDKpHo46J1PLGMkf8CStpg@mail.gmail.com>
Subject: Re: [PATCH V6 0/3] mmc: mmci: add busy detect for stm32 sdmmc variant
To:     Ludovic BARRE <ludovic.barre@st.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 18 Sep 2019 at 11:33, Ludovic BARRE <ludovic.barre@st.com> wrote:
>
> hi Ulf
>
> Just a "gentleman ping" about this series and
> https://lkml.org/lkml/2019/9/4/747

Thanks for pinging, I will come to this as soon as I can. September
has been a busy month, being on the road most of the time.

Apologize for the delays!

[...]

Kind regards
Uffe
