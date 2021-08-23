Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B706D3F51D9
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 22:14:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232384AbhHWUPf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 16:15:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232307AbhHWUPe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 16:15:34 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D687AC061760
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 13:14:51 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id g66-20020a9d12c8000000b0051aeba607f1so31140855otg.11
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 13:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=hGriz5nEPC/9blprw2SSKn2ibNR/r6EGgeTF7xGzQOA=;
        b=VDYJUp7Plh2KyeGxRwUz2J+DE8zDTIowi27TR3jGY8L8VLlUHqO5eHIZziOva/WmBd
         b0CI1i0tDaq7XjlhJhNNNBK+e01KoatUkZ1GR0JbwXuZLKuAS4o6tfiNXIxglqz/X6wr
         gg2r1qr3DXtObXg0yY6XNpiRz3uPrYPpUSZ1U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=hGriz5nEPC/9blprw2SSKn2ibNR/r6EGgeTF7xGzQOA=;
        b=DsIZS6xvJG5etk6CeSpfcuqfOAPlAV4el++JMvRmnAP/rE4w6xZa+Zd5laaCCDZVI/
         2W7By8XTn8cGauQuYXE7rD/pobUT+I1ufnuXGTEol4IkN7Y/sJ23Zlp9SlfAYry2dgHM
         yXj3ISQx+rk63tYabLtar1i14L9Jbg6iLv7BDjWUq1ecsRMKf7iVIEa3nnk0T1C7KiPf
         xcLtzyc8HOj6fbPpcJtQmWsZONWMSU8BA831khz0QdnZ+AjuhFxWz74pvT8iCvjF+hz7
         KRIzOBlYooGwL1vREkTSsv0YLY1CvjLhsKBXllL99l3BROL9bdg7ddNvJMGb8hL8pWHn
         VRgA==
X-Gm-Message-State: AOAM531nOI/E4pr0oF8Cgo68DcJvukBZZ98ZgFWFnD/fHNtm/S+ha/8k
        HzrZ3UJXIjNxU9K+RjvoIKZBRMTzrpY6ygzkUup29w==
X-Google-Smtp-Source: ABdhPJz7QvAa9cl0qW+P2JH63tRIV8M2034yxYv1URsomWS1n7tP7NRfkZ7UKUIw/0NSoy2rXfEUugVzPRXMYhw+n4M=
X-Received: by 2002:a05:6830:88:: with SMTP id a8mr29450117oto.233.1629749691263;
 Mon, 23 Aug 2021 13:14:51 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 23 Aug 2021 15:14:50 -0500
MIME-Version: 1.0
In-Reply-To: <1629344185-27368-2-git-send-email-sibis@codeaurora.org>
References: <1629344185-27368-1-git-send-email-sibis@codeaurora.org> <1629344185-27368-2-git-send-email-sibis@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 23 Aug 2021 15:14:50 -0500
Message-ID: <CAE-0n52t6QkvgzxbmV_sy6b-Bmou7Rsx8WyxN8LKOpJKP7S4KQ@mail.gmail.com>
Subject: Re: [PATCH v3 01/10] dt-bindings: remoteproc: qcom: pas: Add SC7280
 MPSS support
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        mka@chromium.org, robh+dt@kernel.org,
        saiprakash.ranjan@codeaurora.org, will@kernel.org
Cc:     ohad@wizery.com, agross@kernel.org, mathieu.poirier@linaro.org,
        robin.murphy@arm.com, joro@8bytes.org, p.zabel@pengutronix.de,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, evgreen@chromium.org,
        dianders@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-08-18 20:36:16)
> Add MPSS PAS support for SC7280 SoCs.
>
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> Acked-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
