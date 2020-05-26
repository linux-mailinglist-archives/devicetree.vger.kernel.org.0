Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 053651E1EBA
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2020 11:37:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388433AbgEZJhq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 May 2020 05:37:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388432AbgEZJhp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 May 2020 05:37:45 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A79BC08C5C1
        for <devicetree@vger.kernel.org>; Tue, 26 May 2020 02:37:45 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id x13so5069180wrv.4
        for <devicetree@vger.kernel.org>; Tue, 26 May 2020 02:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zKgkx1RN+yOQz5t5MmLQDLEnUMA9zwlAKS6pKOreKZY=;
        b=FNc4aIV0nhulL4pN4Z88kKa4a79yXjgO7FI8T76etE4vtRUUh9t/HH+YRM7VFHS2ay
         n/0LqPWK9UNVH2Bo5dEVeRHWvrn9fdBi/z1hUfb4jujqGmcwAfK/QDngGUkWTLdrndf1
         wDucR67QFkeCQd6TGpLQNakoGmVGAW5tGG/DWWSwlGcL+CG0VhJB2QhjW1NK0XlUUjE7
         Ni/VX5WekMngIpi6qy6WlEHLTXQ1TweR2TG+w+B4Nq0qjvxFf7LB0FYa60tPDK+Z/hTq
         dMmrq1HFfkc06E/JUaNF6K5/iPT/K3W3d51vq/yLUXYz/p3/t31o1IeGTczThkCuX9NC
         7xoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zKgkx1RN+yOQz5t5MmLQDLEnUMA9zwlAKS6pKOreKZY=;
        b=icQjbgOXmi+orUP/pctAHD4CeQZ4bxa3lWzubBwqzwyt4OClmjmbt8DobWPlukF0rf
         XZIWItRePf8ybllO9vpAUuB+TQUFjnFBkdYFpqAPb+UeYhYyKD/ol9tjUrFIiHKpA2NK
         zx4n+aLf2ozm4+C6vqfIN/1EIDgjGJg9BuTSvqB9Dpvh4AJKgB2QZzi6xyH5RUAD4G/I
         aDD81s5mfDLLtHpoA05L4HuILtiNinfvcyVEECG4Ry1fCqqBwymsXEOippb0ZhDTHSIJ
         hXeQZjHAq1p1wSklpQy9uctDF0f/yNqlPt+WvQw09XxD/k4JN3Dzus964YXdpBKwkQE+
         FfrQ==
X-Gm-Message-State: AOAM532QcdZQASnm5D41HrQu9ymUQ7M6s2C5UQrYLoa/Bc29RVVf6W1P
        7kNGfSEvE9p75FCGlr2avQW5Mg==
X-Google-Smtp-Source: ABdhPJzfEXYdCF/DEyjlvvWvfNcMNSgFSqWgMZJUcODo9tJ+VjhsEhG1votkhojXE9haIoAN3q15Tw==
X-Received: by 2002:a5d:4d01:: with SMTP id z1mr18065341wrt.29.1590485864008;
        Tue, 26 May 2020 02:37:44 -0700 (PDT)
Received: from [192.168.0.38] ([176.61.57.127])
        by smtp.gmail.com with ESMTPSA id b185sm388031wmd.3.2020.05.26.02.37.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 02:37:43 -0700 (PDT)
Subject: Re: [PATCH v5 2/2] clk: qcom: gcc-msm8939: Add MSM8939 Generic Clock
 Controller
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        shawn.guo@linaro.org, p.zabel@pengutronix.de,
        vincent.knecht@mailoo.org, konradybcio@gmail.com
References: <20200517131348.688405-1-bryan.odonoghue@linaro.org>
 <20200517131348.688405-3-bryan.odonoghue@linaro.org>
From:   Bryan O'Donoghue <pure.logic@nexus-software.ie>
Message-ID: <af35d732-08bf-fe95-3c98-063b32fe992a@nexus-software.ie>
Date:   Tue, 26 May 2020 10:38:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200517131348.688405-3-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2020 14:13, Bryan O'Donoghue wrote:
> This patch adds support for the MSM8939 GCC. The MSM8939 is based on the
> MSM8916. MSM8939 is compatible in several ways with MSM8916 but, has
> additional functional blocks added which require additional PLL sources. In
> some cases functional blocks from the MSM8916 have different clock sources
> or different supported frequencies.
> 
> Cc: Andy Gross <agross@kernel.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: linux-clk@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Co-developed-by: Shawn Guo <shawn.guo@linaro.org>
> Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> Tested-by: Vincent Knecht <vincent.knecht@mailoo.org>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

ping

just sending a reminder on this one

