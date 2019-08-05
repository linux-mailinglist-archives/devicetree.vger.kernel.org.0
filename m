Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CE7A581713
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 12:31:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728058AbfHEKbp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 06:31:45 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:45721 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727739AbfHEKbo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 06:31:44 -0400
Received: by mail-lf1-f68.google.com with SMTP id u10so18755267lfm.12
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 03:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QIxUu482SI86vzot/QN+xZjKGKC7jZ1rFOV/82PfOvU=;
        b=J21D8PJcDAkvaKPpk4Orak40bhKxj0N223xJYOdMnVxHVIyYH2WxocRPwL2B4xbyjl
         ozRuzjBnmFMdsd3GEi/UrVdP/8Fbt8nI0f03ZT37amTuGrXNHv8ytg3GUoOKXKn84x7K
         bLuTkZZiug9vyAdw9davx5ub5XLbNEAb+XzUXgtA5pcinsyZqbtX+uW5e4QdPhFusCGE
         7iPwGZkbYNo0RQBXf7WM2Sms4yUtpPv1CUUibQdDzJsfpSWblSHmb2S56cmcPqFm/2yl
         tUnDFWGAyLNRmutykxC3Hm6oijz8nxNR9kOFmg4SCfNHp2gtAFLgtuMlZTLq9Yw8kWsN
         PTmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QIxUu482SI86vzot/QN+xZjKGKC7jZ1rFOV/82PfOvU=;
        b=K+HRe4XcIaFvmIapk1n2KCaU9zm/AEqJIoyMCf8LLSZcEl3i8DYZVJwNPczQ0sgFA0
         +hvy/+AUkz+TnC9/FpkjaQGFmKI1zLn1prAvJSSDd7f47MFDIK7vHvFHqbPpCslmZNMw
         QhEvVo20NLwUp5Jm68oSMkILeiso0afxAIDWw1s9QqFKJglpmgaQWlcSZpzz5xzybJPR
         fG5G+lfTzX5qgYi2qP7GiysVNJtM68k9y/gYWk2Qcqi9n0wfbXxTiCsASg6wmzlaHe2T
         Ya2t+Q3q3/3OEtYxknABEe4b6AtKmbm0A67yFfrRzykDNEZUbKgEyYXX+U4fDhLz+00z
         V5xQ==
X-Gm-Message-State: APjAAAXlHqow2px5LYegtbEkAa1uW7OHieK//SMKWEDmCtUPxHKvRFd6
        iVfLDZ+24o5AFnVOZejjcE5XPOpuaa85zRATYWXfJ9Lf
X-Google-Smtp-Source: APXvYqzBOWNVd1+52WtBi9/+FuY34GhQwqLRgK9LSZD46rL9njP5XApHacVaGRV8/GwflRuY5XOjDwAMzTa4xJoC/nk=
X-Received: by 2002:ac2:5382:: with SMTP id g2mr68813972lfh.92.1565001103102;
 Mon, 05 Aug 2019 03:31:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190725171215.71801-1-kevin.brodsky@arm.com>
In-Reply-To: <20190725171215.71801-1-kevin.brodsky@arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 5 Aug 2019 12:31:32 +0200
Message-ID: <CACRpkdZi6tWVf-1g7JwQpQnEa+XUSfe_Xj6xf1sQwMDRQrpGhg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: fast models: Remove clcd's max-memory-bandwidth
To:     Kevin Brodsky <kevin.brodsky@arm.com>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Pawel Moll <pawel.moll@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Brian Starkey <brian.starkey@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 25, 2019 at 7:12 PM Kevin Brodsky <kevin.brodsky@arm.com> wrote:

> It is unclear why max-memory-bandwidth should be set for CLCD on the
> fast model. Removing that property allows allocating and using 32bpp
> buffers, which may be desirable on certain platforms such as
> Android.
>
> Reported-by: Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>
> Signed-off-by: Kevin Brodsky <kevin.brodsky@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
