Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC8223F23A7
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 01:25:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236688AbhHSX03 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 19:26:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236585AbhHSX03 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 19:26:29 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 554ADC061575
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 16:25:52 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id n7so14286232ljq.0
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 16:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=M1+GHBIER56bvoiEO/XH/RbJV9p/MJW6zqzAx52jbsc=;
        b=WoJlt72YYCPglK8TAwUAXvTJx+OFz3L9OZhtK3vxaXZmZN9B1zuy+Xy6sfq5uC1aST
         AgOzlw7oyzwbKTlOPltZ7QaVYUBEcFkIrPtjHZZHlIpwIuk7i0KJkSUqcUIrzsZ0i45Q
         Z/bU0WRWIR8bZW3obeMwvrajrC/qWtToCrLd/eNEncCvDypXKIS1kClSdc6/4jlQlro8
         FwOar2SjbadN6OsMsG2uAQsrOVjqBPram628FShbYWGv/Ut0l9HiNkXEbnFLgUDm/a+i
         WnYF6Ud+j7AClveyPHrUdZQPkJalgsdtMoNczJ6xivl1FgHgoUqoqr2BfnoW51an/a38
         K5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=M1+GHBIER56bvoiEO/XH/RbJV9p/MJW6zqzAx52jbsc=;
        b=cKu2SV3QsnTq8GkOKOmrsaMIPL6435xoM3fHzu6sVMDkh8J1O5rmiEv1x5WF+Jiw6r
         ZuBqLRvsmm/tq5zyqicVEb+dAN03B78GX5ZMGTpRNGDe+XBVSvQ26rf/6VUDP1GK/cLu
         hPO9FlaUq1QIamxgVQypzlGwjJ7gCbq63SsSApgzql3VuHVhgv9fsXrGy0u2xvXusTCZ
         ZKKBi92IltYJ8+udLlUA2L+AHsE/XZiqZcOrfCGbFLLYvcxM0qi+KSgfcsv7VqCeWote
         CQsKHww/PdFmQyFpTOrOxhE0t5M52cQSfY8NGKIJk3fK8tOuBG0yjMsPhGBnBvICw7Jp
         ouyg==
X-Gm-Message-State: AOAM530ZN/xvgj3QLRb03W497H4gJXbFg1pg8t2RsZihJlLE52T3kSfv
        SGZAm6kPXgSpQQW14cdnI+y2gguPMekw92y5dWeQO+VAbjc=
X-Google-Smtp-Source: ABdhPJzlDC/v/pF03+lDcLiXr114tfQChkfaJmOPe/hKz4Qu88FwZ+L8u4mjnWpC1pygoynHP/jepajuuBTppKBscZs=
X-Received: by 2002:a2e:9e46:: with SMTP id g6mr13902666ljk.326.1629415550673;
 Thu, 19 Aug 2021 16:25:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210819184239.1192395-1-robh@kernel.org>
In-Reply-To: <20210819184239.1192395-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 20 Aug 2021 01:25:39 +0200
Message-ID: <CACRpkdavBq5vfvVQMJm-R32VP-FEO6j6L5pUGGCWEFSiN=tUDw@mail.gmail.com>
Subject: Re: [PATCH 0/5] Arm VExpress/Juno motherboard bus clean-ups
To:     Rob Herring <robh@kernel.org>
Cc:     Andre Przywara <andre.przywara@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 19, 2021 at 8:42 PM Rob Herring <robh@kernel.org> wrote:

> I noticed we once again have warnings on VExpress/Juno bus nodes as the
> simple-bus schema now expects child nodes to have a unit-address.
> Digging into this I noticed the arm,vexpress-juno.yaml schema is out of
> date and missing some properties (some of which are unused). I found the
> 'ranges' handling to be odd as well. This series fixes all those issues.

The series looks good to me. Thanks for fixing this up!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
