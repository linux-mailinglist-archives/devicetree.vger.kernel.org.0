Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD7A73E05EB
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 18:28:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237619AbhHDQ2y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 12:28:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237610AbhHDQ2x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 12:28:53 -0400
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5653C0613D5
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 09:28:40 -0700 (PDT)
Received: by mail-oo1-xc31.google.com with SMTP id s21-20020a4ae5550000b02902667598672bso615640oot.12
        for <devicetree@vger.kernel.org>; Wed, 04 Aug 2021 09:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=YJl9Dp+HFALeJtquI91ykNZTzDaqiOMR/BEIZraugLA=;
        b=NPi/wThKhegJOv29TATNg7YLUc62HzWzyI2P8DDoUHEVYP50DKPf0UFgqbYg04wAVa
         mR0VWfpI4l5VUHr4rF74AcUAW/nEeFKdFNIMi313/NnkUHuRNBtNReY9S6ndzY0wm/tG
         SSvTksJUHIqUig9jPvfe9LuPn2DebrvL9+6uw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=YJl9Dp+HFALeJtquI91ykNZTzDaqiOMR/BEIZraugLA=;
        b=EIV/25bZUtdP8LFRCfZUeDoXifPfgLgUJH4oS4uJisAQ07a8WQcgAN7N+BwbASFRSH
         +rAWyAwWG/Im6iCaiINrAfsLh46hwv+D1RaAmt1DfPGwcpUlfANaHrbtzPhvfl3TZ2hW
         cU1THh7KWt5L1Re4mWNSVT6iI+fL52CFayO+PgrcbQqHjRazpb7pgzWzp5P1v5YCzPZs
         2HFcOGfNX7Xb6+0qa6REgn3SwrOd712q9+DvjEgcSWxy3YDFmgvVK2sSIIVOw6V/gWQx
         wJdjgc+bvFnpFUGxjec4W23bPCxrQFx3nnh8A+FTExxqZ/Ldw9ynw8291bpT2b0AdjLP
         4GFA==
X-Gm-Message-State: AOAM530Pp38Tzw9b2XoKNHPqzARSXJHImAcAqEOXUMzcJ+Ajtua8ODFs
        /p508cmbryO8Y1VVc5EI/2ILcgFs0L1tDU6D893WmA==
X-Google-Smtp-Source: ABdhPJzyWPBPVIygrEAq4SFdclm9lnLtKV1Qk4UcANBrV40RTjaxXlxoUlMUX5rreE2sq2LD6udGEHf3JIMbKuKRrGY=
X-Received: by 2002:a4a:9783:: with SMTP id w3mr301841ooi.80.1628094520323;
 Wed, 04 Aug 2021 09:28:40 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 4 Aug 2021 09:28:39 -0700
MIME-Version: 1.0
In-Reply-To: <1628082199-17002-2-git-send-email-rnayak@codeaurora.org>
References: <1628082199-17002-1-git-send-email-rnayak@codeaurora.org> <1628082199-17002-2-git-send-email-rnayak@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 4 Aug 2021 09:28:39 -0700
Message-ID: <CAE-0n53b5XEc7gctkKPKrBcZo=2rbY5Stt_FQ0E_XWRQ7RuDrg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: qcom: Document qcom,sc7280-idp2 board
To:     Rajendra Nayak <rnayak@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, skakit@codeaurora.org,
        konrad.dybcio@somainline.org, dianders@chromium.org,
        mka@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2021-08-04 06:03:18)
> Document the qcom,sc7280-idp2 board based off sc7280 SoC,
> The board is also known as piglin in the Chrome OS builds,
> so document the google,piglin compatible as well.
>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
