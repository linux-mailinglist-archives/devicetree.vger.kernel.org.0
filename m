Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7B6E2FE209
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 06:52:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725986AbhAUFvi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 00:51:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726824AbhAUFvY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 00:51:24 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33CF8C061575
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 21:50:44 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id kx7so902005pjb.2
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 21:50:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HMOBeEAgLjQk0tUX2Dpn483fPasTJc5VWJnM0hucxR8=;
        b=dDHjbJxIIHchtavqm4U6tDKvb20u0J8tUxHMqtvrpXehBXUchhyutPIAiANk3E6izj
         UDZYeI8Z5FISI5sqSeLIjlnh1J1e9nRz3CRgy6Q0nLV+ApbJvyavVbeVGogy8P6y8FwY
         2iKycZK9J31mzg2L6/bAj+LuSaBS+cHrk8CFGUyhuugMtOb1RdkFKKvE6JukbqCSLJ6i
         wOq1bUTVXobZv/PrUEhTwJYRQynnNU9G+nP+EzlO1HiEYB19LwTIXmwWZyr7ozzXirE4
         J4GED04CjqIBAUdyv3GovB/eY5jZeeCA2SwHSiHVvpsXzD0Z65S/4UvEYts444BCEqky
         +eDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HMOBeEAgLjQk0tUX2Dpn483fPasTJc5VWJnM0hucxR8=;
        b=j1m/YjIMsmeeygqbuNAF/Daiic26IBRYFWVP5ewastThlfvb0gqrnz1gZTopTczi5o
         9T2bNZRbYiKL1xXvcUnNh1jQrbjwd0qVCxOJMRPlKf5tnFLlogZnZITNesxLDD9KZ7LA
         /UgYqjir5KOzHbg6WBWZ006K9Hkn1bYPZY/OPUVaqXPkgIu6hS3olEagtxMgfMxRZPq1
         hkTfobTUVNLdp6CSWhcbmTp22RxJNZq2oa3k5FBTG+9afGMslSjZqnt2Wza3yR79JNTG
         p3ZWpp5FYFJ+63YedgionkZlNo5ps95Ce2mH+qIJ7qMDnmbYmciTe5dqIBlw1idyQDkN
         woAQ==
X-Gm-Message-State: AOAM533DWvKAtnswn5ZifyRJonkZXEQ3dObuIV4jhBh1juG1G2Hsavhm
        XvEJwKmlx6T//0Wj0tE5ArLvew==
X-Google-Smtp-Source: ABdhPJxYow5jHpvLMcvBCUYMqQD+o9sEzu4Ou+P9LBzvaOS0mSQMe4WTxgaf/4r3vf55qNhKsyfL7g==
X-Received: by 2002:a17:90a:380c:: with SMTP id w12mr9568810pjb.117.1611208243752;
        Wed, 20 Jan 2021 21:50:43 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id me3sm3984441pjb.32.2021.01.20.21.50.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 21:50:42 -0800 (PST)
Date:   Thu, 21 Jan 2021 11:20:40 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Frank Rowand <frowand.list@gmail.com>
Cc:     David Gibson <david@gibson.dropbear.id.au>,
        Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bill Mills <bill.mills@linaro.org>, anmar.oueja@linaro.org
Subject: Re: [PATCH V5 5/5] of: unittest: Statically apply overlays using
 fdtoverlay
Message-ID: <20210121055040.eluxzb2uknuygkxz@vireshk-i7>
References: <cover.1611124778.git.viresh.kumar@linaro.org>
 <696c137461be8ec4395c733c559c269bb4ad586e.1611124778.git.viresh.kumar@linaro.org>
 <20210121005145.GF5174@yekko.fritz.box>
 <7d6adfd9-da1e-d4ca-3a04-b192f0cf36b0@gmail.com>
 <20210121053426.4dw5oqz7qb4y7hvm@vireshk-i7>
 <1cbafa2a-fe9e-04ec-35cc-d675a781a5b6@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1cbafa2a-fe9e-04ec-35cc-d675a781a5b6@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20-01-21, 23:45, Frank Rowand wrote:
> I have only the most surface knowledge of fdtoverlay, mostly from
> "fdtoverlay --help", but you can apply multiple overlays with a
> single invocation of fdtoverlay.  My _assumption_ was that the
> overlays would be applied in order, and after any given overlay
> was applied, subsequent overlays could reference the previously
> applied overlay.
> 
> Is my assumption incorrect?

I think yes, if everything is in order then it should work just fine.

I was only suggesting that fdtoverlay accepting the base overlay with
/plugin/; may well be a requirement and so intentionally done.

-- 
viresh
