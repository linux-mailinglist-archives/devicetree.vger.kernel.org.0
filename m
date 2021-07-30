Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69C783DB6F2
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 12:11:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238537AbhG3KLc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 06:11:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238387AbhG3KLb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 06:11:31 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C56CEC061765
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 03:11:25 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id h14so16837359lfv.7
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 03:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=77UNgvSXVfiCkvl5HDG3vgOj6Hghqj3H/O+1VotXBfY=;
        b=QYy6nSg7ITGAqKsIoCFxt6yn7C1sv6n+Bq5T4bu9bd+NvaciK3E4ckd7S4VSGsVv7R
         5m1q9yKNH24I6CUPZRDVdHK4jAzrs9ohMs0cQ5skNhWGmCv6tdY7sFdllGA9+eHRDVfz
         Ookj56HvDmt/E8hvks71RtJ1AjtSpZdi/j8fPtp2BMQvvULss+zMjn+0hsRApvyl0Vfl
         yD7FD0eWs3ReJWVPsaohU7z7ou/14guTZnyI/cJ+LQcx1DBSLVQWjWkcowuIfoiKPqos
         s0wWbjtGc3c6e/6lXxx+VFl2YZyXQGkwCp8vFQCI39jXfWgzB3Ks5+uFSLukWBtVXWB5
         CM9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=77UNgvSXVfiCkvl5HDG3vgOj6Hghqj3H/O+1VotXBfY=;
        b=FmoXuY9v2hoXOsZS/GqlqanMBbAX9+jgn562d0TZIGV8Ayi56u8STTGY+RRfW/NSQW
         7Ap6HcyVJKsyqpj23xHLU2GsbqGgAKVtG++UrGfBtGjTZQDQNHZu8zaMljmRk/j/yFks
         4JJQYtLQLEysEacE+F3b1jkWl0QadsdJ147ZFaVVNbC0kHBc531jaYPkwVHwZvNOHuYY
         pWaadDXYQYE2NlpD9jC9fpCdtqm7VZHS4PCPKP0Ic/RrZFA21r/eEuMaWNWNXFNVFEBd
         RPK8pc4I1V7qE6kcyQeVstPi1UZdCyBSe4FTcjoA6w4q7Kty55UYx1l33NpC0Pzv6zIY
         8UKQ==
X-Gm-Message-State: AOAM533vvMhSKXzmISWCHey7WKq73DST4DqUs6Xh4HmTekAV9Tbgp5eH
        Z8lJrzwNCDn2xvrSAAkmOaFKnDtcKS0hxKJ/jNyyFQ==
X-Google-Smtp-Source: ABdhPJw/qAAEH1w+sT1d57VfVSKhNIM2JLVTCunV0OOprnk8fZkOEl4X6TPRr07xqOR28shrcfjxPv+7UgNuD6MgOOk=
X-Received: by 2002:a19:7b14:: with SMTP id w20mr1358563lfc.29.1627639884190;
 Fri, 30 Jul 2021 03:11:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210717045627.1739959-1-daniel@0x0f.com> <20210717045627.1739959-6-daniel@0x0f.com>
In-Reply-To: <20210717045627.1739959-6-daniel@0x0f.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 30 Jul 2021 12:11:13 +0200
Message-ID: <CACRpkdaEMeYieH=g+3jveWgPS_8CXSgC-iryzbsoZp7LLrkzKA@mail.gmail.com>
Subject: Re: [PATCH 05/10] ARM: dts: mstar: Set gpio compatible for ssd20xd
To:     Daniel Palmer <daniel@0x0f.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jul 17, 2021 at 6:56 AM Daniel Palmer <daniel@0x0f.com> wrote:

> Now there is gpio support for ssd20xd set the right compatible in the gpio node.
>
> Signed-off-by: Daniel Palmer <daniel@0x0f.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
