Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDBA44A89CA
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 18:20:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352765AbiBCRUS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 12:20:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240278AbiBCRUQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 12:20:16 -0500
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D940C06173B
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 09:20:16 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id d1so2685541plh.10
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 09:20:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=PBScQedjQsJUD7zIshQCOQWAkiVB3CKCT3jKw7sdwEI=;
        b=LQ+1tVGqnoiCz4In7FgL8RYfgvEEBWaRO+VkrlDk2K5K3MzrcAy2PC/epsgRJIVsFr
         YvWruhMeSn8CP6Pz2Q77tAkVpsN+Rz5GuO7oUj6w3qCJhT2EJ9Le0q3fKJuGicOns3+H
         OlWGUOz9FxyKOYlh4UCQIMjJ+xuOGSuDdUEGg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PBScQedjQsJUD7zIshQCOQWAkiVB3CKCT3jKw7sdwEI=;
        b=kdy3p7TjjwF/YqFkZDmfNynDpsH1qK+xRorrvW0MY2Ga/kzoZ3xoRw4T5B1QYky0r5
         Um6xtZyAuqe294FwuYoPxjb5qKF32NA74tiJ9MJ87aOJWJ3I805hVOv1dRr7W9qAn6B3
         XlAXY3ekAqqQugUMss31/l7nn+UwQm9TfoHnAGN0UYok7abT4/cpK2ZJeCCOkZiqhP0h
         6Jidb4UGaTx/c8eywpSg2c74bPsnNsjt+JLLQSvuFXVO4XTLl1IFwDXh6Va3YzvsUBN6
         WepOI256EsTHZOqLuWtdXJWFVwWSephlsPoTmo1LQSmLHJwrK7bejGquIZiNsOjZaVS7
         zGlQ==
X-Gm-Message-State: AOAM530kNwF2od0fPZH88fg6Y5ihESl6KOEJnyymE+i0/2yDJXjnTt1O
        qgUxBVHYaNH7a6eWX3sbQDyF4A==
X-Google-Smtp-Source: ABdhPJy500NuFjqwp00AVO85/fDzxFW/sTqua/T06bMcxxtDqRkqUwOzz8ZW+UnMjaxoumi+ZxwlOg==
X-Received: by 2002:a17:902:cec8:: with SMTP id d8mr36025317plg.98.1643908816120;
        Thu, 03 Feb 2022 09:20:16 -0800 (PST)
Received: from localhost ([2620:15c:202:201:c0cb:3065:aa0:d6c9])
        by smtp.gmail.com with UTF8SMTPSA id a14sm31533363pfv.212.2022.02.03.09.20.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Feb 2022 09:20:15 -0800 (PST)
Date:   Thu, 3 Feb 2022 09:20:13 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        pmaliset@codeaurora.org, quic_rjendra@quicinc.com,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        kgodara@codeaurora.org, konrad.dybcio@somainline.org,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        sibis@codeaurora.org, swboyd@chromium.org,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 09/14] arm64: dts: qcom: sc7280: Disable pull from
 pcie1_clkreq
Message-ID: <YfwOzZNVlymi/w2c@google.com>
References: <20220202212348.1391534-1-dianders@chromium.org>
 <20220202132301.v3.9.I5f367dcce8107f2186b2aad4aef0dfcfafa034b9@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220202132301.v3.9.I5f367dcce8107f2186b2aad4aef0dfcfafa034b9@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 02, 2022 at 01:23:43PM -0800, Douglas Anderson wrote:
> I believe that the PCIe clkreq pin is an output. That means we
> shouldn't have a pull enabled for it. Turn it off.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
