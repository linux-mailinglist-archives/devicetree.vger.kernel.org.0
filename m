Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC572325725
	for <lists+devicetree@lfdr.de>; Thu, 25 Feb 2021 20:57:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233276AbhBYT4a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 14:56:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234274AbhBYTyl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 14:54:41 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47B45C06174A
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 11:54:01 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id o3so7297423oic.8
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 11:54:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=ubftFICBe+xc2b6VsURDalW/YgMMEqag6pD4dPy9Cmk=;
        b=V4g3JeNbnXeiPdrtVQSaYRHzjTOncjyBfnOH1o31pN7qa8HwCmU2xTayjnmZ4zFs4g
         parcxDdm7uY2Ckg8WdE8nhgEa0ksJbGlCbQjIz1+7vtZDmYOBwxsxo4Nxe478LLusFWV
         294g4R/cH1FJlYsTQNBMmzNu3LvO5nIgE+6Pw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=ubftFICBe+xc2b6VsURDalW/YgMMEqag6pD4dPy9Cmk=;
        b=A+t3ejv5nRYf2uXRA52nU109uRwiORX1Ex9/HC/WDl72zjlB075N+T4JyhsWZg0+NU
         R4iH+NGciMy4ly5rgayiTwayGGd5H8our6J4id/UQdobMRiTCKiqg2YFSv/rTX4ODY9z
         ZuWIWm+FvL+5wcR0uBnA1nOUieI963ESuB33ZTVJlpRgttiOHc6cciSW3UkcjhQbpFWb
         SmpFlFGtrcpoe6sxJK0SRc7NIFLKj7I5ee+YwHJNA0T6m5SM6K0VypG+wmC72BHOVD3B
         p1A4Cq0x5+Frn8+hkbbTlg+Edzu7IGMYqUqZqcBj48aIiDnBqBdbqWmTWaCDu4DTXOOB
         nhdg==
X-Gm-Message-State: AOAM533rnniG30ryQkdHPeGu5S1ryjx0ACwvC93NuKlN0inLY6XXgO4Q
        W8NtUWCuwS2y5rugu3CS/hWF5rhQzAel8A==
X-Google-Smtp-Source: ABdhPJxZl+EMCqOQe15CxSOuRIi5HkysaDzLib2jIeInqCJhPrGK1tbbURV3KCeOBZDlygJf+oL7Bw==
X-Received: by 2002:a17:90b:350b:: with SMTP id ls11mr19398pjb.166.1614282342610;
        Thu, 25 Feb 2021 11:45:42 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:b942:93a8:e68d:5a90])
        by smtp.gmail.com with ESMTPSA id n6sm7173925pfo.201.2021.02.25.11.45.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 11:45:42 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210225103330.v2.1.I6a426324db3d98d6cfae8adf2598831bb30bba74@changeid>
References: <20210225103330.v2.1.I6a426324db3d98d6cfae8adf2598831bb30bba74@changeid>
Subject: Re: [PATCH v2 1/4] arm64: dts: qcom: sc7180: trogdor: Add label to charger thermal zone
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthias Kaehlcke <mka@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
Date:   Thu, 25 Feb 2021 11:45:40 -0800
Message-ID: <161428234069.1254594.13177534882874278728@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Matthias Kaehlcke (2021-02-25 10:33:34)
> Some revisions of trogdor boards use a thermistor for the charger
> temperature which currently isn't supported by the PM6150 ADC
> driver. This results in bogus temperature readings. Add a label
> to the charger thermal zone to facilitate disabling of the thermal
> zone on affected boards.
>=20
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
