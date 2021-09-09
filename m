Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92CF8405EC8
	for <lists+devicetree@lfdr.de>; Thu,  9 Sep 2021 23:30:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237978AbhIIVbY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Sep 2021 17:31:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237731AbhIIVbX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Sep 2021 17:31:23 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBB77C061575
        for <devicetree@vger.kernel.org>; Thu,  9 Sep 2021 14:30:13 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id bd1so4454822oib.5
        for <devicetree@vger.kernel.org>; Thu, 09 Sep 2021 14:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=r79cmgNDDidxXvaxTI5T8bA/u2eCAhe6oAZULslvRNg=;
        b=Sr7U0TQjASjopEl37t4IJYyJD+TW5mSxY+2fu0BItg/tsM3alK382ZCbCLYEO2YANd
         CstrafRvDeNUHSbOBQAZFa8Qg76MfYcQVa9kkQC64JsOJCoSV/jUF1AzH6v6mjjNLJbQ
         8JgNs0iVDeJSrzXP3AKOAsGIRYnsXsJEw6mVI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=r79cmgNDDidxXvaxTI5T8bA/u2eCAhe6oAZULslvRNg=;
        b=6k/So3xGbqAUdjSKsZ2d14xqj28UMpVEWEjFZGZDI3qTfH95MEE3+6KU8qFDK/NWVr
         jCUEVfC9PwcEoxRwtvMNpSnc7/l6TpwbvfpSxJwGAI+4S5TEeW2MIgaO6u2HA3r37LdV
         eggDjqhNPDu++2CcD5dzVI+B1cPRSoRphljPMlf7PAQuMxGuc/RySsP1W/qdbOx2bQTt
         +uI1HkkWIs7gkQH2Id/qQjJnPMxPwvMbCyhGyj0Ys1unzsoroi+QP0P+E4EIImhuWYzA
         5C2+yYtBHyGYed/yMi3pl7/EL5khRNrfiNwhMYFhBgO2HGaxgjXmWKmgUwcD0svmc+TG
         ZiFw==
X-Gm-Message-State: AOAM532KK++nNFvT/vT88EIjccSntxEGDu3yKpxDsofM6VX8hhyefYgc
        tRIK39ki2TIBOmMvGmxAdh66rZJ8PVuVYSaWNjs9Uw==
X-Google-Smtp-Source: ABdhPJwCMD1N9F/MFmV5OSnlhCcqSqYaz+by8eltnOy/usqsU4stZm11gxAv2Oo8qN6yrYQ84iAMPseV0RSShDJWq0Y=
X-Received: by 2002:aca:2310:: with SMTP id e16mr1581007oie.64.1631223013219;
 Thu, 09 Sep 2021 14:30:13 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 9 Sep 2021 17:30:12 -0400
MIME-Version: 1.0
In-Reply-To: <20210909122053.1.Ieafda79b74f74a2b15ed86e181c06a3060706ec5@changeid>
References: <20210909122053.1.Ieafda79b74f74a2b15ed86e181c06a3060706ec5@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 9 Sep 2021 17:30:12 -0400
Message-ID: <CAE-0n52kUS9cWh1oWOoAivYQ5TUu-mE2RPqjHZ=-QPN7Y=Y92g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: Add sc7180-trogdor-homestar
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Matthias Kaehlcke (2021-09-09 12:21:01)
> Homestar is a trogdor variant. The DT bits are essentially the same as
> in the downstream tree, except for:
>
> - skip -rev0 and rev1 which were early builds and have their issues,
>   it's not very useful to support them upstream
> - don't include the .dtsi for the MIPI cameras, which doesn't exist
>   upstream
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
