Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37E1A43607B
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 13:44:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230267AbhJULq4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 07:46:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229765AbhJULq4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 07:46:56 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54F11C06161C
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 04:44:40 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 193-20020a1c01ca000000b00327775075f7so1037131wmb.5
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 04:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=BQghDj/yxu+BYKgp+pewmhnc8VbRAWzyyq3pG3ohJ1c=;
        b=alOuexoeOEbr2u8pleBfmWODBwtFG2z91Gz8hmXndjHSCaea+xFC+IrALsOsA/0slB
         TTDJdjFp8rx1Xgg9DbjskOOC8liEuGxs/9kUDJgnvPdAc4WfnkuUX8TVfIgCutB4u8IP
         MMKl/KUsSmAQex8Rgvz71iUWPzpJAl0O8OhmfIJGik1X+VtT0PJiEA9Fkoo0BLC2YaLO
         /JIeRhZ4htghC9+ZhNeeDv5tdB0t50F6sN5aIvxSHSCEZLlWivsPQfvApPHuIN6l0jm4
         zegbvtVcjysF4fcEOhe/xRiQVbLxt4NtLQ/XqiDrbO/NgnMYiI8td/gzWHgrOGJJ4mT+
         eSFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=BQghDj/yxu+BYKgp+pewmhnc8VbRAWzyyq3pG3ohJ1c=;
        b=Kkd7MACZ3NXfv1uOz+qupMoR5VSN9+G9nilgB94T/67lW8WD6SXfWv9vCphqw5/N0A
         hXuyA1GRoiz4drgUu3eDPwEm0tUP8zsO8rSFxEbV/AMhDTicf53OHMzlPpxCJLs1SBjv
         nPOOAIfGrjhp1MU0jGGtHZlFkiGmOeLSeDo5IaBUNT5MxNZzoPZV+QXbsPhefThzku+o
         2aGHOhh1bSHb+pjoyTChOA98uKu7POwfqYNm1cI3pm55Pn3rzDT/jsKh0+hA4DE1esDW
         GfUfjhMmySv9DclCsjubA2vPA26ZqBKcXiJOZNrTHXSWCH5A3ZobF3AHEeE6qRMDzE6c
         Jnig==
X-Gm-Message-State: AOAM532u/8DqQOzGLiMbGH3/rX2Ye/yex9/5hrjdXd5nPVrw6600NxdN
        jIrCr/zZRkGyYVwAQ0keoC+99w==
X-Google-Smtp-Source: ABdhPJw7ZyD5LBmoz3xrLWqdu8YqVeD4Omz4svKdSjfuWID+h+2qKj3oUHCPZYTIsfW60MV/5c7IZg==
X-Received: by 2002:a1c:20cc:: with SMTP id g195mr6321718wmg.22.1634816678970;
        Thu, 21 Oct 2021 04:44:38 -0700 (PDT)
Received: from google.com ([95.148.6.207])
        by smtp.gmail.com with ESMTPSA id c17sm4619298wmk.23.2021.10.21.04.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 04:44:38 -0700 (PDT)
Date:   Thu, 21 Oct 2021 12:44:36 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] mfd: qcom-spmi-pmic: Sort the compatibles in the
 binding
Message-ID: <YXFSpGfOOF3pk/OY@google.com>
References: <20211017161218.2378176-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211017161218.2378176-1-bjorn.andersson@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 17 Oct 2021, Bjorn Andersson wrote:

> Create some order in the list of compatibles by sorting them.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
> 
> Changed since v1:
> - New patch
> 
>  .../bindings/mfd/qcom,spmi-pmic.txt           | 30 +++++++++----------
>  1 file changed, 15 insertions(+), 15 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
