Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82B443EA551
	for <lists+devicetree@lfdr.de>; Thu, 12 Aug 2021 15:15:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236439AbhHLNPf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Aug 2021 09:15:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237109AbhHLNPe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Aug 2021 09:15:34 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1D6AC0613D3
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 06:15:08 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id bo18so9552542pjb.0
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 06:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=rxvB9dcy/txvnHNxJhX3D5OkaulqSBgQCbhDE63hZwY=;
        b=NpfJihwbHd4SEhhb6V3gozh0M3KnY7R7+3oWMP8vyYkdDMFYxGVtREjVuiY6nx6n3F
         G/pwXSHFU2Jz28MNk72xJGKZ5DpfEqk0O+fzd1G8K7iJHRMwr4+nle3hgbCRZYHGqcvt
         7M20IIwRMGYkH6Hhv6qx5LB6k6hLnd+a0bHZ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=rxvB9dcy/txvnHNxJhX3D5OkaulqSBgQCbhDE63hZwY=;
        b=pp85YaI+DgdGx2GpBu546f8SxBdxFtfCPPbnODJXPWFK9dRukSIJAYx06wrag5MuKS
         JUuSdexJD4mHw41FhkCOqGYrLAbMKaIvhiLiIMbtyABl6Go+wWrogBoz6e+r+7LkR0yQ
         Y6U3R6/z0+KFdiddQxwvFXJ+Df+G1eQkRPv3yj2IO/YhL7eyFRAJTDqZ03MfGzJ5qscM
         n2zgSO85u0JAKDqM6UDWk+rhZfFWIlzb9DLdZ8LEvzdyHG3+69Kqmx9WvOcp8kNBFsk4
         5cxei1PgOMa2a4w0A5aqWAuMwQJhTmEP/QiDD0fpkGwHwJdgmXAluFJ6maVRGqQUy9Mt
         ruxQ==
X-Gm-Message-State: AOAM531v2BT6mCUn89tuQBAinaEXXOFWcRCfSLeiOkiG9ouKkojxPVv5
        4dLzURgnJ63hySwaRfXzSL/eNw==
X-Google-Smtp-Source: ABdhPJyDHzlGgeEB+Ee0G7CbDRFYzgG5MeVOMvYuZ3QGRHXUhf/2B2scSNe0pVT6jfcjpdFUcjpaug==
X-Received: by 2002:a17:902:f703:b029:12c:982:c9ae with SMTP id h3-20020a170902f703b029012c0982c9aemr3681365plo.20.1628774108339;
        Thu, 12 Aug 2021 06:15:08 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:9d69:4059:b8a6:e36f])
        by smtp.gmail.com with UTF8SMTPSA id a11sm4052706pgj.75.2021.08.12.06.15.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 06:15:08 -0700 (PDT)
Date:   Thu, 12 Aug 2021 06:15:06 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajesh Patil <rajpat@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, swboyd@chromium.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org
Subject: Re: [PATCH V5 2/7] arm64: dts: sc7280: Configure SPI-NOR FLASH for
 sc7280-idp
Message-ID: <YRUe2qgbGTA18WkH@google.com>
References: <1628754078-29779-1-git-send-email-rajpat@codeaurora.org>
 <1628754078-29779-3-git-send-email-rajpat@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1628754078-29779-3-git-send-email-rajpat@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 12, 2021 at 01:11:13PM +0530, Rajesh Patil wrote:
> Add spi-nor flash node and pinctrl configurations for the same.

nit: better name SC7280 IDP explicitly rather than saying 'the same'.

> 
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
