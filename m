Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EA6C4EE55E
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 02:31:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242935AbiDAAdT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 20:33:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231414AbiDAAdS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 20:33:18 -0400
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 754BC1B7A1
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 17:31:30 -0700 (PDT)
Received: by mail-ot1-f54.google.com with SMTP id w17-20020a056830111100b005b22c584b93so1046733otq.11
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 17:31:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=D5cr3r23PKmWXKI5ds8p4b/z7cymBQyFMfAsTXiC4Ok=;
        b=lZMYdSPt1NcjGIEQDMAvmGo0fw6HwXuWGnmF4yCvxOpoz849nlKjWmqYXfJoTa6U1d
         eVN4l16MUYEsVN16qhHuti/shHiXDYmjhLh62Qo11x2dh408yiCyuTpHoN7fV/zxhN4+
         LyH7ZuZuxzYB1gMmUaQGIRnvPsr/3oz40cJFQ/jBKhMR2+p1yBi0GcN5BjD8B+9Q6rKN
         0EpeMHKq6gRgSjXvU81Ow6Gjk+gc6bH+h0trOOyYFE1avIYy1ddXCmAVERzrsCT5dspv
         J37jfSRL5MP025NCtIHyO5jhWhVM3ADqlSfxYD1//bmeB9vUIjWL4xWi863WkTrMXW0o
         Y7VA==
X-Gm-Message-State: AOAM533XAhI9yYNZ2qbU9q7JoMc6TCIcD4cwV33ta7CI0d7+SQnKoN43
        BJMr9BYzukhYeHR6BOHC6Q==
X-Google-Smtp-Source: ABdhPJxRzaIa0rAVr3FONaUGWR2ZWDQ4AeQia8rId7qKfEc0hObFzENieEMh6VCRUXsKdowW25wPoQ==
X-Received: by 2002:a05:6830:248c:b0:5c9:2b53:7ee8 with SMTP id u12-20020a056830248c00b005c92b537ee8mr6552641ots.258.1648773089769;
        Thu, 31 Mar 2022 17:31:29 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p4-20020a056870a54400b000da07609a6dsm418060oal.22.2022.03.31.17.31.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 17:31:29 -0700 (PDT)
Received: (nullmailer pid 1785575 invoked by uid 1000);
        Fri, 01 Apr 2022 00:31:28 -0000
Date:   Thu, 31 Mar 2022 19:31:28 -0500
From:   Rob Herring <robh@kernel.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org, patches@opensource.cirrus.com,
        alsa-devel@alsa-project.org, Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Subject: Re: [PATCH v1 6/7] ASoC: wm8731: Convert DT bindings to YAML format
Message-ID: <YkZH4C6nzTgFtdNq@robh.at.kernel.org>
References: <20220325153121.1598494-1-broonie@kernel.org>
 <20220325153121.1598494-7-broonie@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220325153121.1598494-7-broonie@kernel.org>
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

On Fri, 25 Mar 2022 15:31:20 +0000, Mark Brown wrote:
> Convert the WM8731 DT bindings to YAML format, including addition of
> documentation for the regulator and clock bindings which the driver has
> had for some time but which were not covered in the bindings document.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---
>  .../devicetree/bindings/sound/wlf,wm8731.yaml | 97 +++++++++++++++++++
>  .../devicetree/bindings/sound/wm8731.txt      | 27 ------
>  2 files changed, 97 insertions(+), 27 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8731.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/wm8731.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>
