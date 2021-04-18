Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2024F363316
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 04:02:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237186AbhDRCCt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Apr 2021 22:02:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237181AbhDRCCt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Apr 2021 22:02:49 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D4C1C06175F
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 19:02:21 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id t22so15595096ply.1
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 19:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=IKYgVJGdlnys8DHl050Hdn2rR9TNdmyUAeeIRt8xOq8=;
        b=VF9Z4jSEf+p1UYjim3ow8+Dcmv9lFG03tFUbryapVjJzsvMmV5CecfV0GDI2KXfunj
         jhMEG+qOVzj75h9hYPJ2aulXfLBXfG3watRAzQ7mNtvWbO6XLqH6et+eX/2t2AFy+MZ8
         BYh0O8Y5vgdC9oqv762RLzLjzrI7iwhcG06cE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=IKYgVJGdlnys8DHl050Hdn2rR9TNdmyUAeeIRt8xOq8=;
        b=Vjjf8xI+RPaTtZHvydG6w4Xivd3L7Y4aOsSTco8MurErepjIu0Ce1WaK5wz2TwFjxz
         6BOKMsttbZAKq9tgY3yS7SRXMsXrxv9DM6UxLs1feHEpbIDVUh/wdBWkZkMNOKpO5ByT
         bcEafqx0c5dUkZRVZiEs8zNKPpliaiBFVhO7otHps8UE170v1xW87WpFdELo4ecOAi3+
         ldSptyrFdEIkOYHTV8AooeLLL1myLYhZjKiYIpicBB+zp6qaQuAYq8uy6p5kefu3ottW
         qbzYdKhVQ5LvbV4405P3wTbcQLYTxm8rlY37j8N/HbFQBMhQxRSuDG9umpFGpwtowb3u
         wjwA==
X-Gm-Message-State: AOAM532XhAFOQFFTqRv0Gm97zi4Q2EAXfKEv3rJoWRn58K2imPINVIb+
        BN7ZartUQeEjzKkVG+AMxMWQbF+t4Di7gA==
X-Google-Smtp-Source: ABdhPJz6CvpZyiD0cG5835NFc7okMDvkcBy2tU66Rq0gbRSYjPjEBctZOKgh8mRtkOWICw1Hof3aZg==
X-Received: by 2002:a17:90a:d191:: with SMTP id fu17mr17106897pjb.137.1618711340749;
        Sat, 17 Apr 2021 19:02:20 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:e47c:5232:82d9:6d3f])
        by smtp.gmail.com with ESMTPSA id i11sm9110213pfa.108.2021.04.17.19.02.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Apr 2021 19:02:20 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1618574638-5117-8-git-send-email-sibis@codeaurora.org>
References: <1618574638-5117-1-git-send-email-sibis@codeaurora.org> <1618574638-5117-8-git-send-email-sibis@codeaurora.org>
Subject: Re: [PATCH 07/12] arm64: dts: qcom: sc7280: Use QMP binding to control load state
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     rjw@rjwysocki.net, agross@kernel.org, ohad@wizery.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, rishabhb@codeaurora.org,
        sidgup@codeaurora.org, Sibi Sankar <sibis@codeaurora.org>
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        mathieu.poirier@linaro.org, robh+dt@kernel.org,
        ulf.hansson@linaro.org
Date:   Sat, 17 Apr 2021 19:02:18 -0700
Message-ID: <161871133896.46595.3264774242647444219@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-04-16 05:03:53)
> Use the Qualcomm Mailbox Protocol (QMP) binding to control the load
> state resources on SC7280 SoCs and drop deprecated power-domains exposed
> by AOSS QMP node.
>=20
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
