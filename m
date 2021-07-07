Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD2283BE010
	for <lists+devicetree@lfdr.de>; Wed,  7 Jul 2021 02:08:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229834AbhGGALc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jul 2021 20:11:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229873AbhGGALc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jul 2021 20:11:32 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3489C06175F
        for <devicetree@vger.kernel.org>; Tue,  6 Jul 2021 17:08:52 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id g10so642956wmh.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jul 2021 17:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Gla55/jHPuxQwImkvjfsRobqklhAZ+qfkkqKLknVHRo=;
        b=mOQgWePcC1K56tlv2aEBFfh91IJFrNCWRU5jA91FKOOzI74PclEHtryhKZPa6uIdmo
         yT+vytXiCu07rIgdx8zH9U7+pdoBVFfTyfXmL8sNceS1OhNNraOLbA7w7nhqgUPqrsut
         2IcnWwzTxT126zlekMje9cG1jJGVEL03HrZmQr5bQTM8YbLC/8RNdTjYg+4dk+HOYjZn
         a178qzfcrWfzoiJdof2Xs4qInKIse/cP4g16ZqRY13DB7WBJrs/xosOYXqOIxWeIo3m9
         OgGZTolqLqEyU07FSoL4Vaf4lUxGo97CbOjMg1394AiCJziHUZmhTMObXAxgfTnD5kzh
         zwsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Gla55/jHPuxQwImkvjfsRobqklhAZ+qfkkqKLknVHRo=;
        b=tRS8yGZnHikG9CPnPUxoMYU6Y7rZL1HeFn4WXa30iszjbQGDkAM60W2D3eVtdqQlVf
         yrhjhyzNx9qGUt6M8HnB+JigaAg4+DEBpT+3LHnk1Zmh0ZPbf1AlszmeuDAIY4c3+MhE
         aMEURLXujMVBpT4PFhhfWwFyJnliM8HfRG7Byoshibl7W/vE/9AFWQMxUYcWFdp3P6qh
         z58qtYZbw0Pobt7/FqDrlRL8uzJcXaLmogTV+5gRo3NPYPea3+MKtZvyrCOknoxe1TTI
         gQqs4EuTk21gfspQVp1D6qRrI9Xp+0DYZiAKo1a3BdegtDdkGUa1OvhCU1p5ZSwzztYk
         WrVQ==
X-Gm-Message-State: AOAM533OvjypcV7BrEbQYONYkWc6TaBWeASIsVPex7vaNKt14UhOUFji
        CmycoQefkITVfnlHpjD+pPEo3PeGYdCZcA==
X-Google-Smtp-Source: ABdhPJymF6fddc5+UbMYl591O+U+Nqqo0im0csyGJ7lPELRs2/bTi63/t82It4FkQWLVPrtmrdv0Yg==
X-Received: by 2002:a1c:771a:: with SMTP id t26mr23123755wmi.107.1625616531204;
        Tue, 06 Jul 2021 17:08:51 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id z7sm4319909wmi.1.2021.07.06.17.08.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 17:08:50 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8250: fix usb2 qmp phy node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     vkoul@kernel.org, kishon@ti.com, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        robh+dt@kernel.org, jonathan@marek.ca,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        devicetree@vger.kernel.org
References: <20210706230702.299047-1-bryan.odonoghue@linaro.org>
 <20210706230702.299047-2-bryan.odonoghue@linaro.org> <YOTvcWnHFkbMHg6K@yoga>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Message-ID: <701dfb98-b876-b5f9-cd55-c90d557e64de@linaro.org>
Date:   Wed, 7 Jul 2021 01:10:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YOTvcWnHFkbMHg6K@yoga>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/07/2021 01:04, Bjorn Andersson wrote:
> So while Dmitry is right about the logic in the driver, it would be nice
> if you would spin this patch to make us pass the dt-binding check -
> which can be sent independently from the driver patch.

ok
