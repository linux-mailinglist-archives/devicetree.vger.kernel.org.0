Return-Path: <devicetree+bounces-322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1783F7A11F2
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 01:40:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6D5C1C20C40
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 23:40:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD947D313;
	Thu, 14 Sep 2023 23:40:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469EA33F2
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 23:40:04 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 329FF270A
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:40:03 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99c93638322so339082666b.1
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1694734799; x=1695339599; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=20RRzKZLtjTRYGrIOvHQDuGLhkZQtE0VsAgSgkickKw=;
        b=X3CqtgTg0BVcErNIMvmip/NxebPAVSTPbKyEMTgqALGxsvBtuDQESi9FAJa6dIfY0Q
         /VRn3aYWxrUaqLvZO4t6/x3RkK743XEt3HYWHBxnTb4yIFhhC8ux+73J1UQc6/lypTKH
         NnQmN0p4ZXhk4ovLxlxm3sxZDqj505tq76wS8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694734799; x=1695339599;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=20RRzKZLtjTRYGrIOvHQDuGLhkZQtE0VsAgSgkickKw=;
        b=qGZIDl/6w+W2iRj860DBMsdV9A8EhBvO6CQEWQOzsoDEF6KqZzYkAI9+xPFbenTTu3
         HIWGTI+4VUEY20WkTFwoDPQwUqKtmjSj0HnsVCt1teWQVwjUlpz44g1dRSa7Yg41JCuF
         K2IiuJRPr61UjF/g6oNI1iEoNSSgvukHM3JwYEPM6JrIIeny+eaqVjYFiJfa2p+wI+Ur
         kKeIyphuqOYK20HVsiyN/oUQVLdZibljeHqwsa5O6LfzLts5nmQhnhphRWnJHIXjThJV
         saPXMsB5EawR8noGcPzfaRbTNJMDqDRMASl2L+Y1YD2LiN/xzEhhBmt09ViRdcckCnod
         ISDQ==
X-Gm-Message-State: AOJu0Yz+euwoha+p9Krv/WCJ7ZwkYM8NUv9VkRKXQe3z8s2N9bwzhVRw
	1Sl/msB9EKwfqCpjI/wXaAua/kPnW2KNJLOdJyV89w==
X-Google-Smtp-Source: AGHT+IF+XQwTbhehUmZdEhrlg2fzE/NMvOleaQrpojuGq5RpKmQFlqEynqvrULr0kIIYac43Dr9ZiA==
X-Received: by 2002:a17:907:1c1e:b0:9a5:7dec:fab9 with SMTP id nc30-20020a1709071c1e00b009a57decfab9mr3763576ejc.9.1694734799754;
        Thu, 14 Sep 2023 16:39:59 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id mf13-20020a170906cb8d00b0099caf5bed64sm1607184ejb.57.2023.09.14.16.39.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 16:39:59 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4009fdc224dso15385e9.1
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:39:58 -0700 (PDT)
X-Received: by 2002:a05:600c:22d4:b0:3fe:ef25:8b86 with SMTP id
 20-20020a05600c22d400b003feef258b86mr64827wmg.4.1694734798662; Thu, 14 Sep
 2023 16:39:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230823071306.131373-1-sheng-liang.pan@quanta.corp-partner.google.com>
In-Reply-To: <20230823071306.131373-1-sheng-liang.pan@quanta.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 14 Sep 2023 16:39:46 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XUW+9F-gUV57bBYMn0wgM4Axr9MM5X8kBXoDekJo3AfA@mail.gmail.com>
Message-ID: <CAD=FV=XUW+9F-gUV57bBYMn0wgM4Axr9MM5X8kBXoDekJo3AfA@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] Add no-esim sku for sc7180-lazor family and new
 board version for audio codec ALC5682i-VS
To: Bjorn Andersson <andersson@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Andy Gross <agross@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, 
	Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bjorn,

On Wed, Aug 23, 2023 at 12:13=E2=80=AFAM Sheng-Liang Pan
<sheng-liang.pan@quanta.corp-partner.google.com> wrote:
>
>
>
> Changes in v6:
> - commit update, add dependent patch link
> - remove unnecessary symbol
> - sort out the order of properties
>
> Changes in v5:
> - rebased on patch moving rt5682s to a fragment
>
> Changes in v4:
> - combine pathc2 and patch3
>
> Changes in v3:
> - correct corresponding of new board and new sku
> - sort out the node order alphabetically
>
> Changes in v2:
> - add new entry rev9 with Parade bridge chip
> - correct newly create dts files
>
> Sheng-Liang Pan (2):
>   dt-bindings: arm: qcom: add sc7180-lazor board bindings
>   arm64: dts: qcom: sc7180: Add sku_id and board id for lazor/limozeen
>
>  .../devicetree/bindings/arm/qcom.yaml         | 31 +++++++++++++
>  arch/arm64/boot/dts/qcom/Makefile             |  5 +++
>  ...sc7180-trogdor-lazor-limozeen-nots-r10.dts | 29 ++++++++++++
>  .../sc7180-trogdor-lazor-limozeen-nots-r9.dts |  6 +--
>  .../sc7180-trogdor-lazor-limozeen-r10.dts     | 45 +++++++++++++++++++
>  .../qcom/sc7180-trogdor-lazor-limozeen-r9.dts | 10 ++---
>  .../dts/qcom/sc7180-trogdor-lazor-r10-kb.dts  | 23 ++++++++++
>  .../dts/qcom/sc7180-trogdor-lazor-r10-lte.dts | 27 +++++++++++
>  .../dts/qcom/sc7180-trogdor-lazor-r10.dts     | 19 ++++++++
>  .../dts/qcom/sc7180-trogdor-lazor-r9-kb.dts   |  4 +-
>  .../dts/qcom/sc7180-trogdor-lazor-r9-lte.dts  |  4 +-
>  .../boot/dts/qcom/sc7180-trogdor-lazor-r9.dts |  4 +-
>  12 files changed, 193 insertions(+), 14 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozee=
n-nots-r10.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozee=
n-r10.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r10-kb.=
dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r10-lte=
.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r10.dts

This patch series would also be keen to get landed. As mentioned in
the dts commit, it depends on the other patch I just pinged, AKA:

https://lore.kernel.org/r/20230816112143.1.I7227efd47e0dc42b6ff243bd22aa1a3=
e01923220@changeid

If there is something outstanding that needs to be changed, please yell! :-=
)

-Doug

