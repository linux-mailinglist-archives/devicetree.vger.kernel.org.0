Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 354BC3F8FF8
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 23:29:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243580AbhHZVCf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 17:02:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243642AbhHZVCe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 17:02:34 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7961C0613CF
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 14:01:46 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id w19-20020a17090aaf9300b00191e6d10a19so3278025pjq.1
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 14:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=eaEOFUvxAPmXM8YqjP9hrSbXI6bvOJzogOXXHMDAi9Y=;
        b=kh5LnsgUcKg/RvMIIzNT3fv4UD2swPDy7glvvQYE0ZB8hjzNwGEJ9FAnb+qH7eQ2Lf
         Uw6ey7PjUjaTDM1RGQeUrJ4eLdFcvGwAxC/y97lHAEs1ukzs4EqXQA9Y0K+tjIbH4gb0
         pjtj5cMK2g1pa9S3lZy7gZ75v/ENCr6QCENHY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=eaEOFUvxAPmXM8YqjP9hrSbXI6bvOJzogOXXHMDAi9Y=;
        b=ZY5YGyYwGHhmS5zBeTKkPdgVCs8PWsyUpZXLBna+Uemib7UKQZ15hvkaYLGXg1Gv9y
         E+qzBfR4f8LYUHUdohIXs1FMv/hAzEW7xtFs5mIFHCWylXHeRiji16tLhg3fYfsR/ghZ
         PbdmBXTJYuDmhD2JHuvkeZW+6fZw5T7vUJ0N5dKxUeui+B7T9dHl4pZBoVEV64yrw8sS
         39d0w5Oyml9gxgLnzpDXRBpSldCHl0HKu0kI0Rb4XDi+RlTG+Ms7lcaKymuoew5jYn9u
         4Ad27gPvhSS6EGTFsH4Shym2yb5pcFndQMrADTRPfcJ9AweZPhxQxjHBqmWJIvFywINt
         VmKw==
X-Gm-Message-State: AOAM531inIPDnCAY3OZntpB6Zq0w90vVcOcWTHjJ0+a1Kp1K9WqgtUjO
        BwKXSLlufDuQn/n6skPW5L5zlA==
X-Google-Smtp-Source: ABdhPJxlBshtNEiT2wxuAMODJVNJvZKjjqbFwuV5Epe2WvhKQXV+AW7NuuyXydGv7EM8R2PMxKesCA==
X-Received: by 2002:a17:902:c402:b0:12d:b2fe:f0f1 with SMTP id k2-20020a170902c40200b0012db2fef0f1mr5214913plk.9.1630011706372;
        Thu, 26 Aug 2021 14:01:46 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:bd0b:bcb8:ebdb:c24d])
        by smtp.gmail.com with UTF8SMTPSA id r14sm3825563pff.106.2021.08.26.14.01.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 14:01:45 -0700 (PDT)
Date:   Thu, 26 Aug 2021 14:01:44 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajesh Patil <rajpat@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org, sboyd@kernel.org,
        Roja Rani Yarubandi <rojay@codeaurora.org>
Subject: Re: [PATCH V6 4/7] arm64: dts: sc7280: Update QUPv3 UART5 DT node
Message-ID: <YSgBOP/hMob3Ff+4@google.com>
References: <1629983731-10595-1-git-send-email-rajpat@codeaurora.org>
 <1629983731-10595-5-git-send-email-rajpat@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1629983731-10595-5-git-send-email-rajpat@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 26, 2021 at 06:45:28PM +0530, Rajesh Patil wrote:
> From: Roja Rani Yarubandi <rojay@codeaurora.org>
> 
> Update the compatible string as "qcom,geni-uart".
> Add interconnects and power-domains. Split the pinctrl
> functions and correct the gpio pins.

You could say that uart5 was formerly treated as special
(dedicated debug uart) and that the change removes this
specialness and makes it look like any other UART.

> split the pinctrl functions to match with SoC dt

The message should say that this is about the 7280-idp

> Signed-off-by: Roja Rani Yarubandi <rojay@codeaurora.org>
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>

The change itself looks good to me, the above are only nits to improve
the commit message, so:

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
