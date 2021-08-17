Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98B543EEE17
	for <lists+devicetree@lfdr.de>; Tue, 17 Aug 2021 16:07:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239950AbhHQOHi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Aug 2021 10:07:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239165AbhHQOHh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Aug 2021 10:07:37 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FD93C061796
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 07:07:04 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id h63-20020a9d14450000b02904ce97efee36so25055604oth.7
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 07:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=MjrWqg5iL7My1Sr03I7/kUapdaKKEVG8PdV3gZ9eQ5c=;
        b=UAdw8iIf1KQ4XcA+YoXbiW2WnCf0aZvDhdzhGq6fdomVH2hQy6KaDEj3vfMHfALYv6
         TQpDbwuyoIKzh3hHatjWC2nJf9moQprUZ2tg4YEEqzp0MgLOa9hAhk/tzSDVL/eHIa+K
         AoqUgTV2lsAhSg8mt9FbUfK2nAgufws5OC++v03zH4Mzp3nPolTqZYC17k2JCsBaqqp0
         1pNRlPEZhNBxqDufiX2TiEAwa48cot/TPWXIcOiSizQH6GGJhGjZyr4KN+nvPN8Ci5ye
         z/mFkx04yvnmll+D0yTg0FHXOYXHEYLG3QM7swAErrb+wfe6X7k42bqTVmBCJoYERvZC
         RSYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MjrWqg5iL7My1Sr03I7/kUapdaKKEVG8PdV3gZ9eQ5c=;
        b=a0ecI8zC0rqTztSozJLZ0DZk8CzbJEP8qdPndvafOWPBx4yl6oUq8RXbRGvUB1uvPc
         RhNKwMyFDz1eEiAMlWZGjJaqLDtOUjH1Fdee9uX4tU9SP2cB4VfqMb2HwK0RrKCLZbUt
         FMDZc0U/YYKLgjZxxp6co+gLOVCe/stM/YPp5O/kZ2TP8x3RsOX8Imv6I3cmunHqHovl
         7+kIgcR6bQ0tr0wWPwIte0Az8tRHH6LM0yJVVOfLbXC+4cRA1aW01sPMo/q75PSB2WKa
         +1vxe4fmgbI66Hrif11OdW9p73UKed1cwZInvDlhDpGWC7Ys7rMoqjtXURVlQimAz1Pp
         oTBQ==
X-Gm-Message-State: AOAM533Az8ItwLVvJbqM6e7k9mYqUu2hiZCln5FVRA3Cm0nVi7dMONO0
        saLykMU/SgO43QAu7K/Di06Uyw==
X-Google-Smtp-Source: ABdhPJxgbrZTySfGDM1CDSbpZKb3negyXgjIKPfl8i3ksWXyLl4lrCduMCUTEPkrjtnienG26pp+7A==
X-Received: by 2002:a05:6830:110a:: with SMTP id w10mr2663999otq.291.1629209223152;
        Tue, 17 Aug 2021 07:07:03 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m16sm438399oop.3.2021.08.17.07.07.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 07:07:02 -0700 (PDT)
Date:   Tue, 17 Aug 2021 09:07:00 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>
Cc:     Thara Gopinath <thara.gopinath@linaro.org>, agross@kernel.org,
        rui.zhang@intel.com, viresh.kumar@linaro.org, rjw@rjwysocki.net,
        robh+dt@kernel.org, steev@kali.org, tdas@codeaurora.org,
        mka@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [Patch v5 1/6] firmware: qcom_scm: Introduce SCM calls to access
 LMh
Message-ID: <YRvChF0j2NOsDuK3@builder.lan>
References: <20210809191605.3742979-1-thara.gopinath@linaro.org>
 <20210809191605.3742979-2-thara.gopinath@linaro.org>
 <19659756-4716-4c5b-949a-58d362dcee22@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19659756-4716-4c5b-949a-58d362dcee22@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 17 Aug 08:17 CDT 2021, Daniel Lezcano wrote:

> On 09/08/2021 21:15, Thara Gopinath wrote:
> > Introduce SCM calls to access/configure limits management hardware(LMH).
> > 
> > Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
> 
> Hi Bjorn, Andy,
> 
> do you mind if I pick this patch along with patch 2/6 ?
> 

Please do!

Regards,
Bjorn
