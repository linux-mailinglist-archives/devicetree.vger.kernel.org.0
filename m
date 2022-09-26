Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8845C5EB100
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 21:13:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229548AbiIZTNo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 15:13:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230166AbiIZTNn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 15:13:43 -0400
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C17FF95AC5
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 12:13:36 -0700 (PDT)
Received: by mail-oi1-f174.google.com with SMTP id o64so9412057oib.12
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 12:13:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=oHIc6NKAfaQjOQAJHi5Z+A+59NdSwJLYFvN2QcncAsQ=;
        b=wfCUuUNMCIISFmfzwSEnON5jyLHWGY+7imSNfE+aosz6BQ7c6h4sj+TtYzSJJvQT3S
         wEMXSjxR1VCKKHMHJEccTVlNwKPB5mu65HA45QAEO7Vl08hv8VavpgGfJJzJISCSEZtm
         /sAFNF28YQV9Zz9hBOK9RpZpSakjY/oc0/42ntpOGwLcanu4qKdXr4IFDq4cMxQozGeO
         VUKC+O9pWyuZBhZDfK81dGzicAPmJLR+FxdNspqnX5LAQ6dyLj4BxnoCiVJ1wP+qr1DJ
         rWTvvliXxkb38Gw8G8U3jNs/jCchtg7MN3aynNj2kWVR2Yexa1bJqtIQcpl6ktdeqtf8
         1EUA==
X-Gm-Message-State: ACrzQf16kflLzuUyvZVTDp32dGMFZSo35aL0FGgjR6MFHu34thZpVoLz
        25Y7EMwxj+mTDgXdqk+itg==
X-Google-Smtp-Source: AMsMyM6CbEsaDWY62iHuAhaZ36J6SApdrjiXMzphcewU5mbfeG2ypsTyOI1dDvV3TZDrVQE9Eekbdg==
X-Received: by 2002:a05:6808:151f:b0:350:1b5e:2380 with SMTP id u31-20020a056808151f00b003501b5e2380mr136149oiw.112.1664219616053;
        Mon, 26 Sep 2022 12:13:36 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y17-20020a056870419100b0010d7242b623sm9599187oac.21.2022.09.26.12.13.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 12:13:35 -0700 (PDT)
Received: (nullmailer pid 2614143 invoked by uid 1000);
        Mon, 26 Sep 2022 19:13:35 -0000
Date:   Mon, 26 Sep 2022 14:13:35 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     devicetree@vger.kernel.org, arinc.unal@arinc9.com,
        tsbogend@alpha.franken.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org
Subject: Re: [PATCH v3] dt-bindings: interrupt-controller: migrate MIPS CPU
 interrupt controller text bindings to YAML
Message-ID: <20220926191335.GA2614072-robh@kernel.org>
References: <20220921072405.610739-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220921072405.610739-1-sergio.paracuellos@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Sep 2022 09:24:05 +0200, Sergio Paracuellos wrote:
> MIPS CPU interrupt controller bindings used text format, so migrate them
> to YAML.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
> Changes in v3:
> - Remmove 'bindings' keyword from title.
> - Put 'compatible' the first also in node sample.
> 
> Changes in v2:
> - Address review comment from Krzysztof:
> - Rebase onto last kernel version.
> - Add Thomas Bogendoerfer as maintainer since this is arch stuff.
> - Change compatible to go first as property and required.
> - Change sample node name to be generic. Use 'interrupt-controller'.
> 
>  .../mti,cpu-interrupt-controller.yaml         | 46 ++++++++++++++++++
>  .../devicetree/bindings/mips/cpu_irq.txt      | 47 -------------------
>  2 files changed, 46 insertions(+), 47 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mips/cpu_irq.txt
> 

Applied, thanks!
