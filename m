Return-Path: <devicetree+bounces-323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAB77A11F7
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 01:43:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5EDC4281C8C
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 23:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22E49D314;
	Thu, 14 Sep 2023 23:43:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BF9E33F2
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 23:43:06 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FE881FE8
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:43:05 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5029e4bfa22so2598686e87.3
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1694734981; x=1695339781; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ffsw5m1PXl5CYPaF5hVOzi1zPkWams0dilWKJC5stN8=;
        b=DjfdP2fDy33pXGkF8w8hzVoBxQ784Goq5gZH/8csHrwMP/lJzY0/rFVCkvz5P03Juu
         rLyh0gQmDE6O1Fn2Sqdgjnf+k1tqBy4tbKhedLL5ZfTzEMFmvlc1NY7y6CMtKG7VkZKX
         JbEK3g/UPh2MjAdXeypR3OAkkvLibsXgImDWw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694734981; x=1695339781;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ffsw5m1PXl5CYPaF5hVOzi1zPkWams0dilWKJC5stN8=;
        b=OwdBtb1i4ERshSEAHIJ0H1RPp5mGx2isBijEZUe8FH0PKZQjvCXsf74ewYf4Y9VA1r
         2jKGu6auwrcFh2CNlxMOOmv+XC38JTIoCWeo6UidH7IXZBndxxAGMPcwDhNiDFpRaijt
         kGZTVsn/vFrVA7+y+LviP30nSV4vq0YXOzi6ZBFfAyQqvcIx2wS5Oi2wiA+uP6e+f8za
         FGdFQxYKv321RWzzqwFCpt253XlVZNMEBvl1igA0I4fjscBBdjMAZdN9jcpHh5kU+e5H
         Swl5UnC4EaizAlBQvNitFAccYAebb1AUK8Y/YLVho621auc4z09P9QzN73v7bIQJuycN
         f5KQ==
X-Gm-Message-State: AOJu0YyzEF92Eh2yRt9w2BSm7Kina1Qqca+CkBE/2cXGJCuuoafjsygq
	oxfXM3KVtY9e8yT/YBf77u93KH1QORcdMDvxxibQmQ==
X-Google-Smtp-Source: AGHT+IHy/41EzzRWaFnc+OW/PJBtduBHS/oKcanuPM/6v+gMM5mhUgxTQAch3wiIdojuOcycR1QnCw==
X-Received: by 2002:a05:6512:1089:b0:4ff:7e80:4f1d with SMTP id j9-20020a056512108900b004ff7e804f1dmr148183lfg.57.1694734980977;
        Thu, 14 Sep 2023 16:43:00 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com. [209.85.128.43])
        by smtp.gmail.com with ESMTPSA id ox11-20020a170907100b00b00997c1d125fasm1650890ejb.170.2023.09.14.16.42.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 16:42:59 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4047c6ec21dso1255e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:42:59 -0700 (PDT)
X-Received: by 2002:a05:600c:1daa:b0:3fe:f32f:c57f with SMTP id
 p42-20020a05600c1daa00b003fef32fc57fmr70422wms.0.1694734979632; Thu, 14 Sep
 2023 16:42:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230727171750.633410-1-dianders@chromium.org> <20230727101636.v4.11.Ia06c340e3482563e6bfd3106ecd0d3139f173ca4@changeid>
In-Reply-To: <20230727101636.v4.11.Ia06c340e3482563e6bfd3106ecd0d3139f173ca4@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 14 Sep 2023 16:42:47 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Ued9suf95ub1-rftO2Ffx_Rwv7XvAf7yX-s7djO889+Q@mail.gmail.com>
Message-ID: <CAD=FV=Ued9suf95ub1-rftO2Ffx_Rwv7XvAf7yX-s7djO889+Q@mail.gmail.com>
Subject: Re: [PATCH v4 11/11] arm64: dts: qcom: sc7180: Link trogdor
 touchscreens to the panels
To: Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Sam Ravnborg <sam@ravnborg.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: linux-arm-msm@vger.kernel.org, yangcong5@huaqin.corp-partner.google.com, 
	devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>, hsinyi@google.com, 
	Chris Morgan <macroalpha82@gmail.com>, linux-input@vger.kernel.org, 
	cros-qcom-dts-watchers@chromium.org, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 27, 2023 at 10:19=E2=80=AFAM Douglas Anderson <dianders@chromiu=
m.org> wrote:
>
> Let's provide the proper link from the touchscreen to the panel on
> trogdor devices where the touchscreen support it. This allows the OS
> to power sequence the touchscreen more properly.
>
> For the most part, this is just expected to marginally improve power
> consumption while the screen is off. However, in at least one trogdor
> model (wormdingler) it's suspected that this will fix some behavorial
> corner cases when the panel power cycles (like for a modeset) without
> the touchscreen power cycling.
>
> NOTE: some trogdor variants use touchscreens that don't (yet) support
> linking the touchscreen and the panel. Those variants are left alone.
>
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
> (no changes since v1)
>
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi        | 1 +
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi      | 1 +
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi         | 1 +
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi        | 1 +
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi | 1 +
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi   | 1 +
>  6 files changed, 6 insertions(+)

FWIW, this old patch could land any time. All the earlier patches in
the series have landed.

-Doug

