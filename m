Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6CD8B3E155E
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 15:09:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240675AbhHENJU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 09:09:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241561AbhHENJS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 09:09:18 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8546FC06179A
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 06:09:04 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id m19so3343445wms.0
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 06:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=CQG8n1Vveh3PT6KDWBy7fP8k2PzMGv5ajm/RWHnLxd0=;
        b=uBg4z7MW6kEY8UOS0R2VwU9xCMMNAZZOfOS60SWPWPH9eBFQogfIHOdwMYy1RiRQC7
         pKPHxfvbpJmkJIuTn8WfrKA+zPNk6KH9Nt1qEF+JT+1359ZXCWpjbbcMf4fGjXZb2XFd
         ktLg81g8cZ647iRbrWqveZ0sGNwncNpjLbHNrDykAqcrHx+DrgsoMU77fWUCHrN8G7TH
         3VYgdU+8u5HyDj6rFv/BISrkxvT/sTa9WALoCfMex+xZVWFUfWiQI66TyiL2V3Lyv/QY
         8/pVfQS3LF8195SnY3y2px45QC35jUseqhrSW1vYVsOF26QjAyfV/dvM4ji5O40kEatc
         9YSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=CQG8n1Vveh3PT6KDWBy7fP8k2PzMGv5ajm/RWHnLxd0=;
        b=c4aP+qgUEA5nsDpmyD8WC2fHe5A09Ih6XBfX2/id/XBQa8l7GCiBrmOYOJwdXgbP2F
         0pnmtUhuUwWO7n2qvasbofJI8iJyhMUKdnJa6YRbHm+e9+arxcCkDTOZVWVTWQhzT1Wx
         CaJGjUa/CVFQZgboDIraOg6N3ZfMjcVVCVT5MjYvEACjUbBOFJ5Ol6/K+cvzwClpRDIw
         DvE08ApWGq/UGc5hpO0l7OaA0ZuKAPRWGd5cql3oQcZop7HF+NYhYZlY1Z9r23M9ovWp
         30u5P3GLnMH2afRccaPdn4h34Mrz3NJ8FA61e4VSrphrCtFY1S24WOlCF2zaqxQ+1pW5
         MrYw==
X-Gm-Message-State: AOAM532K5j066ML79BOQt7qErDokkwT733TqjrCqaMChA/dHZ7T/e1s1
        r621sFOhCBFYJF42x+CebMvWgg==
X-Google-Smtp-Source: ABdhPJx6qy0GiIU70v6nqrqtZ/UFKEEr+z+Kbjcvx860eCnks0MM/tnuxpajFnZrCh2WO8ykYlWt8w==
X-Received: by 2002:a7b:c18f:: with SMTP id y15mr15193497wmi.117.1628168943127;
        Thu, 05 Aug 2021 06:09:03 -0700 (PDT)
Received: from google.com ([109.180.115.228])
        by smtp.gmail.com with ESMTPSA id c10sm9893098wml.44.2021.08.05.06.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Aug 2021 06:09:02 -0700 (PDT)
Date:   Thu, 5 Aug 2021 14:09:00 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linuxarm@huawei.com, mauro.chehab@huawei.com,
        Rob Herring <robh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: hisilicon,hi6421-spmi-pmic.yaml: make some
 rules stricter
Message-ID: <YQvi7DgVDhQl688S@google.com>
References: <b7a775808d9c3a87fbe1c5a6dd71f8f18be7e649.1627116034.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b7a775808d9c3a87fbe1c5a6dd71f8f18be7e649.1627116034.git.mchehab+huawei@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 24 Jul 2021, Mauro Carvalho Chehab wrote:

> Define maxItems for interrupts and accept only "ldo" in lower case.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
> Greg,
> 
> Please apply this patch on your staging tree. It addresses the remaining
> bits from Rob's review.
> 
> I'll submit the DTS patches via HiSilicon tree, c/c you and Rob.
> 
>  .../mfd/hisilicon,hi6421-spmi-pmic.yaml       | 21 ++++++++++---------
>  1 file changed, 11 insertions(+), 10 deletions(-)

Acked-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
