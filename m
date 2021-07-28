Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F19713D861A
	for <lists+devicetree@lfdr.de>; Wed, 28 Jul 2021 05:33:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233574AbhG1Dd7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 23:33:59 -0400
Received: from smtprelay0170.hostedemail.com ([216.40.44.170]:52226 "EHLO
        smtprelay.hostedemail.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S233500AbhG1Dd6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Jul 2021 23:33:58 -0400
X-Greylist: delayed 361 seconds by postgrey-1.27 at vger.kernel.org; Tue, 27 Jul 2021 23:33:58 EDT
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com [10.5.19.251])
        by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 8C4331813C439
        for <devicetree@vger.kernel.org>; Wed, 28 Jul 2021 03:27:58 +0000 (UTC)
Received: from omf13.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
        by smtprelay07.hostedemail.com (Postfix) with ESMTP id 62999181D6044;
        Wed, 28 Jul 2021 03:27:56 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf13.hostedemail.com (Postfix) with ESMTPA id AFAA31124F6;
        Wed, 28 Jul 2021 03:27:53 +0000 (UTC)
Message-ID: <9cdabb360fccefd516af3395cc0e485b8786e16b.camel@perches.com>
Subject: Re: [PATCH v5 14/14] MAINTAINERS: add NXP IMX8Q VPU CODEC V4L2
 driver entry
From:   Joe Perches <joe@perches.com>
To:     Ming Qian <ming.qian@nxp.com>, mchehab@kernel.org,
        shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de
Cc:     hverkuil-cisco@xs4all.nl, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, aisheng.dong@nxp.com,
        linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Date:   Tue, 27 Jul 2021 20:27:52 -0700
In-Reply-To: <6b6a77088f2bfc7ed6ca7418ee0c029fcac8ce96.1627353315.git.ming.qian@nxp.com>
References: <cover.1627353315.git.ming.qian@nxp.com>
         <6b6a77088f2bfc7ed6ca7418ee0c029fcac8ce96.1627353315.git.ming.qian@nxp.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.59
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: AFAA31124F6
X-Stat-Signature: foj4j8ssn934grob4hyesgiacfxjwirp
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX18laeUvp1+hAzihRHMHUdeghjhXbsHTJ3I=
X-HE-Tag: 1627442873-934484
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2021-07-27 at 11:20 +0800, Ming Qian wrote:
> Add NXP IMX8Q VPU CODEC v4l2 driver entry
[]
> diff --git a/MAINTAINERS b/MAINTAINERS
[]
> @@ -12600,6 +12600,16 @@ L:	linux-nfc@lists.01.org (moderated for non-subscribers)
>  S:	Supported
>  F:	drivers/nfc/nxp-nci
>  
> +NXP IMX8Q VPU CODEC V4L2 DRIVER
> +M:	Ming Qian <ming.qian@nxp.com>
> +M:	Shijie Qin <shijie.qin@nxp.com>
> +M:	Zhou Peng <eagle.zhou@nxp.com>
> +L:	linux-media@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/media/nxp,imx8q-vpu.yaml
> +F:	drivers/media/platform/imx/vpu-8q

Should have a trailing /

F:	drivers/media/platform/imx/vpu-8q/

> +F:	include/uapi/linux/imx_vpu.h
> +
>  OBJAGG
>  M:	Jiri Pirko <jiri@nvidia.com>
>  L:	netdev@vger.kernel.org


