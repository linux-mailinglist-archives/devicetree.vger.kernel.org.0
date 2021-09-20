Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0838A412A5D
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 03:39:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230315AbhIUBkf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 21:40:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231808AbhIUBih (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 21:38:37 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7A0BC1260D4
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 12:44:38 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id c6-20020a9d2786000000b005471981d559so3657201otb.5
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 12:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=A/kXMZfJhqt02ZS8GGmiL49TuAUrXKmTxuOnxlSxegU=;
        b=iKHw2zpvbPtXA2P0qsFHYJgm0jk1RJiQJTLnDf3OoKbn4Vvoz+J34laKYpXAHyqzG5
         c6XrpgLjq7/u6RZbPDTjQVL0okEkAeaZTQ4X7PONK5l+T/bJhQIAzbsmbyyxPM2Nn/kI
         MkOsBWLni6VwWwuwevv3hfecll8QDOkGNUYtM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=A/kXMZfJhqt02ZS8GGmiL49TuAUrXKmTxuOnxlSxegU=;
        b=A5otokDqIwA8LwChjyMRmS+L1V7pihvDgOU7P8raJEUkCmICMOriv4Gf5RJ2lKEuEP
         ixJE3UjwOWgmCOPTxgDRmBKyEsjkhOPxxQu6qS9OmhGEOUnFYOmOcDQbhS61la2xoFm9
         mRMA7y6lGHONsdgpxHnJ25+OaF3uQRWPt+lwbj9zHR05Dq8GxE6N/fCiuIPkClywv7r4
         IcO8tVitP75Sy/A8DPiU/Udoi+BKrYrR7ewT5uiGWsPmBZ3EjtI96xm8+qvSKRlitMyk
         IAsYuNN3oo7AntBody92syOIy6MnxBaL0iuVi2P1zYWhaW6N+yq7euxhzbNTjT2pdbzq
         OrJQ==
X-Gm-Message-State: AOAM530Jsr2G3vBPyTvU/ES5S42zZ4q2oKruPNnsIKadp/al4DO9k0d8
        GDb4Urymetwq1Q8AkbF/4pdvH3Bx1WVScmdEJKCdLQ==
X-Google-Smtp-Source: ABdhPJyqq0NHNKGjdhhgQelqooPrq6FF2LZaRIXFShWd5fjag4Kx6i4gemME+YY2Hq3J71L7khQN/6s0RHfdDLXyQhc=
X-Received: by 2002:a05:6830:1212:: with SMTP id r18mr21376104otp.159.1632167078302;
 Mon, 20 Sep 2021 12:44:38 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 20 Sep 2021 12:44:37 -0700
MIME-Version: 1.0
In-Reply-To: <1631872087-24416-7-git-send-email-rajpat@codeaurora.org>
References: <1631872087-24416-1-git-send-email-rajpat@codeaurora.org> <1631872087-24416-7-git-send-email-rajpat@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 20 Sep 2021 12:44:37 -0700
Message-ID: <CAE-0n52QhzuzXRe_DHDdMXpdP7osmHCTHUaKpyBCBkWMrn3Apg@mail.gmail.com>
Subject: Re: [PATCH V8 6/8] arm64: dts: sc7280: Configure uart7 to support
 bluetooth on sc7280-idp
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rajesh Patil <rajpat@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org, mka@chromium.org, dianders@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajesh Patil (2021-09-17 02:48:05)
> Add bluetooth uart pin configuration for sc7280-idp.
>
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
