Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5844415FE9
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2019 10:58:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726399AbfEGI6p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 May 2019 04:58:45 -0400
Received: from mail-qt1-f194.google.com ([209.85.160.194]:41327 "EHLO
        mail-qt1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726383AbfEGI6p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 May 2019 04:58:45 -0400
Received: by mail-qt1-f194.google.com with SMTP id c13so18099478qtn.8
        for <devicetree@vger.kernel.org>; Tue, 07 May 2019 01:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N4j8vIu2wMMo6UT4+kjIlyoObNO3WTbPl4WCu+/nidM=;
        b=ctTKjgV+zvGS9Gu1Me48lcXJj5NqtLOU2qUZfsGcBDnwCUXDVEdjcq3QLVxixOlQSa
         xDxe0j3pLX2v9kUw9PZ+P910lyFYWbJbJkIgwu+caLtqZ49bbGbcdHpr8qyqbT9Oy5rV
         ZfEOk3QiUo7CLg9q/N5n5gysIRNWmEcCZxpLQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N4j8vIu2wMMo6UT4+kjIlyoObNO3WTbPl4WCu+/nidM=;
        b=qQOqpC8m58/XyG0XZmNMSJhboM1qV+7n5DdDq6pWYudE6yFBveUK+saI+Yr1U35+cn
         T1bobPwBeXirkptIKiOq6Hxvkm1nTpoX6L8WKCGPoCj62xEdg8hx5if3J9xvTFVhw2iP
         pe8mGYQuFMXfzNkXrHwgvtvXtYmA5w5NK04GFnYHFTiVzz/zQR+cpf5GX2aEFWJsR4Wy
         pOIdleXWEPZoq5dNyRg+GIvnefZrLrpBIMTj6ifolc0RXKl0HmsDXttmy5IDGE/0ppKb
         0a6Mz4zeSsTbddo3dvt0DnARAUv5l4p/03ONLjleRYdhOt06C2hIAEqaRwjfC/i5hht8
         eGfQ==
X-Gm-Message-State: APjAAAVr7EW+Z22z7G+/aGyA4QxmWMb/sKmoNVO3lqSXy3e2ybEvog2S
        lI2qJeS5i6Hp/rHQlZvk14x99Uyd7bM8C3cU0S4y6g==
X-Google-Smtp-Source: APXvYqwh0Jp85DeTO2qBWgQsuEyExRB1yb+3NzYLBg178fUUMnHKuPVE2ZV5rt3C9hW9+lUMAdlXGFQiVeB/ea6x5qw=
X-Received: by 2002:ac8:3fe3:: with SMTP id v32mr24484207qtk.307.1557219524087;
 Tue, 07 May 2019 01:58:44 -0700 (PDT)
MIME-Version: 1.0
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com> <1556793795-25204-6-git-send-email-michael.kao@mediatek.com>
In-Reply-To: <1556793795-25204-6-git-send-email-michael.kao@mediatek.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Tue, 7 May 2019 16:58:18 +0800
Message-ID: <CAJMQK-hKoK1hfK+XJuyExxp3rDWY9py6j3_jwEMfVeJcYYM7XA@mail.gmail.com>
Subject: Re: [PATCH 5/8] arm64: dts: mt8183: Increase polling frequency for
 CPU thermal zone
To:     "michael.kao" <michael.kao@mediatek.com>
Cc:     fan.chen@mediatek.com, jamesjj.liao@mediatek.com,
        dawei.chien@mediatek.com, louis.yu@mediatek.com,
        roger.lu@mediatek.com, Zhang Rui <rui.zhang@intel.com>,
        Eduardo Valentin <edubezval@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 2, 2019 at 10:43 AM michael.kao <michael.kao@mediatek.com> wrote:
>
> From: Matthias Kaehlcke <mka@chromium.org>
>
> Evaluate the thermal zone every 500ms while not cooling and every
> 100ms when passive cooling is performed.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index 0b3294b..be879ac 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -370,8 +370,8 @@
>
>                 thermal-zones {
>                         cpu_thermal: cpu_thermal {
> -                               polling-delay-passive = <1000>;
> -                               polling-delay = <1000>;
> +                               polling-delay-passive = <100>;
> +                               polling-delay = <500>;
>
>                                 thermal-sensors = <&thermal 0>;
>                                 sustainable-power = <1500>;

Tested-by: Hsin-Yi Wang <hsinyi@chromium.org>
