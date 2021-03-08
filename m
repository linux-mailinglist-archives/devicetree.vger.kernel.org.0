Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F8A5331AC2
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 00:08:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231307AbhCHXIY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 18:08:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230070AbhCHXHw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 18:07:52 -0500
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 925D0C061762
        for <devicetree@vger.kernel.org>; Mon,  8 Mar 2021 15:07:52 -0800 (PST)
Received: by mail-oi1-x236.google.com with SMTP id u6so5497514oic.2
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 15:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=4hvbKRFY7Gs9YDqGOyz0/NvmnAh1JPz6EfNarEQ6wA8=;
        b=G674hH9UyzvI0ioSt5BG9expqlepPHZakDtglNtJ5zHcpyc/GmtGTwrnFgcB2qP9rm
         4PZ3Jqc/kZktu5JHYs1/xTfwjbdNykb0Hay6Rhme+ju/0BFUbMkiUQoaNqbpAmFMDpuQ
         QY9lCsH61+rJL91wkQ0Bcca/MFDvG9eXHTrzC5Ebb5u5aTQM/nuVdZkdviREq/fFfZIt
         ogNL0ntfGqyc1ZCeZ8zZUjWu2FdtX7+8CUH+Fv6XJ0m2WKttmicd3C1kZmQMYzfqHMhF
         x3KfvEdj6wFzQclp85rXq2NLVQId/TdH9WL+57kK+B0nBkLjcA5hoDXRlWYEYt8UogQn
         005A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4hvbKRFY7Gs9YDqGOyz0/NvmnAh1JPz6EfNarEQ6wA8=;
        b=KLGAM6dGJsDxQFBCbIt7xZkhnTKP9M4NtyFxetnubu43YPjUtcYfhZj60wdAF7zDVu
         ILijxGEYrRnSv8BK8UII2Pnd3E6zAYrDAfx7og5Vq6CbizwJRkcnSJsLrRQAl4WLYzLK
         BeKA7kLa7fBtfsgn/n80m3MS4z2Cc7V91d55yAOsIFKhzgwnxMG47FfwcHlxvXJa/rHL
         eqWmAOo/L4wxq3kNOsfBRiaSe8QbhiNGTMuy1q/Yzh4GkMjMsFJvLHTGQ1qoS37HnViE
         4WKfimQ85OiepR06ezRW8N3Z5VgctW1q+ZqNqnzDL3PxuqJFgqqiGowoBDdEEy2s6gq4
         1p6A==
X-Gm-Message-State: AOAM533ZABksBbd/Ejq3vIRwyL7Fw2RmZzHwfMpkbkahtj9n1d3m08Bm
        4vGwOlFTMeFZhfmUZJlbMlsg+e/UPyBbgQ==
X-Google-Smtp-Source: ABdhPJxE5DEMhzUk2EXfK4SAN7Gzv+ovKX70wN9qc3D+l1U7WWpQVSjnKb+Y0Q99IB5cclKWi21c1Q==
X-Received: by 2002:aca:2b13:: with SMTP id i19mr900239oik.148.1615244871809;
        Mon, 08 Mar 2021 15:07:51 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id w7sm2772999oie.7.2021.03.08.15.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 15:07:51 -0800 (PST)
Date:   Mon, 8 Mar 2021 17:07:49 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, Andy Gross <agross@kernel.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 34/41] arm64: dts: qcom: sdm630-nile: Configure WCN3990
 Bluetooth
Message-ID: <YEauRWCv7PENpiIc@builder.lan>
References: <20210226200414.167762-1-konrad.dybcio@somainline.org>
 <20210226200414.167762-35-konrad.dybcio@somainline.org>
 <71ea4ebd-f446-ede3-7623-ae5b339d7905@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <71ea4ebd-f446-ede3-7623-ae5b339d7905@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat 27 Feb 04:40 CST 2021, Konrad Dybcio wrote:

> 
> > From: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> 
> From: Martin Botka <martin.botka@somainline.org>
> 
> 
> That got caught in rebasing madness.. Should any additional mistakes appear, I'll send a V2.
> 

Patches looks good, but I'm a little bit confused about author and s-o-b
of the once you replied to.

Please respin the whole thing with the proper authors/s-o-b, and I'll be
happy to apply it.

(And please remember to pick up Rob's ack)

Regards,
Bjorn
