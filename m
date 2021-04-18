Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB49636331D
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 04:02:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229870AbhDRCDX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Apr 2021 22:03:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237165AbhDRCDX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Apr 2021 22:03:23 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2477EC061760
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 19:02:56 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id 10so11996093pfl.1
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 19:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=CbhdQHbWRym0+Jb4C6kLr5Ql2zPCvZUevjtnp0UACY0=;
        b=K8tyZdc0a05Lfkk4bMA1pVWGGcY8hrPmjgFi8BriITExVKwDv9S+Q4KAKVKtnvzrw3
         ku1Uwwz2RnhCRR5L0yxU1ZFVpon7X4ucFhHBuitM0kxQnpZxo8daw0abixBZljfmf4f/
         dxT0Fmeo3zv1oQniqLAyOCyR7bxd9/DgnvLu8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=CbhdQHbWRym0+Jb4C6kLr5Ql2zPCvZUevjtnp0UACY0=;
        b=BnBbpPXUZxCy6FID+IXqVyofMaxaNPs5Avy4OJNWOSAAQQV7naSCSppbqBONpTEhTc
         y8Ac/JEYAExtjqs9rxJ5gWV+89HQajHckQq1607LpvLUg8MMN9g0HD8tVured9HnXLeV
         ASKyCwMdzoEK2fleurAX0VwP3ozDkoBRuQ0S1yZBTu9CboTUK4SLWkkw6TN712ECXLoA
         ZLrf8xyMxp4Ej/gTWJCEl46PKR0FJBgJot9MDH+HKrsaRIrk8VWPtlw7Q3dFkj2YkCXZ
         MlTJJQSjy0mSdAht5jzAPuJXavV2NrFSNzSXCc5MYV59Ddr22Ebq8EzgLw7LAK1AlHif
         gn9w==
X-Gm-Message-State: AOAM533+Y7EU8CYTyQBTNh5OFGHYRiJmEUB871p15hnIJrQDcrxDn1zh
        Q3qDzSAqLUOX0v+qyVkdon9ZEw==
X-Google-Smtp-Source: ABdhPJz1rOGvxjAHNs27KEyLsrpD/xu/asHSTcZrwNm6yPIK3+68UOFDLh0+fCwrE0Q5gCQ++eVgKQ==
X-Received: by 2002:a63:130b:: with SMTP id i11mr5617657pgl.302.1618711375680;
        Sat, 17 Apr 2021 19:02:55 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:e47c:5232:82d9:6d3f])
        by smtp.gmail.com with ESMTPSA id d17sm9195487pfo.117.2021.04.17.19.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Apr 2021 19:02:55 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1618574638-5117-10-git-send-email-sibis@codeaurora.org>
References: <1618574638-5117-1-git-send-email-sibis@codeaurora.org> <1618574638-5117-10-git-send-email-sibis@codeaurora.org>
Subject: Re: [PATCH 09/12] arm64: dts: qcom: sm8150: Use QMP binding to control load state
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     rjw@rjwysocki.net, agross@kernel.org, ohad@wizery.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, rishabhb@codeaurora.org,
        sidgup@codeaurora.org, Sibi Sankar <sibis@codeaurora.org>
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        mathieu.poirier@linaro.org, robh+dt@kernel.org,
        ulf.hansson@linaro.org
Date:   Sat, 17 Apr 2021 19:02:53 -0700
Message-ID: <161871137386.46595.1715637994185225115@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-04-16 05:03:55)
> Use the Qualcomm Mailbox Protocol (QMP) binding to control the load
> state resources on SM8150 SoCs and drop deprecated power-domains exposed
> by AOSS QMP node.
>=20
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
