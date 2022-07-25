Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 569105807C5
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 00:49:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237395AbiGYWtZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 18:49:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237394AbiGYWtY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 18:49:24 -0400
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4554DDB
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 15:49:22 -0700 (PDT)
Received: by mail-oi1-f169.google.com with SMTP id bb16so15182252oib.11
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 15:49:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TgUuXeWJcaehJrrMLTlRkyapBEtuUEW7JJ0JnUiAPkw=;
        b=f1Tsi+5bxDnClAPq6JRxFDQnPUM6Mp+3wokw7sYvAuYl3o/SDGaWjvqZ3ygaJZKYHs
         lCiqry9uxuS8P9kquZ8cv8I6dB63NZQOpIKbbC9VSvrsFuCGSXuyrkKlxBOskQZH7eWg
         cw9mHfvybPkL0SwD2ideNpEMuUqZXnLaezZY8cCisgRJNbLN7Cj/VZwzKJs5KDgKwQFI
         IpkiZbRWSDWB5swQkmqatkjH3/QckkeJQY5bY6AzYHoZfxXOTKOrPa0M69cJmn4mBQCg
         3ub966X9rqLZdWeXRsXvo4BEGdGzqY8yXPx+WzeCsxwCwRpZo1I+q6FhLRMF6QOAvLaC
         QTMQ==
X-Gm-Message-State: AJIora90lC+rotcdEN5V7xQGwK3awm5mQRQUocsueBRuCjnYacgbCiJD
        4GguHWjxZ2OuOtCS6bwyFjaiTx7SfQ==
X-Google-Smtp-Source: AGRyM1tgZhX6yC7nnRB0VbUfHcyJH9KvLE3/hLtyL5h70qDAYE1NoQtIjsp5w2vpu0Fe/gPfsLGSMg==
X-Received: by 2002:a05:6808:1446:b0:33a:c7e0:e88d with SMTP id x6-20020a056808144600b0033ac7e0e88dmr5472956oiv.123.1658789362039;
        Mon, 25 Jul 2022 15:49:22 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id h17-20020a056870d25100b0010c3655967csm6645187oac.40.2022.07.25.15.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 15:49:21 -0700 (PDT)
Received: (nullmailer pid 2893036 invoked by uid 1000);
        Mon, 25 Jul 2022 22:49:19 -0000
Date:   Mon, 25 Jul 2022 16:49:19 -0600
From:   Rob Herring <robh@kernel.org>
To:     Raphael-Xu <13691752556@139.com>
Cc:     alsa-devel@alsa-project.org, raphael-xu@ti.com,
        shenghao-ding@ti.com, broonie@kernel.org,
        devicetree@vger.kernel.org, kevin-lu@ti.com
Subject: Re: [PATCH v7] ASoc: dt-bindings: tas2780: remove tas2780 and will
 merge it to tas27xx
Message-ID: <20220725224919.GA2887013-robh@kernel.org>
References: <20220722105345.175-1-13691752556@139.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220722105345.175-1-13691752556@139.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 22, 2022 at 06:53:45PM +0800, Raphael-Xu wrote:
> remove tas2780

Your commit message needs to answer 'why'? Write complete sentences.

Though as this was just added, you should do 'git revert' and send that 
patch.

And this is not v7.

> Signed-off-by: Raphael-Xu <13691752556@139.com>
> ---
>  .../devicetree/bindings/sound/tas2780.yaml    | 75 -------------------
>  1 file changed, 75 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/tas2780.yaml

However, Mark took the original patch with the same issues, so:

Acked-by: Rob Herring <robh@kernel.org>
