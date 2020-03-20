Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A3D5018C67F
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2020 05:30:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726969AbgCTEa3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Mar 2020 00:30:29 -0400
Received: from mail-pj1-f47.google.com ([209.85.216.47]:38335 "EHLO
        mail-pj1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726907AbgCTEa3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Mar 2020 00:30:29 -0400
Received: by mail-pj1-f47.google.com with SMTP id m15so1932214pje.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2020 21:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FK0Qs/wfLDgNg2rYS3eqjZVtMnHsMPlZqWjF8TdcBYo=;
        b=VoT6snoGQ3wP3BQLrQfRUAilBySe7ZAr60T3PsA8dy1TlDvW6MazZXNga49xu1Vpb4
         NzZfimCvgPSZnwr7F8bCpxyVOikoJcCQvfUEhngwAx10xqHPrnSeEl5GSZkrinpd2RNJ
         rjtZtxQrdljLaCfjtJigd93CkgG2usYULjRs8GPATMF/HiC/uxcWfuym56k4DFSp3+HM
         0L8EgjULc8IC8vIleoP0/dbYGdDv3F8tA921LoLjyhvwg7oLbaUHE0jggB8v6oDL+Q2c
         eQb0pFNuwsHinMK+LAWuoyGIb3jY0T2B6Z+ADTfifLfuQFmGu4uJQI8QamvzM7vDACNT
         cVNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FK0Qs/wfLDgNg2rYS3eqjZVtMnHsMPlZqWjF8TdcBYo=;
        b=WxywUkaRK/aKUT66FB1zX1+vS1Vm8cFtMnYDfz/XmrtPD7FFeNPsMXF0vQjSALbxQH
         iCkafvcwpXLfy6TjMlkOVXtEmhwhaj9aMEG9BoQYXl22QzPK8cWnEdD3T9jAOR6ThGIB
         /jRRAUXpCjXS8dM2/jvydkQP8REtsORM7Eudk0kv+LCX7Q/Kvqx5KUwry4TbIbLOwVIW
         QVm8sJkJnaPq9CZF1c9DaDhVgxgn5P3dZnilh1BofQWgXkx8KCYTNjZLBXHwE2R8Sk9u
         wioRvZl8C2jkCTkZudF3IvC9aG8kneU2jJKF4/ApjqCNGFufIsJVYhXnaUQNR9QPUwqM
         Q7JA==
X-Gm-Message-State: ANhLgQ0CaT9AbRwMKTkLB2a0oCckYKB7RKfTzt6BV/UZl0TS/ff69WbG
        /p6TYB5www4XRDppx9pVlh3C1Q==
X-Google-Smtp-Source: ADFU+vvmD0faz/IDlUA+ugLFOG/vv1GJgyi24Xl5N3XX049X07fwpOu7GCTbxqvBdgenTWZz5ADTuA==
X-Received: by 2002:a17:902:8f94:: with SMTP id z20mr6977222plo.62.1584678627808;
        Thu, 19 Mar 2020 21:30:27 -0700 (PDT)
Received: from localhost ([122.171.118.46])
        by smtp.gmail.com with ESMTPSA id h11sm3792633pfq.56.2020.03.19.21.30.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 21:30:27 -0700 (PDT)
Date:   Fri, 20 Mar 2020 10:00:25 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Ilia Lin <ilia.lin@gmail.com>
Cc:     Ansuel Smith <ansuelsmth@gmail.com>,
        Ilia Lin <ilia.lin@kernel.org>,
        Sricharan R <sricharan@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        "open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
        "open list:QUALCOMM CPUFREQ DRIVER MSM8996/APQ8096" 
        <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] cpufreq: qcom: Add support for krait based socs
Message-ID: <20200320043025.xju43zbzmqda5wes@vireshk-i7>
References: <ilia.lin@kernel.org>
 <20200313175213.8654-1-ansuelsmth@gmail.com>
 <CA+5LGR3WJkwFGPWNM2XAqdhaNZ2yXreB8Ni36BKswx0G=i_5fg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+5LGR3WJkwFGPWNM2XAqdhaNZ2yXreB8Ni36BKswx0G=i_5fg@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13-03-20, 21:34, Ilia Lin wrote:
> Reviewed-by: Ilia Lin <ilia.lin@kernel.org>

Applied. Thanks.

-- 
viresh
