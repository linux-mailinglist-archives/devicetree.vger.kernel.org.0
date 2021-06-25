Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B64B3B4A39
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 23:31:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229938AbhFYVdd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 17:33:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229818AbhFYVda (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 17:33:30 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6D45C061574
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 14:31:07 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id k6so8440274pfk.12
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 14:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=CWYLOtSzf07pukGettLZc50AWqNx35k04qNjXA3uUb4=;
        b=i0XNMOQ4uz9CRdX9PQgd4duTYbpQRdBwZWydro5l1CSxhwXKjbM8rAQN7sOKGQ4oEn
         69Ea1kKbbeKN/sLulWYIDJbZPgOcM4CrDJbcAIUqD1AVR2PMQpIk95xy7p4WH9uywCKZ
         fMMINtS3sNFk67sVOjORHGjV6X+v1ecqDcHGQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CWYLOtSzf07pukGettLZc50AWqNx35k04qNjXA3uUb4=;
        b=SJdhrkvd8gEO3YVfKNJtKC0eS/l+f70JnSOtOD8Uq0Wdt6/9C0USjtP+7EEescJdH/
         1G1OPBaNtaAjB/s9ePqrDOt2RC83lpOjoQW99D1G16oxvXqTzbG7y/8xnYag73akLcjc
         ogjvme93YUc5q7Yf+xPjWX2VZclpYNavnA0zNcb4CWBvUs8DBRxXeyzP8GIlEFUj7ZEe
         WUOYRgZ4LaT34pGVpSF9KAWYRWNIPyGFrs377YVZRx0FPqaoyhfxJ5Rlcv4mVafSPreN
         tYBfCaaSiDDaBWeXxPouC3oY1G7Q1EKsWU8A+VzMnAhlS4st3cmcXt1qU3Uj7seBEL/R
         TFJg==
X-Gm-Message-State: AOAM533vexKrNeKjPDxtMcLTK+vJAc1hpW+z2nYFY8CKlzRYVR6f/ReC
        Jz4fSgO9T+nEZmZhMirIgNqTtg==
X-Google-Smtp-Source: ABdhPJzSvBxJcV+ygLJWWnosjmUXSs4/lr7r94utpED/5DLwIo9VOQtTr5OTKEq2/LLDJ0XHGYZZPQ==
X-Received: by 2002:a05:6a00:26cc:b029:308:a51b:8077 with SMTP id p12-20020a056a0026ccb0290308a51b8077mr8615356pfw.11.1624656667204;
        Fri, 25 Jun 2021 14:31:07 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:cc13:a7dd:f4b5:2160])
        by smtp.gmail.com with UTF8SMTPSA id p4sm6754839pff.148.2021.06.25.14.31.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jun 2021 14:31:06 -0700 (PDT)
Date:   Fri, 25 Jun 2021 14:31:05 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     bjorn.andersson@linaro.org, robh+dt@kernel.org,
        swboyd@chromium.org, ulf.hansson@linaro.org, rjw@rjwysocki.net,
        agross@kernel.org, ohad@wizery.com, mathieu.poirier@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, rishabhb@codeaurora.org,
        sidgup@codeaurora.org
Subject: Re: [PATCH v3 01/13] dt-bindings: soc: qcom: aoss: Drop power-domain
 bindings
Message-ID: <YNZLGf1uqSqQ8zR8@google.com>
References: <1624560727-6870-1-git-send-email-sibis@codeaurora.org>
 <1624560727-6870-2-git-send-email-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1624560727-6870-2-git-send-email-sibis@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 25, 2021 at 12:21:55AM +0530, Sibi Sankar wrote:
> The power-domains exposed by AOSS QMP node are used to notify the Always
> on Subsystem (AOSS) that a particular co-processor is up/down. These
> co-processors enter low-power modes independent to that of the application
> processor and their states are expected to remain unaltered across system
> suspend/resume cycles. To achieve this behavior let's drop the power-domain
> bindings and replace them with generic qmp_send interface instead.
> 
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Acked-by: Rob Herring <robh@kernel.org>

FWIW:

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
