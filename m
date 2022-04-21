Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AE9550A53F
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 18:24:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231302AbiDUQ11 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 12:27:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231653AbiDUQYS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 12:24:18 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8155221E39
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 09:21:28 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id s17so5330541plg.9
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 09:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=zOgF5YHHdnw6KFfM7+TfvuQyjrbr/lX5m0szyjvIkws=;
        b=AZ6UWC536Tr+qN6iz60AuoVTHsNIJZh2fChIEo5NiY0GJ/2lpSLHpxlUwQYpLLnCGF
         46dnieAD8HD3maBt+IEPmJ3/MxXRfN3Vd/YfUa/cFDSklKEoQHNORUJBPNRaFA8d8gI2
         D+ezgg6ARlOYxeT5LjVHUOM42nantNwr9nDeWoE/KP2nxQTGfe678ToHMMf+7UMlSkU3
         qd+jXYER+2NHQVYvn77FyjkOs5Azdt6NBzzx/BTOBRywlHUwmSqtohoFc4jGPUZiCQoK
         T6R/cptVJXD96SN2vEcwhozxmRL20K7eZputX2D+qFZZhjuuIlWo8etvzEV+EIBDqWXN
         pV4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zOgF5YHHdnw6KFfM7+TfvuQyjrbr/lX5m0szyjvIkws=;
        b=dt0Qs1xlYqsP4Zc0a13ZMBUnlyiWF/m4X76cLi7MTcjOeKnyuJm3WsYag5ew9RHgHX
         mfwLlONPKRdSvnnHLZYT8ZOVA4BZ7ZpOkfJydy9dT9obx5REzZJpWFVM3nMlppbU6tXu
         xrSJMRRZ4C2uev3mwLj36z7J3HcLh8MVTbQyu0FJqs4xqVUPbGRXUUMB+1Jc5mHZgHE/
         JInpTavL1geJAr2K19pMWPQEW7LVeqWhFmBegq82X9ZH1UkxgNh2/tl64WFld2BMCtGb
         bsYHp+oRwWvCFICW5/72aRo1VS/8N68f1ebScnEJ+FOgwN5nqpDErlHlanwgbzUhUBHT
         eTpA==
X-Gm-Message-State: AOAM531IgtKZLRgKEYRwkKCQNTeLQ5WuuM74854YQ2calSycyE/n3r9u
        oM5wVMfU7qn6k+g6+YylQpHcDw==
X-Google-Smtp-Source: ABdhPJyKW5sbH8IITrbG/4Ys8s+ipSdmANtpb03yMQnddgED1EkdIIGyeLpEf+JUcB5R0yVEhlgV0g==
X-Received: by 2002:a17:90a:9416:b0:1ca:c87b:9439 with SMTP id r22-20020a17090a941600b001cac87b9439mr455923pjo.71.1650558088025;
        Thu, 21 Apr 2022 09:21:28 -0700 (PDT)
Received: from p14s (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id p10-20020a637f4a000000b00373a2760775sm23361771pgn.2.2022.04.21.09.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 09:21:26 -0700 (PDT)
Date:   Thu, 21 Apr 2022 10:21:24 -0600
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>
Cc:     Ohad Ben-Cohen <ohad@wizery.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-remoteproc@vger.kernel.org
Subject: Re: [PATCH v3 0/2] remoteproc: mediatek: allow different SCP
 firmware names
Message-ID: <20220421162124.GA1596562@p14s>
References: <20220419123331.14377-1-allen-kh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220419123331.14377-1-allen-kh.cheng@mediatek.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 19, 2022 at 08:33:29PM +0800, Allen-KH Cheng wrote:
> The SCP needs firmware which differs between platforms and SoCs. Add a new
> property "firmware-name" to allow the DT to specify the platform/board specific
> path to this firmware file.
> 
> The firmware-name property is optional and the code falls back to the
> old filename if the property isn't present.
> 
> Base on remoteproc/linux.git, rproc-next (58b7c856519f)

I'm good with this patchset but I'll wait before applying to give Rob the time
to review it.

Thanks,
Mathieu

> 
> changes since v2:$
> - use rproc_of_parse_firmware instead of of_property_read_string
> changes since v1:
> - fix a misspelled word in commit title
> 
> Allen-KH Cheng (2):
>   dt-bindings: remoteproc: mediatek: add firmware-name property
>   remoteproc: mediatek: allow reading firmware-name from DT
> 
>  Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml | 7 +++++++
>  drivers/remoteproc/mtk_scp.c                              | 6 +++++-
>  2 files changed, 12 insertions(+), 1 deletion(-)
> 
> -- 
> 2.18.0
> 
