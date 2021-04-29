Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93B7D36EAB4
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 14:43:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235751AbhD2Mnv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 08:43:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231490AbhD2Mnu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Apr 2021 08:43:50 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEAA1C06138D
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 05:43:03 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id q10so47042947pgj.2
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 05:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=crS9ky0D82Wt0+fljR8qv3pG4hOh+6EKRJ+LxnWrSUM=;
        b=Xi9/ECHF1kiL4sZQf8ePRrM4sFvJothu07czMfM7+0rwkeT5dz/ETyQhkXAU5BFSQ8
         0dkUq2GFrQNUGjO3JTGEikhD+BcmDJ1rRkFvQ2sfpG5mJTu4idtkCnYXLlIKP+inBLP0
         xGd59D2SvVU6Q7vhQ3ckga/4AVopXB+jq3ntU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=crS9ky0D82Wt0+fljR8qv3pG4hOh+6EKRJ+LxnWrSUM=;
        b=hZfCM1uEhEy8ggIrbam/GnLa8YQFnIWvPd4XtjgxyN+5/UblLVxlOfBtkahOzuBR0u
         oZlxfUOI1oDpaQoMt8BaB7AewO/5oB4FQNhkJGcAZ8UIy2sqGTkHzyfRDAVJ3mdrXIuz
         JvWckgeHm1AeW1mZ76a/obq+Bq/ZVqNqzFPV4D9xiEhPTIY6IwRTi3WO4ucAxlGzfyBL
         JyZCsZtML9mhrV/X5eRQ/8lhN+y2rRT2fO7/ndMdWoGPkZ/qe0WkmVHS1LR8kZRKq+4P
         WQ/dD88OPmpCTVjnPz3s/DN+Xj2LRJMbQR07frh7zdQ4rQ0Nl+136gVIY4xGEtJ1gL22
         z2IQ==
X-Gm-Message-State: AOAM53190Cjub+MxZtalKoukPnhSTaYGSvXWEdbf8idXBeg+BjIr/8Fr
        tQKP/flE9cEgUGuIRxeZb/zQgQ==
X-Google-Smtp-Source: ABdhPJz2MzWWnfUD0vMOFMEvRNGbWDQvlbTZcrSRb22eap40StYH4HAhvSDiQFk31bfH/TttXMOHyg==
X-Received: by 2002:a63:5458:: with SMTP id e24mr31905415pgm.170.1619700183382;
        Thu, 29 Apr 2021 05:43:03 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:59f:ddfb:1a03:fe23])
        by smtp.gmail.com with UTF8SMTPSA id k17sm2467759pfa.68.2021.04.29.05.43.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 05:43:03 -0700 (PDT)
Date:   Thu, 29 Apr 2021 05:43:02 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dianders@chromium.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Document google,senor board
Message-ID: <YIqp1g//jV7gxepo@google.com>
References: <1619674827-26650-1-git-send-email-rnayak@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1619674827-26650-1-git-send-email-rnayak@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 29, 2021 at 11:10:26AM +0530, Rajendra Nayak wrote:
> Document the google,senor board based on sc7280 SoC
> 
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
