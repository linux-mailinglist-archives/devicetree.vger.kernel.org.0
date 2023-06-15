Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 493D9731F11
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 19:31:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233922AbjFORb2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 13:31:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233801AbjFORb2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 13:31:28 -0400
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56EAA1715
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 10:31:27 -0700 (PDT)
Received: by mail-il1-f173.google.com with SMTP id e9e14a558f8ab-33c1fb9f2ecso35358835ab.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 10:31:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686850286; x=1689442286;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nsIy7eAmIBs5mJDfePZD7N007X5+nrymlFZFWwDcroc=;
        b=fnMyxtB3H7cQdQDxN2nK6CO3Nm9pa89KQCMz5SNZ1v52YABou8/wxcGJ+j/yAPrMIt
         O3f1R6MHJrXAcx1FpUnlBQev+SFI3ZPPz7DJzNHccC3OOqAwm2swjBKTEtH9pFYF67e6
         +PhXDLwm+uonCLBXlUrM5dXGUnHAR/3H+aX8svogfUyze9jnxWjzArQGD99/ZFrmARlV
         94/RN/KRexYsEtBRbjYGxts4ECF2vBWBHA+eY8KNuknsXb0ZmqhqxcN+6lom5Pn52vmC
         ra7TliV7shXYEYvgcTosp1Hyrdf0+MrtOe8AeJpvCkX6xjMR9VJge9ZCSuloXeudIOn6
         SlrQ==
X-Gm-Message-State: AC+VfDz8xoNmlknhvhC3adA5PVF20P2wMicxAyRnpfYu+5gkAvwVwaSp
        +bJTaNfBJALg/aTCutOt6w==
X-Google-Smtp-Source: ACHHUZ6EjY4UeSSv1in+u8IjQVEKuUAh1ZwQjE+24aGiADrMC8pckmJA9DeLT2owYJEm/ALlwCEpEw==
X-Received: by 2002:a92:d290:0:b0:341:b14f:971c with SMTP id p16-20020a92d290000000b00341b14f971cmr20974ilp.27.1686850286613;
        Thu, 15 Jun 2023 10:31:26 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id g9-20020a926b09000000b0033d16a45a64sm2380353ilc.14.2023.06.15.10.31.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 10:31:25 -0700 (PDT)
Received: (nullmailer pid 1235388 invoked by uid 1000);
        Thu, 15 Jun 2023 17:31:23 -0000
Date:   Thu, 15 Jun 2023 11:31:23 -0600
From:   Rob Herring <robh@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH 1/2] dt-bindings: timer: fsl,imxgpt: Add i.MX8MP variant
Message-ID: <168685027550.1235195.1073165383076709174.robh@kernel.org>
References: <20230327173526.851734-1-u.kleine-koenig@pengutronix.de>
 <20230327173526.851734-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230327173526.851734-2-u.kleine-koenig@pengutronix.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 27 Mar 2023 19:35:25 +0200, Uwe Kleine-König wrote:
> The i.MX8MP has the same register layout as the i.MX6DL, so add it as a
> variant allowing to add the GPT IP blocks to the i.MX8MP's dtsi file.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!

