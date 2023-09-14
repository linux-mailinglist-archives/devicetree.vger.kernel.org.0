Return-Path: <devicetree+bounces-86-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE2379FBC0
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:17:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B8291B2095B
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 06:17:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B8CB20F8;
	Thu, 14 Sep 2023 06:16:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9048320EC
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 06:16:49 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 47030F7
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1694672207;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5HrkaNTsOJNvN14ax51kGi2IdMuBS6PxaLbOw0uKJTo=;
	b=UQBMVaDyzRFUj2rb6N6dPeat/GlOY3lNVaaTbQxm3ZxJjWlXrXlE86AX04bazCNTvWT6Ku
	gtpHjrZLDqe4CicF/SueA6oM+eBVxr2AX+sqqyg7t/F/qc899J1Tg/NxXTkzGz+Q5SqqMG
	uAXSNWpKEhy02i6+RYNb9K7eAbgnDos=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-517-og1fPtDpPyOfh9CjbHk24A-1; Thu, 14 Sep 2023 02:16:45 -0400
X-MC-Unique: og1fPtDpPyOfh9CjbHk24A-1
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-525691cfd75so121848a12.1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:16:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694672205; x=1695277005;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5HrkaNTsOJNvN14ax51kGi2IdMuBS6PxaLbOw0uKJTo=;
        b=kGRKHk72iv4EVljE0yi7M1p63jukNR3LgqjXRH5xfyl1ZM99TJDB1CJbv5ApeVsE2s
         1zHSj9DtKSXDWh64z9K9Ghj0sRUXmUAUXd1Q2XXCyfvukTlnGBjsHFbRX8Im2VkXJP4W
         y03cQu+drKKU34EZMgoDszfhlsWK/LAQPuJ54A3FtOntHMDZ9z9O8lH0l/u+zPO0x6zw
         Ps4AlxZLm1ugeLi32s7V8Hx7cInLKzkeV1gIp2uR5rnD/N4nyDKzDsQY1k3qyZ0t2aJD
         8o9zfhd2Q90biXjYpILG/sLPJzuCNMkvM4KC9Yncy42E8eE6gLLFPUCDL7fOAQQxYnXh
         6Ruw==
X-Gm-Message-State: AOJu0YxpBLhRxYSzDh9d7LMU/z/98/NMGIm66yugiH0FLvqaM38hvxl1
	RUSyGsTX7gGKU1wLSKCBwpvSDVoTzZxK86D8kzXghj/DY6OeyUnBz8wL3F2N605b+XB298CG9lR
	EsAH9oepHYPsaMt2gcRklSg==
X-Received: by 2002:a05:6402:518a:b0:523:37cf:6f37 with SMTP id q10-20020a056402518a00b0052337cf6f37mr3597884edd.4.1694672204782;
        Wed, 13 Sep 2023 23:16:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVPmJWO9rwdgzF0VjssgMmybRTxys9eCkPpElR8AcfT5cRq87VZLU5gu3+14wqMa0pCCO7CA==
X-Received: by 2002:a05:6402:518a:b0:523:37cf:6f37 with SMTP id q10-20020a056402518a00b0052337cf6f37mr3597870edd.4.1694672204454;
        Wed, 13 Sep 2023 23:16:44 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-242-187.dyn.eolo.it. [146.241.242.187])
        by smtp.gmail.com with ESMTPSA id n13-20020aa7db4d000000b005232ea6a330sm469915edt.2.2023.09.13.23.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 23:16:44 -0700 (PDT)
Message-ID: <eba4483dd75a1c18bdb24f7c41e701f96f1e2d0a.camel@redhat.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx8dxl-ss-conn: Complete the FEC
 compatibles
From: Paolo Abeni <pabeni@redhat.com>
To: Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc: wei.fang@nxp.com, shenwei.wang@nxp.com, xiaoning.wang@nxp.com, 
	kuba@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>
Date: Thu, 14 Sep 2023 08:16:42 +0200
In-Reply-To: <9dd78edb2476cc5b57ce7f6b5c6bb338ebef43fd.camel@redhat.com>
References: <20230909123107.1048998-1-festevam@gmail.com>
	 <20230909123107.1048998-2-festevam@gmail.com>
	 <9dd78edb2476cc5b57ce7f6b5c6bb338ebef43fd.camel@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2023-09-12 at 10:09 +0200, Paolo Abeni wrote:
> Hi,
>=20
> On Sat, 2023-09-09 at 09:31 -0300, Fabio Estevam wrote:
> > From: Fabio Estevam <festevam@denx.de>
> >=20
> > Use the full compatible list for the imx8dl FEC as per fsl,fec.yaml.=
=20
> >=20
> > This fixes the following schema warning:
> >=20
> > imx8dxl-evk.dtb: ethernet@5b040000: compatible: 'oneOf' conditional fai=
led, one must be fixed:
> > 	['fsl,imx8qm-fec'] is too short
> > 	'fsl,imx8qm-fec' is not one of ['fsl,imx25-fec', 'fsl,imx27-fec', 'fsl=
,imx28-fec', 'fsl,imx6q-fec', 'fsl,mvf600-fec', 'fsl,s32v234-fec']
> > 	'fsl,imx8qm-fec' is not one of ['fsl,imx53-fec', 'fsl,imx6sl-fec']
> > 	'fsl,imx8qm-fec' is not one of ['fsl,imx35-fec', 'fsl,imx51-fec']
> > 	'fsl,imx8qm-fec' is not one of ['fsl,imx6ul-fec', 'fsl,imx6sx-fec']
> > 	'fsl,imx8qm-fec' is not one of ['fsl,imx7d-fec']
> > 	'fsl,imx8mq-fec' was expected
> > 	'fsl,imx8qm-fec' is not one of ['fsl,imx8mm-fec', 'fsl,imx8mn-fec', 'f=
sl,imx8mp-fec', 'fsl,imx93-fec']
> > 	'fsl,imx8qm-fec' is not one of ['fsl,imx8dxl-fec', 'fsl,imx8qxp-fec']
> > 	'fsl,imx8qm-fec' is not one of ['fsl,imx8ulp-fec']
> > 	from schema $id: http://devicetree.org/schemas/net/fsl,fec.yaml#
> >=20
> > Signed-off-by: Fabio Estevam <festevam@denx.de>
>=20
> It looks like this series is targeting the net-next tree, am I
> misreading this?
>=20
> I guess we could have small conflicts whatever target tree we will use,
> so I *think* the above should be ok. @Shawn Guo: do you prefer
> otherwise?

Thinking again about it, I assume this should go via the devicetree git
tree, so I'm dropping it from the netdev pw.

Please correct me otherwise, thanks!

Paolo


