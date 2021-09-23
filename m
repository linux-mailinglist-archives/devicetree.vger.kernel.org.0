Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6621C416744
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 23:14:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243319AbhIWVPs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 17:15:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243265AbhIWVPr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Sep 2021 17:15:47 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74D58C061757
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 14:14:15 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id p29so31042829lfa.11
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 14:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WxXxNcv/6eNzAAN8fhaS7vrxJGE+bzvZ/0gEIXI7wcI=;
        b=jHIfJLb3BXmF+5JxcPHSppPnmHldOagXEqQtdmYJ6UCEWoN+L4C7en6niQqKH4LjEj
         WRljS8nwJabdImoaxR+jNi5fF2R/yzTGr8DkzPBq0kYDag8JUYcvaIj7e6x0Kaa7jsiX
         yguO97P3arV/8jhtRSMu56XT2EaAcPXfvQiSpNmWC33jSmLRvUpGdQ+N1QWQstbFnrsD
         3lmcz5jSNs8ed+cuMW+rT9Tx9I0ZaE2u1BkGhiCPwBJvhEwXufYboW5LIguU81PZYM0/
         d8AqVkgogAvO4YzJOZjYdT9OOArON3+9wzJPA60WrrybIXQ4juypeK4Kj346wzMrLpm9
         6VIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WxXxNcv/6eNzAAN8fhaS7vrxJGE+bzvZ/0gEIXI7wcI=;
        b=k0rfRoMNVmKn9lQQFryuPMsGKWGpqWJoyNX2dzRfceGAuYO4mCLRg4BaAkHdZRD7vH
         jskYzMCiCh/L/cAvRIrIW5k93vWK0PJ+uNddjG84KdDCQJMRJHm6XWdGk1AllsPtsUd1
         g5UK/la2GqB8P2M8zkZG03BgcP6uesdRkQxl/c5EGgXWThHepr6gZddZN0wIr22eULdR
         UsG1wV9a91Agvt3bO0ZWALeh+iM2czEQro9DncYmgtdYzFq+paVaU2IN9WyTE2BEidbB
         LfBv3CKUgF2N9yrNQouPS8SVChxoV3UNUCV/aUaYlwSxfafNOayUC90rINjso9U1az3r
         c4qQ==
X-Gm-Message-State: AOAM533bduqkYi35IQvuE+Ml4PNK4gnM4B3VnTX4DF6vXe8AYi+W/Huz
        faSFESZo0pYq/w55XwUCMcs27ydeCI8GFVqJ8cpaD4O23K0=
X-Google-Smtp-Source: ABdhPJzbKGH3XuXNt657Q/JIhfFDaP9v7epYX50bsUVwc/TDc+/11OZkYy+zqblwdRJwbdcOVrHae5NCS20RcG5oIsw=
X-Received: by 2002:a19:f249:: with SMTP id d9mr6450803lfk.229.1632431653837;
 Thu, 23 Sep 2021 14:14:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210923033224.29719-1-shawn.guo@linaro.org>
In-Reply-To: <20210923033224.29719-1-shawn.guo@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 23 Sep 2021 23:14:03 +0200
Message-ID: <CACRpkdZpOunX2GHSmRkWuJoakE=Rsdey2KbbK5Xy8SV61NyUpA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Add pinctrl driver for QCM2290
To:     Shawn Guo <shawn.guo@linaro.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 23, 2021 at 5:32 AM Shawn Guo <shawn.guo@linaro.org> wrote:

> The series adds QCM2290 pinctrl driver and bindings.
>
> Changes for v3:
> - Update function enum table in the bindings doc.

v3 applied for v5.16!

Thanks Shawn, good work as always.

Yours,
Linus Walleij
