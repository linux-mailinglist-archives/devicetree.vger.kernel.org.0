Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3421402E03
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 19:54:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345046AbhIGRz1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 13:55:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344832AbhIGRz1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 13:55:27 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9E0CC0613C1
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 10:54:20 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id q68so10810985pga.9
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 10:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=YBcmAPslhPlbZCksPdD9UAwxCOyd7Vi/72mhEqlkUwc=;
        b=HkdZ+dQbaE1YHf3eShR+H8cuybA04WEpd+misfhssrfuprgh83beYJgGNCuGdnRXPR
         SRXtySS6B9YJQ19UNEeSvn+Xp1drcUZ9s3TK6NMkK4tOFSmVLdLGIZmoPpKDP4coAnU2
         Z3oZhLTGC6QfKc1aQEWqHbp2p4ACfYyYhzefs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=YBcmAPslhPlbZCksPdD9UAwxCOyd7Vi/72mhEqlkUwc=;
        b=q9ewnzXdubOskhGDtc+w9r51JEpD7nthz2HVYRzy7C9rSucJsxl0gAPTAtCA86cxxg
         YGhIhgKlAmD0bvDyGlEZX8AalLZi0zwA1WOHS4XxFPs1j7vsozVsUIzuHkhSr1374Phj
         mhyz/qdAtLq8oYBa9KaC6EdYsmKWvqSDTT2uiHNgQW3KVdTJ6NOonrUAPfarPvQUJwHv
         uAWoa4WD8e+YD0uLKiD8WGpZ5vY9g8Yws5/J3g2j9CKXcvubs3vSrLsmoMjDFwLaXCns
         4xy8dU3i5uLtk/I8SZa6bgOT8IdW70dbB2KbDxLzkJAseYbOJAir+iFwGBeUnbXiSAFs
         xRQA==
X-Gm-Message-State: AOAM532GfKRAYkjTqXxmRmxF8MRBqEdQWClVGs9X9xAH8NiEYwEpBmD9
        QvNyz7WPolO/VYnPtg6hhwvm9A==
X-Google-Smtp-Source: ABdhPJzzLQM5num0u3qqZhlFH76jVEvGu0iyrBMSWSAQsb3KVYmhYKSC6mJqm7RX/BHXWPkChWWqaQ==
X-Received: by 2002:a63:4cd:: with SMTP id 196mr18311749pge.239.1631037260310;
        Tue, 07 Sep 2021 10:54:20 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:c6b2:7ae:474d:36f6])
        by smtp.gmail.com with UTF8SMTPSA id a15sm14181369pgn.25.2021.09.07.10.54.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 10:54:19 -0700 (PDT)
Date:   Tue, 7 Sep 2021 10:54:18 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        swboyd@chromium.org, kgunda@codeaurora.org,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 2/3] leds: Add pm8350c support to Qualcomm LPG driver
Message-ID: <YTenSlKoDfAuB17a@google.com>
References: <1630924867-4663-1-git-send-email-skakit@codeaurora.org>
 <1630924867-4663-3-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1630924867-4663-3-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 06, 2021 at 04:11:06PM +0530, satya priya wrote:
> Add pm8350c compatible and lpg_data to the driver.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>
> ---
>  drivers/leds/rgb/leds-qcom-lpg.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)

That driver does not exist in upstream or -next. Looks like this is a
patch from some downstream tree, which you should not use as base for
sending patches upstream.

It seems you need to send patches for the entire driver + bindings.
