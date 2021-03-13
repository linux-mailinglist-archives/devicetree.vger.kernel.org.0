Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8374433A1C0
	for <lists+devicetree@lfdr.de>; Sat, 13 Mar 2021 23:46:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233570AbhCMWqC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Mar 2021 17:46:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231329AbhCMWpj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Mar 2021 17:45:39 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4B07C061574
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 14:45:39 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id t18so6913420pjs.3
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 14:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=hko1/HefpN8mg9CeMIxebUv1uopWkEbJjhdXwQ6WlPc=;
        b=WJdznpqTZONj5XMgWUGe/GvsN4kupEdBkD30yTtzac3wXflzqACoY9qJgvShGyjTKQ
         5FmB5FP2pTGxZIU+riW4lkoQU8qQGgO7YgIT6tHA4pLIxLAjSnDgF6nC6MlOHlzJOaB3
         MZ4QQMhqjqERDuNCWfmxqCj9X+alHBPusQWAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=hko1/HefpN8mg9CeMIxebUv1uopWkEbJjhdXwQ6WlPc=;
        b=LIEiJX5hx6l7AHyoFoiT5eCkhU03/VgEmAPtkF6Hf20O00pGLWhzF+TfTrPC/sX0It
         BdZGp2hQlAx9p7jkSzqPdvSBbTWAH2cjbbHXH8I2ChXIuD7gTDFZCb9nbrXsn8eH0xpY
         MA2cgZLIeM8Y5o5dP8u5uUmAlGFMTxiPs+aoyVJ3/jBjpXCe3kNDacdBnGVsZ/CJ3etO
         lpgl+HS5vhPTy9BAA3jRMrMZSs2UO1YNWsshUMINZVMG8RDpKYHmfUcDxjvgvlCnmlUT
         S5SdOJm0Xf78wZmDu8ZgK2BfgWfkMm26BZE37u/kYA7RDFE6TZdlsIkuvgLE1hiyNqpI
         lE4A==
X-Gm-Message-State: AOAM532wUyGtBqvjA5xqklrvtWAzyLWj6EFUcZJz0qhDKSTG/BUmNQu+
        Vj29CJptpbwnbh808dmEdCmpXA==
X-Google-Smtp-Source: ABdhPJy43803vYmJsWH8LRizBsr5Q90oDk+BDI1fXYXjItY/3dNaQDICmIGmOrgdtMYbQ6r84w/Q/Q==
X-Received: by 2002:a17:90b:3615:: with SMTP id ml21mr5463528pjb.72.1615675539192;
        Sat, 13 Mar 2021 14:45:39 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:e859:c7d5:7d7b:5ed8])
        by smtp.gmail.com with ESMTPSA id k67sm8856478pgk.28.2021.03.13.14.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 14:45:38 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210311131008.1.I85fc8146c0ee47e261faa0c54dd621467b81952d@changeid>
References: <20210311131008.1.I85fc8146c0ee47e261faa0c54dd621467b81952d@changeid>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Drop duplicate dp_hot_plug_det node in trogdor
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     mka@chromium.org, Tanmay Shah <tanmay@codeaurora.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Date:   Sat, 13 Mar 2021 14:45:37 -0800
Message-ID: <161567553733.1478170.10247703363575066889@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2021-03-11 13:12:41)
> From: Stephen Boyd <swboyd@chromium.org>
>=20
> This moved from being trogdor specific to being part of the general
> sc7180.dtsi SoC file in commit 681a607ad21a ("arm64: dts: qcom:
> sc7180: Add DisplayPort HPD pin dt node"). Then we dropped the pinconf
> from the general sc7180.dtsi file in commit 8d079bf20410 ("arm64: dts:
> qcom: sc7180: Drop pinconf on dp_hot_plug_det") and added it back to
> the trogdor dts file in commit f772081f4883 ("arm64: dts: qcom:
> sc7180: Add "dp_hot_plug_det" pinconf for trogdor").
>=20
> As part of this we managed to forget to drop the old copy in the
> trogdor dts. Let's do it now.
>=20
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> [dianders: updated desc]
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Thanks for the catch!
