Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 39C5871AC0
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 16:50:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388302AbfGWOuH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 10:50:07 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:42631 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388293AbfGWOuH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jul 2019 10:50:07 -0400
Received: by mail-pf1-f193.google.com with SMTP id q10so19261330pff.9
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2019 07:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:subject:to:cc:from:user-agent:date;
        bh=qFGyu2e0qPfrwHi7OXbbKa0ySxd874e1ZB3q+1beBgk=;
        b=B/1NfqRknQzOA9lNUKMjw8bei1USgk+jf8C7LimjmeeuY/nXbOwY9qKGdqr1xB0Ep1
         fF+uGyD6SZT5kkwDHqgcI+JJucEKJ2eELk1VJumWUxl26Nnj5D2cJF8WjuYyVe4s8NF3
         VlozWZllNLHU0k5+JPfpJ+vslVBC70FPXvsr8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:subject:to:cc:from
         :user-agent:date;
        bh=qFGyu2e0qPfrwHi7OXbbKa0ySxd874e1ZB3q+1beBgk=;
        b=gSM4oSWJkHMXBP2YJ3S+aoVN1srJW2wmvADb3RsX/9mMjutol3/jKzM/YT1jsDmmnG
         Wvnj0fs6lvqO7PEJZk3F3RCfZFLtSA6iWtJifxHnzTxs7fWb5KY9qLipQb5Zyi2jotg9
         BbCZqEtYwqGaemJKGNteDrBYrbqD+VOQpNdJ+CLktK9mh6BH7ukewiRUANYcbvuXz+cC
         v9mGU73asIUK28xUrU5Henkv1aLM59aJZ27JCkN/ICKr8alWF2qvzffMNPcWmpbAL5kA
         tEV+RvDuoSVK90CqFSy4CCJvqwvw4ybA3Z2EcTQW/f8jEn2bwkqIPPulSBgsrXIbJTGK
         lB9A==
X-Gm-Message-State: APjAAAUdw8g9frcXTSR39DoTF2BcPSHcU4SDKJDox9hWkv509wRU9/gw
        ZM40hrDg1Wi8ylTDfl7DfyEb0A==
X-Google-Smtp-Source: APXvYqzh3JlVXvMXshU7/BGzt6pys4NOV2ew9Hhpy6X+ywpiQ45vC0nwZXvmBT2O3iv2LcxoEYem+A==
X-Received: by 2002:a63:eb56:: with SMTP id b22mr77607662pgk.355.1563893406340;
        Tue, 23 Jul 2019 07:50:06 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id w2sm36341678pgc.32.2019.07.23.07.50.05
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 23 Jul 2019 07:50:05 -0700 (PDT)
Message-ID: <5d371e9d.1c69fb81.8d9f4.1ac0@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190722123422.4571-2-vkoul@kernel.org>
References: <20190722123422.4571-1-vkoul@kernel.org> <20190722123422.4571-2-vkoul@kernel.org>
Subject: Re: [PATCH 1/5] arm64: dts: qcom: sdm845: Add unit name to soc node
To:     Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date:   Tue, 23 Jul 2019 07:50:05 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Vinod Koul (2019-07-22 05:34:18)
> We get a warning about missing unit name for soc node, so add it.
>=20
> arch/arm64/boot/dts/qcom/sdm845.dtsi:623.11-2814.4: Warning (unit_address=
_vs_reg): /soc: node has a reg or ranges property, but no unit name
>=20
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/q=
com/sdm845.dtsi
> index 601cfb078bd5..e81f4a6d08ce 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -620,7 +620,7 @@
>                 method =3D "smc";
>         };
> =20
> -       soc: soc {
> +       soc: soc@0 {

This is kinda sad, but ok. Maybe you can apply this fix to at least all
the qcom boards then.

>                 #address-cells =3D <2>;
>                 #size-cells =3D <2>;
>                 ranges =3D <0 0 0 0 0x10 0>;
