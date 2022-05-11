Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D86C523571
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 16:28:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234520AbiEKO2R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 10:28:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244676AbiEKO2P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 10:28:15 -0400
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 068BA7C17D
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 07:28:04 -0700 (PDT)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-edf9ddb312so2994103fac.8
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 07:28:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=l5hfI95nGKptfm8+V5D6k5JgCAeWViIYLBqO5SQ8AOg=;
        b=oK1zzHXWA8rdkdeYW9MLdvoRNmiqdaN1FFKR+FpWGcUS6GLURq2tXsQPlzcNkZBG9+
         S07MM+FoSBxi9q3ORdp5C/VLI3xLDW3wTinBAhFAOhoQJ22B0ztSxGkwgTsOo/G34aix
         WS0lRwgXeiKy+GAxd9w0Bub16eKp8+pOAbo+pFGnwBDpFUsC7MRtng+nduJ9SBhmsQsA
         xgPUi/2g08lSnwA1i9uy7k9LZXeVew3/82w9cabqmsNCDyijPStrqh/T3p1zTtQdHXUD
         +v3Wn8kiIYTDiyUhtPm7Q0GLsb+CAqmnbyfpHWQHHp83qxHVszEMoUhqUeGrmrts58IO
         xNuA==
X-Gm-Message-State: AOAM530SqGq2NEKJMgxzvml/qDcpn3moZTmbpkNmyPVbnaEPFecMptdo
        Sw3Xfd/cgOHmXhoMyl8vQA==
X-Google-Smtp-Source: ABdhPJwx6Qb8tL87ntfzUHzEzTkhI+b4g11lzmWoqGBuzVTYMC1eKnagTBy0+lyWuayExf/sakpdXw==
X-Received: by 2002:a05:6870:14d6:b0:ed:ed86:9040 with SMTP id l22-20020a05687014d600b000eded869040mr2918700oab.199.1652279282580;
        Wed, 11 May 2022 07:28:02 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j18-20020a4a9452000000b0035eb4e5a6c3sm967857ooi.25.2022.05.11.07.28.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 May 2022 07:28:02 -0700 (PDT)
Received: (nullmailer pid 259228 invoked by uid 1000);
        Wed, 11 May 2022 14:28:01 -0000
Date:   Wed, 11 May 2022 09:28:01 -0500
From:   Rob Herring <robh@kernel.org>
To:     Daniel Kaehn <kaehndan@gmail.com>
Cc:     tiwai@suse.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v7 2/2] Add generic serial MIDI driver using serial bus
 API
Message-ID: <20220511142801.GA236225-robh@kernel.org>
References: <20220509145933.1161526-1-kaehndan@gmail.com>
 <20220509145933.1161526-3-kaehndan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220509145933.1161526-3-kaehndan@gmail.com>
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

On Mon, May 09, 2022 at 09:59:33AM -0500, Daniel Kaehn wrote:
> Generic serial MIDI driver adding support for using serial devices
> compatible with the serial bus as raw MIDI devices, allowing using
> additional serial devices not compatible with the existing
> serial-u16550 driver. Supports only setting standard serial baudrates on
> the underlying serial device; however, the underlying serial device can
> be configured so that a requested 38.4 kBaud is actually the standard MIDI
> 31.25 kBaud. Supports DeviceTree configuration.
> 
> Signed-off-by: Daniel Kaehn <kaehndan@gmail.com>
> ---
>  sound/drivers/Kconfig          |  18 ++
>  sound/drivers/Makefile         |   2 +
>  sound/drivers/serial-generic.c | 374 +++++++++++++++++++++++++++++++++
>  3 files changed, 394 insertions(+)
>  create mode 100644 sound/drivers/serial-generic.c

Reviewed-by: Rob Herring <robh@kernel.org>
