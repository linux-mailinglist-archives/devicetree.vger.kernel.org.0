Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F8735B012B
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 12:02:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230006AbiIGKCa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 06:02:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230281AbiIGKCH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 06:02:07 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EA1878BF1
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 03:01:48 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id d2so2442352wrn.1
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 03:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=a8/Cnr3+NRiTeHm77aJYOksHa5QVLbTuiIVNWMiWpbM=;
        b=QG6xanwk5cuEfiq/oJekTvPzTUk+xsrSNaWVGrOrbJAx8bjH0kv0AzvSJCXgeJj6vX
         qVEH28rDfkV74cxT7Q8+89AhD/DnNlv7x2Bpju9v+Mi/JMRIo11ifF4klTKl4rdxoibN
         THbRahYqunJdr6MdOr2CYhmKQ/5wqXqYJSnI7GAOmA2PggU0254oFrVVtfkzKToezlhB
         pm4xU+jQSVHRX6yFPKHL2tKklCNWkgGeNLBfHYhHhmCCWXApFXaCT8LFaR9nK+7B0+hC
         iwyNBTC+/XJLn4qw5niTvvvInENxqZ0diBhTvRgmSfMzPZlGvlM9B2d3T/2mZX5LuQl7
         IfqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=a8/Cnr3+NRiTeHm77aJYOksHa5QVLbTuiIVNWMiWpbM=;
        b=l1W3y8b1HzsVlKu4IlUXI2nAPLz+6GjHIqvbZH4xTNiFHqzIC90dCZHqT/h8AABmnf
         I6D0Y9WJe+NcsGeibbstzxYba4aXQ8MaLSbx8r2USF7Gcyc30QZAvfiW5RELE/cX2vX6
         h3Wp2ZO7FsGDkdXfbCFrvfaabiGfFRGD4RJYHqV+ssFXUsI+aHAKwMt0GljSrekfLMFu
         bOTihLfLq5ONOT6xe7RFpIK/jHT7B+X7PMO6/uA3V72mtd5375LCBL5CMq0qIDh6pPVo
         3hVIzeLS3VM1M1+jpyfdmuTGJDnrZvhlSARlOEzB7PuborQQEE6KdRN+FotORtTLd3R2
         PEuw==
X-Gm-Message-State: ACgBeo09iUi1YFQXfOH3TyXhFfwRPm3qDQvqjSlZjmndMZbSIk3e3E8f
        c29kfnClubiLZgeGaQ8EZN6dcw==
X-Google-Smtp-Source: AA6agR7U1xM6IHLwwgCqdU0PlTwcu1ukzEPYF479TZ7OE12LaBASXo2WIzRmeqjQXlAU+Rk28pJkZg==
X-Received: by 2002:a05:6000:144a:b0:229:b76f:86f9 with SMTP id v10-20020a056000144a00b00229b76f86f9mr677000wrx.613.1662544906871;
        Wed, 07 Sep 2022 03:01:46 -0700 (PDT)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id c6-20020a05600c0ac600b003a5bd5ea215sm18021930wmr.37.2022.09.07.03.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 03:01:46 -0700 (PDT)
Date:   Wed, 7 Sep 2022 13:01:44 +0300
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     Amol Maheshwari <amahesh@qti.qualcomm.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Ekansh Gupta <quic_ekagupt@quicinc.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-arm-msm@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 00/10] misc: fastrpc: Add audiopd support
Message-ID: <YxhsCKEWFmlFgKWU@linaro.org>
References: <20220902154900.3404524-1-abel.vesa@linaro.org>
 <87f59c6d-c2ad-25c2-a0cf-972b5df42bce@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87f59c6d-c2ad-25c2-a0cf-972b5df42bce@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-09-06 15:12:39, Srinivas Kandagatla wrote:
> Hi Abel,
> Thanks for picking up these patches and reworking.
> 
> On 02/09/2022 16:48, Abel Vesa wrote:
> > This patchset adds audiopd support to fastrpc.
> > 
> > The first version is here:
> > https://lore.kernel.org/all/20220902131344.3029826-1-abel.vesa@linaro.org/
> > 
> 
> I have tested this on sm8450 with audiopd and loading Single MIC ECNS module
> to adsp.
> 
> Which platforms did you test these patches on?

I have tested on sm8250, with memory-region property and vmids added
locally to the adsp fastrpc devicetree node.

> 
> 
> Tested-by: Srinivas Kandagatla  <srinivas.kandagatla@linaro.org>

Thanks for testing it on sm8450 too.

> 
> 
> --srini
> 
> 
> > Changes since v1:
> >   * dropped the patch 13:
> >     "misc: fastrpc: Remove unnecessary if braces in fastrpc_internal_invoke"
> >   * sent patches 1, 2 and 3 as a separate patchset
> > 
> > Abel Vesa (10):
> >    misc: fastrpc: Rename audio protection domain to root
> >    misc: fastrpc: Add reserved mem support
> >    dt-bindings: misc: fastrpc: Document memory-region property
> >    misc: fastrpc: Add fastrpc_remote_heap_alloc
> >    misc: fastrpc: Use fastrpc_map_put in fastrpc_map_create on fail
> >    misc: fastrpc: Rework fastrpc_req_munmap
> >    misc: fastrpc: Add support for audiopd
> >    misc: fastrpc: Safekeep mmaps on interrupted invoke
> >    misc: fastrpc: Add mmap request assigning for static PD pool
> >    misc: fastrpc: Add dma_mask to fastrpc_channel_ctx
> > 
> >   .../devicetree/bindings/misc/qcom,fastrpc.txt |   5 +
> >   drivers/misc/fastrpc.c                        | 267 +++++++++++++++---
> >   include/uapi/misc/fastrpc.h                   |   7 +
> >   3 files changed, 247 insertions(+), 32 deletions(-)
> > 
