Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8925B2808DA
	for <lists+devicetree@lfdr.de>; Thu,  1 Oct 2020 22:55:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727807AbgJAUzZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Oct 2020 16:55:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726515AbgJAUzZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Oct 2020 16:55:25 -0400
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD911C0613D0
        for <devicetree@vger.kernel.org>; Thu,  1 Oct 2020 13:55:23 -0700 (PDT)
Received: by mail-lf1-x141.google.com with SMTP id 197so246477lfo.11
        for <devicetree@vger.kernel.org>; Thu, 01 Oct 2020 13:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=sUwVY0ru0oyk2oPMYDEmbC7f2EjJTmP8EUJlYRwwpWM=;
        b=ikkeOggLJzhsaIG6/WpDai/9snxuJME6FU3cGMoEu3m4riO09XGSgiRJ5SNNeNN01y
         FzluLXjTfzsSB5TXUySv0F+GB9U/5iA9lwoVWhY5q9IHZSLQZBzZG6LQ3j70JbNV52rT
         PJ4XrxA6XoobYH4NfzG/+/fX4VHxsmsrXw2jpQgiB/1gc80IKh3uad4zELSO3qoHK8KD
         1wF9ZDv8y+H56PswjJDWWVMwZ4e6PUGuor/5suGMSljlwsqfvLIfpCHI402lyeI2t9JD
         RP43rIEYyURBnsrV5okEnF7sA8MjahdeyyY2sswbWzLa3eQWe21X83OAo7A07JD9+42K
         QsPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=sUwVY0ru0oyk2oPMYDEmbC7f2EjJTmP8EUJlYRwwpWM=;
        b=DeYo+t/T+ttBiNXroBadXtF5BmKS8YA2Eb4dHYbsEO0YTzyf94dl97dZvJnR53TjKE
         pw3zOp9rKacdB6fueeXlvrbR25H127ebT6m5F+9o5fIBg2FEaGgWBt3QInyfJHNyRXj+
         fRZgnvVY0vVc94AAwC+LYvAf/wzMrp7yWcWWJBMMKYva833bRcih/k3DkyVuzVaV7bU/
         Eief9S/Pnop1BQ+oFlaozbIEBOOtdEUoUGongzKjAZ51A5rPHTUS4YTkCIGV/4POUQ2Z
         7iRHrfvfAXLe6IJPYfP4hUv3TxvLH5ephBWxMrw9ohJ9LHBq5DIBMOCsxJexx74SB88t
         fzxA==
X-Gm-Message-State: AOAM531TCALU9gom/GZSAY47H6s+RfPtgmvWHrn4Vp+ignXpWNATjd0v
        HcoXIcawzQIIK7cIuoTxy96Ph4q+HlQTECvfaU84fw==
X-Google-Smtp-Source: ABdhPJxHgvnEw1qIpL9dhNt4c74dN8Dj54fD6Z6tXTayCX3G3lAF2dtrooXJ4r18IZIvt2xh0I3s1wp9qfCyBDIiZM0=
X-Received: by 2002:a19:1c8:: with SMTP id 191mr3084299lfb.585.1601585722134;
 Thu, 01 Oct 2020 13:55:22 -0700 (PDT)
MIME-Version: 1.0
References: <20201001200943.1193870-1-robh@kernel.org>
In-Reply-To: <20201001200943.1193870-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 1 Oct 2020 22:55:10 +0200
Message-ID: <CACRpkdbz6jDN_NYrCDAHsWLyhimUstjf3q2kuQHMgE_HcepCLg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: Add missing root node constraint for
 board/SoC bindings
To:     Rob Herring <robh@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Baruch Siach <baruch@tkos.co.il>,
        Linus Walleij <linusw@kernel.org>,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Anders Berg <anders.berg@lsi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 1, 2020 at 10:09 PM Rob Herring <robh@kernel.org> wrote:

> Board/SoC top-level compatible bindings should be constrained to the root
> node. Add the missing constraints that the node name must be "/".
>
> Cc: "Andreas F=C3=A4rber" <afaerber@suse.de>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Baruch Siach <baruch@tkos.co.il>
> Cc: Linus Walleij <linusw@kernel.org>
> Cc: Imre Kaloz <kaloz@openwrt.org>
> Cc: Krzysztof Halasa <khalasa@piap.pl>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Jonathan Hunter <jonathanh@nvidia.com>
> Cc: Dinh Nguyen <dinguyen@kernel.org>
> Cc: Anders Berg <anders.berg@lsi.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Makes sense.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
