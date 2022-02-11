Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F5CC4B2743
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 14:35:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344283AbiBKNfC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 08:35:02 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:56296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238729AbiBKNfA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 08:35:00 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 102E3EB
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 05:34:59 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id l67-20020a1c2546000000b00353951c3f62so6292109wml.5
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 05:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=c5deOdUwH9zFHVJq1pi2VKNXJFMRgY+QuG1cj9vFjqQ=;
        b=Rfj5VrN/yMm394gXaeO7hjRbBBeWfKjzMqjHXiaIKAisSdLwvcldHfcvdV7ERsHB72
         FPoNWOGSf3oknBlmAzP6F5P+qcLQTCMzBlQ1CowdiRR3vqkh7YishnoPkT5LYy/MWFRE
         EPQlX+T8SRRsyujB0z5nSyhcRHC0jaR9Su+yXHtVfgWRUVDBr2q/Lkq76//h0iSfyqZu
         8HJTrz9cS91MNCBJFKqMlqHTM4okkWeBK1qQDuyzsS97eUDtFD241pDTZg2KE9dKCubj
         PW+6ufOpcZAzilHI4OMjckUmLJSKtJXYNAjYi5GnzzOmop8j1pOJmCh8eURoOE7uYa9c
         oRlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=c5deOdUwH9zFHVJq1pi2VKNXJFMRgY+QuG1cj9vFjqQ=;
        b=vgIBxIJjXDcnGf7qS2eEeLp65CsAT2PuvvB6IshxZoTa2SsslTzzlzWU9wkPbBLGxO
         eAYbkKUid+PpatkwirM0Qn55RFV9JGnRNktrlYNGSVjb3skx2JLzOp7Z4ZFXZJmKoHLH
         zL3QSOoh3IMdTjhYiahSW6I8wu+RT4xmU9uNmkasovgJyTUmXtd33XYKVgNLWIxxjMZ9
         BL6w76cBBtjNHqN34aNE52OhnR8JWhLn8DOqZ2U1iDZQweLOLggiqxXpdyE7q53Y7YBf
         rAt8a6Q7PkPAylZyyWDQoJrKa8Lw7tJciY3kQsTmeg7Wt/qTXUDU7bg55R8yyJV+6paL
         QW+A==
X-Gm-Message-State: AOAM532l2cGfJp8I0hDziGcYm/moJWuxielx5K1SPHS+vOVeWjLeGkaN
        orhoqgoHpEUul+MRCBLa5QC/EA==
X-Google-Smtp-Source: ABdhPJwoiWu6Gub9EjFxOlYmHUW4hTC3OOADG2ozsrv8m0wDwOFoJmprbJXpHvCheuveojhx8N5uAQ==
X-Received: by 2002:a05:600c:378b:: with SMTP id o11mr329697wmr.176.1644586497566;
        Fri, 11 Feb 2022 05:34:57 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id s187sm5030128wme.14.2022.02.11.05.34.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 05:34:57 -0800 (PST)
Date:   Fri, 11 Feb 2022 13:34:55 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     "Satya Priya Kakitapalli (Temp)" <quic_c_skakit@quicinc.com>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Das Srinagesh <gurus@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_collinsd@quicinc.com,
        quic_subbaram@quicinc.com, quic_jprakash@quicinc.com
Subject: Re: [PATCH V5 3/6] mfd: pm8008: Add mfd cell struct to register LDOs
Message-ID: <YgZl/0fC8ruM0f7Y@google.com>
References: <1644331940-18986-1-git-send-email-quic_c_skakit@quicinc.com>
 <1644331940-18986-4-git-send-email-quic_c_skakit@quicinc.com>
 <CAE-0n52B4heY5fcbz71JPOqvMVvmqsXO94V+Z0qTTw_XXextJw@mail.gmail.com>
 <bd5636b0-b975-1084-f285-87e458249b1a@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bd5636b0-b975-1084-f285-87e458249b1a@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 11 Feb 2022, Satya Priya Kakitapalli (Temp) wrote:

> 
> On 2/10/2022 7:02 AM, Stephen Boyd wrote:
> > Quoting Satya Priya (2022-02-08 06:52:17)
> > > diff --git a/drivers/mfd/qcom-pm8008.c b/drivers/mfd/qcom-pm8008.c
> > > index c472d7f..e8569cc 100644
> > > --- a/drivers/mfd/qcom-pm8008.c
> > > +++ b/drivers/mfd/qcom-pm8008.c
> > > @@ -8,6 +8,7 @@
> > >   #include <linux/interrupt.h>
> > >   #include <linux/irq.h>
> > >   #include <linux/irqdomain.h>
> > > +#include <linux/mfd/core.h>
> > >   #include <linux/module.h>
> > >   #include <linux/of_device.h>
> > >   #include <linux/of_platform.h>
> > > @@ -27,6 +28,37 @@
> > >   #define INT_EN_CLR_OFFSET              0x16
> > >   #define INT_LATCHED_STS_OFFSET         0x18
> > > 
> > > +static const struct mfd_cell pm8008_regulator_devs[] = {
> > Is there some way to not allocate this structure statically forever?
> 
> 
> I think No.
> 
> I found that some of the drivers are just using one cell with .name to match
> with regulator driver and then probing regulators using a loop. I'll do that
> too.
> 
> static const struct mfd_cell pm8008_regulator_devs[] = {
>         {
>                 .name = "qcom,pm8008-regulators",
>         },
>  };

Please use MFD_CELL_NAME() for these.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
