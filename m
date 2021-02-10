Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 409B5315ECC
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 06:14:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229787AbhBJFO1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 00:14:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230006AbhBJFOY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 00:14:24 -0500
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFE1FC0613D6
        for <devicetree@vger.kernel.org>; Tue,  9 Feb 2021 21:13:43 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id n10so467813pgl.10
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 21:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pO3lkyqchaYYvHw0M6i1yFLd4JchiSimkLF+9OaaS4k=;
        b=PWZOvzgMLbj7RMzzT+oZtCfRn+XY/NWVebBDvtdZNCMZyjY01OJ0k7VTLbRJioC3w/
         9ikKTLQPZTQwJx2pzgU9qcNpllDN1LfJD9zgHhA9NauSL6CorGdiYVF8UbTXOFMyKsj4
         IWmjPbfirZQDe/e+HfNGHNIT1PNJNF1bTux/nm2sDxTyrhYMbiU/15kyyWvV5OlDn/8a
         Z2kZQoL398q9cwNuYRMHqO7u2j3Nyy14MMxpnVpIdNHqDIDnvrpNJsO0UxajEGREgTXv
         lrJWpAFuSwYL3qX6R7nTllwHORP++UZB/57sPHGyWycj/jT2wMqoFf60s31a9cKKiVpI
         N9UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pO3lkyqchaYYvHw0M6i1yFLd4JchiSimkLF+9OaaS4k=;
        b=VRngsDrx4ISP/P/YWuRnghdHocB2jUCQtcNSopLuh7paic8z/dftbieWW3LmdbwpWl
         LEyl3v6C8CFQMW8hvH1cq2DVVchHVJ9GSwpBnkiGzeHHQnF79CsflLN2Rj6Sdu+U5vnm
         1nrW3Bh5tJ0tHeyST3ybANOo8Wpq0PCFGgUw/d446eOvDXZkgcw60aEmYPdcPetfZw5M
         l81oUDbSZ7QsbsiD9pZuqmhbk/ili1azQBpQm7lpJllDAsmDfz/b2G+TooJQPcIjZkQb
         FL1uoQR7rHUtLXzceWOdMo65/Za/riqF8Urk1l4+XHc1h8nGlRTK2YU8CAnOs8UsvLin
         KkwA==
X-Gm-Message-State: AOAM531WGgXr0YgLRR2ze/GxUBLzqeCDtfswx33yARfGyiOE/ymy0Wug
        2QTU/gwpIYaUxBXTPpV6PNtn2g==
X-Google-Smtp-Source: ABdhPJw5n3egOAVJeYZPlVVxWxFxfAnU6kKInAnwrHbcQbub2l1W2oW3U/73yADLfrLAiswp8pgHPg==
X-Received: by 2002:a63:ef14:: with SMTP id u20mr1507445pgh.93.1612934023032;
        Tue, 09 Feb 2021 21:13:43 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id j9sm618424pjn.32.2021.02.09.21.13.40
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 21:13:41 -0800 (PST)
Date:   Wed, 10 Feb 2021 10:43:39 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Taniya Das <tdas@codeaurora.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>, agross@kernel.org,
        rjw@rjwysocki.net, devicetree@vger.kernel.org, robh+dt@kernel.org,
        amit.kucheria@linaro.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        konrad.dybcio@somainline.org, marijn.suijten@somainline.org,
        martin.botka@somainline.org, jeffrey.l.hugo@gmail.com
Subject: Re: [PATCH v4 5/7] cpufreq: qcom-hw: Implement CPRh aware OSM
 programming
Message-ID: <20210210051339.ixagw6gfipdzwgae@vireshk-i7>
References: <20210119174557.227318-1-angelogioacchino.delregno@somainline.org>
 <20210119174557.227318-6-angelogioacchino.delregno@somainline.org>
 <c35bfd76-0d7e-d7bc-79ab-041b1074c1af@codeaurora.org>
 <YAh+9/IgRhI8M3ov@builder.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YAh+9/IgRhI8M3ov@builder.lan>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20-01-21, 13:05, Bjorn Andersson wrote:
> On Wed 20 Jan 12:25 CST 2021, Taniya Das wrote:
> 
> > The CPUFREQ-HW driver is intended to be used only for CPUFREQ HW designs
> > where the firmware programs the look up tables.
> > 
> 
> It's obvious that this is the intended target for the current version of
> the driver, but what are your technical arguments for keeping it that
> way?
> 
> > Suggestion is to separate out the driver where the programming is managed by
> > high level OS.
> > 
> 
> Can you please elaborate on the benefits of this approach?
> 
> PS. Please don't top-post on LKML.

Taniya, Can you please respond back to this ? We are waiting for
merging this patchset..

Bjorn, can you or someone else please review this patch ?

-- 
viresh
