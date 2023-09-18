Return-Path: <devicetree+bounces-1047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FD97A476E
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 12:44:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62D1728172D
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 10:44:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 241E738FA2;
	Mon, 18 Sep 2023 10:44:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B0D63B6
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 10:44:41 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DE38100
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 03:44:38 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50306b2920dso1858345e87.0
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 03:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695033876; x=1695638676; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IGkdCcI18B7hgDeo6RzVWYQ9sD6aoucVKvw6M/xbnDU=;
        b=H1gsuGrvAXb1M4YT6F93VgqWxgpsLrwuYs2tgfKd1JBXnmcfJdnCnPkGnn8SCJp/VY
         h3FaKURPMH+SC4cDX+rLL4cCMzgbnMxDDqeoBitiQkJ7giBYI6k/51im3O7GJ6QrH0JP
         IIRbz8e567Omq9mDQL71ZGJgsjbhfD+CwBME4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695033876; x=1695638676;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IGkdCcI18B7hgDeo6RzVWYQ9sD6aoucVKvw6M/xbnDU=;
        b=Eau7pAV7Tzkg93QB0mlhVL0vZ6dDwJkkt5riev5yPWnEf/ez6J8od7rJMRrz56Xic5
         ImnLrkVrQSD3Chb1cNMbYYHaOz5mayqxoEnqyyMQIwNWnnvYC051KshIMflku9a4czil
         4V8Uch1MH+fVM05W+7E5sb1yz7X1vSz1pzZCxTQ4Vxb96jUP4AFnUm4ACeqgO1cgKTcK
         YnkP1wjVKk6cFnddB9UY38HvJKvbpzlAbcfDCYhVLM+h2k/IVFaP9tPFWx7Qp3abAAgY
         RU1sxJi5emKVfSKhhktvwJKsJSF8aQ7VNtkYDcz4U/U+TBTXvDDQPS87L76t9x568SZt
         uwAg==
X-Gm-Message-State: AOJu0YzK3aV9Si2H99bR7AZR6MDMeYPAHJ9eGf361ULpVG+WwrWXHkIR
	CRyRJPeCAbCFdsxYq7BlOv/ZNMYoyOi4BmbxMKmvXg==
X-Google-Smtp-Source: AGHT+IGIg/CJtdEmuQQHM8i7T4H6aOlEi6CRY6h6lVig1fzQNxD9WQD0b+EvqCe7Iv5e6XJyFKEGdbI+7C1+JpTi2ro=
X-Received: by 2002:a05:6512:1599:b0:501:b872:8c6c with SMTP id
 bp25-20020a056512159900b00501b8728c6cmr4185650lfb.27.1695033876680; Mon, 18
 Sep 2023 03:44:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <ZQH2dG+l/dONUsyi@p14s> <20230918103141.126271-1-laura.nao@collabora.com>
In-Reply-To: <20230918103141.126271-1-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 18 Sep 2023 18:44:25 +0800
Message-ID: <CAGXv+5Esi=G0xgkP=+Bhf39Xs3gMN1PBzarxKBKduOjgwDijAA@mail.gmail.com>
Subject: Re: [PATCH v17 00/14] Add support for MT8195 SCP 2nd core
To: Laura Nao <laura.nao@collabora.com>, tinghan.shen@mediatek.com, 
	angelogioacchino.delregno@collabora.com
Cc: mathieu.poirier@linaro.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, andersson@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-remoteproc@vger.kernel.org, matthias.bgg@gmail.com, robh+dt@kernel.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 18, 2023 at 6:32=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> > Other than patch 2 and 14, I have applied this set.  The remaining patc=
hes will
> > have to be resent to Matthias.
>
> > Thanks,
> > Mathieu
>
> Hello,
>
> With patch 2 missing, the SCP is not probed correctly anymore on asurada =
(MT8192) and kukui (MT8183). The mtk-scp driver relies on the existence of =
the `cros-ec-rpmsg` node in the dt to determine if the SCP is single or mul=
ticore. Without patch 2 the driver wrongly assumes the SCP on MT8192 and MT=
8183 are multicore, leading to the following errors during initialization:
>
> 10696 04:33:59.126671  <3>[   15.465714] platform 10500000.scp:cros-ec: i=
nvalid resource (null)
> 10697 04:33:59.142855  <3>[   15.478560] platform 10500000.scp:cros-ec: F=
ailed to parse and map sram memory
> 10698 04:33:59.149650  <3>[   15.486121] mtk-scp 10500000.scp: Failed to =
initialize core 0 rproc
>
> The issue was caught by KernelCI, complete logs can be found here:
> - asurada: https://storage.kernelci.org/next/master/next-20230914/arm64/d=
efconfig+arm64-chromebook+videodec/gcc-10/lab-collabora/baseline-nfs-mt8192=
-asurada-spherion-r0.html
> - kukui: https://storage.kernelci.org/next/master/next-20230914/arm64/def=
config+arm64-chromebook+videodec/gcc-10/lab-collabora/baseline-nfs-mt8183-k=
ukui-jacuzzi-juniper-sku16.html
>
> Reporting the issue so that patch 2 and 14 can be resent and merged soon.

This being a backward incompatible DT binding change, maybe we should rever=
t
the node name change. Or, the driver could simply count the number of child
nodes that have the "mediatek,rpmsg-name" property, which is required.

ChenYu

