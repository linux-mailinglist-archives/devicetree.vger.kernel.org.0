Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1E35402E18
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 20:02:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345417AbhIGSEA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 14:04:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbhIGSD6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 14:03:58 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34B02C061757
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 11:02:52 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id u11-20020a17090adb4b00b00181668a56d6so2669909pjx.5
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 11:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=2weBeywvOEXC5XErzYCuvvm79mVZTfNqiqYDEqubPug=;
        b=Kr2+KLY7opTqUIU+u+Lc6Ug5DzUQH7stZPCCwPT5HQxZ6Vxg3kX35IpCC2jXuaiGln
         4bihfZcFC7yNtcOZGs3h5NLMRTFoHoBaYMCX9vUAAYmDVrK9DE74fecY6PxU7F2Y/P35
         iJMpRZpJMUnxsw5mw8+HFxl9oh+scl398q3+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2weBeywvOEXC5XErzYCuvvm79mVZTfNqiqYDEqubPug=;
        b=cM113oOwqENvHOck5s0V3uvUpplToKygxr5HIOMGXKr+nVHGHH60crMBVoPtRoG7Zo
         bo2mX9skshStwM9zsez2Lm2Hu/I2+3mt1v+8wZigkMIa7ZEe6Aae08e5ILm8+UXg2aOX
         DdJi8IeIkqw3vI8a/v+MviQGjnLoPLtfSv2+1VKvw3/gGGXufP8883Lv8Vi+NJg/JW6K
         NIDujIDsO6ZJ8z5Bl1h6P9swFelHzeRyNnYM96tDsFskZZAO8WeB/ngVMhzTiHsyyoGe
         d0jv3hjFlQ+kbPCQeHuN/xfpSVc6pi9bmT9ZYux0V9VxwpZGn6Y5T48LNu9ibEWKi6HR
         Ms5w==
X-Gm-Message-State: AOAM530LEEXVf7u+363az3YJPdHn5UALEdO88tuWkvVW6n7AbK5QOlYy
        +8uvaBAUp1APQYXEj7O1dV9jsA==
X-Google-Smtp-Source: ABdhPJwRBAYPyCs1dQvYzDwJtOAEZSUH5xaG1xTYvosb6J45UjzmW/nYEQWNGiPI9wYAHP7XL19qTg==
X-Received: by 2002:a17:90a:8a98:: with SMTP id x24mr5874492pjn.25.1631037771781;
        Tue, 07 Sep 2021 11:02:51 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:c6b2:7ae:474d:36f6])
        by smtp.gmail.com with UTF8SMTPSA id x16sm13806273pgc.49.2021.09.07.11.02.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 11:02:51 -0700 (PDT)
Date:   Tue, 7 Sep 2021 11:02:49 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        swboyd@chromium.org, kgunda@codeaurora.org,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 2/3] leds: Add pm8350c support to Qualcomm LPG driver
Message-ID: <YTepSUrCPKT7caqc@google.com>
References: <1630924867-4663-1-git-send-email-skakit@codeaurora.org>
 <1630924867-4663-3-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1630924867-4663-3-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 06, 2021 at 04:11:06PM +0530, satya priya wrote:
> Add pm8350c compatible and lpg_data to the driver.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
