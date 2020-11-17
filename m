Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 783962B5D58
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 11:55:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727909AbgKQKzD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 05:55:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725355AbgKQKzD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 05:55:03 -0500
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24209C0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 02:55:03 -0800 (PST)
Received: by mail-pl1-x632.google.com with SMTP id y22so10032356plr.6
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 02:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yZ9rf9Tu27SxIk+03VeBF6ah9AiWAmkZ8caQiD4rxC0=;
        b=zh7REe1V6g6SzZqzuG0FgOF0qRE4Ee6PBvoJ9nkMBaOpMcAU+HPz7/NZTZkLnm3Rc5
         jKkJq/0eUB7kt3U9gIt+7mV9oR9OmHU9Ya+8Qleu09ROuyvS6oBxA0Y8YixTXlLlpVqO
         UEZPJPDiqQRorWZnnSllozNq0ANNQr2vrGni9ApCnT3UFRX4LUgbu/iV06cATNCB0G58
         dpuAl/VYn5U5nxiQijpqotH4KguB+g5Gpp5O1XydkJHkCAEU4weFWZ/5R5BUkH7xGoEY
         R5A8T+ltLnBVngWkwyU2wkE/O8Pn0hzLYFeAGFlPw1WY3ORGqmFlLlnrL1lm5umP/hC6
         tT2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yZ9rf9Tu27SxIk+03VeBF6ah9AiWAmkZ8caQiD4rxC0=;
        b=av93irSNpg0Ccx/dwY7tRKq+L8Xbi6//X5QDJCqa23UtGkYx4HymVLIr+JCbf8lAEj
         rYAhbNmz/SVWV/njrnu4JuODYXn7WorsgZRPwbA6y6+ENA+M/vfEdZCW+uf+uSlXj0cy
         kbJI703AfR/VhEDAjVJYyOM1K3WYTPBGC5CznlauLmxERhrrJoh+LKHG3F595yerJQEv
         s96YZ9/ySCOdamBnWRq5X2KObD1RsnUGKiqdcS8+45JIfa7iq3ZHrh3cITVrooF0gXwA
         HkrxnVClRH+DaKyGny/b04CIcXNn2VghdAPut/ELRjXRz//+P6SueG/sh9lOTSMSQjze
         fkDQ==
X-Gm-Message-State: AOAM533QzJFcI38TTLtoqq2/YIxqb8Y01RK05EYZFsCsl+iGbA3WqPB/
        U1XoKa9IAy7L1rdUwOaXniXbYQ==
X-Google-Smtp-Source: ABdhPJxkTetKMQ8NIopvVvYdFNalwIpPjrKHgDjIhDVA+vQxFA244sZo+bs8USWr69gtaoq2bSufHg==
X-Received: by 2002:a17:90a:7f93:: with SMTP id m19mr3707452pjl.61.1605610502752;
        Tue, 17 Nov 2020 02:55:02 -0800 (PST)
Received: from localhost ([122.172.12.172])
        by smtp.gmail.com with ESMTPSA id e184sm20923760pfe.146.2020.11.17.02.55.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Nov 2020 02:55:02 -0800 (PST)
Date:   Tue, 17 Nov 2020 16:25:00 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Lukasz Luba <lukasz.luba@arm.com>
Cc:     Nicola Mazzucato <nicola.mazzucato@arm.com>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        sudeep.holla@arm.com, rjw@rjwysocki.net, vireshk@kernel.org,
        robh+dt@kernel.org, sboyd@kernel.org, nm@ti.com,
        daniel.lezcano@linaro.org, morten.rasmussen@arm.com,
        chris.redpath@arm.com
Subject: Re: [PATCH v3 3/3] [RFC] CPUFreq: Add support for
 cpu-perf-dependencies
Message-ID: <20201117105500.m3wwdlrsme4iiu7e@vireshk-i7>
References: <20201102120115.29993-1-nicola.mazzucato@arm.com>
 <20201102120115.29993-4-nicola.mazzucato@arm.com>
 <20201106092020.za3oxg7gutzc3y2b@vireshk-i7>
 <0a334a73-45ef-58ff-7dfd-9df6f4ff290a@arm.com>
 <20201106105514.bhtdklyhn7goml64@vireshk-i7>
 <7f73bcd6-0f06-4ef0-7f02-0751e6c4d94b@arm.com>
 <20201109065742.22czfgyjhsjmkytf@vireshk-i7>
 <2fa8a5c0-f66d-34bc-7f1c-8462e7532e0a@arm.com>
 <20201117101128.6uapqg56arwqmm5p@vireshk-i7>
 <117c6d30-0013-7222-dedb-57e65ba84d15@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <117c6d30-0013-7222-dedb-57e65ba84d15@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17-11-20, 10:47, Lukasz Luba wrote:
> Fair enough. What if we come back with experiments results in future?
> Currently we are trying to conduct experiments with Nicola on modified Juno
> firmware and kernel)

Sure. If we think it improves things, why not. I just wanted to make
sure we understand why would we go do this change now.

-- 
viresh
