Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DB4B539991
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 00:32:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242651AbiEaWcM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 18:32:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240376AbiEaWcK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 18:32:10 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF07A5A098
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 15:32:09 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id c196so242614pfb.1
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 15:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=P9LyQVuvmVsNZW+3nPRkSL6POGxEfk0Mn3guF1+YKuI=;
        b=KN2tTYofItlyGe49xSbgyxQWQ327Y7iR6YoFSM9lhh+wiM1RX/01VGMPQk3muL0ImN
         ZabsYj5dpUeZY8QZi0bzCA53EjL5//Ogzm6HcmIBFQLYHH6Gdnqx/Mm0QCfURZwwN/6+
         Bfh5dacPirFGkAjSKezJgUXm/9DqjlcIXhLQE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=P9LyQVuvmVsNZW+3nPRkSL6POGxEfk0Mn3guF1+YKuI=;
        b=jhRLBt9lQAkrWni7EJ4CMjgRuhZKvo3rP2RbNagyfZ+JdwWlYPjgiF9/ycg6cUCmVn
         XFMhC7P9wFpFGD4TDe9zeaBBhJMpjiuG4/4k44KlpJHb8CNsKh78kS7rzOFOXc3S2buk
         RS1ME4/R85mYfYVr2oqov141vUKYjB9uBesv4PpdM8Bc+U1DW12/DbNTrGW7I8ccLX4m
         koDpdV1/8Qg2KrFq4jfLOZEWRLCrXTSySfPHPG1HXphYx7F2qqTZQC+OHZYLOShE/Yme
         iS7iWorDg/FpTVLQc+xskEQ91xH8LVhUNxIZUNCMj6eBKto1ksmB97oVofzIJGmv4uBI
         KwhA==
X-Gm-Message-State: AOAM5337+nq9yPEBjDEnVxCMyYATUGnGsiWLJlefeq5ajrsDwox9aO7v
        6JbeeY5DXHc+N/N1iyhTDZwERA==
X-Google-Smtp-Source: ABdhPJwjBCrqDfLak45rq28qmCzF8Bpop3q8Bs7jqR40KSaDpro/v7PxK29LFIjoEyuzeSdZ/p9aGA==
X-Received: by 2002:a63:5843:0:b0:3fc:34b5:8278 with SMTP id i3-20020a635843000000b003fc34b58278mr7454016pgm.249.1654036329384;
        Tue, 31 May 2022 15:32:09 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:e69e:f483:e751:7c7c])
        by smtp.gmail.com with UTF8SMTPSA id b3-20020a170902d40300b001620a2737b6sm59801ple.74.2022.05.31.15.32.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 15:32:09 -0700 (PDT)
Date:   Tue, 31 May 2022 15:32:07 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     Stephen Boyd <swboyd@chromium.org>, agross@kernel.org,
        alsa-devel@alsa-project.org, bgoswami@quicinc.com,
        bjorn.andersson@linaro.org, broonie@kernel.org,
        devicetree@vger.kernel.org, judyhsiao@chromium.org,
        lgirdwood@gmail.com, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, perex@perex.cz,
        quic_plai@quicinc.com, quic_rohkumar@quicinc.com,
        robh+dt@kernel.org, srinivas.kandagatla@linaro.org, tiwai@suse.com,
        vkoul@kernel.org
Subject: Re: [PATCH v2] ASoC: qcom: soundwire: Add support for controlling
 audio CGCR from HLOS
Message-ID: <YpaXZ6KfApGebkBy@google.com>
References: <1652877755-25120-1-git-send-email-quic_srivasam@quicinc.com>
 <CAE-0n53g9rWks+euk5KHBzmJNEB3xLbJzMgCxN52DO5x+9-Wgg@mail.gmail.com>
 <51b8aca1-e038-4907-e973-ebdbebaf9b28@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <51b8aca1-e038-4907-e973-ebdbebaf9b28@quicinc.com>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 24, 2022 at 04:19:47PM +0530, Srinivasa Rao Mandadapu wrote:
> 
> On 5/21/2022 8:43 AM, Stephen Boyd wrote:
> Thanks for your time Stephen!!!
> > Quoting Srinivasa Rao Mandadapu (2022-05-18 05:42:35)
> > > diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
> > > index da1ad7e..445e481 100644
> > > --- a/drivers/soundwire/qcom.c
> > > +++ b/drivers/soundwire/qcom.c
> > > @@ -1333,6 +1337,10 @@ static int qcom_swrm_probe(struct platform_device *pdev)
> > >          ctrl->bus.compute_params = &qcom_swrm_compute_params;
> > >          ctrl->bus.clk_stop_timeout = 300;
> > > 
> > > +       ctrl->audio_cgcr = devm_reset_control_get_exclusive(dev, "swr_audio_cgcr");
> > > +       if (IS_ERR(ctrl->audio_cgcr))
> > > +               dev_err(dev, "Failed to get audio_cgcr reset required for soundwire-v1.6.0\n");
> > Why is there no return on error here? Is the reset optional?
> Yes it's optional. For older platforms this is not required.

If it's optional then either there should be no error message, or the
error message should only be logged when the version is >= 1.6.0. There
are few things worse than a kernel log riddled with misleading error
messages.
