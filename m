Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 757A83661A9
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 23:34:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234018AbhDTVe7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 17:34:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233724AbhDTVe6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 17:34:58 -0400
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9EBDC06174A
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 14:34:26 -0700 (PDT)
Received: by mail-pg1-x534.google.com with SMTP id s22so6583268pgk.6
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 14:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=2yE8kTk841ejuF3BACNMemckuItLoT/RFM/AFi9IzVY=;
        b=IJDhsKYg7bxQFqbeGjxoWGBsPBlAe9nr0P7lTGoMq9SRqzq8ZxGHrJUbTGt345fel2
         JDyGx4+fK3a4PCLou8Aen4n4NUQr6T/yy3SuToR/mngozGoxOl3OsQRrrxZnQMVwwQ9p
         WuvV4zcPK57fVUg7RLwwb3Ai08FHz9zZIlEfQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2yE8kTk841ejuF3BACNMemckuItLoT/RFM/AFi9IzVY=;
        b=dU/DVu198BFdPsWQZww9eghLReIrxJF8yeDVx8F4eo21lrInHkqz0Nrm6qbq31XaLq
         cqM9O/Ata1Gajp+tA9x822NsCtf4+8lh6qxA64EusHHyPsXFI6wEgfb1vy+s0ace54im
         G+j6TX6bsWMYRF+OzTxN4gm+iTzMOd7lJgNCoea7ZKeY7fzhkPfL3N+9PrhvlpcSu4yC
         mQ580NKWsAzP3sbOCOZdj4IPDVVrJTMTg1++3DQXOmt3O0E4GrBEXrbQXbbLdU/P0jGZ
         XapQ03SDl/jHKlVkND1ox5R9+lbZoqIG8yyZdh0pj/0RtjTbti/S5G4BbCBYK/equw05
         1KUA==
X-Gm-Message-State: AOAM533c40IQ7yquB5/s4Ey2gb0HUAIwlHmjCBn7x3CzIdusiiBvyolc
        n13gq/IQroOYYvzzqfyaGvp9Bw==
X-Google-Smtp-Source: ABdhPJzt4UJh1RthY4MFuN+8l5giWESxXFV5VQHHp33sWNvVLi3KThGDSCAY/eO1QPSI96D8JOkCrA==
X-Received: by 2002:a17:90a:db87:: with SMTP id h7mr7177753pjv.36.1618954466350;
        Tue, 20 Apr 2021 14:34:26 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:b1f0:79e0:c1ca:fd1])
        by smtp.gmail.com with UTF8SMTPSA id z18sm21512pfa.39.2021.04.20.14.34.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 14:34:26 -0700 (PDT)
Date:   Tue, 20 Apr 2021 14:34:25 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Taniya Das <tdas@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] arm64: dts: qcom: sc7280: Add cpufreq hw node
Message-ID: <YH9I4cKZk87KHFUa@google.com>
References: <1618020280-5470-1-git-send-email-tdas@codeaurora.org>
 <1618020280-5470-2-git-send-email-tdas@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1618020280-5470-2-git-send-email-tdas@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Apr 10, 2021 at 07:34:39AM +0530, Taniya Das wrote:
> Add cpufreq HW device node to scale 4-Silver/3-Gold/1-Gold+
> cores on SC7280 SoCs.
> 
> Signed-off-by: Taniya Das <tdas@codeaurora.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
