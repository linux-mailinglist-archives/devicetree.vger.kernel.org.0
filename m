Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B39E532A1D
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 14:13:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237187AbiEXMK1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 08:10:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233396AbiEXMK0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 08:10:26 -0400
Received: from alexa-out.qualcomm.com (alexa-out.qualcomm.com [129.46.98.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 582C568FAA
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 05:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1653394225; x=1684930225;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=PfmB9hEUx2CjDIiO5rF0JMaOGwrL95sGWUUs2zyUTJI=;
  b=Eh5BrM7ZfaqmHYzR2Z8LUQZTI1gg88JC2QK16RLN4r/7zwbQ+8vaFg4G
   vNBNL3h2B1eqTWDE3vLU8saCxlYEJ+5eYv8hU8fHcTh+H1YnffoAWgkQ1
   psoLisCMFjBSv43qYjli46T/OaWl6w4VRMKqEZ2GLIsnihntQ8m36Qf+x
   k=;
Received: from ironmsg-lv-alpha.qualcomm.com ([10.47.202.13])
  by alexa-out.qualcomm.com with ESMTP; 24 May 2022 05:10:25 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg-lv-alpha.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 May 2022 05:10:24 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 24 May 2022 05:10:24 -0700
Received: from quicinc.com (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Tue, 24 May
 2022 05:10:23 -0700
Date:   Tue, 24 May 2022 13:02:46 +0100
From:   Graeme Gregory <quic_ggregory@quicinc.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Jamie Iles <quic_jiles@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>
Subject: Re: [PATCH -next] ARM: dts: aspeed: nuvia: rename vendor nuvia to
 qcom
Message-ID: <20220524120246.vbk6r5ltopj7ciem@ggregory-linuxws>
References: <20220523175640.60155-1-quic_jaehyoo@quicinc.com>
 <dd67a453-b75b-d092-f999-3faf05ef8160@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <dd67a453-b75b-d092-f999-3faf05ef8160@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 24, 2022 at 11:53:17AM +0200, Krzysztof Kozlowski wrote:
> On 23/05/2022 19:56, Jae Hyun Yoo wrote:
> > Nuvia has been acquired by Qualcomm and the vendor name 'nuvia' will
> > not be used anymore so rename aspeed-bmc-nuvia-dc-scm.dts to
> > aspeed-bmc-qcom-dc-scm-v1.dts and change 'nuvia' to 'qcom' as its vendor
> > name in the file.
> 
> And all users of this DTB now have to update their bootloaders, scripts,
> installation methods. We did not rename FSL or Marvell boards, so
> neither should be renamed this one.
> 

This board does not exist to the public yet! That makes all users
limited to those on Cc: with quicinc emails!

Graeme

> > 
> > Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
> > ---
> >  arch/arm/boot/dts/Makefile                                    | 2 +-
> >  ...eed-bmc-nuvia-dc-scm.dts => aspeed-bmc-qcom-dc-scm-v1.dts} | 4 ++--
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> >  rename arch/arm/boot/dts/{aspeed-bmc-nuvia-dc-scm.dts => aspeed-bmc-qcom-dc-scm-v1.dts} (97%)
> > 
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index 03f5b3a15415..2a3c95387613 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -1584,7 +1584,6 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
> >  	aspeed-bmc-lenovo-hr630.dtb \
> >  	aspeed-bmc-lenovo-hr855xg2.dtb \
> >  	aspeed-bmc-microsoft-olympus.dtb \
> > -	aspeed-bmc-nuvia-dc-scm.dtb \
> >  	aspeed-bmc-opp-lanyang.dtb \
> >  	aspeed-bmc-opp-mihawk.dtb \
> >  	aspeed-bmc-opp-mowgli.dtb \
> > @@ -1597,6 +1596,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
> >  	aspeed-bmc-opp-witherspoon.dtb \
> >  	aspeed-bmc-opp-zaius.dtb \
> >  	aspeed-bmc-portwell-neptune.dtb \
> > +	aspeed-bmc-qcom-dc-scm-v1.dtb \
> >  	aspeed-bmc-quanta-q71l.dtb \
> >  	aspeed-bmc-quanta-s6q.dtb \
> >  	aspeed-bmc-supermicro-x11spi.dtb \
> > diff --git a/arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts b/arch/arm/boot/dts/aspeed-bmc-qcom-dc-scm-v1.dts
> > similarity index 97%
> > rename from arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts
> > rename to arch/arm/boot/dts/aspeed-bmc-qcom-dc-scm-v1.dts
> > index f4a97cfb0f23..259ef3f54c5c 100644
> > --- a/arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts
> > +++ b/arch/arm/boot/dts/aspeed-bmc-qcom-dc-scm-v1.dts
> > @@ -6,8 +6,8 @@
> >  #include "aspeed-g6.dtsi"
> >  
> >  / {
> > -	model = "Nuvia DC-SCM BMC";
> > -	compatible = "nuvia,dc-scm-bmc", "aspeed,ast2600";
> > +	model = "Qualcomm DC-SCM V1 BMC";
> > +	compatible = "qcom,dc-scm-v1-bmc", "aspeed,ast2600";
> 
> 
> You need also change bindings.
> 
> 
> Best regards,
> Krzysztof
