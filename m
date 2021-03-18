Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8521C340B8A
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 18:19:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231707AbhCRRSe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 13:18:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229937AbhCRRSD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 13:18:03 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F4B6C06175F
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 10:18:02 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id mz6-20020a17090b3786b02900c16cb41d63so3484180pjb.2
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 10:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Q/dGxKGWMn9sfMz1b8CCSg+fiC/dJhHGZJq+3SdzjOQ=;
        b=WVWbyAI5kfosqOyzscCScjiH7ZCnvPLgynzAoQ7C8JvvuMRmVO+nfLQVdRcBcbhBl3
         3CAeupwS4atfV2Uk80gYt5uTO+qtyNw+uAc7j/oep/H3uv4GOvIOY24izAyzE2DQ8VW7
         kUqFutxVa5UtqjSHyhZiVeHY4i4xf4tXelALM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Q/dGxKGWMn9sfMz1b8CCSg+fiC/dJhHGZJq+3SdzjOQ=;
        b=LOTr3UVX7bPFdIO8LldgEfZJi0lyFgXRfX3XkZ8S+9AM8NSOmPhQGMF1Mx5iYi00cE
         Greble6UAnFCFqDU9EBScrEI3eyoY2GB+SmbMuVLFcX++LVea+vs+iObhILEwR7S19Tw
         Z7jW9xoRQjsp0pcOgCkv4MKkDhOSal+B+uqo8HBKmBY/t486UXihwB/uujv5xMsWuYNi
         tQxu+/rVIfYS9ck2GTv+hLnw/65tMXd2G0tPfktygThVK9mz3zYyJSMYBNXzhcu3cC/F
         1mdVWBwwvWmyC1lBa3zlqH6NyWprLAFATAXdGmPVlIjq+y3Ri2BbKSt1nh7bXg6fZ8qG
         /ZkA==
X-Gm-Message-State: AOAM531A9bNMc01lz7c5AFG7edlfFlqrtDmtm92Htt6x4qyVwYgILHTY
        a49fo3YemDwPzMqgmIogQuUBsA==
X-Google-Smtp-Source: ABdhPJwjpWZE1h3EfmpA8uaekrYi2l/kcDS5O6e6heHIWgnAfkX7fPzdsgqyeP70KZ8aaKjMwXs8Rg==
X-Received: by 2002:a17:90b:f15:: with SMTP id br21mr5479022pjb.234.1616087881552;
        Thu, 18 Mar 2021 10:18:01 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:3cf8:6a09:780b:f65d])
        by smtp.gmail.com with UTF8SMTPSA id r23sm3063398pje.38.2021.03.18.10.18.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 10:18:01 -0700 (PDT)
Date:   Thu, 18 Mar 2021 10:17:59 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Roja Rani Yarubandi <rojay@codeaurora.org>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org,
        gregkh@linuxfoundation.org, robh+dt@kernel.org,
        linux-serial@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rajendra Nayak <rnayak@codeaurora.org>,
        akashast@codeaurora.org, msavaliy@qti.qualcomm.com
Subject: Re: [PATCH V2 2/2] arm64: dts: qcom: sc7180: Remove QUP-CORE ICC path
Message-ID: <YFOLR4pem0mRFkoQ@google.com>
References: <20210318111009.30365-1-rojay@codeaurora.org>
 <20210318111009.30365-3-rojay@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210318111009.30365-3-rojay@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 18, 2021 at 04:40:09PM +0530, Roja Rani Yarubandi wrote:
> We had introduced the QUP-CORE ICC path to put proxy votes from
> QUP wrapper on behalf of earlycon, if other users of QUP-CORE turn
> off this clock before the real console is probed, unclocked access
> to HW was seen from earlycon.
> 
> With ICC sync state support proxy votes are no longer need as ICC
> will ensure that the default bootloader votes are not removed until
> all it's consumer are probed.
> 
> We can safely remove ICC path for QUP-CORE clock from QUP wrapper
> device.
> 
> Signed-off-by: Roja Rani Yarubandi <rojay@codeaurora.org>
> Signed-off-by: Akash Asthana <akashast@codeaurora.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
