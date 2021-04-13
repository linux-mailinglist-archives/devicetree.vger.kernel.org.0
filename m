Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFDE535D55B
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 04:42:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238720AbhDMCmW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 22:42:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231138AbhDMCmW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 22:42:22 -0400
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24E60C06175F
        for <devicetree@vger.kernel.org>; Mon, 12 Apr 2021 19:42:03 -0700 (PDT)
Received: by mail-oo1-xc29.google.com with SMTP id t14-20020a4ad0ae0000b02901e65c173a4bso81581oor.11
        for <devicetree@vger.kernel.org>; Mon, 12 Apr 2021 19:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=TqizwtPBazn4E4BBJNz6As5MhBNbZCtWHV//Y0hIMZs=;
        b=ufItUzbBA4ZaQvXf4xjPrThPuCmG9xp5YKrfIgj5lJ/k/q31+z1o5Fqxr4FpxNcD2L
         YYS/8XWFhyE0UlbGwRvmncuhuAZ3sF/ClB4lvmyAFip9MkK7AfUedWjLWrlwD1Mqj4nW
         SGhRLRC+6K6eYBaDwsEiC/jzBmmuLSD/RM4PA4lvlYchP6CAxOXzZqm32ZIukLfpkuHg
         IZ/wWYl+qgQQKoLCuFdOTDmeXNqQhVYH7lvSCWnHEtqq4eo9TJqclX66IA2WLdPBQBw9
         VqiB3uB7qXowzEGR/YgLscEXJFXVp1sGMMYOg51ghSxA9ubAxtdcQBYmVi/8CNz+Me7Y
         xJCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TqizwtPBazn4E4BBJNz6As5MhBNbZCtWHV//Y0hIMZs=;
        b=FR/rhITHJJQpxxH313TND37BP3ymuN3a4AfdZnnjvdFV7HxXQ28bHp3Kpa+3zmdV+V
         28wv5pBJyZ18HrGT+huqjTnyb6PsdxLfVrn5wgnz8kZb2CR8gXPXQ/o9yJeTUpNMDEBf
         tLqu1f0mGl1q3K1bWvajyMIAtoB9GfiX4eE8mwGJZY3NRcqE3d4Pig7QPFrf6RPDQaWe
         35vNfMj/br8m++QnaQ/rO/jLMRbC94jfplzxo/M25n9R0YNpHpcEU2dVkMdwRt8F6EXH
         /rvoVGxbtZhko3/7KzSL2wESY1wVz2o86l0siL+uBu6kl1QRrIQsZcTI4/nPjqV+Ltsn
         Ck3g==
X-Gm-Message-State: AOAM530tLAVYuEe7t0klRvZr7gGbWNeg/6sVaETBY0iY0ZDrYId3V4Vv
        ruA4Dz6SGTh8tn+vO+CRz9gzbA==
X-Google-Smtp-Source: ABdhPJwln6Bs1UzxhLsh5C748sEIkLCsUk9ZEx7meQ8HiDvRIVlzkHLxp/oktk9yVkRk9+E4wKBhNg==
X-Received: by 2002:a05:6820:20a:: with SMTP id i10mr25119420oob.6.1618281722315;
        Mon, 12 Apr 2021 19:42:02 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q1sm1850149otm.26.2021.04.12.19.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 19:42:01 -0700 (PDT)
Date:   Mon, 12 Apr 2021 21:41:59 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Viresh Kumar <viresh.kumar@linaro.org>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>, agross@kernel.org,
        rjw@rjwysocki.net, devicetree@vger.kernel.org, robh+dt@kernel.org,
        amit.kucheria@linaro.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        konrad.dybcio@somainline.org, marijn.suijten@somainline.org,
        martin.botka@somainline.org, jeffrey.l.hugo@gmail.com
Subject: Re: [PATCH v4 0/7] cpufreq-qcom-hw: Implement full OSM programming
Message-ID: <20210413024159.GI1538589@yoga>
References: <20210119174557.227318-1-angelogioacchino.delregno@somainline.org>
 <20210412051135.xtpokwrbclaptbot@vireshk-i7>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210412051135.xtpokwrbclaptbot@vireshk-i7>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 12 Apr 00:11 CDT 2021, Viresh Kumar wrote:

> On 19-01-21, 18:45, AngeloGioacchino Del Regno wrote:
> >   **
> >   ** NOTE: To "view the full picture", please look at the following
> >   ** patch series:
> >   ** https://patchwork.kernel.org/project/linux-arm-msm/list/?series=413355
> >   **              This is a subset of that series.
> >   **
> > 
> > Changes in v4:
> > - Huge patch series has been split for better reviewability,
> >   as suggested by Bjorn
> > - Rebased code on top of 266991721c15 ("cpufreq: qcom-hw: enable boost
> >   support")
> 
> Bjorn, what am I supposed to do with patchset ? Is there anyone who can give
> this some reviews from qcom team ?
> 

Sorry Viresh, I've been postponing reviewing this a few times too many.
I'll take the time in the coming days to look through it properly,
including Taniya's feedback.

Regards,
Bjorn
