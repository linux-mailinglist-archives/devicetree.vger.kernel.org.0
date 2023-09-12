Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8CAB479C959
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 10:10:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231894AbjILIKS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 04:10:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbjILIKR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 04:10:17 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7C37C10D2
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 01:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1694506147;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=si3gwV/ygFAg4gPICZrwvarcfQiEXTXrZxz91xQWWcA=;
        b=G/+OEg7g3M/YnhEuvGajsGeJ4B/Uflinb3fs1H92KxrTWTccAftin7nhBkKIdtCYk8cXii
        lEk7G9gDrKTIeuXDhk/t6IEqMziThVM62bHgz/pfLN0r9oQDHDhRKoWuWwldWlWrcBuRoJ
        IQKskWUx37iPwlPWnTAwJ3JawHkauJs=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-636-k1EDfV56PW6kPpIWsEJxGQ-1; Tue, 12 Sep 2023 04:09:06 -0400
X-MC-Unique: k1EDfV56PW6kPpIWsEJxGQ-1
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-525691cfd75so1036040a12.1
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 01:09:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694506145; x=1695110945;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=si3gwV/ygFAg4gPICZrwvarcfQiEXTXrZxz91xQWWcA=;
        b=HeRWD33IZDHSOeoPioKKh5cLd48jGbtjLS01TrA2l3gWhHsdAPyFYvO4AcywBYT3Q/
         Zt9Bw5zulY5sLmm6PyCR6DaDdpgAaST/fbsTxgsIE8fHS72j7gzNdi3JmM/GrzrsKCWX
         JxLxJtWNIYY0Xt6kYOR9VmV2SUQBMB2AmekKvUQIj8W8M6T+xr4U8V7vkhXS3xyf6tWx
         8CVIXm1H+396+AEllXbqCIbKmGQ49ywQxWm3Ts4h6lKdtEJ7drVRTmp3ksP8Rl+zVCGX
         CpRmlFmrAe6ZBNhbc3IfuwFOupcXvbn045KmjVpxiYoYJ49bV0ng53Rg51hzSkkaG0fr
         cX/A==
X-Gm-Message-State: AOJu0YzFSHZpwxkBj+zKo8tBdbSMU4XkHKG1OBBSTnMTTEAImc/5LwGq
        c3xB2XcWpHErL50knvEGB7oP7GhyuJ/Vnxe8OMR6WHSl1+Y0wZTXkuCisUCjKwVPrSyCPlsnk/h
        T19se+BpqdrKYKnmOz04nw67jdk3ABg==
X-Received: by 2002:a05:6402:40c9:b0:522:580f:8304 with SMTP id z9-20020a05640240c900b00522580f8304mr9305946edb.1.1694506145118;
        Tue, 12 Sep 2023 01:09:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHDu2D2fX9Bjl2fqQfkAplxEI8kO8USfXWam5rdjNtt/hBWG8HYne7UPTRFXBkfrrJIC+dqKw==
X-Received: by 2002:a05:6402:40c9:b0:522:580f:8304 with SMTP id z9-20020a05640240c900b00522580f8304mr9305926edb.1.1694506144776;
        Tue, 12 Sep 2023 01:09:04 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-249-231.dyn.eolo.it. [146.241.249.231])
        by smtp.gmail.com with ESMTPSA id l2-20020a056402028200b0052237dfa82fsm5533128edv.64.2023.09.12.01.09.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 01:09:04 -0700 (PDT)
Message-ID: <9dd78edb2476cc5b57ce7f6b5c6bb338ebef43fd.camel@redhat.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx8dxl-ss-conn: Complete the FEC
 compatibles
From:   Paolo Abeni <pabeni@redhat.com>
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     wei.fang@nxp.com, shenwei.wang@nxp.com, xiaoning.wang@nxp.com,
        kuba@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Date:   Tue, 12 Sep 2023 10:09:02 +0200
In-Reply-To: <20230909123107.1048998-2-festevam@gmail.com>
References: <20230909123107.1048998-1-festevam@gmail.com>
         <20230909123107.1048998-2-festevam@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sat, 2023-09-09 at 09:31 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> Use the full compatible list for the imx8dl FEC as per fsl,fec.yaml.=20
>=20
> This fixes the following schema warning:
>=20
> imx8dxl-evk.dtb: ethernet@5b040000: compatible: 'oneOf' conditional faile=
d, one must be fixed:
> 	['fsl,imx8qm-fec'] is too short
> 	'fsl,imx8qm-fec' is not one of ['fsl,imx25-fec', 'fsl,imx27-fec', 'fsl,i=
mx28-fec', 'fsl,imx6q-fec', 'fsl,mvf600-fec', 'fsl,s32v234-fec']
> 	'fsl,imx8qm-fec' is not one of ['fsl,imx53-fec', 'fsl,imx6sl-fec']
> 	'fsl,imx8qm-fec' is not one of ['fsl,imx35-fec', 'fsl,imx51-fec']
> 	'fsl,imx8qm-fec' is not one of ['fsl,imx6ul-fec', 'fsl,imx6sx-fec']
> 	'fsl,imx8qm-fec' is not one of ['fsl,imx7d-fec']
> 	'fsl,imx8mq-fec' was expected
> 	'fsl,imx8qm-fec' is not one of ['fsl,imx8mm-fec', 'fsl,imx8mn-fec', 'fsl=
,imx8mp-fec', 'fsl,imx93-fec']
> 	'fsl,imx8qm-fec' is not one of ['fsl,imx8dxl-fec', 'fsl,imx8qxp-fec']
> 	'fsl,imx8qm-fec' is not one of ['fsl,imx8ulp-fec']
> 	from schema $id: http://devicetree.org/schemas/net/fsl,fec.yaml#
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>

It looks like this series is targeting the net-next tree, am I
misreading this?

I guess we could have small conflicts whatever target tree we will use,
so I *think* the above should be ok. @Shawn Guo: do you prefer
otherwise?

Thanks,

Paolo

