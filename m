Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E03D35D625
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 05:54:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242857AbhDMDuH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 23:50:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243046AbhDMDuG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 23:50:06 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61DEEC061756
        for <devicetree@vger.kernel.org>; Mon, 12 Apr 2021 20:49:46 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id e8-20020a17090a7288b029014e51f5a6baso2982291pjg.2
        for <devicetree@vger.kernel.org>; Mon, 12 Apr 2021 20:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7V/tdtEdLmPbli0XX3xvnQgDstg+AJLvmbmneYvsBWU=;
        b=t858tdoVNzFP1kDBf4lMQUIkLNizXIXUDFhEgAhjSyXCGdr2aCq8xfWuFEZo/tspg0
         1Qk1bZaGWKdZT1FtS5vHh+dH61Oi9cvU3Z7pnkGxAN/ha96OqYvn5ZqDJDmsqiDERNY0
         UX8C3SOEBe+MQcBDsSXvKek/DL6i1/+FQ6cua+wmP9/194MT5aTvER6KYUcwwS1xSJue
         YRUwAtmW2xkuklr5PNw0bz7m5xFkW/AvEM5uXZ6q6UsVvDqH4PVEXKNjN0DtCJq2uaso
         ZQsdG8kEjIbXPE65AnCZCaaTCQMTG+aC0ywdJnw3VDksP5c65O2a8M4QZAzlzZ+mJUdr
         zLjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7V/tdtEdLmPbli0XX3xvnQgDstg+AJLvmbmneYvsBWU=;
        b=uk2AJhwaE81VW9s9DljQrj/8PZHcrNQQuc/75Hv21RcCmbf9u2oDfHJ3TG0FCQMg/v
         3dB0nFRCwRpfRVm6XSaCx8tjxOsjhLkgBJHx1R3O6Inomm1dSHx/7uHMQtSm1camLne8
         KhUyxwcwXxNhUBHhAhHxnz3Hc43vI3ACj3wiwo+pZhxz0AYnPh5ljdljDPmNr1/M32Bc
         8xWjzWikFRK+pkY9qY0GjHFhRlRYti5sqVYJKT4xu/hGBmFWKToVzm4MVn8DApxdcw6+
         Bpu70vGiY2s5hp+UjHLa/8GlbUSd+N7U3uk3z6HaXqMrCCcV2cgoJsktxFP9cDR9ur6W
         /7ZQ==
X-Gm-Message-State: AOAM532TfxZDXG/T6dYYIMD2ZE4CuqDK/4QrEYgBVwQttnNKLJIn+NCS
        +9nV2L/DbmI94Mz1gEwhMPl12Q==
X-Google-Smtp-Source: ABdhPJyasaQefVvJxnooEX1daBU7hrPpJeHb3Itbhq3BEDv4YtIV6jC+aqW5Nb7VmO0a/WuAonXXTQ==
X-Received: by 2002:a17:90a:e293:: with SMTP id d19mr2699465pjz.118.1618285785686;
        Mon, 12 Apr 2021 20:49:45 -0700 (PDT)
Received: from localhost ([136.185.154.93])
        by smtp.gmail.com with ESMTPSA id b2sm7605897pfo.110.2021.04.12.20.49.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 20:49:45 -0700 (PDT)
Date:   Tue, 13 Apr 2021 09:19:40 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Taniya Das <tdas@codeaurora.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>, agross@kernel.org,
        rjw@rjwysocki.net, devicetree@vger.kernel.org, robh+dt@kernel.org,
        amit.kucheria@linaro.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        konrad.dybcio@somainline.org, marijn.suijten@somainline.org,
        martin.botka@somainline.org, jeffrey.l.hugo@gmail.com
Subject: Re: [PATCH v4 5/7] cpufreq: qcom-hw: Implement CPRh aware OSM
 programming
Message-ID: <20210413034940.o6uzjtnh2ylvikbf@vireshk-i7>
References: <20210119174557.227318-1-angelogioacchino.delregno@somainline.org>
 <20210119174557.227318-6-angelogioacchino.delregno@somainline.org>
 <c35bfd76-0d7e-d7bc-79ab-041b1074c1af@codeaurora.org>
 <YAh+9/IgRhI8M3ov@builder.lan>
 <92e465e4-a0d9-43eb-84f7-69fa355097a9@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <92e465e4-a0d9-43eb-84f7-69fa355097a9@codeaurora.org>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12-04-21, 15:01, Taniya Das wrote:
> Technically the HW we are trying to program here differs in terms of
> clocking, the LUT definitions and many more. It will definitely make
> debugging much more troublesome if we try to accomodate multiple versions of
> CPUFREQ-HW in the same code.
> 
> Thus to keep it simple, easy to read, debug, the suggestion is to keep it
> with "v1" tag as the OSM version we are trying to put here is from OSM1.0.

That is a valid point and is always a case with so many drivers. What
I am concerned about is how much code is common across versions, if it
is 5-70%, or more, then we should definitely share, arrange to have
callbacks or ops per version and call them in a generic fashion instead
of writing a new driver. This is what's done across
drivers/frameworks, etc.

-- 
viresh
