Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A49754A631D
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 19:02:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233823AbiBASCl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 13:02:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237387AbiBASCk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 13:02:40 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B788AC061714
        for <devicetree@vger.kernel.org>; Tue,  1 Feb 2022 10:02:40 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id qe6-20020a17090b4f8600b001b7aaad65b9so3329300pjb.2
        for <devicetree@vger.kernel.org>; Tue, 01 Feb 2022 10:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=7tCuLpr8/2LBd/9CIpx4oGmqp37+2g63+QcCiU/FCcw=;
        b=WRl/nbwxyaq3khTLqkQsbbrLAhitrAJ2FYxxMArSCY2yDpkbMexbTkPQ/RuZnaYkNi
         ZnBhgIuT6IIHsyKJmz6cPqPsJRwux/Azf8/l4yOhwuFiLcToLfsWkWjcrbZqfuDNhxTK
         vCh0Iq5VxbmUxjgw3QAtq94h2KC0Fdq8wF0RA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=7tCuLpr8/2LBd/9CIpx4oGmqp37+2g63+QcCiU/FCcw=;
        b=u1MJ8AwWnGQaMGPtExF0KX4ZG/VApozTFaa1eKs4D+3LKq9AD3+MM3m9KTZ1g4mv5I
         jUn/3sWbqbJspJz0xHhMIyzCJgf3I7nvVvC68LqA/pqqdB2dnqy2mEzYMIpZgOwekxsf
         0R/sni+Z8WQNWfqeIN85+EqrvbWK3/wlH1BuEMrav/eS8LyYsTRePnal7j4q1jGOnCzq
         izE9iRu39H+t/9pv5quWz7lwJ3A1jew9VHjFCPeg+rUawyY8fa/jPgQXW28ZTbu3+dbV
         tMT1g+ERVNeApcXsYxnJg57rAaywpSHTX3iLTdusM7LYbXhki8ueCPXNTYgLAbVqKKmH
         JgQQ==
X-Gm-Message-State: AOAM532R91FqoaJ+GIU3Y/aXOFiO2P6E2nSliwtYb3kxoaBipjPn5qiE
        6NewRZiAP7iim2TtHGidZU16YMdy/0VXCQ==
X-Google-Smtp-Source: ABdhPJzkP0PD5MmdFUYKdgkq732oNkEdLisECygqJK28T1AYcbgd81rLTJ3aIVEd+HlxmG9dQz1XkA==
X-Received: by 2002:a17:902:e803:: with SMTP id u3mr27005923plg.151.1643738560350;
        Tue, 01 Feb 2022 10:02:40 -0800 (PST)
Received: from localhost ([2620:15c:202:201:aca9:b3a5:6f80:8fb5])
        by smtp.gmail.com with UTF8SMTPSA id h5sm23127901pfi.111.2022.02.01.10.02.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Feb 2022 10:02:40 -0800 (PST)
Date:   Tue, 1 Feb 2022 10:02:38 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        swboyd@chromium.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] arm64: dts: qcom: sc7280: Properly sort sdc pinctrl
 lines
Message-ID: <Yfl1vnHvmoLt6ATK@google.com>
References: <20220201001042.3724523-1-dianders@chromium.org>
 <20220131161034.3.I6ae594129a8ad3d18af9f5ebffd895b4f6353a0a@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220131161034.3.I6ae594129a8ad3d18af9f5ebffd895b4f6353a0a@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 31, 2022 at 04:10:40PM -0800, Douglas Anderson wrote:
> The sdc1 / sdc2 pinctrl lines were randomly stuffed in the middle of
> the qup pinctrl lines. Sort them properly. This is a no-op
> change. Just code movement.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
