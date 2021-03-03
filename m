Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EC2C32BF9A
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:00:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1579151AbhCCSa0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:30:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1842753AbhCCIMb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 03:12:31 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 902D8C061793
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 00:11:49 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id u18so7415001plc.12
        for <devicetree@vger.kernel.org>; Wed, 03 Mar 2021 00:11:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=DMQiSblKmDEtFz8Bw7dmgo7l8LMebNEzg/kjl/liqLE=;
        b=CT2YnraIqGDeegc9kIxrFgu83h+aOyX8MHYWE5TkKVrlsewCS8M2DBC74Ikk6wS7Ih
         FHYyVjx/IpBm/jxbb3BQJm7wCXmouSMC2bupCDVxi6hSF9yeRItrbkj/hGx4M1nubiPX
         pprCZCuVKh3K2Ou/uJXQH/hhlgm4kAdGCSf6E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=DMQiSblKmDEtFz8Bw7dmgo7l8LMebNEzg/kjl/liqLE=;
        b=sWXZiPNr1o3M9KbsUjhuT2gtcc1hGm3X0Cbv9qVzD0Fq/i6tO//1dm9M4R+/mAGNcT
         NR4u95CMEgdiwog9V2rYyiOopQbqaNVln4qCA7FGM6aLzkyCewioy9kUG2hUM+fk/FsE
         Q3qZVwgNODXiiddsuJp2ZcJz1wLbSi9o0I6B+rK8/z0QXORcLW7vREQ0sEebSuYO1tvV
         eSzB4/tA4XakpPAyr59I0UwI8r/U72HAQFflQubHSN+U+xdUHT5c/RB4D/ssD0bYpnKo
         Z6gfUOgB94CVqhRa3aDN13hqHoTtFX+ERoqQQ5TCRir8qoaetMzYvbujUcX23njccaTk
         +lYg==
X-Gm-Message-State: AOAM5308v/oFgmaXjZZYjPplKHjuibQhH5KkpNsXot7MOd5jecttKxpe
        tx4mjd26628V3J/kGEmqUrtIpAg3kiNObw==
X-Google-Smtp-Source: ABdhPJxG/tKzWxUKe7+dddHY2Jcl8eQsDrsMzm3AcEg1Vm6JEscnTVVEqx9/efCzaa8Uw3lummw/PA==
X-Received: by 2002:a17:90b:909:: with SMTP id bo9mr8451689pjb.107.1614759108852;
        Wed, 03 Mar 2021 00:11:48 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:2510:ab07:78a:7d78])
        by smtp.gmail.com with ESMTPSA id u15sm22547301pfk.128.2021.03.03.00.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 00:11:48 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <e96d665d1e98b46a189a57e39575ae0debf37172.1614669585.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1614669585.git.saiprakash.ranjan@codeaurora.org> <e96d665d1e98b46a189a57e39575ae0debf37172.1614669585.git.saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sc7180: Rename the qmp node to power-controller
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Date:   Wed, 03 Mar 2021 00:11:46 -0800
Message-ID: <161475910634.1478170.13268307384255747031@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sai Prakash Ranjan (2021-03-01 23:28:01)
> Use the generic DT node name "power-controller" for AOSS message ram
> instead of the protocol name QMP(Qualcomm Messaging Protocol) since
> it is used for power management requests.
>=20
> Suggested-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
