Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC90B3EBE07
	for <lists+devicetree@lfdr.de>; Fri, 13 Aug 2021 23:47:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234824AbhHMVrd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 17:47:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234841AbhHMVrc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 17:47:32 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73E94C061756
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 14:47:05 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id r9so12984510lfn.3
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 14:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8eT0SyDLhtqUCRVoTbFA0TfLCPJmpdZc1LYFo2vzcrU=;
        b=Z7llxaB03js+5zDqMl9BJeU8H603XLw8p0usL4lrTwS3FMi3UtyJAdU1gA5WtzQ5aP
         qp0K/OxL+afYh795ltTSFjme1o+v67sL3pNfGWUPAHja4xu4MZAPcSk1wfJPtG5GY5QS
         kNn84rHKdih51ram5Y6A+lxip7ybeLuymORIGF9DMkF6EQdgTFC237xBhQrCNKmPG2xN
         dgImHkqxU95PBDIjx4NfAtovGSGQG3QZN5es6qdAraUOddZGHiZGgTb0dkgDC/80f/Mn
         b2SZrAorG4gJ42Vf1cAZcRwF2sgZqq5R4+b81fbBIn6WyR2BMsO2FEw5VL80EoE+Vm54
         9gRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8eT0SyDLhtqUCRVoTbFA0TfLCPJmpdZc1LYFo2vzcrU=;
        b=YkDE4CnpI7uOyPwTee7/6H5xr2j47YBgPlkPhitEKLcQEArF+DRM9AKNaZXZHJaKU6
         wwndMyMgC0G0OAGWsawiOzPCeGPnFIEfLLRD3GlJ8B4zI3702kKmQA95yK4/GopUoCS9
         LGRQo4uLxyOtwQG9Gb38IN9LtWhpn2Pick+xOerlmj7c2La2yq2rsYylTLXRgmHRDHdw
         +AQ1nk8PeTdqrt9kHA5clAptw/JWtZNJdlH6MUqJAnMdXqqJi4MiCtMEY/iym7awrtJP
         f75dcPHf6vGKzxZ9YSXzE3j44baW/mOWFmOC9aKnhnerEYA0QQbPwT/gWKHO6xUFQuAl
         s+Vg==
X-Gm-Message-State: AOAM530LbVPcBauBIru74CdsBgRADQyDSckTjigqg/3iNixQh0yp+I+3
        zyxJwmXqkqjXWkmrl/j9ZBD/LZeFAfs82KvPw9mHHw==
X-Google-Smtp-Source: ABdhPJzIl9ij4hoqRja2SJhOC1MMNQl/5QwyoHXCpxzvQa+0J3XpSsf519mnSkQWEtXLfDnZLZmoVyxR0QNhVU0wdJg=
X-Received: by 2002:ac2:5d4a:: with SMTP id w10mr3156477lfd.529.1628891223784;
 Fri, 13 Aug 2021 14:47:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210805085828.3451909-1-linus.walleij@linaro.org> <YRa5UnBcmW1KBIEd@robh.at.kernel.org>
In-Reply-To: <YRa5UnBcmW1KBIEd@robh.at.kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 13 Aug 2021 23:46:52 +0200
Message-ID: <CACRpkdbcVJbMnCQ3P1nPmFUsJSw2jgpr2BEzz6GBUQLhBVuO_A@mail.gmail.com>
Subject: Re: [PATCH 1/2 v2] dt-bindings: power: Extend battery bindings with type
To:     Rob Herring <robh@kernel.org>
Cc:     Sebastian Reichel <sre@kernel.org>,
        Marcus Cooper <codekipper@gmail.com>,
        Linux PM list <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 13, 2021 at 8:26 PM Rob Herring <robh@kernel.org> wrote:
> On Thu, Aug 05, 2021 at 10:58:27AM +0200, Linus Walleij wrote:
> > This adds a battery-type property and bindings for the different
>
> s/battery-type/"device-chemistry"/
>
> Otherwise,
>
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks Rob, Sebastian tell me if you can fix this when applying
or if you want me to respin the patch.

Yours,
Linus Walleij
