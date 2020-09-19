Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 082F3270DCD
	for <lists+devicetree@lfdr.de>; Sat, 19 Sep 2020 13:51:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726170AbgISLv3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Sep 2020 07:51:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726168AbgISLv3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Sep 2020 07:51:29 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A9B3C0613CF
        for <devicetree@vger.kernel.org>; Sat, 19 Sep 2020 04:51:29 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id x23so7649494wmi.3
        for <devicetree@vger.kernel.org>; Sat, 19 Sep 2020 04:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Op/a2HEXudfmbL2zW3KfDGxdlIacPR52588lQsIE5KA=;
        b=OTgvtXMERaFupZE/K9in1OTN8nd+50HAwoG/pYCDpN3sQZPt7AjISa8Q8zYVpYFJeD
         kK6jWfEyvjgnC01KPmbzta+UtwVdIWKelNh8uhXSfLe8hNNlSQlhWSuJrZABBu7rIbGa
         VO88huBjklSVaKlfXBsEwdRGUxL1UflH5YK17GnfuDtVhlwtd0VXjLP4RlqGDo2MArq/
         4Ulu+bCOirkEr8uQsJkswrH5bbjba+HoE5QwRIQARDEIP8oURwZkgwR4lCA8gBJsF4Xf
         z+LdjnyL4vpm9+KxNve5nOzwINStAVr7pddVSYvOSGjEhCo1ui+DRAtLwrVL16fyT9Mk
         ZH9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Op/a2HEXudfmbL2zW3KfDGxdlIacPR52588lQsIE5KA=;
        b=CeRzRUAo6PeigefVC+puZ/mEgpfP5/Ox9mqz1RDnA9hWmANr1XqxNAjITBN6mSCraX
         xf9omfEb/0nwwtzDwoZKnBsg6y0z69ruvBdKRbae/V8muWaXnYyZxQwvuc0R+BOaAjUI
         35syMSTf5ehUsK9OJKD3W/KOwOjZjjEYoz1ir66BT6Vq7kFWFyG0SVWXZFWdow1lVODL
         qj/nYKLykQICBzV3I3Kn5gVvi3ppIUx6yb4GpzNKUGcPONMO7ds9AZn9ZC4dPppy4RBw
         zIIQq0rOoEtCUiKbm3y+OR2WcX0toBcImuV7PXbYUQ4Q4Vywuxihionyo3MW/4QpXBtn
         iSfQ==
X-Gm-Message-State: AOAM533dLzfGWscUjhUVgnpiCtnrJvOlaoA+Ei9oBLGqiaB5J2VHQxhd
        +t1+/smM3pocalOfG601ppWseg==
X-Google-Smtp-Source: ABdhPJwgT6nK9YXWOVF+UkEDm96RavXOm+FO28P0ROMSRcmaOXxV2OnLJmNZ+QzGadWivPfO20vhXw==
X-Received: by 2002:a7b:ce86:: with SMTP id q6mr21370324wmj.163.1600516287482;
        Sat, 19 Sep 2020 04:51:27 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:9142:20e7:201d:cd11? ([2a01:e34:ed2f:f020:9142:20e7:201d:cd11])
        by smtp.googlemail.com with ESMTPSA id k5sm10132879wmb.19.2020.09.19.04.51.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Sep 2020 04:51:27 -0700 (PDT)
Subject: Re: [PATCH v3 0/9] clocksource: sp804: add support for Hisilicon
 sp804 timer
To:     Zhen Lei <thunder.leizhen@huawei.com>,
        Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Haojian Zhuang <haojian.zhuang@linaro.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Cc:     Libin <huawei.libin@huawei.com>,
        Kefeng Wang <wangkefeng.wang@huawei.com>,
        Jianguo Chen <chenjianguo3@huawei.com>
References: <20200918132237.3552-1-thunder.leizhen@huawei.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <f25d4aa6-80f9-0ff6-25f5-f1def38ef824@linaro.org>
Date:   Sat, 19 Sep 2020 13:51:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918132237.3552-1-thunder.leizhen@huawei.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/09/2020 15:22, Zhen Lei wrote:

[ ... ]

> 
> Zhen Lei (8):
>   clocksource: sp804: remove unused sp804_timer_disable() and
>     timer-sp804.h
>   clocksource: sp804: delete the leading "__" of some functions
>   clocksource: sp804: remove a mismatched comment
>   clocksource: sp804: prepare for support non-standard register offset
>   clocksource: sp804: support non-standard register offset
>   clocksource: sp804: add support for Hisilicon sp804 timer
>   clocksource: sp804: enable Hisilicon sp804 timer 64bit mode
>   dt-bindings: sp804: add support for Hisilicon sp804 timer

Applied all patches, except 9/9 which should go through Rob's tree as
the yaml conversion is there.


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
