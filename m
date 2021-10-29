Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3EA7F4402BD
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 21:02:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231304AbhJ2TFG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Oct 2021 15:05:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231346AbhJ2TFC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Oct 2021 15:05:02 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23E69C061714
        for <devicetree@vger.kernel.org>; Fri, 29 Oct 2021 12:02:31 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id t4so14699413oie.5
        for <devicetree@vger.kernel.org>; Fri, 29 Oct 2021 12:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=EIeddSJsPZI121c2mPaqy6ZvZdxoXoeG6NaJ61D0w1M=;
        b=UisHez+kJiclZMAv6xLKoK5fjzBq4k49HQiofS6cmr7jGlw30tCADu16izaFQ7J8AV
         0WtQdZzr3nuw/E4sLsP7xbpiPSVNTaaHQF+MZYSaATg2P1AJ1UiNHHZ1tbC4kOSjwtPB
         Otmmz03pVs1XCkTcDnBSozj3apy8h5v+fh8cE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=EIeddSJsPZI121c2mPaqy6ZvZdxoXoeG6NaJ61D0w1M=;
        b=PKa4xSyGIgVhvCVlDg556rN5rjwkC4MZUWVXZ6T+PEXqo5PCpP7TL/vZ5p2guf7arz
         k+mwwvTPp8RKFSQ1KglBrNLw3fL8D9YFzobHUk66MRHLBP3Wa4Lmd9jS9Dm/P9DmtkaR
         Q3wdwQw/dehUn1GGv0J077hkLEJwUn7Z3zWpj8m6EMXfPvtwkSXloXZC4rZwMfNR8oC0
         N1j6yKBjRgDT1AeCtQAjUhf9Muuxeo1HokMRFw9t1OtTi/aDz5jUm/C0/b1/hgNmge2L
         MAiiyk7Spme0ChiQzf6UUNJrVRPL14dvK06QjQ8GlK4UNvWZKNjw0N62X0A2Pyx9qxKo
         qe/A==
X-Gm-Message-State: AOAM531ztbfq5NpS8huf6JozXJYGX4ofYqt88aGB35X58MqEKsOzZWIh
        l/045PQiNIsbWwWutOsmmq1L4HhBC4lwf/g7baYscw==
X-Google-Smtp-Source: ABdhPJyiK8MkuApeXTUpQ6ZUVOnnEE5iHn2Q72Q/oRWZJi9mq8PDfSsGfQARn7TP8uoJHYvA1Nq2eF9CB/oAYVx+9o8=
X-Received: by 2002:a05:6808:2124:: with SMTP id r36mr9672695oiw.64.1635534150590;
 Fri, 29 Oct 2021 12:02:30 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 29 Oct 2021 14:02:30 -0500
MIME-Version: 1.0
In-Reply-To: <1635507893-25490-4-git-send-email-quic_c_skakit@quicinc.com>
References: <1635507893-25490-1-git-send-email-quic_c_skakit@quicinc.com> <1635507893-25490-4-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 29 Oct 2021 14:02:30 -0500
Message-ID: <CAE-0n50GS11KsO_5zZV_ETyiu6eO9e6RUW9vZSV-QEAM2xdrGQ@mail.gmail.com>
Subject: Re: [PATCH V3 3/4] arm64: dts: qcom: pm8350c: Add pwm support
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     mka@chromium.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, satya priya <skakit@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2021-10-29 04:44:52)
> From: satya priya <skakit@codeaurora.org>
>
> Add pwm support for PM8350C pmic.
>
> Signed-off-by: satya priya <skakit@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
