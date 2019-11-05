Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 48952EF206
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2019 01:34:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729739AbfKEAek (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Nov 2019 19:34:40 -0500
Received: from mail-pg1-f194.google.com ([209.85.215.194]:35628 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729443AbfKEAek (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Nov 2019 19:34:40 -0500
Received: by mail-pg1-f194.google.com with SMTP id q22so5122545pgk.2
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2019 16:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:cc:subject:from:to:user-agent:date;
        bh=ssq1+qBeE4bILOYJCaUAQccnlP0dTDy9uKGzohCrZNI=;
        b=fse+hifIQe9+HhAVismfmdd3dbc+AxDk6h2Czk0Xv9p+AFsp3NSOljWg/6eyC+wVnV
         JqbMAuXWtjW1iH9BTPZe9sdCW3OmoJ+48j0DdRqw3TVHjd0sTq2ieka06m9nffvEBMXx
         J/AXJd79/oM6HArb021dRsLKI75kvUlH4MkSw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:cc:subject:from:to
         :user-agent:date;
        bh=ssq1+qBeE4bILOYJCaUAQccnlP0dTDy9uKGzohCrZNI=;
        b=A6BrRIMR7PyepOqUr9rPN0e0+U/TQfoTfLYyQriUecVrRopZ/Sy686bqBRATqmIloG
         TVdRUE261Y0iL+PhkyrdVf/lHZIlaZPvAcdPH6r8Ky9fBhrg6uSAg7hFH+b597M5jrBi
         XQdThRYeuQOxdv22Sbzxvc9aIbOzCJClgR4+U9GSTEAby+xT5qSCYFi/jgKW/PaC09YJ
         xTfxhpt1Wt3RNUcNGoMUYISM94WASuet5G7EEykHHITae8s8YDtmEc3u7fJcsUDyk/KO
         JBqK//voas0pmQAhNbkfpoN0g9uHIULWEi0UOvcKWzEclc5/iMuRFFEgxtIOFsis1Jox
         oKQg==
X-Gm-Message-State: APjAAAUsNKS5mPPHrv9nH912sukrkMgDQlhCMGyrbn+t7piwKorNqMBp
        iluK7c8AWDEqSSvxh2ZyRbVfrw==
X-Google-Smtp-Source: APXvYqyONkdssVcF2C2lSrS/XAzYbF22TVGGKOXcep4SCKhu3a9bGsH/qY2pM5E3sIVKM+vGi5lcqQ==
X-Received: by 2002:a63:ee44:: with SMTP id n4mr15395228pgk.137.1572914079568;
        Mon, 04 Nov 2019 16:34:39 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id s202sm19212727pfs.24.2019.11.04.16.34.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:34:38 -0800 (PST)
Message-ID: <5dc0c39e.1c69fb81.f12ba.857f@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20191104071027.GD585@tuxbook-pro>
References: <20191023090219.15603-1-rnayak@codeaurora.org> <20191023090219.15603-12-rnayak@codeaurora.org> <5db86de0.1c69fb81.9e27d.0f47@mx.google.com> <20191030195021.GC27773@google.com> <6610d7fe-5a4d-5a43-5c4f-9ae61e7e53ee@codeaurora.org> <20191104063348.GA2464@tuxbook-pro> <c214110f-7620-8771-ef83-8a4fb1f8724f@codeaurora.org> <20191104071027.GD585@tuxbook-pro>
Cc:     Matthias Kaehlcke <mka@chromium.org>, agross@kernel.org,
        robh+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Maulik Shah <mkshah@codeaurora.org>
Subject: Re: [PATCH v3 11/11] arm64: dts: qcom: sc7180: Add pdc interrupt controller
From:   Stephen Boyd <swboyd@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
User-Agent: alot/0.8.1
Date:   Mon, 04 Nov 2019 16:34:37 -0800
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Bjorn Andersson (2019-11-03 23:10:27)
>=20
> Right, but by putting both compatibles in the dts and the generic one in
> the driver we avoid the driver churn and we're future compatible.
>=20
> And given that we haven't yet added the qcom,sdm845-pdc node to the
> sdm845.dtsi we don't need to maintain the qcom,sdm845-pdc in the driver.
> So switch qcom,sdm845-pdc to qcom,pdc in qcom-pdc.c.
>=20

I like this plan!

