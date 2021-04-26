Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80CF636BB45
	for <lists+devicetree@lfdr.de>; Mon, 26 Apr 2021 23:36:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233964AbhDZVh3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Apr 2021 17:37:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234229AbhDZVh3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Apr 2021 17:37:29 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3ADFC061574
        for <devicetree@vger.kernel.org>; Mon, 26 Apr 2021 14:36:45 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id md17so2351095pjb.0
        for <devicetree@vger.kernel.org>; Mon, 26 Apr 2021 14:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=9rgsKAhhtuNFQZ+aAjo0/P+CP1GY/CUNPL3lrWCrY7Q=;
        b=KCMSZTW9Ftcr13No+8u70KquNfAPMGogImNCw5IKcikbvDCOMZqC97h0yt7wljPgqc
         vsJAhRFGYghaNeSxEQcaTGOSQuwMJRZOibqfBZigFfiqk8NUGCrUyqnr+aLo0UoSu5C0
         mF44U/JTukrAFrga5TNdsjSwg8n+4vzvb+f6Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9rgsKAhhtuNFQZ+aAjo0/P+CP1GY/CUNPL3lrWCrY7Q=;
        b=XwUo/9B7Ge3dpNsnJsszJ7dGKZZhOOWF9/TYyNYaohrjytOyaZ3ey4UfCa7qkczj++
         5h1ELT9/S79SllVDmzANnuteqUC6B3Y31RSfgRSBNjDNxigpUt5ecLobwK4HAOBGXaBl
         zIwj6Gt5YJ1OJRqWZHKFLsQxhm1H6FuNirTgKuTKE6EMycWP/slAfpvToOYKCkbXYUpN
         vkMgbEhopF8czM0U1iLAxa3Xj05vUwzzduF4dNQkNzz7N5kKn4LPyruiU02lrXPl6yrH
         vGqBYtP01eFTMJu48aFt/rbIbe7yQLS8U7xSQGdyQw1ZlmtRMuELEU2Ggi6/XQeW/QNg
         HdKQ==
X-Gm-Message-State: AOAM5300Q9CdwqBmbCeFpvMnqTD9SRABzuBQQCglv6Hs2ft6icdVlpmU
        pa/eDDFZNKM+d9FA3LcAOr4g8w==
X-Google-Smtp-Source: ABdhPJyD6BoGT/s6yCpqFgaXtkry8ClFp2fYPOJChJ8sXblm3fM/5l4uwqy9109mOJugem9Jelj5Bw==
X-Received: by 2002:a17:90b:224d:: with SMTP id hk13mr24061527pjb.218.1619473005256;
        Mon, 26 Apr 2021 14:36:45 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:3a16:de17:8721:d706])
        by smtp.gmail.com with UTF8SMTPSA id 18sm482678pji.30.2021.04.26.14.36.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 14:36:44 -0700 (PDT)
Date:   Mon, 26 Apr 2021 14:36:43 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajeshwari <rkambl@codeaurora.org>
Cc:     amitk@kernel.org, thara.gopinath@linaro.org, agross@kernel.org,
        bjorn.andersson@linaro.org, rui.zhang@intel.com,
        daniel.lezcano@linaro.org, robh+dt@kernel.org,
        linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sanm@codeaurora.org, manafm@codeaurora.org
Subject: Re: [PATCH V2 2/3] ARM: dts: qcom: Add device node support for TSENS
 in SC7280.
Message-ID: <YIcya8X4O/y6uuWC@google.com>
References: <1619202177-13485-1-git-send-email-rkambl@codeaurora.org>
 <1619202177-13485-3-git-send-email-rkambl@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1619202177-13485-3-git-send-email-rkambl@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 23, 2021 at 11:52:56PM +0530, Rajeshwari wrote:
> Added device node for TSENS controller and critical interrupt support in SC7280.

nit: use present tense to describe what a patch does

> Signed-off-by: Rajeshwari <rkambl@codeaurora.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
