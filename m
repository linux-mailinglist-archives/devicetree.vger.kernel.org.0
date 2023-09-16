Return-Path: <devicetree+bounces-714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A4C7A2C01
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 02:31:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E38D61C22512
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 00:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A583FEC0;
	Sat, 16 Sep 2023 00:31:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C05F10EC
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 00:31:11 +0000 (UTC)
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 649E73ABF;
	Fri, 15 Sep 2023 17:20:11 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1a28de15c8aso1560452fac.2;
        Fri, 15 Sep 2023 17:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694823584; x=1695428384; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=335yQJsLhz9gpnjnvQNZ790fUhzVlFLLc9Gmojq1KMc=;
        b=U1qNzW8yf16hGsjZ6dpG013cHYgvcECzszgB97y4tvpB3v4MPn2YatUE93Fm/HNFUD
         HVba0C/fDhva4TPHgA7ZGwfNlVt8FxYDH1PVExEOKjaRW3AaI19/ppKzF0w+mNOYCaIU
         iHnRw238A8Ym7blL/4vJXj/6M+SiSXlgabGBen/dshVWK6otPOp0gMoQbDel/V+jPIZ3
         0WjNIv9Z5vQz+a5U7hOQhHkXQxBnzcTkoYr8LGfohqyV8M+4XbTavpq3iFTjU7IYg92C
         ss0rt5Qw/iFXrDO34XlDd2XWZ9EZQijyNTfPx9X6xqYkSn0cPzqMlf8kwJuHQbb56kGr
         +96Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694823584; x=1695428384;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=335yQJsLhz9gpnjnvQNZ790fUhzVlFLLc9Gmojq1KMc=;
        b=d5356egWK8G4KbCBAV3katXcqkXV74qIT9v+NkkAxilIt/n2bYwgGB85yJ/uhbCIoz
         lAO1wiv09bjRqN/SA2Th/3tbYZxd/DJfLBDkKbi1n9pGPmiImIE+Ws59KZv03XuNnQAO
         5GepMvWN5mDx/zpW75xsonjW28LW+2by+lcfvK3RFYvA4zfkD+Bo3v7ytFNlVOjGMZ9b
         ajCIafjRR6AiPdiw2Mf0vL20MZGXe2cPh4y2L8l85d3pIbEnbZuQpCyEfkdC/Pg2/Mnt
         SJACdqDaSev1h+xCKxXTQYT36fMVrbeOciN/h7Yfny4FMIFMtmEVi8Hu8MzjQcwLZOH/
         NCjg==
X-Gm-Message-State: AOJu0YzFrvKNOIUJ2WGH4xeOVC8YGFfhT194Fp07ONtphRPuOMlY0aXo
	jktFnHLTvA20IWgFKViUG309amfYGKCAOyyJWTg=
X-Google-Smtp-Source: AGHT+IE2qjYAtR6WucRzD4AoFdh957k5jPWnQdwAzSB18i2L6V+pD2Cf5pqk0qes8jxrU0yVcey63mfQibw0ohFigV8=
X-Received: by 2002:a05:6871:206:b0:1bb:583a:db4a with SMTP id
 t6-20020a056871020600b001bb583adb4amr3531688oad.44.1694823584531; Fri, 15 Sep
 2023 17:19:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230915070856.117514-1-wangchen20@iscas.ac.cn> <20230915-dill-gauze-922068730d7b@wendy>
In-Reply-To: <20230915-dill-gauze-922068730d7b@wendy>
From: Chen Wang <unicornxw@gmail.com>
Date: Sat, 16 Sep 2023 08:19:33 +0800
Message-ID: <CAHAQgRDjwai448hC8EATDDFX6aBcmfWvv+2huJoywxan1qYPcA@mail.gmail.com>
Subject: Re: [PATCH 00/12] Add Milk-V Pioneer RISC-V board support
To: Conor Dooley <conor.dooley@microchip.com>
Cc: linux-riscv@lists.infradead.org, conor@kernel.org, aou@eecs.berkeley.edu, 
	krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com, 
	paul.walmsley@sifive.com, robh+dt@kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, jszhang@kernel.org, guoren@kernel.org, 
	chao.wei@sophgo.com, xiaoguang.xing@sophgo.com, 
	Wang Chen <wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Regards,

unicornx

Conor Dooley <conor.dooley@microchip.com> =E4=BA=8E2023=E5=B9=B49=E6=9C=881=
5=E6=97=A5=E5=91=A8=E4=BA=94 15:26=E5=86=99=E9=81=93=EF=BC=9A
>
> Hey,
>
> On Fri, Sep 15, 2023 at 03:08:56PM +0800, Wang Chen wrote:
> > Milk-V Pioneer [1] is a developer motherboard based on SOPHON SG2042 [2=
]
> > in a standard mATX form factor. Add minimal device
> > tree files for the SG2042 SOC and the Milk-V Pioneer board.
>
> Cool, thanks for working on this.
>
> >
> > Now only support basic uart drivers to boot up into a basic console.
> >
> > The patch series is based on v6.6-rc1. You can simply review or test
> > the patches at the link [3]. Hope this series will be merged soon.
> >
> > Thanks
> >
> > [1]: https://milkv.io/pioneer
> > [2]: https://en.sophgo.com/product/introduce/sg2042.html
> > [3]: https://github.com/unicornx/linux-riscv/commits/milkv-pioneer-mini=
mal
> >
> > Emil Renner Berthing (2):
> >   dt-bindings: serial: snps-dw-apb-uart: Add Sophgo SG2042 uarts
> >   serial: 8250_dw: Add Sophgo SG2042 support
> >
> > Inochi Amaoto (1):
> >   dt-bindings: timer: Add Sophgo sg2042 clint
> >
> > Wang Chen (8):
> >   dt-bindings: vendor-prefixes: add milkv/sophgo
> >   dt-bindings: riscv: add sophgo sg2042 bindings
> >   dt-bindings: riscv: Add T-HEAD C920 compatibles
> >   dt-bindings: interrupt-controller: Add SOPHGO's SG2042 PLIC
> >   riscv: dts: add initial SOPHGO SG2042 SoC device tree
> >   riscv: dts: sophgo: add Milk-V Pioneer board device tree
> >   riscv: dts: sophgo: Add sophgo,sg2024-uart compatibles
> >   riscv: defconfig: enable SOPHGO SoC
> >
> > xiaoguang.xing (1):
> >   riscv: Add SOPHGO SOC family Kconfig support
>
> One thing on sending patchsets - you've not threaded this patchset,
> where each patch is a reply to the cover letter. This makes it more
> difficult to apply the series as a human & ~impossible for the
> automation to test correctly.
> Git should do this for you if run send-email on an entire directory,
> or you can pass the message-id of the cover letter with an argument.
> The first option is likely a lot easier for you...
>
> Thanks,
> Conor.

Conor, thanks for your input, I will correct the sending of patchsets
in next revision.

