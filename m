Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0FF854FB2B
	for <lists+devicetree@lfdr.de>; Fri, 17 Jun 2022 18:40:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383184AbiFQQek (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 12:34:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382486AbiFQQej (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 12:34:39 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 434E745057
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 09:34:39 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id h34-20020a17090a29a500b001eb01527d9eso3757656pjd.3
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 09:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=q6FESaRNIILjWIcxA0LQ9mHPms+OFs17M8IyVVnoYkI=;
        b=DBRzxRoES6+uoOzrVAX/9mnPDRl/uu5OuBHI9iY9/Q9/+uBUTH3/U6GbwHCC7G2FF0
         QGeGhopXyylBsGfQinkF+lK8uNA5ZaD3aCqJArS0SJSvVlFb3OBkreORw5lTMhcQ28Wb
         e/FMrQwoZbTSf+Q/76/tfUo9NfRHmTmKGeF/qjNzJtXP8vRKjCI0KVApYOGD22xhIIOQ
         Y6vJqsbsgFMCxRdHxhFVzrRbcWFoFTSJJrbI9ROvh9+HEZKJROueg6YdMa8YpqnvmJpn
         21q8xUBtS8FqDuzECx+bmv6FF7rZIJNzKFuh8nO9FMpl7QacxgqBbo/ga5lNKZ6eh3nT
         MwRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=q6FESaRNIILjWIcxA0LQ9mHPms+OFs17M8IyVVnoYkI=;
        b=T5365OVKGNFyAdPO5d0KzWw/Aoam4QjUCb1YbNyfekL1UhZsSw+sAil645jH5bfEve
         C970rPoRwXePPQXC5J4FUKEmMqjNkoCKSTotAwvwoRvwn2ZisYYddegk3Yt3BOFi7mI6
         J+XtCwYnklaU1zCOscVO3M4ivwG4xqmMKIIwi9z7o5JHhWF5b+enFVGB3X3PmfeMTLQF
         b3iHFQtegTj/FCdmHlO9kJcGaSaCJfpVJaJXUqcAZLM+xHuUZjrIPFooTv2CC+Tt0MdV
         Gv8xB36lqMgRfvZGj1ONN/y44lTkFnhO96qs5VfC7stVCEMiPpmxSVq2komerv8Niiav
         UXVQ==
X-Gm-Message-State: AJIora860b5NZuTiQLAkQ9/TPZ7hQzga7A0zYr9/2mINvSWmVsqeiN8h
        JvIahKzkIIokcnOLD6yotfymRQ==
X-Google-Smtp-Source: AGRyM1tfVG1KqPfpVeJhmvF6RFCDrmkJV4GVg89/lL7/XGTX8Edk2YUQ7lvfxIPXP5drukqRTjvxkA==
X-Received: by 2002:a17:90b:4f91:b0:1cd:3a73:3a5d with SMTP id qe17-20020a17090b4f9100b001cd3a733a5dmr11453647pjb.98.1655483678979;
        Fri, 17 Jun 2022 09:34:38 -0700 (PDT)
Received: from google.com ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id c5-20020a170902d48500b0015ea95948ebsm3849053plg.134.2022.06.17.09.34.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 09:34:38 -0700 (PDT)
Date:   Fri, 17 Jun 2022 17:34:35 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        swboyd@chromium.org, quic_collinsd@quicinc.com,
        quic_subbaram@quicinc.com, quic_jprakash@quicinc.com
Subject: Re: [PATCH V15 4/9] mfd: pm8008: Add reset-gpios
Message-ID: <YqytG1kcIG41AW/6@google.com>
References: <1655200111-18357-1-git-send-email-quic_c_skakit@quicinc.com>
 <1655200111-18357-5-git-send-email-quic_c_skakit@quicinc.com>
 <YquZjdr3H+xtYcjB@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YquZjdr3H+xtYcjB@google.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Jun 2022, Lee Jones wrote:

> On Tue, 14 Jun 2022, Satya Priya wrote:
> 
> > Add the reset-gpio toggling in the pm8008_probe() to bring
> > pm8008 chip out of reset instead of doing it in DT node using
> > "output-high" property.
> > 
> > Signed-off-by: Satya Priya <quic_c_skakit@quicinc.com>
> > Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> > ---
> > Changes in V15:
> >  - None.
> > 
> > Changes in V14:
> >  - None.
> > 
> > Changes in V13:
> >  - None.
> > 
> >  drivers/mfd/qcom-pm8008.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> 
> Applied, thanks.

Sorry, wrong key-combo:

For my own reference (apply this as-is to your sign-off block):

  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
