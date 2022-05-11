Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81A7F523572
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 16:28:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244647AbiEKO2V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 10:28:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244640AbiEKO2T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 10:28:19 -0400
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4029479803
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 07:28:15 -0700 (PDT)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-e93bbb54f9so2966067fac.12
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 07:28:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Xrh9Lzw84LpiVnOZoK6FsoYyaduQlCF0u/cU0va6T10=;
        b=PPpnzW1YVYrcn/8L+L5Pu13Yt/38JrmQZx8jdyBHhmNM1kuO9Sy5hnjSWJo64B0tw6
         pIysXrjZ2lt1rLYlmQ7kvN7GTZ5d7A5SbZIxGLxgJ+ar+FZdO+lFQ6RCZTGo1gx3aUJx
         6w+WKRhLVJJOGMO98TKK7/NJ3wYX9OZmyDJN1a5l4mnNSWbDPRd1836XVXLCIe8sKm6V
         ciWsmzwLi4YAF62fYewIyFEBm0wrDoRY8QBWVaTQGYbMMdTd/XESxb7+9eQkl8TE5Kv8
         EjBh/oHVn276rfjnh9kxs/+0qHddpf/5ll8ATvOsvQf+f/SAoChejIL3n94T/1mE+PRW
         Mkkg==
X-Gm-Message-State: AOAM530JTIpyiiHdJw9LIiT/AtHowaIIRno0wLxxRVl44X1lB9iqGXfJ
        w2Po/SfuAPfYwjW1wvG5mYykXEkd8w==
X-Google-Smtp-Source: ABdhPJweeEFxO/IumrRX1sHt5noLhaIrAa2c123oOQh/Zm9dulYh37bSvSzAwMi1RSVPWs+dJQfG+g==
X-Received: by 2002:a05:6870:65a0:b0:ed:a635:eee9 with SMTP id fp32-20020a05687065a000b000eda635eee9mr2772952oab.48.1652279294524;
        Wed, 11 May 2022 07:28:14 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f187-20020aca38c4000000b00325cda1ff94sm793919oia.19.2022.05.11.07.28.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 May 2022 07:28:13 -0700 (PDT)
Received: (nullmailer pid 259601 invoked by uid 1000);
        Wed, 11 May 2022 14:28:13 -0000
Date:   Wed, 11 May 2022 09:28:13 -0500
From:   Rob Herring <robh@kernel.org>
To:     Daniel Kaehn <kaehndan@gmail.com>
Cc:     devicetree@vger.kernel.org, tiwai@suse.com,
        alsa-devel@alsa-project.org
Subject: Re: [PATCH v7 1/2] dt-bindings: sound: Add generic serial MIDI device
Message-ID: <20220511142813.GA259544-robh@kernel.org>
References: <20220509145933.1161526-1-kaehndan@gmail.com>
 <20220509145933.1161526-2-kaehndan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220509145933.1161526-2-kaehndan@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 09 May 2022 09:59:32 -0500, Daniel Kaehn wrote:
> Adds dt-binding for a Generic MIDI Interface using a serial device.
> 
> Signed-off-by: Daniel Kaehn <kaehndan@gmail.com>
> ---
>  .../bindings/sound/serial-midi.yaml           | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/serial-midi.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
