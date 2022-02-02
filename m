Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBF614A7B40
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 23:45:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242284AbiBBWpy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 17:45:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239099AbiBBWpx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 17:45:53 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 733E2C06173B
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 14:45:53 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id c9so523044plg.11
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 14:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=H7zbzRyY9Da/STc4vt48OkAmzI/OTmAZO0rZ642KCMk=;
        b=BbHdOQN/AoSNG8i91JOVSdCdQGh7BexAGYWzaHZKLIeA5qvJHHQiBA/woN30MmXKi8
         qTfmgay7z2E3On34KkTeYrtn9nH7KiEDwp/FglL69mluebgPqmRclzYqgnYqnC4tBCI6
         qQEM5tfVcFDbUN3iEy9R4viHy5s0xPmofKk5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=H7zbzRyY9Da/STc4vt48OkAmzI/OTmAZO0rZ642KCMk=;
        b=oxADzEF/5GuCoJLzkPAY2tWo0+2JdrO7ldKprXgzVhat+lqTI6h7yBqBxDFUmP3Wid
         nPQ9P7fjUlAKDnU0MOV7BtJG+EV1WohPke1ojGen/fB9tR+NqZQwEgA0mTlh384Ya+mT
         AdA+i0/k6W10SB+cloKvXMAR40zgB1rSTkF/lZUhXY5TLV4swNA1FI4OEQUPi5Kq3vQm
         5Uv7UOFoKSx2t0J8UbH3xUcTd7pwz8H88oriLHgO4mnXob355J4dhyG36L1tDAZYEbFT
         ctIbsvJ8d47jRpS3llMvlXbXuVR5gSJjHiTrMA804RedDjw00qvzJSKmonzEWW72nayX
         YgUg==
X-Gm-Message-State: AOAM530blpsFBPemjFYhTb+X3F8YUxYFFinu5OPNsNnCgq6epXEWOaND
        +Y5YpM+YhQSiHELM9UkKCsVoKA==
X-Google-Smtp-Source: ABdhPJxWkM+CtlP3GH9ZlUHtGQjXTAlxv5Z4iGsCejHngxl/I/zbl+t7pma9OD1I8e76r0KSBH1MJw==
X-Received: by 2002:a17:90a:f0ce:: with SMTP id fa14mr10513942pjb.212.1643841952977;
        Wed, 02 Feb 2022 14:45:52 -0800 (PST)
Received: from localhost ([2620:15c:202:201:c0cb:3065:aa0:d6c9])
        by smtp.gmail.com with UTF8SMTPSA id c11sm27304571pfv.76.2022.02.02.14.45.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 14:45:52 -0800 (PST)
Date:   Wed, 2 Feb 2022 14:45:51 -0800
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
Subject: Re: [PATCH v3 06/14] arm64: dts: qcom: sc7280: Fix sort order of
 dp_hot_plug_det / pcie1_clkreq_n
Message-ID: <YfsJn7M9b44TvNjV@google.com>
References: <20220202212348.1391534-1-dianders@chromium.org>
 <20220202132301.v3.6.I874c6f2a62b7922a33e10d390a8983219a76250b@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220202132301.v3.6.I874c6f2a62b7922a33e10d390a8983219a76250b@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 02, 2022 at 01:23:40PM -0800, Douglas Anderson wrote:
> The two nodes were mis-sorted. Reorder. This is a no-op change.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
