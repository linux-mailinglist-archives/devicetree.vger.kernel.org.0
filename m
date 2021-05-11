Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2D8F379EE3
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 07:00:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230012AbhEKFBl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 01:01:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229900AbhEKFBk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 01:01:40 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1EC2C06175F
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 22:00:34 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id v13so10227579ple.9
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 22:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jx+HLqrkgayyP/xRbFqJJaFIdA3zIYWHdvyseYIQV2I=;
        b=y43q3NILP2r9IeXkv6Plt7516Fd0XzUN41lDQ2+wm/JOGfqbPer4HCa5Pm5iTrj6KN
         l+tDjH6yycFtzID9pIcThp+i0on7cfihwFGYhNqFv3z9RVvOEwk2GKP73wZ8+zGgItz5
         cZTxLg7Ss+3JEIiLmGDb6EVrkPaUA9PtQdiWPXhjpH9XA9b4XP7WT5uIOdzA3/ujp69O
         MqZDXIuG5/GZAIHjhQqVtdg2m54o+D7OrvWV+po1BMoLie9UB/RHxodffoPcJ29uPAAB
         S+B2Q21Uc2CAodxcUboYgAwuStIrVrXXdVv+m58qU0NUfQbWqC3bsjm8/0ngXb4d9yIC
         W47A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jx+HLqrkgayyP/xRbFqJJaFIdA3zIYWHdvyseYIQV2I=;
        b=BxpmFrjlRJUkrrCFqx+usu8qgWuSgGLEvByO9cOL2QTh26wRyO+yFnTphbP3nOwITc
         o7d9V7AB5OYPAfvBhC2wx1DxJmsHQwpWwr0Ud06bQ/mOx+SLAmcJjRlCE2oFUGgnNCEO
         OGUCaWEnHHXSz/kWeNK5UMiLlVLRyfHm7tjSyeaZ3G3yfLnLfjTO2u8M7WlXEeKYxzrQ
         GXEv/CGyAAuw2EkDPJbj80wHQgUzWhiFNtqzLitoR5+mXDO3oFSYKjUi0dowtSzd94IR
         qIRl/e32PzCxWlPWpxFP2qS+TTUR3RXakT9s09snEGoba/qjiM2T1KkS29GzFg3Z/Q1n
         aMgw==
X-Gm-Message-State: AOAM533qsY8Qk3o0qHd39aRhAUDCgff0eACl5gBV8KYYiXNR+T+PYKyn
        YJTxhu0MdTiTY5/0VlblduNUmQ==
X-Google-Smtp-Source: ABdhPJyO3KUERBVoEYvZf8SHeOV/r94LR2LAeL0Z9ECQKnXYU9VqDfB3sgdU8GrNrbbFRAzLWpRRMQ==
X-Received: by 2002:a17:902:c3ca:b029:ea:fc69:b6ed with SMTP id j10-20020a170902c3cab02900eafc69b6edmr28116578plj.80.1620709234353;
        Mon, 10 May 2021 22:00:34 -0700 (PDT)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id w23sm7653965pfn.63.2021.05.10.22.00.31
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 10 May 2021 22:00:33 -0700 (PDT)
Date:   Tue, 11 May 2021 13:00:26 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: power: rpmpd: Add SC8180X to rpmpd
 binding
Message-ID: <20210511050025.GA4500@dragon>
References: <20210120225037.1611353-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210120225037.1611353-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 20, 2021 at 02:50:36PM -0800, Bjorn Andersson wrote:
> Add compatible and constants for the power domains exposed by the RPMH
> in the Qualcomm SC8180X platform.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Looks good to me.  For both patches:

Reviewed-by: Shawn Guo <shawn.guo@linaro.org>
