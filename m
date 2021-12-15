Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DF99475080
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 02:29:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238867AbhLOB24 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 20:28:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235593AbhLOB2z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 20:28:55 -0500
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E42FC061574
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 17:28:55 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id i5-20020a05683033e500b0057a369ac614so22988462otu.10
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 17:28:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to;
        bh=vsh1MhG90sktMnN9grpR54l4uKx6Z6N5tsDDxbZW6o0=;
        b=JGU0cApMNO/QObrJvFbIIED25d0QAjNji23cp4HxXLFGTpEnaeb2d947VuokTPrJh4
         GxqIDaSVHw/ZVrgLLUJ36p6hc4fc2Ao3NBWHZY9233yxuiRmSq0+VA+k2c7w+AK1ethh
         pIXA/919loix9H/jY9SRtqVmU7bJ5WRstSyhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to;
        bh=vsh1MhG90sktMnN9grpR54l4uKx6Z6N5tsDDxbZW6o0=;
        b=cTAebQEqaWkL8y50chzE/Rm9tyZsSv5Sec+lzAFa6ddO44RjgutnciczOxnlxfnKJy
         pjxM+PgtQD5Ev6LM53h+Efu4JkTvGEt5ZDcTEhGsR7gdqmfr+r65Z0KMaPBayDqplY84
         pvxmnkUyvq5taHEdh9FEifWr1Sq35Dkd/W1jhzyVKukhkuZ7oeFIMBelPTbJSqnRgVqu
         5RNOo40JWHhC+Di0pnTXX9ZACrhblhsvHU/sJGsvJoNi0QNJfyi8C/BYdr4I4DUQwAab
         SgQGOX9SWDnOOptDfeR/j1v4A/MJHBdAFeJ/Y0uYgDR0tIZt1jpZTQZ0FedhDah5OnAD
         wShg==
X-Gm-Message-State: AOAM533d3BZgQLM99mruNZtEvJpD1q2ov4LTRYytQqceTExzU3xRRf3L
        lgUybHxeV83iHdNwm9jQII6sryE9y91aN2JdwIChdA==
X-Google-Smtp-Source: ABdhPJwVvIEVSzGWkZ6r6tum5sN5c25e8CxEhW4XCE5QW3Fp24XzJo9z3AmfNkACncaxRnmD6mxorka5IqffVKX3Lug=
X-Received: by 2002:a9d:70ce:: with SMTP id w14mr6875613otj.77.1639531734897;
 Tue, 14 Dec 2021 17:28:54 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 Dec 2021 02:28:54 +0100
MIME-Version: 1.0
In-Reply-To: <1638891339-21806-1-git-send-email-quic_srivasam@quicinc.com>
References: <1638891339-21806-1-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 15 Dec 2021 02:28:54 +0100
Message-ID: <CAE-0n527T71LPe5R+S+YzEqiid2-QrFdvS2T7MWrakTccyG45w@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Add pin control support for lpass sc7280
To:     Linus Walleij <linus.walleij@linaro.org>,
        Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, bjorn.andersson@linaro.org,
        broonie@kernel.org, devicetree@vger.kernel.org,
        judyhsiao@chromium.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, perex@perex.cz, plai@codeaurora.org,
        robh+dt@kernel.org, rohitkr@codeaurora.org,
        srinivas.kandagatla@linaro.org, tiwai@suse.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2021-12-07 07:35:34)
> This patch series is to split lpass variant common pin control
> functions and SoC specific functions and to add lpass sc7280 pincontrol support.
> It also Adds dt-bindings for lpass sc7280 lpass lpi pincontrol.

What ensures that the LPI pins are being muxed out on the pads of the
SoC? There's the eGPIO support in the tlmm driver, which seems to let us
override the LPI pins and mux them away from this pinctrl device to the
tlmm pinctrl device. Should this driver be requesting gpios from tlmm
and making sure they're not muxed away to tlmm so we don't have
conflicts?
