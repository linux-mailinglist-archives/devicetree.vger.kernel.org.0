Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F27F32C8CE
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 02:16:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346071AbhCDAwp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 19:52:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1392394AbhCDAOf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 19:14:35 -0500
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 568A7C0613E9
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 16:13:42 -0800 (PST)
Received: by mail-pg1-x52e.google.com with SMTP id e6so17607216pgk.5
        for <devicetree@vger.kernel.org>; Wed, 03 Mar 2021 16:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=jWLf/e+EL6DZASxmlKaI5K9b0nZdvsE6NX7/3HdAC7U=;
        b=c+FjYQmwaRinCqyo0+52fhpid5Xwc97PzuMFrg83WkMJp1JGtsp1+XO0GbeEM69+NM
         Mx+/iK+BS9M7n1Glh7rfhjNPDkY6fS2UEkQ0rAYwyZ6DEFoOKVMxv2qCpJIK+4TEL/Wp
         tIxRh+SOzjC4mjjpfdFUyZCIWaC3gXDJn1wiE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=jWLf/e+EL6DZASxmlKaI5K9b0nZdvsE6NX7/3HdAC7U=;
        b=ZZgScjtmT46y6ob3QaTSIvisS7Xe+5ZgntwswjhpN1Fk03KNPZkhnkrKgi7QKZeLJ5
         biFtrbZxIlzNIp6NdFSSfWFBA+/oBxG+rTqjx7Ho9HkUeGIH4mLX4DL1zyM+p3A4MFhw
         GvPEsX8GT4N2cEigD+COzbk7hqI2zhGk3cH3/Lji7fD4K6PfEwFSx9iIplwZpWi+xuzB
         hDob6kXBAvFfXB3LD7DpWI0ybpx1ysKK6rc9RQgKcSGJFXOmqleGUBOfBLbO+iSTdynp
         Mwpb91FPexMzK1g7BpOE1Qe9Az4DW9dn3Gaaw2lgV0D0+L3tAXubFbJIUuwVSqwJjf/L
         FuDw==
X-Gm-Message-State: AOAM5309ueoIqPOfzxH5dM5g0S4lrDxtsJVt+aFZlBHrL7+sQYmAuTMb
        h8Lg7lGqOdTSeh/CSVhzR5rDBA==
X-Google-Smtp-Source: ABdhPJyVroPzn9oixV9FeT2IFau8Sa9+DilTKFAVShOzPeMnb8mVrAPic1zVIiJMCylWI0i0E+p+dA==
X-Received: by 2002:a62:7708:0:b029:1ee:f656:51d5 with SMTP id s8-20020a6277080000b02901eef65651d5mr1242886pfc.59.1614816821943;
        Wed, 03 Mar 2021 16:13:41 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:2510:ab07:78a:7d78])
        by smtp.gmail.com with ESMTPSA id b15sm24334134pgj.84.2021.03.03.16.13.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 16:13:41 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1614773878-8058-14-git-send-email-rnayak@codeaurora.org>
References: <1614773878-8058-1-git-send-email-rnayak@codeaurora.org> <1614773878-8058-14-git-send-email-rnayak@codeaurora.org>
Subject: Re: [PATCH v2 13/14] arm64: dts: qcom: sc7280: Add cpuidle states
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Maulik Shah <mkshah@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Date:   Wed, 03 Mar 2021 16:13:39 -0800
Message-ID: <161481681986.1478170.12709137949867727549@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2021-03-03 04:17:57)
> From: Maulik Shah <mkshah@codeaurora.org>
>=20
> Add cpuidle states for little and big cpus.

Please also say "The latency values are preliminary placeholders and will b=
e updated
once testing provides the real numbers".

>=20
> Signed-off-by: Maulik Shah <mkshah@codeaurora.org>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---

With that commit text update

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
