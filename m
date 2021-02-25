Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D0BC3256DB
	for <lists+devicetree@lfdr.de>; Thu, 25 Feb 2021 20:40:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232081AbhBYTkV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 14:40:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233960AbhBYTiO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 14:38:14 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35BE8C06178C
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 11:37:34 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id 201so4302063pfw.5
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 11:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=XOHcNIofRwvSB3gcnVVgijvZlcqRnOPyM4E4Yd9sOi4=;
        b=bUGZ0X9gMDBqrvmAPT5fq9Kg9MLC8Hdvczlyir5R17UeuE1mhNrd9p+/X9S+hBsOVv
         dl/tx/gOTlrN3iMRk7pQORAPFmhWlogYkfg30/4TMaevZayVpQiiCg7EVNppdnlUHfdr
         3O3Jtg0hkI0OlamZ1RCsVbo2QmW8SN5RvyFdM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=XOHcNIofRwvSB3gcnVVgijvZlcqRnOPyM4E4Yd9sOi4=;
        b=eZij7p5co/ZgEGAmettLfHmGabal8IEtWJN70IBwFcjNG7kZdDE5ncT4EJqi3s5p1h
         1x4T6b482drbozJdpYg5VxnNHVZVDWKsBaN47Hq+F5pOvZvNXYf0JFc1Mk+HyoVRRJPu
         i2G9lJaVfKJckuT16JH8ty1pT8YUY2prKKXvsxMpTjpL3VtPE2/ObB32pq2+1spOddnW
         ULRvXtFpTv7a5YgfX+rH1FwlehVfByJaKPrp8g2IJ2Qs2zYkMosBtHxP7g2tonQSltNC
         5j44X/lTxNTL+ygxCnGMxqVhCceCUj/73sLCrgOG25y7VfRxa/7I+AVwzbf8BvC7W+Wr
         GcFQ==
X-Gm-Message-State: AOAM533nB5TJTLq3I8itl5mKpTpbUUFfj+N81P+nwRLnYz4Z+qy4sPuf
        dVCNXxa5AZMmzz/osUqZOJlbqvL97LwTvg==
X-Google-Smtp-Source: ABdhPJwEbjhrK46+Vn8tAPouIhP77JPq9NOLpq6Nrj1LQCzfQz04Bu6+O8IxCxPLN1pbhCbhamtj6A==
X-Received: by 2002:a63:1723:: with SMTP id x35mr4441170pgl.393.1614281853418;
        Thu, 25 Feb 2021 11:37:33 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:b942:93a8:e68d:5a90])
        by smtp.gmail.com with ESMTPSA id gg11sm6899868pjb.17.2021.02.25.11.37.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 11:37:32 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <c4b7ae4dd009f563e6786f4a41f09efa38636fb6.1614244789.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1614244789.git.saiprakash.ranjan@codeaurora.org> <c4b7ae4dd009f563e6786f4a41f09efa38636fb6.1614244789.git.saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 3/9] arm64: dts: qcom: sc7280: Add device tree node for LLCC
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Date:   Thu, 25 Feb 2021 11:37:31 -0800
Message-ID: <161428185152.1254594.1426736986245389798@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sai Prakash Ranjan (2021-02-25 01:30:19)
> Add a DT node for Last level cache (aka. system cache)
> controller which provides control over the last level
> cache present on SC7280 SoC.
>=20
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

Should add system-cache-controller to the devicetree spec. Or just use
cache-controller for the node name.
