Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B7F637AFAE
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 21:52:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232279AbhEKTxf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 15:53:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232296AbhEKTxQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 15:53:16 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EB56C06138B
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 12:52:08 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id i190so16797365pfc.12
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 12:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=a1nPWrBOuBAg2EyL45vQ76j5xYClZ1CRM9qwjrLW/ic=;
        b=Cl3EcGblA/5ey63pSyMGX5tgM/8WlEQuFWDYN32DOOoVMSt+aTqUur1mFBsKU4BOHG
         agJJsq46+bfqn7l14BhJJWpe9JSlsLqooK6SZTYPH1vNVxk6R8X7RLTT2gz5CFJu1lDU
         EOrdmilnyJjJ5q5iShroha1hwIEEIv1sg/oOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=a1nPWrBOuBAg2EyL45vQ76j5xYClZ1CRM9qwjrLW/ic=;
        b=ar581iy6dbH6W84IfZHryj5b26houoPgHDsWLqfYci6DIk45+om/TuV/3aYUkdVj/d
         fL2UY27/QfkMYBYlkoNvoAcN+igEPFGch6EJW7EkaVye0v7Ns0DbsurQRs3/M0dlb+gT
         JpTQPvke0ZECAO5CMSnTocE6Pj2HfE6yaOf1cxDQt0zSjgUM4/kt3ov+beiPpiBboxWd
         AAf+C0AVmgEviGSm/x/PDXpKX/4C6eqlmCdH/6/EiKYt65r3rrOkF9nUMUqPmyasAaf2
         +3X7M9fsUT6OANog6OnVbcBuynpXmXbU9d4PE66fP1x9a9FfOaRZwq72Y2Bc6MOFe4W+
         UuPw==
X-Gm-Message-State: AOAM530wwx6hv+oZ29oPs6PHNSXLcIuyOfQjmAThK3pE9D/8lJ8xy1cW
        czSYQCglivIHvWuYRlE6L+djSS/ppiVJIA==
X-Google-Smtp-Source: ABdhPJxzHQuxXJOty2KKur3HxOyL11SN7VPm15QXw+NQLk0z6HJrsVX4ZR92Pt6ZtLHiTARTWk4nnA==
X-Received: by 2002:a62:2a14:0:b029:263:20c5:6d8c with SMTP id q20-20020a622a140000b029026320c56d8cmr32334338pfq.23.1620762727844;
        Tue, 11 May 2021 12:52:07 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:f1d7:673a:456e:c653])
        by smtp.gmail.com with UTF8SMTPSA id v130sm14248452pfc.25.2021.05.11.12.51.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 12:52:03 -0700 (PDT)
Date:   Tue, 11 May 2021 12:51:57 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajeshwari Ravindra Kamble <rkambl@codeaurora.org>
Cc:     amitk@kernel.org, thara.gopinath@linaro.org, agross@kernel.org,
        bjorn.andersson@linaro.org, rui.zhang@intel.com,
        daniel.lezcano@linaro.org, robh+dt@kernel.org,
        linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sanm@codeaurora.org, manafm@codeaurora.org
Subject: Re: [PATCH V4 3/3] arm64: dts: qcom: SC7280: Add thermal zone support
Message-ID: <YJrgXQdKuvpm4KAz@google.com>
References: <1620367641-23383-1-git-send-email-rkambl@codeaurora.org>
 <1620367641-23383-4-git-send-email-rkambl@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1620367641-23383-4-git-send-email-rkambl@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 07, 2021 at 11:37:21AM +0530, Rajeshwari Ravindra Kamble wrote:
> Adding thermal zone and cooling maps support in SC7280.
> 
> Signed-off-by: Rajeshwari Ravindra Kamble <rkambl@codeaurora.org>

As requested earlier, you should add reviewers of earlier versions to
cc: and provide a change log for each patch. Please don't ignore these
types of request, or potential reviewers might decide to stop reviewing
your patches (or just not see the new version(s)).

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
