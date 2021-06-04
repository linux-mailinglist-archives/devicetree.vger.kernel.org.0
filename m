Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33B8439C2FD
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 23:52:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229668AbhFDVyc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 17:54:32 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:34339 "EHLO
        mail-ot1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230041AbhFDVy3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 17:54:29 -0400
Received: by mail-ot1-f41.google.com with SMTP id v27-20020a056830091bb02903cd67d40070so7408408ott.1
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 14:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=dyM/pGSjOHd50Vg44ExyUz7raaakuo5RxeNcX2qCcbo=;
        b=Xp2syEfwS8n5MownjsGHoZZPEL0o7Dt/L3jsFzKaiqFI6dfI0YUJaNMM0JyW10GRbA
         NsxoUIr9alS+PHpSJnqfeth3/b7nJvJC3/0ctEMe5WWntY8qblH7oewDYynk30P3IPCD
         fPOqVBNxF9vNW9W6r6vcqXtod1x3Dl1gEMMK0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=dyM/pGSjOHd50Vg44ExyUz7raaakuo5RxeNcX2qCcbo=;
        b=e5B3E7w5s45d8tRBVSzCDkJNYP/EK5tJlptBuAMEyxO/RtxulfGt5rMTOMaEfyskSt
         59tyzbwq/LEC1mZlI3DPqVkqWJpGytHjtIlDBLRtA+zgXsUMx5ipWEtVmTwBNLEEofc6
         YBOORo28Jik83tFGt0Rj+rrl5iDsxMmDC42prdmYJZptVnJYaSRud6A/5V07U3pZJapH
         /VNdNNDee2Jp/esm0l052aQTwny2sCTdNYcwxAPQgDLvFmYiz9GhZxQmhPqxQTjmOHzO
         0enqu6X79mN1jzqbjvcefgwd0vTq/dekoSgdOi01oC+/Xdzh6ZAyeV2LOixpVIVhi3NQ
         pqEA==
X-Gm-Message-State: AOAM5319kTS93yPnPliLrxVtbhIsj8IkIsMczvovDemBdxon7/g5FLYi
        EexOr5RWMvFPch+MetbAnLVCCoe8BygT1PAo1teamg==
X-Google-Smtp-Source: ABdhPJzlROhW5qRUQJy+duE/Z3VHQar2kQt9G1VpCb+njSOjmrPV/nmcHDyQbIGDhGpVqYm3LL2bxveZ6eGMFMa1JW4=
X-Received: by 2002:a9d:18e:: with SMTP id e14mr5304003ote.34.1622843491053;
 Fri, 04 Jun 2021 14:51:31 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 4 Jun 2021 21:51:30 +0000
MIME-Version: 1.0
In-Reply-To: <20210603081215.v2.1.Id4510e9e4baaa3f6c9fdd5cdf4d8606e63c262e3@changeid>
References: <20210603081215.v2.1.Id4510e9e4baaa3f6c9fdd5cdf4d8606e63c262e3@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 4 Jun 2021 21:51:30 +0000
Message-ID: <CAE-0n50uU=zuU0KLY2XUvB2cH_MUvXo231wj4T6JdQDbda=TnA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: pm6150: Add thermal zone for PMIC
 on-die temperature
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Matthias Kaehlcke (2021-06-03 08:12:34)
> Add a thermal zone for the pm6150 on-die temperature. The system should
> try to shut down orderly when the temperature reaches the critical trip
> point at 115=C2=B0C, otherwise the PMIC will perform a HW power off at 14=
5=C2=B0C.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
