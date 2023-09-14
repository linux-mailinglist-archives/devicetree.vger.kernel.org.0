Return-Path: <devicetree+bounces-321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2777A11E8
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 01:37:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BD52281C21
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 23:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5374BD308;
	Thu, 14 Sep 2023 23:37:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5AA833F2
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 23:37:50 +0000 (UTC)
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9AC61FE5
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:37:49 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-522bd411679so1890667a12.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1694734666; x=1695339466; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WUQ7K1Uj3M2Ku8c5LZFJY/v14ESPAzqXsk3sQ7d9n6g=;
        b=NlPDxEu4vgoUUPb/PZgTe/yE4dJpWrVZo5Zud7HsaYLLMqDIqZCOlwkC7NUf0/LGOl
         CvH99b1NuCsTPaRvo/cmNR5gJTMvdMP3iMsLEwIke5297JsI3umIWgrhLEWh3CEOfaPy
         5NC2Du6w6iFRylTSrEUn5iAEqXYs9ErZuTreQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694734666; x=1695339466;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WUQ7K1Uj3M2Ku8c5LZFJY/v14ESPAzqXsk3sQ7d9n6g=;
        b=j1RwOcc/BVX7mZPPLxl1yD8PdNx2yx5U+xCRkK0bnXMS4/R2KLNMvJ1AtmIlVauoUA
         NcVl2JKnJO/BFRvWPrJoPxwZj2TTOdUvVjN/X55y71+ykGI3dMWuQPNPhyHAAu/CFb9B
         /1tw809WvWuG7PPIBy50gs8XkqFw0BE/BYwN61D/Tvm1Igo0Z4PNkfgfZUwHom1PM+Py
         dqHJv98H96QP2emDyP+iy4ewr8VO5L9lMC/F2ZsI3HxSdtNZK7ViqG/sCS36ZmShkiFs
         o37mWcDhTZx+gnlr/OrbzGFkQnjHcJUuoYLAuZsCk/HOXTrzFxB+cPLlcjwPoY8TbX2t
         cLQQ==
X-Gm-Message-State: AOJu0YyI6AAt87cT7+IjI9BKb/g9gmJzeM7fwr4xuaEItPPM8XQFWncR
	2/E/IDkY7wCWhRSHriYMZ/cwGcxbjQRg0xvSfZBHNg==
X-Google-Smtp-Source: AGHT+IE0yIou/i8E57RU/i3Os+YIjQYz3C2/Ji1N+565e1WFd2Mp9vMScmrqX4RsA1u6WaedR95L2A==
X-Received: by 2002:a05:6402:128f:b0:523:100b:462b with SMTP id w15-20020a056402128f00b00523100b462bmr20797edv.5.1694734665624;
        Thu, 14 Sep 2023 16:37:45 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id d25-20020aa7d5d9000000b005288f0e547esm1504861eds.55.2023.09.14.16.37.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 16:37:45 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4047c6ec21dso885e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:37:45 -0700 (PDT)
X-Received: by 2002:a05:600c:6027:b0:3fe:eb42:7ec with SMTP id
 az39-20020a05600c602700b003feeb4207ecmr35638wmb.1.1694734664702; Thu, 14 Sep
 2023 16:37:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230816112143.1.I7227efd47e0dc42b6ff243bd22aa1a3e01923220@changeid>
In-Reply-To: <20230816112143.1.I7227efd47e0dc42b6ff243bd22aa1a3e01923220@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 14 Sep 2023 16:37:29 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U4jmFcZRP0HoyOFbsBwahvsC8xiTkgQX6FhisVw8ubNg@mail.gmail.com>
Message-ID: <CAD=FV=U4jmFcZRP0HoyOFbsBwahvsC8xiTkgQX6FhisVw8ubNg@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sc7180: Move trogdor rt5682s bits
 to a fragment
To: Bjorn Andersson <andersson@kernel.org>
Cc: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>, 
	Andy Gross <agross@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bjorn,

On Wed, Aug 16, 2023 at 11:23=E2=80=AFAM Douglas Anderson <dianders@chromiu=
m.org> wrote:
>
> Several trogdor boards have moved from the older rt5862i to the newer
> rt5862s, at least on newer revisions of boards. Let's get rid of the
> dts duplication across boards and promote this to a fragment.
>
> Note: The old boards used to override the "compatible" in the "sound"
> node with the exact same thing that was in "sc7180-trogdor.dtsi"
> ("google,sc7180-trogdor"). I got rid of that.
>
> This is validated to produce the same result when taking the dtbs
> generated by the kernel build and then doing:
>
>   for dtb in *trogdor*.dtb; do
>     dtc -I dtb -O dts $dtb -o out/$dtb.dts;
>   done
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
>  .../boot/dts/qcom/sc7180-trogdor-kingoftown.dts | 13 +------------
>  .../dts/qcom/sc7180-trogdor-pazquel360.dtsi     | 13 +------------
>  .../dts/qcom/sc7180-trogdor-rt5682s-sku.dtsi    | 17 +++++++++++++++++
>  ...180-trogdor-wormdingler-rev1-boe-rt5682s.dts | 13 +------------
>  ...180-trogdor-wormdingler-rev1-inx-rt5682s.dts | 13 +------------
>  5 files changed, 21 insertions(+), 48 deletions(-)

If you agree, it would be a wonderful time to land this patch now.
Please let me know if there is anything outstanding you want me to
change.

NOTE: if it were me, I'd land _just_ patch #1 in this series (AKA
${SUBJECT} patch) and skip patch #2. I don't mattery a ton either way,
but it seemed like Konrad agreed with me that the benefits of patch #2
were questionable and, unless someone loves it, I vote for less churn
instead of more churn. :-P

-Doug

