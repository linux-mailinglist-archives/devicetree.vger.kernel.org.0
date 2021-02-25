Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E62BA325A76
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 00:59:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbhBYX7R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 18:59:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbhBYX7Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 18:59:16 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD6C7C061574
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 15:58:36 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id d11so4129646plo.8
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 15:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=sgBcyKTrhWhBSDxd2pfjpBmd0inPEN16qGxTuTl1gKs=;
        b=jD6mILYvID7wcz7/JVIoIPt4ZCjT8HfIU4oNBk9w/Sk/+cuLUbLfmwPRGpPB5+/sEO
         YHLIpOUsl2CiyBsQZWc1q5WWOxQtN454hiL/sadVELadhN0N5HHmSflnPtSK+ZFWDtNR
         N+piymA7D7yMk0iPW0LXemHRXmB1dWGnuB/1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=sgBcyKTrhWhBSDxd2pfjpBmd0inPEN16qGxTuTl1gKs=;
        b=CJMYbBo8QsQeBl5WOqk600fjvi9btiizfwBMD8Hp3KgCHekA19rurZiQs3klra7yni
         lTXEaGNyfATWdqRR9pEw3fet6/57iCfzrK3vllS3iDq8IbyI4noFRsNUsy7a9rProT0F
         5ndFg1Y+cOmPJbvcv65e0TX2nbGyDmyptsfHah0E0GuJE6ogzLvK7W/+L5UihK8DDukt
         14jiXnGDh+OewJnSmZGBVD7oPxCwdeBxsbxIfCo4uKNIGxGDiRmSXWsepSHZ/rhxZdaG
         9eErRNfhkg7ny6KmTBUOZv/1fj0KjfcRgICQ8hlGPEMhUPcAZu5zDZULawIREEqy+y6q
         ueEQ==
X-Gm-Message-State: AOAM533qOrDPhYV+q5AEPD1kWX4mvqqt/o16GnRY6qtCPORWKaD/vXd+
        bfli2/gwgQEQse3HeGe1oqt0ug==
X-Google-Smtp-Source: ABdhPJwfh2CP2/MqqEsSPEFdK2Ukd9rSzolqDzF9Onfxbe/Sl6cLWt12ziMOu5tatkEIMbtzB9S/+A==
X-Received: by 2002:a17:90a:d585:: with SMTP id v5mr420027pju.206.1614297516053;
        Thu, 25 Feb 2021 15:58:36 -0800 (PST)
Received: from localhost ([2620:15c:202:1:1d8:8d0c:f75e:edd8])
        by smtp.gmail.com with UTF8SMTPSA id i2sm7031528pgs.82.2021.02.25.15.58.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 15:58:35 -0800 (PST)
Date:   Thu, 25 Feb 2021 15:58:34 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Rob Clark <robdclark@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 04/13] arm64: dts: qcom: Unify the sc7180-trogdor panel
 nodes
Message-ID: <YDg5qkFvEMtu+XUw@google.com>
References: <20210225221310.1939599-1-dianders@chromium.org>
 <20210225141022.4.I1483fac4c5ae4b2d7660290ff85d69945292618f@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210225141022.4.I1483fac4c5ae4b2d7660290ff85d69945292618f@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 25, 2021 at 02:13:01PM -0800, Douglas Anderson wrote:
> Let's avoid a bit of duplication by pushing this up to the trogdor.dtsi
> file.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
